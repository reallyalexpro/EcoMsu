<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/article.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/right.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left">
				<h1><span><xsl:value-of select="$page-title"/></span></h1>
				
				<xsl:apply-templates select="/data/article/entry" mode="article"/>
				
				<div class="clearfix"/>
				
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>