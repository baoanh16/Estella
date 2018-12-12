<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="personal-page-box">
			<div class="box-title">
				<div class="logo">
					<img src="/Data/Sites/1/skins/default/img/logo.png" alt=""></img>
				</div>
				<div class="title">
					<p>
						<xsl:value-of select="/BannerList/ModuleTitle"></xsl:value-of>
					</p>
					<span>300 người theo dõi</span>
				</div><a class="btn btn-personal-page" href="#">Xem trang cá nhân</a>
			</div>
			<div class="box-img">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
			</div>
			<div class="box-small-caption">
				<!-- <p>Social place to unwind, share good times, dine, shop, learn & play.</p> -->
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>