<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<lugares>
			<xsl:for-each select="//museo">
				<lugar tipo="museo">
					<ubicacion nombre="ciudad">
						<xsl:value-of select="@ciudad"/>
					</ubicacion>
					<ubicacion nombre="pais">
						<xsl:value-of select="@pais"/>
					</ubicacion>
					<nombre>
						<xsl:value-of select="@nombre"/>
					</nombre>
				</lugar>
			</xsl:for-each>
		</lugares>
	</xsl:template>
</xsl:stylesheet>