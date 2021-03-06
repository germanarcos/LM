<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<paises>
			<xsl:for-each select="/museos/museo">
				<pais>
					<xsl:attribute name="nombre">
						<xsl:value-of select="pais"/>
					</xsl:attribute>
					<museo>
						<xsl:attribute name="museo">
							<xsl:value-of select="nombre"/>
						</xsl:attribute>
						<xsl:attribute name="ciudad">
							<xsl:value-of select="ciudad"/>
						</xsl:attribute>
					</museo>
				</pais>
			</xsl:for-each>
		</paises>
	</xsl:template>
</xsl:stylesheet>