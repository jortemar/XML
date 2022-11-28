<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <head>
            <title>Inventario 2 XSLT</title>
        </head>
        <body>
            <table border="1px">
                <tr>
                    <th>PRODUCTO</th>
                    <th>PESO</th>
                    <th>LUGAR</th>
                </tr>
                <xsl:for-each select="inventario/producto">
                    <tr>
                        <td> <xsl:value-of select="nombre"/> </td>
                        <td> <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/> </td>
                        <td> <xsl:value-of select="lugar/@edificio"/> <xsl:value-of select="lugar/aula"/> </td>
                    </tr> 
                </xsl:for-each>       
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>