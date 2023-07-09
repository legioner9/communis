// $Id: spelling.js,v 1.1.2.1 2009/04/21 15:07:24 doq Exp $

var spelling = spelling || {};

spelling.autoAttach = function () {
    new spelling.handler();

    // Show functionality description block.
    var isKonqueror = -1 != navigator.userAgent.indexOf('Konqueror');
    if (isKonqueror) {
        // Workaround for Konqueror browser. Tested under Konqueror 3.5.
        document.getElementById('block-spelling-0').style.display = 'block';
    }
    else {
        $('#block-spelling-0').show();
    }
}

spelling.handler = function () {
    var obj = this;
    this.input = $(document);

    $(this.input)
    .keyup(function (event) {
        return obj.onkeyup(event)
    });
};

spelling.handler.prototype.onkeyup = function (e) {
    if (!e) {
        e = window.event;
    }

    // Enter and Ctrl.
    if (13 == e.keyCode && e.ctrlKey) {
        var container = null;
        var objs = [];
        var parent, text, cn, rects;
        
        var cn;
        if (window.getSelection) {  // all browsers, except IE before version 9
            var selectionRange = window.getSelection ();
            if (selectionRange.rangeCount > 0) {
                var range = selectionRange.getRangeAt (0);

                rects = range.getClientRects()
                parent = $(range.commonAncestorContainer);
                text = range.toString();
            }
        } 
        else {
            if (document.selection) {   // Internet Explorer
                var textRange = document.selection.createRange ();
                
                rects = document.selection.createRange ().getClientRects();
                parent = $(textRange.parentElement ());
                text = textRange.text;
            }
        }
        
        var childs  = parent.children('[id]');
        
        var ids = [];
        var offets = getSpellingOffset();
        var r = {}, r2 = {};
        for(var j = 0; j< rects.length; ++j){
            for(var i = 0 ; i < childs.length; ++i){
                var rect = rects[j];
                r.left =rect.left + offets.left;
                r.right =rect.right + offets.left;
                r.top =rect.top + offets.top;
                r.bottom =rect.bottom + offets.top;
                var child = $(childs[i]);
                r2.left = child.offset().left;
                r2.top = child.offset().top;
                r2.right = r2.left + child.width();
                r2.bottom = r2.top + child.height();
                if( intersectRect(r, r2) ){
                    ids.push( childs[i].tagName + '#' + childs[i].id );
                }
            }
        }
        
        if(parent[0].id){
            ids.push(parent[0].tagName + '#' + parent[0].id);
        }
        
        var parents = parent.parents('[id]:first');
        for(var i = 0 ; i < parents.length; ++i){
            ids.push(parents[i].tagName + '#' + parents[i].id);
        }

        container = {
            parent: parent, 
            text: text,
            ids: ids
        };
        if (!container.text || '' == container.text) {
            // TODO I think there should be some error handling if browser doesn't support text selection.
            alert(Drupal.t("You haven't selected any text."));
            return;
        }
        else {
            var sdata = 'selection=' + container.text + "&url="
            + Drupal.settings.spelling['requestUri'] + "&parenthtml="
            + container.parent.text() + '&ids=' + ids.join(',');
            var $data_wrapper = container.parent.closest('.spelling-content-entity'); 
            if($data_wrapper.length == 0)
                $data_wrapper = container.parent.find('.spelling-content-entity');
            if($data_wrapper.length == 1)
                sdata += '&'+$data_wrapper.attr('data');  
            else if($data_wrapper.length > 1)
            {
                $data_wrapper = $($data_wrapper[0]);
                sdata += '&'+$data_wrapper.attr('data');  
            }
            $('#admin-content-spelling-save-form-a').attr('request_data_source', 'attr');
            $('#admin-content-spelling-save-form-a').attr('request_data', sdata);
            $('#admin-content-spelling-save-form-a').click();
        }
    }
}

spelling.save_error = function( save_url )
{
    var $description = $('#spelling-form #edit-mistake-description');  
    if ($description.val().length > 0 && $description.val() != $description.attr('title')) 
    {
        markFormElementAsOk($description);
        var options = {
            url: save_url,
            complete: function(response, status) 
            {
                if (status == "success") 
                {
                    alert(Drupal.t('Site administrator was successfully notified about spelling mistake.'));
                }
            },
            error: function (xmlhttp) 
            {
                alert(Drupal.t('Spelling mistake notification failed.'));
            }
        };
        $('#spelling-form').ajaxSubmit(options);
        $('#spelling-save-form-dialog').dialog('close');
    }
    else
        markFormElementAsError($description, "Опишите ошибку!");
}

//http://javascript.ru/ui/offset
function getSpellingOffset() {
    // (2)
    var body = document.body;
    var docElem = document.documentElement;
    
    // (3)
    var scrollTop = window.pageYOffset || docElem.scrollTop || body.scrollTop;
    var scrollLeft = window.pageXOffset || docElem.scrollLeft || body.scrollLeft;
    
    // (4)
    var clientTop = docElem.clientTop || body.clientTop || 0;
    var clientLeft = docElem.clientLeft || body.clientLeft || 0;
    
    // (5)
    var top  = scrollTop - clientTop;
    var left = scrollLeft - clientLeft;
    
    return {
        top: Math.round(top), 
        left: Math.round(left)
    };
}

// Global killswitch.
if (Drupal.jsEnabled) {
    $(document).ready(spelling.autoAttach);
}

function intersectRect(r1, r2) {
    return !(r2.left > r1.right || 
        r2.right < r1.left || 
        r2.top > r1.bottom ||
        r2.bottom < r1.top);
}
