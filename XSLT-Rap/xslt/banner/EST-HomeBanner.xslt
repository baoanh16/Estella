<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-1">
			<article>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
			</article>
			<div class="button-next-section"><span class="lnr lnr-chevron-down"></span></div>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<a>
				<xsl:attribute name="href">
				
					<xsl:value-of select="Url"></xsl:value-of>
					<xsl:if test="string-length(Url)=0">
						<xsl:text>javascript:void(0)</xsl:text>
					</xsl:if>
				</xsl:attribute>
			<div class="img">
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<div class="container">
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>