<script src="{$link_backend}js/excanvas.min.js"></script> 
<script src="{$link_backend}js/jquery.uniform.js"></script> 
<script src="{$link_backend}js/select2.min.js"></script> 

<script src="{$link_backend}js/matrix.js"></script> 

<script src="{$link_backend}js/jquery.flot.min.js"></script> 
<script src="{$link_backend}js/jquery.flot.resize.min.js"></script> 
<script src="{$link_backend}js/jquery.peity.min.js"></script> 
<script src="{$link_backend}js/fullcalendar.min.js"></script> 

<script src="{$link_backend}js/matrix.dashboard.js"></script> 
<script src="{$link_backend}js/jquery.gritter.min.js"></script> 
<script src="{$link_backend}js/matrix.interface.js"></script> 
<script src="{$link_backend}js/jquery.validate.js"></script> 
<script src="{$link_backend}js/matrix.form_validation.js"></script> 
<script src="{$link_backend}js/jquery.wizard.js"></script> 
<script src="{$link_backend}js/matrix.popover.js"></script>

<script type="text/javascript">
	function goPage (newURL) {
		if (newURL != "") {

			if (newURL == "-" ) {
			  resetMenu();            
			}           
			else {  
				document.location.href = newURL;
			}
		}
	}

	function resetMenu() {
		document.gomenu.selector.selectedIndex = 2;
	}
</script>