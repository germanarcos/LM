<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <xsl:for-each select="//ciclo">
        <p><xsl:value-of select="nombre"/></p>
      </xsl:for-each>
    </html>
  </xsl:template>
</xsl:stylesheet>