<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio XSLT</title>
        </head>
        <body>
            <h3><u>Obras de autores nacidos después de 1900</u></h3>
            <ol>
                <xsl:for-each select="/catalogo/libro/autores/autor">
                    <xsl:sort select="." order="descending" />
                        <li> <xsl:value-of select="."/> </li>
                </xsl:for-each>          
            </ol>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>