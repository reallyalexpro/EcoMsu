<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:import href="../utilities/pager.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
	
<xsl:template name="right">
	<h2 class="title">Конференции</h2>
	<xsl:for-each select="/data/all-conferences/entry">
		<div class="conference">
			<a class="title" href="">						
				<xsl:choose>
					<xsl:when test="category/item/@handle = 'konferentsii'">
						<xsl:attribute name="href">/science/conferences/article/<xsl:value-of select="title/@handle"/></xsl:attribute>
						Конференция
					</xsl:when>
					<xsl:when test="category/item/@handle = 'mezhdunarodnye-konferentsii'">
						<xsl:attribute name="href">/international-cooperation/international-conferences/article/<xsl:value-of select="title/@handle"/></xsl:attribute>
						Международная конференция
					</xsl:when>
				</xsl:choose>						
				
				«<xsl:value-of select="title"/>»
				
				<div class="date">								
					<xsl:call-template name="format-date">
						<xsl:with-param name="date" select="datetime/date/start"/>
						<xsl:with-param name="format" select="'x M'"/>
					</xsl:call-template>
				</div>
			</a>
		</div>
	</xsl:for-each>
	<h2 class="title">Публикации</h2>
	<xsl:for-each select="/data/top-publication/entry">
		<div class="publication">
			<a class="title" href="/science/publications/article/{title/@handle}">																				
				<xsl:value-of select="title"/>
			</a>
		</div>
	</xsl:for-each>	
</xsl:template>

</xsl:stylesheet>
