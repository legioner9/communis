jQuery(document).ready(function($) {

    $("#finish").click(function() {
        var testme_id = $(this).parents("#testContent").find("[name=testme_id]").val();
        var answered_arr = $(this).parents("#testContent").find(":radio:checked");
        var answered = answered_arr.length;
        var questions = $(this).parents("#testContent").find(".testme_question").length;
        if (answered < questions) {
            alert('Вы ответили только на ' + answered + ' вопросов из ' + questions + '.\n\nОтветьте на все вопросы.');
        } else {
            var answers_line='';

            answered_arr.each(function(index, element) {
                var pr = element.value;
                answers_line += pr + ',';
            });

            //$(this).after('<div id="testme_result"><img src="/wp-content/plugins/wp_testme/images/loading4.gif" alt="" /></div>');

            jQuery.ajax({
                url: '/wp-content/plugins/wp_testme/testme-action.php',
                method: 'GET',
                data: 'task=testresults&testme_id=' + testme_id + '&testme_answers=' + answers_line,
                success: function (html) {
                    $("#testContent").html(html);
                    window.location = "#testContent";

                    $('#reloadTest').on('click', function() {
                        $('html,body').scrollTop(0);
                        window.location.reload();
                    });
                },
                error: function(){
                    alert('Не удалось выполнить операцию');
                }
            });
        }

        return false;
    });

    $(".testme_result_close").on('click',function(){
        testme_result_back();
        return false;
    });
});