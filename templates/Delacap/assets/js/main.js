$(document).ready(function()
{
	// make rel="external" links open in a new window
	$("a[rel='external']").attr('target', '_blank');
	
	// set focus on username-field if on loginpage
	if ($(".loginpage").length != 0) {
		$("#loginname").focus();
	}

	// Auto-select next field in configfile - wizard
	$('#config_distribution').change(function (){
		window.location.href=window.location.href + '&distribution=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_service').change(function (){
		window.location.href=window.location.href + '&service=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_daemon').change(function (){
		window.location.href=window.location.href + '&daemon=' + this.options[ this.selectedIndex ].value;
	});

	// Back-button
	$('#yesnobutton').click(function() {
		history.back();
	});


	bindSubmitForm(false);
	
	// catch all submit buttons, to provide a dialog for errors
	$("a[rel=confirm]").click(function(e){
		$("#dialogmodal").load($(this).attr("href"),
			function()
			{
				$('#dialogmodal').modal({
				  backdrop: true,
				  show: true
				});
				bindSubmitForm(true);
			});
		return false;
	});



	$("ul#topnav").menu({
		beforeShow: function(a, b)
		{
			b.css({left: ($(window).width()-a.offset()['left'] < b.width()) ? a.width()-b.width() : 0});
		}
	});


	$(".login").fadeIn("slow");
	


	// for manage_packages.tpl
	$('#manage_packages_actions > li > a').click(function()
	{
		$('#manage_packages_form > input[type="submit"]').attr('name', $(this).attr('href')).click();
		return false;
	});
	
	
		
	$("div[style='color:red']").replaceWith(function(){
			return '<span class="label label-important">' + $(this).html() + '</span>';
		});

	$("div.jqtransform").jqTransform();

	$().tab();
	$().alert('close');
	$('[rel=tooltip]').tooltip({
		animation: true,
		placement: 'top'
		});
		
	
	$(function () {
	  $("a[rel=popover]")
		.popover({
		  offset: 10,
		  html: true
		})
		.click(function(e) {
		  e.preventDefault()
		})
	})

	// search field
	var divInput = $('div.input');
	$('input#s').bind('focus',
		function()
		{
			divInput.addClass('focus');	
		}).bind('blur',
		function()
		{
			divInput.removeClass('focus');
		}
		);
});




function bindSubmitForm(modal)
{
	$("form[rel=submit]").bind(
		'submit',
		function()
		{
			function showResponse(response, statusText)
			{
				if(statusText == 'success')
				{
					if(response.error == 'true')
					{
						$('#kontaktform').fadeTo("fast", 1);
						showMsg(response.msg);
					}
					else
					{
						$('#kontaktformholder').html(response.msg);
					}
				}
				$('#kontaktformsubmit').removeClass("wait");
			
			}
			
			$(this).ajaxSubmit({
				traditional: true,
				success: function(response, statusText, xhr, form)
				{
					if(statusText == 'success')
					{
						if(response.indexOf('dc="dialog"') >= 1)
						{
							$('#dialogerror').html(response).modal({
								backdrop: true,
								show: true
							});
							
							if(modal)
							{
								$('#dialogmodal').modal('hide');
								$('#dialogerror').on('hide', function () {
									$('#dialogmodal').modal('show');
								});
							}
						}
						else
						{
							var page = $("input[name=page]", form).attr('value');
								target = form.attr('action');
							
							if(page && target.indexOf('page=' + page) == -1)
							{
								target = target + '&page=' + page;
							}
							
							window.location.href = target;
						}
					}
				}
				});
			return false;
		});
}