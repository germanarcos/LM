<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html lang="en">
      <head>
        <meta name="autor" content="German"></meta>
      </head>
      <body>
        <xsl:for-each select="//ciclo">
          <xsl:value-of select="nombre"/>
          <br/>
        </xsl:for-each>
      
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>