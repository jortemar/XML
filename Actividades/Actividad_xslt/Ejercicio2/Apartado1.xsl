<!-- 1. Se pide  mostrar en el resultado la misma información del fichero origen pero solo en los casos
en que el lugar del producto sea el edificio B -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2. Apartado 1</title>
        </head>
        <body>
            <h3><u>Datos de Edificio B</u></h3>
            <xsl:for-each select="inventario/producto">
                <xsl:if test="lugar/@edificio='B'">                                          
                    Peso: <xsl:value-of select="peso"/><xsl:value-of select="peso/@unidad"/><br/>
                    Código Producto: <xsl:value-of select="@codigo"/><br/>
                    Producto: <xsl:value-of select="nombre"/><br/>
                    Aula: <xsl:value-of select="lugar/aula"/>                                                              
                </xsl:if>
            </xsl:for-each>                
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>