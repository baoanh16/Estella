<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="service-detail-2">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 offset-xl-1 order-lg-2">
						<div class="img-box">
							<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-6 col-xl-5 order-lg-1">
						<div class="content-wrap">
							<div class="content">
								<h2 class="main-title">
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								</h2>
								<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
							<div class="button-wrap">
								<a class="btn btn-appstore" href="javascript:void(0)">
									<img src="/Data/Sites/1/skins/default/img/app_store.jpg">
									</img>
								</a>
								<a class="btn btn-gplus" href="javascript:void(0)">
									<img src="/Data/Sites/1/skins/default/img/g_plus.jpg">
									</img>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- <section class="container">
			<div class="promotion-other">
				<h2 class="main-title">
					<xsl:value-of select="/NewsDetail/ServiceOtherText"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:if test="position()=1">
		<img>
		<xsl:attribute name="src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		</img>
			
		</xsl:if>
	</xsl:template>

	<!-- <xsl:template match="NewsOther">
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
			</a>
		</div>
	</xsl:template> -->
</xsl:stylesheet>