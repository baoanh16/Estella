<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="promotion-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-sm-10 mx-auto">
						<div class="content">
							<div class="title">
								<h2>
									<xsl:value-of select='/NewsDetail/Title' disable-output-escaping='yes'></xsl:value-of>
									<xsl:value-of select='/NewsDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
								</h2>
							</div>
							<!-- <div class="briefContent">
								<xsl:value-of select='/NewsDetail/BriefContent' disable-output-escaping='yes'></xsl:value-of>
							</div> -->
							<p>
								<span class="mdi mdi-map-marker"></span>
								<b>Location</b>
								<span>
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping='yes'></xsl:value-of>
								</span>
							</p>
							<p>
								<span class="fas fa-clipboard-list"></span>
								<b>Duration</b>
								<span>
									<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping='yes'></xsl:value-of>
								</span>
							</p>
							<div class="fullContent">
								<xsl:value-of select='/NewsDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
								<div class="image">
									<img>
									<xsl:attribute name='src'>
										<xsl:value-of select='/NewsDetail/ImageUrl'></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name='alt'>
										<xsl:value-of select='Title'></xsl:value-of>
									</xsl:attribute>
									</img>
								</div>
							</div>
						</div>
						<div class="social">
							<xsl:value-of select="/NewsDetail/FacebookLike" disable-output-escaping="yes"></xsl:value-of>
							<!-- <xsl:value-of select="/NewsDetail/TweetThis" disable-output-escaping="yes"></xsl:value-of> -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="container">
			<div class="promotion-other">
				<h2 class="main-title">More Happenings</h2>
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
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<a class="item">
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Title'></xsl:value-of>
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
						<xsl:value-of select='BriefContent' disable-output-escaping='yes'></xsl:value-of>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>