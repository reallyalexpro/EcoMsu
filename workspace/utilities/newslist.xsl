<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
<xsl:import href="../utilities/pager.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
	
<xsl:template name="newslist">
	<xsl:param name="news" select="/data/articles"/>
	<xsl:param name="section" select="'/articles'"/>
	<xsl:param name="pagination-url" select="$section"/>
		 		
	<xsl:choose>
		<xsl:when test="$news/entry">
			<xsl:for-each select="$news/entry">
				<div class="article">
					<xsl:if test="position() = last()"><xsl:attribute name="class">article last</xsl:attribute></xsl:if>																		
					<a href="{$section}/article/{title/@handle}">
						<xsl:choose>
							<xsl:when test="photos/item/image">
								<img src="{$root}/image/2/150/120/5{photos/item/image/@path}/{photos/item/image/filename}"/>
							</xsl:when>
							<xsl:otherwise>									
								<!--div style="width: 150px; height: 120px; float: left; margin: 0 10px 10px 0"/-->
							</xsl:otherwise>
						</xsl:choose>							
					</a>
						<span class="date">
							<xsl:call-template name="format-date">
								<xsl:with-param name="date" select="datetime/date/start"/>
								<xsl:with-param name="format" select="'x M Y'"/>
							</xsl:call-template>г.</span>
					<a href="{$section}/article/{title/@handle}">
						<xsl:value-of select="title"/>
					</a>						
					<div class="short">
						<xsl:apply-templates select="short/*|short/text()" mode="html"/>
					</div>
				</div>
				<div class="clearfix"/>
			</xsl:for-each>	
			
			<xsl:if test="$news/pagination/@total-pages &gt; 1">
				<div class="hr"/>
				
				<xsl:call-template name="pagination">
					<xsl:with-param name="pagination" select="$news/pagination" />
					<xsl:with-param name="pagination-url" select="concat($pagination-url, '/$')" />
				 </xsl:call-template>
			</xsl:if>
		</xsl:when>
		<xsl:otherwise>
			<i>Нет информации</i>
			<br/><br/><br/>
		</xsl:otherwise>
	</xsl:choose>
	
</xsl:template>

</xsl:stylesheet>
