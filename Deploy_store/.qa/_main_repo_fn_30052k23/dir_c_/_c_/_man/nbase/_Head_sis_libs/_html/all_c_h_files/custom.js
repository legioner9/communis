$( document ).ready(function() {
	$("#tasks .panel-heading").click(function () {
		$("#tasks .panel-body").slideToggle(function(){
			if ( $('#tasks .panel-heading span.glyphicon-chevron-down').length > 0 ) {
				$('#tasks .panel-heading span').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
			}
			else if( $('#tasks .panel-heading span').hasClass('glyphicon-chevron-up') ) {
				$('#tasks .panel-heading span').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
			}
		});
	});

});

/**
 * Асинхронная загрузка вконтакта-группы
 */
var VK_loader = function() { // загрузчик, который вызывается по событию DOMContentLoaded и добавляет тег script
	var oHead = document.getElementsByTagName("head")[0];
	var oScript= document.createElement("script");
	oScript.type = "text/javascript";
	oScript.src="http://userapi.com/js/api/openapi.js?20";
	oHead.appendChild(oScript);
	oScript.onload = function() { // а это обработчик, который вызывается тогда, когда скрипт ВКонтакте уже загрузился
		// Тут инициализируем API ВКонтакте и помещаем код виджетов
		VK.init({apiId: 4111183, onlyWidgets: true});
		VK.Widgets.Group("cppstudio", {mode: 0, width:"auto", height: "300"}, 49657141); // вывод группы
	}
};
if ( document.addEventListener ) { // вешаем событие для обычных броузеров
	document.addEventListener("DOMContentLoaded", function(){
		// когда событие происходит, удаляем обработчик и вызываем загрузчик
		document.removeEventListener("DOMContentLoaded", arguments.callee, false);
		VK_loader();
	}, false );
}
else if ( document.attachEvent ) {
	// вешаем событие для IE. Он (до 9 версии) не поддерживает DOMContentLoaded, вместо этого используем событие readystatechange
	document.attachEvent("onreadystatechange", function(){
		if ( document.readyState === "complete" ) {
			document.detachEvent( "onreadystatechange", arguments.callee );
			VK_loader();
		}
	});
}
/**
 * конец загрузки вконтакта-группы
 */