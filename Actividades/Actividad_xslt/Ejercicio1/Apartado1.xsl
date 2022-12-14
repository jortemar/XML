<!-- 1.-Mostrar en un HTML con lista numerada los títulos de los libros con algún autor nacido despues de 1900. -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 1. Apartado 1</title>
        </head>
        <body>
            <h3><u>Obras de autores nacidos después de 1900</u></h3>
            <ol>
                <xsl:for-each select="/catalogo/libro/autores/autor">
                    <xsl:if test="@nacimiento > 1900">  <!-- se puede utilizar '&gt;' o '>' -->
                        <li><xsl:value-of select="../../titulo"/>, de <xsl:value-of select="."/></li>
                    </xsl:if>
                </xsl:for-each>
            </ol>    
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>