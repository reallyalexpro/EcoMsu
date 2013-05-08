<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/document.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left">
				<h1><span><xsl:value-of select="$page-title"/></span></h1>
				
				<xsl:call-template name="document"/>
				
				<div class="clearfix"/>
				
			</td>
			<td class="content-right">dgfhdgfh</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>