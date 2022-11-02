<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h3>COLECCION DE RAQUETAS</h3>
                <table border="1">
                    <tr bgcolor="#CCFFFF">
                        <th style="text-align:left">MARCA</th>
                        <th style="text-align:left">MODELO</th>
                        <th style="text-align:left">AÑO</th>
                    </tr>
                <xsl:for-each select="tienda/raqueta"> <!--(dentro del select) [marca = 'babolat']--> 
                    <tr>
                        <td><xsl:value-of select="marca"/></td>
                        <td><xsl:value-of select="modelo"/></td>
                        <td><xsl:value-of select="anio"/></td>
                    </tr>
                </xsl:for-each>    
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>