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
				
				<div class="graduates">
					<xsl:for-each select="/data/graduates/graduation_year">
						<xsl:sort select="@value" data-type="number" order="descending"/>
						<h2 class="title"><xsl:value-of select="@value"/></h2>
						
						<xsl:for-each select="entry">
							<div class="graduate">
								<xsl:if test="photo/item/photo">
									<img src="{$root}/image/2/140/190/5{photo/item/photo/@path}/{photo/item/photo/filename}"/>
								</xsl:if>	
								<xsl:value-of select="firstname"/><xsl:text> </xsl:text><xsl:value-of select="name"/><xsl:text> </xsl:text><xsl:value-of select="patronymic"/>
							</div>
						</xsl:for-each>
					</xsl:for-each>
				</div>
				
				<div class="clearfix"/>
				
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

</xsl:stylesheet>