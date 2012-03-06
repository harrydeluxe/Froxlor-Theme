/*
 *
 * jqTransform
 * by mathieu vilaplana mvilaplana@dfc-e.com
 * Designer ghyslain armand garmand@dfc-e.com
 *
 *
 * Version 1.0 25.09.08
 * Version 1.1 06.08.09
 * Add event click on Checkbox and Radio
 * Auto calculate the size of a select element
 * Can now, disabled the elements
 * Correct bug in ff if click on select (overflow=hidden)
 * No need any more preloading !!
 * 
 ******************************************** */
 
(function($){
	var defaultOptions = {preloadImg:true};
	var jqTransformImgPreloaded = false;
	
	
	/***************************
	  Select 
	 ***************************/	
	$.fn.jqTransSelect = function(){
		return this.each(function(index)
		{
			var el = $(this);

			if(el.hasClass('jqTransformHidden'))
				return;
				
			if(el.attr('multiple'))
				return;

			var oLabel  =  '';
			//var oLabel  =  jqTransformGetLabel(el);
			/* First thing we do is Wrap it */
			
			
			
			
			var $wrapper = el
				.addClass('hide')
				.wrap('<ul class="nav nav-pills"></ul>')
				.parent()
				.css({zIndex: 10-index});
			;
			
	
							  
			
			/* Now add the html for the select */
			$wrapper.prepend('<li class="dropdown"><a  id="rudi" href="#" data-toggle="dropdown" class="dropdown-toggle searchpill"></a><ul class="dropdown-menu"></ul></li>');
			
			
			//$wrapper.prepend('<div><span></span><a href="#" class="jqTransformSelectOpen"></a></div><ul class="dropdown-menu"></ul>');
			var $ul = $('ul', $wrapper);
			//var $ul = $('ul', $wrapper).css('width',el.width()).hide();
			/* Now we add the options */
			$('option', this).each(function(i)
			{
				var c = '';
				if($(this).attr('selected'))
				{
					$('.dropdown-toggle:eq(0)', $wrapper).html($(this).html() + '<b class="caret"></b>');
					c = ' class="active"';
				}
				//console.log($(this).attr('selected'));
				var oLi = $('<li' + c + '><a href="#" index="'+ i +'">'+ $(this).html() +'</a></li>');
				$ul.append(oLi);
			});
			
			/* Add click handler to the a */
			//$ul.find('li>a').click(function()
			$('li > a', $ul).bind('click', function()
			{
				var a = $(this);
				
				$('li.active', $wrapper).removeClass('active');			
				a.parent().addClass('active');
					
				// Fire the onchange event
				if (el[0].selectedIndex != a.attr('index') && el[0].onchange)
				{
					el[0].selectedIndex = a.attr('index');
					el[0].onchange();
				}
				
				el[0].selectedIndex = a.attr('index');
				//$('span:eq(0)', $wrapper).html(a.html());
				$('.dropdown-toggle:eq(0)', $wrapper).html(a.html() + '<b class="caret"></b>');
				$('.dropdown', $wrapper).removeClass('open');
				return false;
			});
			this.dd = $('#rudi').dropdown();
		});
	};
	
	
	
	
	$.fn.jqTransform = function(options){
		var opt = $.extend({},defaultOptions,options);
		
		/* each form */
		 return this.each(function(){
			var selfForm = $(this);
			if(selfForm.hasClass('jqtransformdone')) {return;}
			selfForm.addClass('jqtransformdone');
			
			//$('input:submit, input:reset, input[type="button"]', this).jqTransInputButton();			
			//$('input:text, input:password', this).jqTransInputText();			
			//$('input:checkbox', this).jqTransCheckBox();
			//$('input:radio', this).jqTransRadio();
			//$('textarea', this).jqTransTextarea();
			
			if( $('select', this).jqTransSelect().length > 0 )
			{
				//jqTransformAddDocumentListener();
			}
			
			
		}); /* End Form each */
				
	};/* End the Plugin */

})(jQuery);
				   