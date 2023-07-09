function updateNotificationPannel()
{
//  $.post(Drupal.settings["basePath"] + 'intuit_notifications/json/update_notice',
//  function(data) {
//    if (data.status)
//    {
//      $bell = $("#informer-panel .left-part-pannel #bell");
//      if(!$bell.hasClass('disabled'))
//      {
//        $control = $bell.children(".control");
//        $notifications_count = $control.children("#notifications-count");
//        $notifications_block = $control.children("#notifications-block");
//        $messages_count = $("#informer-panel .left-part-pannel #messages").children(".control").children("#messages-count");
//        if(data.notifications_enable)
//        {
//          currentCount = $control.attr('count');
//          if(data.notifications_count != currentCount)
//          {
//            $control.attr('count', data.notifications_count)
//            .bind('mouseenter', function() {
//              clearTimeout(this.sfTimer);
//              $(this).children("#notifications-block").show();
//            })
//            .bind('mouseleave', function() {
//              var uls = $(this).children("#notifications-block");
//              this.sfTimer = setTimeout(function() {
//                uls.hide();
//              }, 300);
//            });
//            $notifications_block.html('');
//            $notifications_block.append(data.notifications_data);
//            if(data.notifications_count > 99)
//              $notifications_count.show().html('99+');
//            else
//              $notifications_count.show().html(data.notifications_count);
//          }
//        }
//        else
//        {
//          $control.attr('count', '0')
//          .unbind();
//          $notifications_block.hide().html('');
//          $notifications_count.hide().html('');
//        }
//        if(data.messages_enable)
//        {   
//          if(data.messages_count > 99)
//            $messages_count.show().html('99+');
//          else
//            $messages_count.show().html(data.messages_count);          
//        }
//        else
//        {
//          $messages_count.hide().html('');
//        }          
//      }
//    }
//  });
}
//Обработчик 
$(document).ready(function() {
  updateNotificationPannel();
  //перезагрузка блока уведомлений по таймеру
  $(document).everyTime(60000, function() {
    updateNotificationPannel();
  });
  
  //пометка конкретного уведомления как просмотренного при клике на нем
  //Это не нужно - см. далее (пометка всех уведомлений )
  /*$('.notification-link').live('click', function(){
    $element = $(this);
    $.post(Drupal.settings["basePath"] + 'intuit_notifications/json/review_notice','idnotice=' + $element.attr('idnotice'));
  });*/
  
  //удаление конкретного уведомления при клике на нем
  /*$('.notification-link').live('click', function(){
    $element = $(this);
    $.post(Drupal.settings["basePath"] + 'intuit_notifications/json/delete_notice','idnotice=' + $element.attr('idnotice'));
  });*/
  
  //пометка всех уведомлений как просмотренных при клике на ссылке все уведомления
  $('.more-anchor').live('click', function(){
    $element = $(this);
    $.post(Drupal.settings["basePath"] + 'intuit_notifications/json/delete_notice',{'all':1});
  }); 
})