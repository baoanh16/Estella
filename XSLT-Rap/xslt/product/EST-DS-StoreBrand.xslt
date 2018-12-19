<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		
		<div class="ajaxresponse">
			<input type="hidden" id="txtKeyword">
			  <xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeyWord"/>
			  </xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlOutParam">
			  <xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlOutParam"/>
			  </xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlWithParam">
			  <xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlWithParam"/>
			  </xsl:attribute>
			</input>
			<div class="row">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="Product">
		<div class="col-6 col-md-4 col-lg-3">
			<a class="item">
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<div class="item-box">
					<div class="title">
						<h4>
							<xsl:value-of select='Title' disable-output-escaping='yes'></xsl:value-of>
						</h4>
					</div>
					<div class="desc">
						<p>
							<xsl:value-of select='Code' disable-output-escaping='yes'></xsl:value-of>
						</p>
					</div>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>