<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:str="http://exslt.org/strings" extension-element-prefixes="str">

<xsl:import href="../utilities/exslt/str/str.xsl" />
<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../utilities/right.xsl"/>

<xsl:template name="content">
	<table class="content">
		<tr>
			<td class="content-left">
				<h1><span>Поздравляем</span></h1>
				
				<div class="congratulations">
					<xsl:for-each select="/data/top-congratulations/entry">
						<div class="congratulation" style="background: url({$root}/image/2/298/280/5{photos/item/image/@path}/{photos/item/image/filename}) top center no-repeat">
							<xsl:if test="position() = 1"><xsl:attribute name="class">congratulation first</xsl:attribute></xsl:if>
							<a href="{title/@handle}">
								<xsl:variable name="words" select="str:split(title)"/>
								<xsl:call-template name="uppercase">           
						               <xsl:with-param name="input" select="$words[1]" />           
								</xsl:call-template>
								<br/>
								<xsl:value-of select="str:replace(title, $words[1], '')"/>
							</a>
						</div>
					</xsl:for-each>
									
					<!--div class="congratulation" style="background: url({$workspace}/images/congratulation2.jpg) top center no-repeat">
						<a href="">
							ПОЗДРАВЛЯЕМ<br/>
							ведущего научного сотрудника кафедры рационального природопользования ЛЬВА КОНСТАНТИНОВИЧА КАЗАКОВА С ЮБИЛЕЕМ!!!
						</a>
					</div-->							
				</div>
				<div class="clearfix"/>
				<h1><span>События</span></h1>
				
				<table class="events">
					<tr>
						<td class="event">							
							<xsl:apply-templates select="/data/top-events/entry[1]" mode="event"/>									
						</td>
						<td class="calendar">
							<div id="datepicker"></div>
						</td>
					</tr>
					
					<xsl:if test="/data/top-events/entry[2]">
						<tr>
							<td class="event">									
								<xsl:apply-templates select="/data/top-events/entry[2]" mode="event"/>									
							</td>
							<td class="event">
								<xsl:apply-templates select="/data/top-events/entry[3]" mode="event"/>									
							</td>
						</tr>
					</xsl:if>
					<xsl:if test="/data/top-events/entry[4]">
						<tr>
							<td class="event">
								<xsl:apply-templates select="/data/top-events/entry[4]" mode="event"/>									
							</td>
							<td class="event">
								<xsl:apply-templates select="/data/top-events/entry[5]" mode="event"/>
							</td>
						</tr>
					</xsl:if>
				</table>
				
				<script type="text/javascript">
					var dates = [];
					<xsl:for-each select="/data/all-events-dates//date">dates.push(new Date('<xsl:value-of select="start"/>'));</xsl:for-each>
					dates.sort(function(a,b){ a = new Date(a.date); b = new Date(b.date); return a&lt;b?-1:a&gt;b?1:0; });
					var min = dates[0]; 
					var max = dates[dates.length - 1];
					//alert(min);alert(max);
					for(i=0;i&lt;dates.length;i++) {
						dates[i] = new Date(dates[i].setHours(0));
						dates[i] = dates[i] - 0;
					}					
					$(function() {  
						$("#datepicker").datepicker({									
							gotoCurrent: true,
							hideIfNoPrevNext: true,
							minDate: min,
							maxDate: max,
							selectOtherMonths: true,
							monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
							dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
							firstDay: 1,
							onSelect: function(dateText, inst) { 								
								var dt = new Date(dateText);
								var datestr = dt.getFullYear() + "-" + (dt.getMonth() + 1) + "-" + dt.getDate();
								document.location.href = '/events/bydate/1/' + datestr;
							},
							beforeShowDay: function(date) {								
								var dt = new Date(date);								
								return [jQuery.inArray(dt - 0, dates)!=-1?true:false, '', ''];
							}							
						});
					});
				</script>
				<div class="showmore">
					<a href="/events">Показать еще</a>
				</div>
			</td>
			<td class="content-right">
				<xsl:call-template name="right"/>
			</td>
		</tr>
	</table>
</xsl:template>

<xsl:template match="entry" mode="event">
	<xsl:if test="photos/item/image">
		<a href="/events/article/{title/@handle}"><img src="{$root}/image/2/298/130/5{photos/item/image/@path}/{photos/item/image/filename}"/></a>
	</xsl:if>
	<a class="title" href="/events/article/{title/@handle}">
		<xsl:if test="not(photos/item/image)"><xsl:attribute name="class">title noimage</xsl:attribute></xsl:if>
		<xsl:value-of select="title"/>
	</a>
	<xsl:apply-templates select="short"/>
	<div class="more"><a href="/events/article/{title/@handle}">Подробнее</a></div>
</xsl:template>

<xsl:template name="uppercase">            
   <xsl:param name="input"/>            
   <xsl:value-of select="translate($input,
   'йцукенгшщзхъфывапролджэячсмитьбю',   
   'ЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ')"/>            
</xsl:template>

</xsl:stylesheet>