<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>

      </head>
      <body>

        <xsl:for-each select="//dia">
          <xsl:value-of select="@fecha"/>
          <table border="1">

              <xsl:for-each select="prob_precipitacion">
                <tr>
                  <td>
                  <xsl:value-of select="@periodo"/>
                  </td>
                  <td>
                    <xsl:if test="text()">
                      <xsl:value-of select ="node()"/>
                    </xsl:if>
                    <xsl:if test="not(text())">
                      No hay posibilidad
                    </xsl:if>
                  </td>
                </tr>
                <xsl:if test="text()">


                </xsl:if>

              </xsl:for-each>
          </table>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>