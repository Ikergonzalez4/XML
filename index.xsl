<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Noticias</title>
      </head>
      <body>
        <xsl:for-each select="//item[(substring(date,6,2) = '04' or substring(date,6,2) = '02' or substring(date,6,2) = '03' or substring(date,6,2) = '05'or substring(date,6,2) = '06' or substring(date,6,2) = '07' or substring(date,6,2) = '08' or substring(date,6,2) = '09' or substring(date,6,2) = '10' or substring(date,6,2) = '11')]">
          <xsl:sort select="date" order="descending"/>
          <xsl:choose>
            <xsl:when test="contains(category, 'Deporte')">
              <div style="color: yellow">
                <h2><xsl:value-of select="title"/></h2>
                <p><xsl:value-of select="description"/></p>
              </div>
            </xsl:when>
            <xsl:when test="contains(category, 'Economia')">
              <div style="color: red">
                <h2><xsl:value-of select="title"/></h2>
                <p><xsl:value-of select="description"/></p>
              </div>
            </xsl:when>
            <xsl:when test="contains(category, 'Cultura')">
              <div style="color: green">
                <h2><xsl:value-of select="title"/></h2>
                <p><xsl:value-of select="description"/></p>
              </div>
            </xsl:when>
            <xsl:when test="contains(category, 'Politica')">
              <div style="color: blue">
                <h2><xsl:value-of select="title"/></h2>
                <p><xsl:value-of select="description"/></p>
              </div>
            </xsl:when>
            <xsl:otherwise>
              <div style="color: black">
                <h2><xsl:value-of select="title"/></h2>
                <p><xsl:value-of select="description"/></p>
              </div>
            </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
