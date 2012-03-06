/**
* Topnavigation
*
* @name     	menu
* @author		Harald Hanek http://www.delacap.com 
* @lastChange	29.03.2010 16:21
*/
;(function($){
		  
	$.fn.menu = function(options)
	{

		options = $.extend({

			hoverClass: 	"active",
			delay: 			300,
			speed: 			"normal",
			showAnimation:	{"opacity": "show"},
			showSpeed:		1,
			hideAnimation:	{"opacity": "hide"},
			hideSpeed:		1,
			minWidth:		220,
			beforeShow:		function(){},
			afterShow:		function(){},
			afterHide:		function(){},
			onEachSubmenu:	function(){}
			
		}, options);


		over = function()
		{
			var $$ = $(this);
			clearTimeout(this.sfTimer);
			
			if(!$$.is("."+ options.hoverClass))
			{
				var s = $$.addClass(options.hoverClass).find("ul.dropdown-menu");
				
				options.beforeShow($$, s);
				//s.css({left: $$.width()-s.width()});
				
				s.animate(options.showAnimation, options.showSpeed, options.afterShow($(this)))
					.end()
					.siblings("." + options.hoverClass)
					.removeClass(options.hoverClass).find("ul.dropdown-menu").hide();
			}
		};


		out = function()
		{
			var $$ = $(this);
			this.sfTimer = setTimeout(function(){
				$$.removeClass(options.hoverClass)
				.find("ul.dropdown-menu")
				.animate(options.hideAnimation, options.hideSpeed, options.afterHide($(this)))
				.find("iframe", this)
				.remove();
			}, options.delay);
		};
		
		
		$("ul.dropdown-menu", this).each(function(i, el)
							{
								var ul = $(el);
								 
								if(ul.width() < options.minWidth)
									ul.width(options.minWidth);
								
								options.onEachSubmenu(ul);
							});
		
		
		var sfHovAr = $("li:has(ul)", this)
			.hover(over, out)
			.find("a").each(function()
				{
					var $a = $(this), $li = $a.parents("li");
					$a.focus(function(){ $li.each(over); })
				    .blur(function(){ $li.each(out); });
				}).end();
			
		$(window).unload(function(){
			sfHovAr.unbind("mouseover").unbind("mouseout");
		});
		
		
		return this;
	};
	
})(jQuery);