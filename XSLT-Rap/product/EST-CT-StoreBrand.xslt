<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="store-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-xl-4 col-md-6">
						<div class="store-img">
							<xsl:apply-templates select='/ProductDetail/ProductImages'></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-7 col-xl-8 col-md-6">
						<div class="store-content">
							<div class="title">
								<h2>
									<xsl:value-of select='/ProductDetail/Title'></xsl:value-of>
									<xsl:value-of select='/ProductDetail/EditLink' disable-output-escaping='yes'></xsl:value-of>
								</h2>
							</div>
							<div class="fullContent">
								<p>
									<span class="mdi mdi-table-of-contents"></span>
									<span>
										<xsl:value-of select="/ProductDetail/SubTitle" disable-output-escaping='yes'></xsl:value-of>
									</span>
								</p>
								<p>
									<span class="mdi mdi-map-marker"></span>
									<span>
										<xsl:value-of select="/ProductDetail/Code" disable-output-escaping='yes'></xsl:value-of>
									</span>
								</p>
								<xsl:value-of select='/ProductDetail/FullContent' disable-output-escaping='yes'></xsl:value-of>
							</div>
							<div class="briefContent">
								<xsl:value-of select='/ProductDetail/BriefContent' disable-output-escaping='yes'></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	
	<xsl:template match='ProductImages'>
		<xsl:if test="position()=1">
			<img>
				<xsl:attribute name='src'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='alt'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>