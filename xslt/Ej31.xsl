<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html lang="en">
			<head>
				<meta name="autor" content="German"></meta>
			</head>
			<body>
				<h1>Ciclos formativos del IES Santiago Hernandez</h1>
				<ul>
					<xsl:for-each select="//ciclo">
						<li><xsl:value-of select="@id"/>
							<br/>
						<xsl:value-of select="nombre"/>, Ciclo Formativo de grado
						<xsl:value-of select="grado"/>
							creado en <xsl:value-of select="decretoTitulo/@año"/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>