<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<paises>
			<xsl:for-each select="//museo">
				<pais>
					<xsl:attribute name="nombre">
						<xsl:value-of select="@pais"/>
					</xsl:attribute>
					<ciudad>
						<xsl:attribute name="nombre">
							<xsl:value-of select="@ciudad"/>
						</xsl:attribute>
						<museo>
							<xsl:attribute name="nombre">
								<xsl:value-of select="@nombre"/>
							</xsl:attribute>
						</museo>
					</ciudad>
				</pais>
			</xsl:for-each>
		</paises>
	</xsl:template>
</xsl:stylesheet>