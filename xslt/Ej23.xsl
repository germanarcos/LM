<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<h1>
				<xsl:call-template name="nombre"/>
			</h1>
			<p>Página web <a><xsl:value-of select="/ies/@web"/>
				<xsl:attribute name="href">
					<xsl:value-of select="/ies/@web"/>
				</xsl:attribute>
			</a>
		</p>
			<table border="1">
				<tr>
					<th>Nombre del ciclo</th>
					<th>Grado</th>
					<th>Año del titulo</th>
				</tr>
				<xsl:for-each select="//ciclo">
					<tr>
						<td>
							<xsl:value-of select="nombre"/>
						</td>
						<td>
							<xsl:value-of select="grado"/>
						</td>
						<td>
							<xsl:value-of select="decretoTitulo/@año"/>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</html>
	</xsl:template>
	<xsl:template name="nombre">
		<xsl:value-of select="/ies/@nombre"/>
	</xsl:template>
</xsl:stylesheet>