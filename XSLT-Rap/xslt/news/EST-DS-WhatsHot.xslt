<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="promotion-list">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-4 col-sm-6">
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
							<xsl:value-of select='Title'></xsl:value-of>
						</h4>
						<p>
							<span>
								<xsl:value-of select="/NewsList/LocationText"></xsl:value-of>
							</span>
							<span>
								<xsl:value-of select="BriefContent" disable-output-escaping='yes'></xsl:value-of>
							</span>
						</p>
						<p>
							<span>
								<xsl:value-of select="/NewsList/DurationText"></xsl:value-of>
							</span>
							<span>
								<xsl:value-of select="SubTitle" disable-output-escaping='yes'></xsl:value-of>
							</span>
						</p>
						
					</figcaption>
				</figure>
			</a></div>
	</xsl:template>
</xsl:stylesheet>