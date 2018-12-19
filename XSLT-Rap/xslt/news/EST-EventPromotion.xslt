<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="container">
			<h2 class="main-title">
				<xsl:value-of select='/NewsList/EventPromotionText'></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12">
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="News">
		<div class="swiper-slide">
			<a class="item">
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img-box">
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select='Title' disable-output-escaping='yes'></xsl:value-of>
						</h4>
						<p><xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of></p>
					</figcaption>
				</figure>
			</a></div>
	</xsl:template>

</xsl:stylesheet>