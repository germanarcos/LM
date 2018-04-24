<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<ciudades>
			<xsl:for-each select="/museos/museo">
				<ciudad>
					<nombre>
						<xsl:value-of select="ciudad"/>
					</nombre>
					<pais>
						<xsl:value-of select="pais"/>
					</pais>
					<museo>
						<xsl:value-of select="nombre"/>
					</museo>
				</ciudad>
			</xsl:for-each>
		</ciudades>
	</xsl:template>
</xsl:stylesheet>