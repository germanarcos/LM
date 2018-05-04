<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>El tiempo</title>
      </head>
      <body>
        <!--Enlace a la pagina de wikipedia de la ciudad que sea-->
        Ciudad: <a>
          <xsl:attribute name="href">
            https://es.wikipedia.org/wiki/<xsl:value-of select="//provincia"/>
          </xsl:attribute>
          <xsl:value-of select="//provincia"/>
        </a>

        <xsl:for-each select="//dia">
          <!--Se crea la division para poder estructurar mejor la pagina utilizando css-->
          <div>
            <h1>
              <xsl:value-of select="@fecha"/>
            </h1>
            <!--Span creado para el css posterior-->
            <table border="1" span="lluvia">
              <caption>Probabilidades de lluvia</caption>
              <xsl:for-each select="prob_precipitacion">
                <tr>
                  <td>
                    <xsl:choose>
                      <xsl:when test="@periodo">
                        <xsl:value-of select="@periodo"/>
                      </xsl:when>
                      <xsl:otherwise>
                        Todo el día
                      </xsl:otherwise>
                    </xsl:choose>
                  </td>
                  <td>
                    <xsl:if test="text() and text() != 0">
                      <xsl:value-of select ="node()"/>%
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
                    <xsl:choose>
                      <xsl:when test="@periodo">
                        <xsl:value-of select="@periodo"/>%
                      </xsl:when>
                      <!--Si no se especifica un periodo es porque la prevision es para todo el dia-->
                      <xsl:otherwise>
                        Todo el día
                      </xsl:otherwise>
                    </xsl:choose>
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
                        <xsl:choose>
                          <xsl:when test="@periodo">
                            <xsl:value-of select="@periodo"/>
                          </xsl:when>
                          <xsl:otherwise>
                            Todo el día
                          </xsl:otherwise>
                        </xsl:choose>
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
                          <!--en caso de que no haya una imagen disponible muestra el texto descriptivo
                        que se encuentre en el xml-->
                          <xsl:otherwise>
                            No hay imágen disponible: <xsl:value-of select="text()"/>
                          </xsl:otherwise>
                        </xsl:choose>
                      </td>
                    </tr>
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </table>


            <table border="1" span ="viento">
              <caption>Viento</caption>
              <xsl:for-each select="viento">
                <xsl:choose>
                  <!--si no hay valores no crea la fila de la tabla-->
                  <xsl:when test="direccion/text()">
                    <tr>
                      <td>
                        <xsl:choose>
                          <xsl:when test="@periodo">
                            <xsl:value-of select="@periodo"/>
                          </xsl:when>
                          <xsl:otherwise>
                            Todo el día
                          </xsl:otherwise>
                        </xsl:choose>
                      </td>
                      <td>
                        <xsl:value-of select="direccion"/>
                      </td>
                      <td>
                        <xsl:value-of select="velocidad"/>
                      </td>
                    </tr>
                  </xsl:when>
                </xsl:choose>
              </xsl:for-each>
            </table>

            <table border="1" span ="temperatura">
              <caption>Temperatura</caption>
              <xsl:for-each select="temperatura/dato">
                <tr>
                  <td>
                    Hora:<xsl:value-of select="@hora"/>
                  </td>
                  <td>
                    <xsl:value-of select="text()"/>ºC
                  </td>
                </tr>
              </xsl:for-each>
              <tr>
                <td>
                  Máxima:
                </td>
                <td>
                  <xsl:value-of select="temperatura/maxima"/>ºC
                </td>
              </tr>
              <tr>
                <td>
                  Mínima:
                </td>
                <td>
                  <xsl:value-of select="temperatura/minima"/>ºC
                </td>
              </tr>
            </table>

            <table border="1" span ="humedad">
              <caption>Humedad</caption>
              <xsl:for-each select="humedad_relativa/dato">
                <tr>
                  <td>
                    Hora: <xsl:value-of select="@hora"/>
                  </td>
                  <td>
                    <xsl:value-of select="text()"/>%
                  </td>
                </tr>
              </xsl:for-each>
              <tr>
                <td>
                  Máxima:
                </td>
                <td>
                  <xsl:value-of select="temperatura/maxima"/>%
                </td>
              </tr>
              <tr>
                <td>
                  Mínima:
                </td>
                <td>
                  <xsl:value-of select="temperatura/minima"/>%
                </td>
              </tr>
            </table>
          </div>
        </xsl:for-each>
        <!-- Cada dia-->
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>