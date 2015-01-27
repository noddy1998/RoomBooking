<!---================= Room Booking System / https://github.com/neokoenig =======================--->
<!--- Modal Field Picker --->
<cfoutput>
<div id="customfielddata">
<h4>Custom Fields</h4>
<cfloop query="customfields">
	<div class="btn-group btn-group-justified">
		<a data-id="#id#" data-type="customfield" class="fielddata custom btn btn-info">#name# (#type#)<br /><small>#truncate(description, 40)#</small></a>
		<a data-id="#id#" data-type="customoutput" class="fielddata custom btn btn-warning">#name# (Output)<br /><small>#truncate(description, 40)#</small></a>
	</div>
 </cfloop>
<h4>System Fields</h4>
<cfloop from="1" to="#arraylen(systemfields.systemfields)#" index="i">
	<div class="btn-group btn-group-justified">
		<a data-id="#systemfields.systemfields[i]['name']#" data-type="systemfield" class="fielddata system btn btn-info btn-block">#systemfields.systemfields[i]['name']# (#systemfields.systemfields[i]['type']#)<br /><small>#truncate(systemfields.systemfields[i]['description'], 40)#</small></a>
		<a data-id="#systemfields.systemfields[i]['name']#" data-type="systemoutput" class="fielddata system btn btn-warning btn-block">#systemfields.systemfields[i]['name']# (Output)<br /><small>#truncate(systemfields.systemfields[i]['description'], 40)#</small></a>
	</div>
 </cfloop>
</div>
</cfoutput>
<script>
	$(".fielddata").on("click", function(e){
		$(".fielddata").removeClass("fielddata-selected");
		$(this).addClass("fielddata-selected");
		console.log($(this));
		e.preventDefault();
	});
</script>