<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
    <body>
        <h3>Colección de raquetas</h3>
        <table border="1">
            <tr bgcolor="#CCFFFF">
                <th style="text-align:left">MARCA</th>
                <th style="text-align:left">MODELO</th>
                <th style="text-align:left">AÑO</th>
                <th style="text-align:left">PRECIO</th>
            </tr>
            <!-- RAQUETAS DE LA MARCA BABOLAT -->
            <!-- TAMBIÉN PUEDE HACERSE ASÍ
            <xsl:for-each select="tienda/raqueta[marca = 'Babolat'] ">
            (de esta forma no seria necesario el if)

            <xsl:for-each select="tienda/raqueta">
                <xsl:if test="marca = 'Babolat'">
                    <tr>
                        <td> <xsl:value-of select="./marca" /> </td>
                        <td> <xsl:value-of select="./modelo" /> </td>
                        <td> <xsl:value-of select="./año" /> </td>
                        <td> <xsl:value-of select="./precio" /> </td>
                    </tr>
                </xsl:if>
            </xsl:for-each>
            -->

            <!-- RAQUETAS CON PRECIO MAYOR A 150 
            <xsl:for-each select="tienda/raqueta[precio > 150]">
                    <tr>
                        <td> <xsl:value-of select="./marca" /> </td>
                        <td> <xsl:value-of select="./modelo" /> </td>
                        <td> <xsl:value-of select="./año" /> </td>
                        <td> <xsl:value-of select="./precio" /> </td>
                    </tr>
            </xsl:for-each>
            -->
            <!-- ORDENADAS POR PRECIO Y USANDO UN WHEN-OTHERWISE PARA EL PRECIO -->
            <xsl:for-each select="tienda/raqueta">
                <xsl:sort select="marca"/>
                    <tr>
                        <td> <xsl:value-of select="./marca" /> </td>
                        <td> <xsl:value-of select="./modelo" /> </td>
                        <td> <xsl:value-of select="./año" /> </td>
                            <xsl:choose>
                                <xsl:when test="precio > 150"> <!-- se puede usar &gt (mayor que) y &lt (menor que) -->
                                    <td bgcolor='#ffff66'><xsl:value-of select="precio"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor='#99ff99'><xsl:value-of select="precio"/></td>
                                </xsl:otherwise>
                            </xsl:choose>

                    </tr>
            </xsl:for-each>

        </table>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>