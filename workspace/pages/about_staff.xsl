<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/document.xsl"/>
<xsl:import href="../utilities/right.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left">
				<h1><span><xsl:value-of select="$page-title"/></span></h1>
				
				<xsl:call-template name="document"/>
				
				<div class="allstaff">
					<xsl:for-each select="/data/staff/entry">
						<div class="staff">							
							<a href="/about/staff/position/{@id}">
								<xsl:choose>
									<xsl:when test="photo/item/photo">
										<img src="{$root}/image/1/140/0{photo/item/photo/@path}/{photo/item/photo/filename}"/>
									</xsl:when>	
									<xsl:otherwise>
										<xsl:attribute name="class">nophoto</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>							
								<span class="name"><xsl:value-of select="firstname"/><xsl:text> </xsl:text><xsl:value-of select="name"/><xsl:text> </xsl:text><xsl:value-of select="patronymic"/></span>
								<span class="position"><xsl:value-of select="position"/></span>
							</a>
						</div>											
					</xsl:for-each>
					<div class="clearfix"/>
				</div>				
				
				
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>