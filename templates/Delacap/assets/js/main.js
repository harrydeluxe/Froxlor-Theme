$.extend({
  getUrlVars: function()
  {
    var vars = [],
		hash,
		hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
		
    for(var i = 0; i < hashes.length; i++)
    {
      hash = hashes[i].split('=');
      vars.push(hash[0]);
      vars[hash[0]] = hash[1];
    }
    return vars;
  },
  getUrlVar: function(name){
    return $.getUrlVars()[name];
  }
});

$(document).ready(function()
{
	// make rel="external" links open in a new window
	$("a[rel='external']").attr('target', '_blank');
	

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


	// domainSpecialDialog (see 0.9.27-rc1) greetings from James Bond
	var domainSpecialDialog = $('#speciallogwarningpopup').modal({
				backdrop: true,
				show: false
			});			
	if(domainSpecialDialog.length == 1)
	{
		$('#delete_stats').keyup(function(event)
		{
			if($(this).val().toLowerCase() != $('#delete_statistics_str').val().toLowerCase())
			{
				$('#speciallogyesbutton').attr("disabled", "disabled");
			}
			else
			{
				$('#speciallogyesbutton').removeAttr("disabled");
			}
		});
		
		$('#speciallogyesbutton').click(function()
		{
			if($('input[name=speciallogfile]').prop("checked") != false)
			{
				$('input[name=speciallogfile]').attr("checked", false);
			}
			else
			{
				$('input[name=speciallogfile]').attr("checked", true);
			}
			$("#speciallogverified").val("1");
			
			$(domainSpecialDialog).modal("hide");
		});

		
		$('input[name=speciallogfile]').click(function()
		{
			$(domainSpecialDialog).modal("show");
			return false;
		});
	}
	

	// Sort for tables
	$('span[field]').each(function(index, element)
	{
		var th = $(element).parents("th"),
			active = false;	
			
		if($(element).attr("field") == $.getUrlVar('sortfield'))
		{
			$(element).addClass($.getUrlVar('sortorder') == "asc" ? "asc" : "desc");
			active = true;	
		}
		
		
		if($(th).hasClass('multi'))
		{
			$(element).parents("span").click(function(e)
			{
				window.location.href = $(element).attr(active ? ($.getUrlVar('sortorder') == "asc" ? "desc" : "asc") : "asc");
				return false;
			});
		}
		else
		{
			$(th).click(function(e)
			{
				window.location.href = $(element).attr(active ? ($.getUrlVar('sortorder') == "asc" ? "desc" : "asc") : "asc");
				return false;
			});
		}
		
		$(th).hover(
			function()
			{
				$(this).addClass("hover");
			},
			function()
			{
				$(this).removeClass("hover");
			}
		);
	});


	// index stats
	$("div.progress.used").each(function(index, element)
	{
		var used = $(element).attr('used'),
			total = $(element).attr('total'),
			w = (used != 0) ? 50 : 0;
		
		console.log($.isNumeric(total));
		if($.isNumeric(total))
		{
			w = Math.round((100 / total) * used);
		}
		else
		{
			$(element).addClass('unlimited progress-success');
		}
		
		$(element).html('<div class="bar" style="width: '+w+'%;"></div>');
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

	// About Dialog
	$("a[rel=about]").click(function(e){
		$('#dialogabout').modal({
		  backdrop: true,
		  show: true
		});
		return false;
	});



	$("ul#topnav").menu({
		beforeShow: function(a, b)
		{
			b.css({left: ($(window).width()-a.offset()['left'] < b.width()) ? a.width()-b.width() : 0});
		}
	});


	// set focus on username-field if on loginpage
	$(".login").fadeIn("slow", function(){
		$("#loginname").focus();
		});

	


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