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


	$("ul#topnav").menu({
		beforeShow: function(a, b)
		{
			b.css({left: ($(window).width()-a.offset()['left'] < b.width()) ? a.width()-b.width() : 0});
		}
	});


	$(".login").fadeIn("slow");
	
	$("a[rel=confirm]").click(function(e){
			$("#dialogmodal").load($(this).attr("href"),
				function()
				{
					$('#dialogmodal').modal({
					  backdrop: true,
					  show: true
					});
				});
			return false;
		});
		
	$("div[style='color:red']").replaceWith(function(){
			return '<span class="label label-important">' + $(this).html() + '</span>';
		});

	$("div.jqtransform").jqTransform();

	$().tab();
	//$().dropdown();
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