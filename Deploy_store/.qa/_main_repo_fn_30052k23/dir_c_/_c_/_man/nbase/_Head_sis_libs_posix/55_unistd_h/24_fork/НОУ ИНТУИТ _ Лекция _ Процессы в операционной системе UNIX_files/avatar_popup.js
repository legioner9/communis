//предотвращение повторных обращений на сервер
var avatar_popup_stop_request = false;
//флаг закрытия попапа в случае, когда mouseleave приходит ранее появления попапа
var avatar_popup_leave_before_append = false;

//Коллбэк предложения дружбы
function avatar_Offer_friendship(id) {
  $.ajax({
    type: 'POST',
    url: Drupal.settings['basePath'] + 'intuit_social_friends/json/add_friend',
    data: {
      'person_id': id
    },
    success: function() {
      window.location.reload();
    }
  });
}

function avatar_Delete_friendship(id) {
  $.ajax({
    type: 'POST',
    url: Drupal.settings['basePath'] + 'intuit_social_friends/json/delete_friend',
    data: {
      'person_id': id
    },
    success: function() {
      window.location.reload();
    }
  });
}

//Коллбэк (раз)блокировки пользователя
function avatar_BlockUser(id) {
  $.ajax({
    url: Drupal.settings['basePath'] + 'int_user/block_user/' + id,
    success: function(data) {
        $('#send-menu-list-' + id).replaceWith(data.data);
        
      avatar_POPUP_HIDE($('.int-avatar[user_id=' + id + ']'),'avatar-popup');
    },
    dataType: 'json'
  });
}

function avatar_POPUP_HIDE(current_avatar, popup_id)
{
  $('.'+popup_id).remove();
  //если mouseleave пришел до открытия попапа - закрыть
  if (avatar_popup_stop_request) {
    avatar_popup_leave_before_append = true;
  }
}

function avatar_POPUP_DISPLAY(current_avatar, popup_id)
{
  if (!avatar_popup_stop_request) {
    avatar_popup_stop_request = true;
    $.get(Drupal.settings['basePath'] + 'int_user/avatar/' + $(current_avatar).attr('user_id'),
      function(data)
      {
        //Перед открытием окна закрываем все другие
        $('.'+popup_id).remove();
        $(current_avatar).append(data);
        popup = $(current_avatar).children('.'+popup_id);
        if(popup.length > 0)
          fix_POPUP_VISIBILITY(current_avatar, popup[0]);
        avatar_popup_stop_request = false;

        //если mouseleave пришел до открытия попапа - закрыть
        if (avatar_popup_leave_before_append) {
          $('.'+popup_id).remove();
          avatar_popup_leave_before_append = false;
        }
      });
  }
}

function fix_POPUP_VISIBILITY(avatar, popup)
{
  var docViewTop = $(window).scrollTop();
  var docViewLeft = $(window).scrollLeft();
  var docViewBottom = docViewTop + $(window).height();
  var docViewRight = docViewLeft + $(window).width();

  var popupTop = $(popup).offset().top;
  var popupLeft = $(popup).offset().left;
  var popupBottom = popupTop + $(popup).height();
  var popupRight = popupLeft + $(popup).width();

  if(popupBottom > docViewBottom)
    $(popup).css('top',-(popupBottom-docViewBottom));

  if(popupRight > docViewRight)
    $(popup).css('left',-(popupRight-docViewRight));
  
  //В IE остается расстояние между аватаром и попапом! Закрываем его
  if ($(popup).position().top >= $(avatar).height()) {
    $(popup).css('top', $(avatar).height() - 3);
  }
}

$(document).ready(function() {
  $('.int-avatar').live('mouseenter', function(){
    avatar_POPUP_DISPLAY(this, 'avatar-popup');
  });
  $('.int-avatar').live('mouseleave', function(){
    avatar_POPUP_HIDE(this, 'avatar-popup');
  });
})
