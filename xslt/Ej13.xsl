﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <ul>
        <xsl:for-each select="//ciclo">
          <li>
            <xsl:value-of select="nombre"/>
          </li>
        </xsl:for-each>
      </ul>
    </html>
  </xsl:template>
</xsl:stylesheet>