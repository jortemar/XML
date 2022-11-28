<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio XSLT</title>
        </head>
        <body>
            <h3><u>Obras de autores nacidos después de 1900</u></h3>
            <ul>
                <xsl:for-each select="/catalogo/libro/autores/autor">
                    <xsl:if test="@nacimiento > 1700">
                        <li> <xsl:value-of select="."/> </li>
                    </xsl:if>    
                </xsl:for-each>          
            </ul>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>