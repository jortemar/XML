<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Inventario 1 XSLT</title>
        </head>
        <body>
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