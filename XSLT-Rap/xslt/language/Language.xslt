<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="current-lang">
			<xsl:apply-templates select="/LanguageList/Language" mode="Nav"></xsl:apply-templates>
		</div>
		<ul>
			<xsl:apply-templates select="/LanguageList/Language" mode="List"></xsl:apply-templates>
		</ul>
		<span class="lnr lnr-chevron-down"></span>
	</xsl:template>

	<xsl:template match="Language" mode="Nav">
		<div class="img d-none">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>img</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>


	<xsl:template match="Language" mode="List">
		<li>
			<!-- <xsl:if test="position()=2">
				<xsl:attribute name="class">
					<xsl:text>d-none</xsl:text>
				</xsl:attribute>
			</xsl:if> -->
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>