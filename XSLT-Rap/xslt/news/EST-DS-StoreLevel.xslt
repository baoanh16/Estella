<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="store-level">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<ul class="tab-nav">
							<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
						</ul>
					</div>
					<div class="col-12">
						<div class="tab-content">
							<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="Zone" mode="Nav">
		<li>
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a data-target="#sl-tab-1">
				<xsl:attribute name='data-target'>
					<xsl:text>#sl-tab-</xsl:text>
					<xsl:value-of select='position()'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<div class="sl-tab" id="sl-tab-1">
			<xsl:if test="position() = 1">
				<xsl:attribute name='class'>
					<xsl:text>sl-tab show</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name='id'>
				<xsl:text>sl-tab-</xsl:text>
				<xsl:value-of select='position()'></xsl:value-of>
			</xsl:attribute>
			<xsl:apply-templates select='News'></xsl:apply-templates>
		</div>
	</xsl:template>


	<xsl:template match='News'>
		<xsl:if test="position()=1">
			<div class="content">
				<a data-fancybox="">
					<xsl:attribute name='href'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>