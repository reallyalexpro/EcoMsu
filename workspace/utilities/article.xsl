<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:import href="../utilities/typography.xsl"/>
	
<xsl:template match="entry" mode="article">	
	<div class="document">
		<span class="date">
			<xsl:call-template name="format-date">
				<xsl:with-param name="date" select="datetime/date/start"/>
				<xsl:with-param name="format" select="'x M Y'"/>
			</xsl:call-template>г.</span>
		<h2 class="title"><xsl:value-of select="title"/></h2>
		<xsl:if test="photos/item/image">
			<img class="attached" src="{$root}/image/1/250/0{photos/item/image/@path}/{photos/item/image/filename}"/>
		</xsl:if>						
		<xsl:apply-templates select="body/*|body/text()" mode="html"/>
	</div>
</xsl:template>

</xsl:stylesheet>
