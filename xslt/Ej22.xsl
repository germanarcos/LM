<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h1>
				<xsl:call-template name="nombre"/>
			</h1>
			<p>Página web <a>
				<xsl:value-of select="/ies/@web"/>
				<xsl:attribute name="href">
					<xsl:value-of select ="/ies/@web"/>
				</xsl:attribute>
			</a>
		</p>
			<ul>
				<xsl:for-each select="//ciclo">
					<li>
					<xsl:value-of select="nombre"/>
					</li>
				</xsl:for-each>
			</ul>
		</html>
	</xsl:template>
	<xsl:template name="nombre">
		<xsl:value-of select="/ies/@nombre"/>
	</xsl:template>
</xsl:stylesheet>