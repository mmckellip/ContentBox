<cfoutput>
<h2>Quick Preview</h2>
<div>
	<!---hidden form for preview submit, has to be a form as content can be quite large
		so get operations do not work.	
	 --->
	#html.startForm(name="previewForm", action=prc.xehPreview, target="previewFrame", class="hidden")#
		#html.hiddenField(name="h", value=prc.h)#
		#html.hiddenField(name="content", value=urlEncodedFormat( rc.content ))#
		#html.hiddenField(name="contentType", value=rc.contentType)#
		#html.hiddenField(name="layout", value=rc.layout)#
		#html.hiddenField(name="title", value=rc.title)#
		#html.hiddenField(name="slug", value=rc.slug)#
	#html.endForm()#
	<!--- hidden iframe for preview --->
	<iframe id="previewFrame" name="previewFrame" width="100%" scrolling="auto" style="border: 1px solid ##eaeaea"></iframe>
</div>
</cfoutput>