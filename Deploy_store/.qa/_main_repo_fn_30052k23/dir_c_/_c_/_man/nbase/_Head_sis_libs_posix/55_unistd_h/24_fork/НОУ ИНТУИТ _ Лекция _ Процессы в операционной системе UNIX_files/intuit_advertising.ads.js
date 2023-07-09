/**
 * Attaches click action for all ads
 */
$(document).ready(function() {

  if (typeof Drupal.settings.intuit_advertising !== 'undefined') {
    var monitor = setInterval(function() {
      var elem = document.activeElement;
      if(elem && elem.tagName == 'IFRAME'){
        for (var id in Drupal.settings.intuit_advertising) {
          var element_name = Drupal.settings.intuit_advertising[id];
          var block_container = $(elem).parents(element_name);
          if (block_container.length > 0) {
            setAdvertisingCookie('intuit_ads_hide', 1, 1);
          }
        }
        
        clearInterval(monitor);
      }
    }, 100);
    
    // set click handler for yandex html tag 'yatag'.
    for (var id in Drupal.settings.intuit_advertising) {
      var element_name = Drupal.settings.intuit_advertising[id];
      $(element_name).click( function() {
        var yatag = $(this).find('yatag');
        if (yatag.length > 0) {
          setAdvertisingCookie('intuit_ads_hide', 1, 1);
        }
      });
    }
  }
    
  /**
   * Set Cookie.
   */
  function setAdvertisingCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }
});
