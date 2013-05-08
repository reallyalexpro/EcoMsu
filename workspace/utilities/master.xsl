<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
<xsl:import href="date-time.xsl"/>

<xsl:output method="html"
	doctype-public="html"	
	omit-xml-declaration="yes"
	encoding="UTF-8"
	/>

<xsl:variable name="is-logged-in" select="/data/logged-in-author/author"/>

<xsl:template match="/">
<html>
	<head>
		<title>
			<xsl:call-template name="page-title"/>
		</title>				
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/reset-min.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/custom-theme/jquery-ui-1.10.2.custom.css" />		
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/js/highslide/highslide.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="{$workspace}/css/styles.css" />				
		
		<script type="text/javascript" src="{$workspace}/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="{$workspace}/js/jquery.tools.min.js"></script>		
		<script type="text/javascript" src="{$workspace}/js/jquery-ui-1.10.2.custom.min.js"></script>				
		<script type="text/javascript" src="{$workspace}/js/highslide/highslide.min.js"></script>
		<script type="text/javascript" src="{$workspace}/js/highslide/highslide.config.js"></script>
	</head>
	<body>
		<div id="layer">
			<xsl:if test="$current-page != 'home'">
				<xsl:attribute name="class">inner <xsl:value-of select="$current-page"/>-page</xsl:attribute>
			</xsl:if>
			<div id="top">
				<table class="logo">
					<tr><td><a href="/">Кафедра Рационального Природопользования</a></td></tr>
					<tr><td><a href="/">Географический факультет</a></td></tr>				
				</table>
				
				<table class="phones">
					<tr><th>Телефон</th><th>Мобильный телефон</th></tr>
					<tr><td>+7(495) 933 3310</td><td>+7(916) 356 1473</td></tr>
				</table>
				
				<div class="lang">
					<a class="current" href="">Ru</a><a href="">En</a>
				</div>
			</div>
			
			<div class="menu">				
				<div class="up">
					<ul class="level1">
						<xsl:apply-templates select="/data/navigation/page[position() = 1 or position() = 2 or position() = 3 or position() = 4 or position() = 5 or position() = 6]" mode="menu"/>
					</ul>
					<xsl:if test="/data/navigation/page[@handle = $root-page and (position() = 1 or position() = 2 or position() = 3 or position() = 4 or position() = 5 or position() = 6)]/page[not(types/type = 'hidden')]">
						<br/>
						<ul class="level2">
							<xsl:for-each select="/data/navigation/page[@handle = $root-page]/page[not(types/type = 'hidden')]">
								<li>
									<xsl:if test="contains($current-path, concat('/', $root-page, '/', @handle))">
										<xsl:attribute name="class">current</xsl:attribute>
									</xsl:if>
									<a href="/{$root-page}/{@handle}"><xsl:value-of select="name"/></a>
								</li>
							</xsl:for-each>							
						</ul>
					</xsl:if>
				</div>
				<div class="down">
					<ul class="level1">
						<xsl:apply-templates select="/data/navigation/page[position() = 7 or position() = 8 or position() = 9 or position() = 10 or position() = 11 or position() = 12]" mode="menu"/>
					</ul>
					<xsl:if test="/data/navigation/page[@handle = $root-page and (position() = 7 or position() = 8 or position() = 9 or position() = 10 or position() = 11 or position() = 12)]/page[not(types/type = 'hidden')]">
						<br/>
						<ul class="level2">
							<xsl:for-each select="/data/navigation/page[@handle = $root-page]/page[not(types/type = 'hidden')]">
								<li>
									<xsl:if test="contains($current-path, concat('/', $root-page, '/', @handle))">
										<xsl:attribute name="class">current</xsl:attribute>
									</xsl:if>
									<a href="/{$root-page}/{@handle}"><xsl:value-of select="name"/></a>
								</li>
							</xsl:for-each>
						</ul>
					</xsl:if>
				</div>
				
				<div class="arrow"/>
				
				
				<script type="text/javascript">				
					function posArrow() {
						var el = $(".menu ul.level1 li.current");						
						if ($(".level2").size())
							$(".menu .arrow").css("left", $(el).position().left + Math.floor($(el).width() / 2) - Math.floor($(".menu .arrow").width() / 2)).css("top", $(el).position().top + $(el).height()).show();
						else
							$(".menu .arrow").hide();
					}
					$(function() {						
						posArrow();
					})
					$(window).resize(function() {
						posArrow();
					})
				</script>
			</div>	
			
			<xsl:choose>
				<xsl:when test="$current-page = 'home'">
				
					<div class="scroll">
						<div class="scrollable" id="scrollable">
							<div class="items">
								<xsl:for-each select="data/banners/entry">
									<div>
										<a href="{link}"><img src="{$workspace}{image/item/image/@path}/{image/item/image/filename}"/></a>
									</div>
								</xsl:for-each>
							</div>
							
							<div class="nav-panel">
								<a class="prev browse left"></a><span class="navi"></span><a class="next browse right"></a>
								<div id="sites">
									Похожие сайты 
									<select>
										<option>Группа МЕТРОПОЛЬ</option>
										<option value="http://www.metropol.ru">ООО «ИФК «МЕТРОПОЛЬ»</option>
										<option value="http://www.am-metropol.ru">УК «МЕТРОПОЛЬ»</option>						
										<option value="http://www.obibank.ru">КБ «ЯР-БАНК»</option>
										<option value="http://www.metropol-uk.com/rus">METROPOL (UK) Limited</option>
										<option value="http://www.metropol-cyprus.com">METROPOL (Cyprus) Limited</option>
										<option value="http://www.metropol.co.jp">METROPOL JAPAN</option>
										<option value="http://www.metropoldevelopment.ru">УК «МЕТРОПОЛЬ ДЕВЕЛОПМЕНТ»</option>
										<option value="http://www.putnik.com">Туристическое агентство «Путник»</option>
										<option value="http://www.alexandreiii.ru">Alexandre III</option>
										<option value="http://www.airportbaikal.ru">Аэропорт «Байкал»</option>
									</select>
								</div>
							</div>
						</div>	
					</div>
					
					<script type="text/javascript">
						$(function() {  
							$(".scrollable").scrollable().navigator();					
						});
					</script>
					
					<div class="topnews">
						<div class="topnews-container">
							<table>
								<tr>
									<td>
										<div class="header">
											<a href="/articles">Читать все</a>
											<h1>Новости</h1>																	
										</div>
										<xsl:for-each select="/data/top-articles/entry">
											<div class="article">
												<xsl:if test="position() = last()"><xsl:attribute name="class">article last</xsl:attribute></xsl:if>																		
												<a href="/articles/article/{title/@handle}" class="shadow">
													<xsl:choose>
														<xsl:when test="photos/item/image">
															<img src="{$root}/image/2/80/80/5{photos/item/image/@path}/{photos/item/image/filename}"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:attribute name="class">shadow noimage</xsl:attribute>
															<img width="80" height="80" src="{$workspace}/images/0.gif"/>
														</xsl:otherwise>
													</xsl:choose>
												</a>
													<span class="date">
														<xsl:call-template name="format-date">
															<xsl:with-param name="date" select="datetime/date/start"/>
															<xsl:with-param name="format" select="'x M Y'"/>
														</xsl:call-template>г.</span>
												<a href="/articles/article/{title/@handle}">
													<xsl:value-of select="title"/>
												</a>
												<div class="clearfix"/>
											</div>
										</xsl:for-each>
																	
									</td>
									<td>
										<div class="header">
											<a href="/archive/photos/">Смотреть все</a>
											<h1>Фотоархив</h1>									
										</div>
										
										<xsl:for-each select="/data/top-galleries/entry">
											<a class="photo-link" href="/archive/photos/gallery/{title/@handle}"><xsl:value-of select="title"/></a>
										</xsl:for-each>
									</td>
									<td>
										<div class="header">
											<a href="/students/faq/">Читать все</a>
											<h1>FAQ</h1>									
										</div>
										
										<xsl:for-each select="/data/top-faq/entry">
											<a class="photo-link" href="/students/faq/article/{title/@handle}"><xsl:value-of select="title"/></a>
										</xsl:for-each>								
									</td>
								</tr>
							</table>
						</div>
					</div>
				
				</xsl:when>
				<xsl:otherwise>
					<div style="height: 10px; background: url({$workspace}/images/div-bg.jpg) top left"/>
				</xsl:otherwise>
			</xsl:choose>
			
			<xsl:call-template name="content"/>
			
			<div id="footer">
				<div class="top">
					<ul class="menu">
						<xsl:for-each select="/data/navigation/page[not(@handle = 'home')][not(types/type = 'hidden')]">
							<li><a href="/{@handle}"><xsl:value-of select="name"/></a></li>
						</xsl:for-each>
					</ul>
				</div>
				<div class="bottom">
					<table>
						<tr>
							<td>© 2013 МГУ им. М. Ломоносова<br/>
								Все права защищены
							</td>
							<td>
								119991, Москва, ГСП-1,<br/>
								Ленинские горы, МГУ, д. 1, Главное здание,<br/>
								географический факультет
							</td>
							<td>
								<table class="phones">
									<tr><th>Телефон</th><th>Мобильный телефон</th></tr>
									<tr><td>+7(495) 933 3310</td><td>+7(916) 356 1473</td></tr>
								</table>
							</td>												
						</tr>
					</table>
				</div>
			</div>
		</div>		
	</body>
</html>

</xsl:template>

<xsl:template match="page[not(types/type = 'hidden')]" mode="menu">		
	<xsl:variable name="url">
		<xsl:choose>
			<xsl:when test="@handle = 'home'">/</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat('/', @handle)"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	
	<li>
		<xsl:choose>
			<xsl:when test="$current-path = '/' and @handle = 'home'">
				<xsl:attribute name="class">pos<xsl:value-of select="position()"/> current</xsl:attribute>
			</xsl:when>
			<xsl:when test="contains($current-path, $url) and not(@handle = 'home')">
				<xsl:attribute name="class">pos<xsl:value-of select="position()"/> current</xsl:attribute>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="class">pos<xsl:value-of select="position()"/></xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
		<a href="{$url}"><xsl:value-of select="name"/></a>
	</li>
	
	<!--xsl:if test="page and $level = 1">
		<xsl:apply-templates select="page[not(types/type = 'hidden')]" mode="menu">
			<xsl:with-param name="path" select="$url"/>
			<xsl:with-param name="level" select="$level + 1"/>
		</xsl:apply-templates>
	</xsl:if-->
</xsl:template>

</xsl:stylesheet>
