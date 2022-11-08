<!-- 3.-Mostrar el nombre de los autores nacidos despues del año 1700. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 1. Apartado 1</title>
        </head>
        <body>
            <h3><u>Autores nacidos después de 1700</u></h3>
            <ul>
                <xsl:for-each select="/catalogo/libro/autores/autor">
                    <xsl:if test="@nacimiento > 1700">  <!-- se puede utilizar '&gt;' o '>' -->
                        <li><xsl:value-of select="."/></li>
                    </xsl:if>
                </xsl:for-each>
            </ul>    
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
