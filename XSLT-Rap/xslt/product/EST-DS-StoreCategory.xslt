<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="ajaxresponse">
			<div class="row">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="Product">
		<div class="col-lg-3 col-md-4 col-6">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img-box">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
						<p>
							<span class="mdi mdi-table-of-contents"></span>
							<span>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</p>
						<p>
							<span class="mdi mdi-map-marker"></span>
							<span>
								<xsl:value-of select="Code" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</p>
						<!-- <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of> -->
						<!-- <p><span class="mdi mdi-table-of-contents"></span><span>Leisure & Entertainment</span></p>
						<p><span class="mdi mdi-map-marker"></span><span>Floor: 03</span></p> -->
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>