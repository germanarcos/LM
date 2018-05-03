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
          <table border="1" span="lluvia">
            <caption>Probabilidades de lluvia</caption>
            <xsl:for-each select="prob_precipitacion">
              <tr>
                <td>
                  <xsl:value-of select="@periodo"/>
                </td>
                <td>
                  <xsl:if test="text() and text() != 0">
                    <xsl:value-of select ="node()"/>
                  </xsl:if>
                  <xsl:if test="not(text()) or text()=0">
                    0%
                  </xsl:if>
                </td>
              </tr>
              <xsl:if test="text()">
              </xsl:if>
            </xsl:for-each>
          </table>
          <table border="1" span="nieve">
            <caption>Probabilidades de nevada</caption>
            <xsl:for-each select="cota_nieve_prov">
              <tr>
                <td>
                  <xsl:value-of select="@periodo"/>
                </td>
                <td>
                  <xsl:choose>
                    <xsl:when test="not(text())">
                      Sin probabilidad de nevada
                    </xsl:when>
                    <xsl:when test="text()">
                      La cota de nieve es de: <xsl:value-of select="text()"></xsl:value-of> m
                    </xsl:when>
                  </xsl:choose>
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <table border="1" span ="cielo">
            <caption>Estado del cielo</caption>
            <xsl:for-each select="estado_cielo">

              <xsl:choose>
                <xsl:when test="text()">
                  <tr>
                    <td>
                      <xsl:value-of select="@periodo"/>
                    </td>
                    <td>
                      <xsl:choose>
                        <xsl:when test="text()=11">
                          <img src="imagenes/11_g.png" alt ="Despejado"/>
                        </xsl:when>
                        <xsl:when test="text()=12">
                          <img src="imagenes/12_g" alt="Poco nuboso"/>
                        </xsl:when>
                        <xsl:when test="text()=13">
                          <img src="imagenes/13_g.png" alt="Intervalos nubosos"/>
                        </xsl:when>
                        <xsl:when test="text()=17">
                          Nubes altas
                        </xsl:when>
                        <xsl:when test="text()=26">
                          <img src="imagenes/46_g.png" alt="Cubierto con lluvia"/>
                        </xsl:when>
                      </xsl:choose>
                    </td>
                  </tr>
                </xsl:when>
                <xsl:otherwise>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:for-each>

          </table>

        </xsl:for-each>
        <!-- Cada dia-->
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>