<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/right.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left articles">
				<h1><span><xsl:value-of select="$page-title"/></span></h1>
				
				<xsl:for-each select="/data/gallery/entry">
					<div class="gallery">						
						<span class="date">
								<xsl:call-template name="format-date">
									<xsl:with-param name="date" select="datetime/date/start"/>
									<xsl:with-param name="format" select="'x M Y'"/>
								</xsl:call-template>г.</span>
						<h2 class="title"><xsl:value-of select="title"/></h2>
						
																		
						<div class="body">
							<xsl:apply-templates select="body/*|body/text()" mode="html"/>
						</div>
						
						<ul class="photo-list">
							<xsl:for-each select="photos/item">
								<li>
									<xsl:if test="position() mod 2 = 1"><xsl:attribute name="class">odd</xsl:attribute></xsl:if>
									<a href="{$workspace}{image/@path}/{image/filename}" class="highslide" onclick="return hs.expand(this)"><img src="{$root}/image/2/312/230/5{image/@path}/{image/filename}"/></a>
								</li>
							</xsl:for-each>
							<div class="clearfix"/>
						</ul>
					</div>
					
				</xsl:for-each>	
				
				<xsl:if test="/data/articles/pagination/@total-pages &gt; 1">
					<div class="hr"/>
					
					<xsl:call-template name="pagination">
						<xsl:with-param name="pagination" select="/data/articles/pagination" />
						<xsl:with-param name="pagination-url" select="'/articles/$'" />
					 </xsl:call-template>
				</xsl:if>
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>