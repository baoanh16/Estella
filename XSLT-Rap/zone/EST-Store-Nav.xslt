<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="store-nav">
			<div class="container">
				<h2 class="main-title">
					<xsl:value-of select='/ZoneList/StoreDirectoryText'></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-lg-4 col-sm-8 offset-lg-4 offset-sm-2">
						<div class="store-search">
							<input placeholder="Tìm nhanh (Ví dụ: Annam Gourmet)">
								<xsl:attribute name="placeholder">
									<xsl:value-of select="/ZoneList/PlaceholderSearchText"/>
								</xsl:attribute> 
							</input>
							<button></button>
						</div>
					</div>
					<div class="col-12">
						<nav class="store-menu-list"> 
							<ul>
								<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name='class'>
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="nav-link">
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select='Title'></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>