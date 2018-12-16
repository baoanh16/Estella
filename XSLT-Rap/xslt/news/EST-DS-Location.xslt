<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="location-list">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-lg-8 offset-sm-1 offset-lg-2 col-xl-6 offset-xl-3">
						<div class="location-desc">
							<h2>
								<xsl:value-of select="/NewsList/ZoneDescription"></xsl:value-of>
							</h2>
						</div>
					</div>
				</div>
				<div class="row tab-nav">
					<xsl:apply-templates select="/NewsList/News" mode="Nav"></xsl:apply-templates>
				</div>
				<div class="row tab-content">
					<div class="col-12">
						<xsl:apply-templates select="/NewsList/News" mode="Content"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="News" mode="Nav">
		<div class="col-md-3 col-6">
			<figure class="item">
				<xsl:if test="position() = 1">
					<xsl:attribute name='class'>
						<xsl:text>item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name='data-target'>
					<xsl:text>#location-tab</xsl:text>
					<xsl:value-of select='position()'></xsl:value-of>
				</xsl:attribute>
				<div class="img-box">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ThumbnailUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<p>
						<xsl:value-of select='Title' disable-output-escaping='yes'></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>


	<xsl:template match="News" mode="Content">
		<div class="location" id="location-tab-1">
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>location show</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='id'>
				<xsl:text>location-tab</xsl:text>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<div class="img-map">
				<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<div class="img">
					<img src="/Data/Sites/1/skins/default/img/location_mark.png" alt=""></img>
				</div>
				<div class="desc">
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</div>
				<a class="btn btn-view-map">
					<xsl:attribute name='href'>
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</xsl:attribute>
					View Google Maps
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>