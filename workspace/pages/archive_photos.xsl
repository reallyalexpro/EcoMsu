<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/pager.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/right.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left articles">
				<h1><span><xsl:value-of select="$page-title"/></span></h1>
				
				<xsl:for-each select="/data/galleries/entry">
					<div class="article">
						<xsl:if test="position() = last()"><xsl:attribute name="class">article last</xsl:attribute></xsl:if>																		
						<a href="/archive/photos/gallery/{title/@handle}"><img src="{$root}/image/2/150/120/5{photos/item/image/@path}/{photos/item/image/filename}"/></a>
							<span class="date">
								<xsl:call-template name="format-date">
									<xsl:with-param name="date" select="datetime/date/start"/>
									<xsl:with-param name="format" select="'x M Y'"/>
								</xsl:call-template>г.</span>
						<a href="/archive/photos/gallery/{title/@handle}">
							<xsl:value-of select="title"/>
						</a>	
						<div class="count">
							<xsl:value-of select="photos/@items"/> фотографи<xsl:call-template name="end"><xsl:with-param name="num" select="photos/@items"/><xsl:with-param name="end1" select="'я'"/><xsl:with-param  name="end2" select="'и'"/><xsl:with-param name="end3" select="'й'"/></xsl:call-template>
						</div>						
						<div class="short">
							<xsl:apply-templates select="short/*|short/text()" mode="html"/>
						</div>
					</div>
					<div class="clearfix"/>
				</xsl:for-each>	
				
				<xsl:if test="/data/galleries/pagination/@total-pages &gt; 1">
					<div class="hr"/>
					
					<xsl:call-template name="pagination">
						<xsl:with-param name="pagination" select="/data/galleries/pagination" />
						<xsl:with-param name="pagination-url" select="'/archive/photos/$'" />
					 </xsl:call-template>
				</xsl:if>
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template name="end">
	<xsl:param name="num"/>
	<xsl:param name="end1"/>
	<xsl:param name="end2"/>
	<xsl:param name="end3"/>
	
	<xsl:choose>		
		<xsl:when test="($num mod 10 = 1) and not(floor($num div 10) = 1)">
			<xsl:value-of select="$end1"/>
		</xsl:when>
		<xsl:when test="($num mod 10 = 2 or $num mod 10 = 3 or $num mod 10 = 4) and not(floor($num div 10) = 1)">
			<xsl:value-of select="$end2"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="$end3"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

</xsl:stylesheet>