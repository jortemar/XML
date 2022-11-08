<!-- 
2. Generar una tabla HTML que muestre la información del fichero origen de la manera siguiente:
                  ordenador   10   B10
                  switch              5....A6
                  Mesa ..............15   B6
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2. Apartado 2</title>
        </head>
        <body>
            <h3><u>Tabla de fichero</u></h3>
            <table border="1px">
                <tr>
                    <th>Producto</th>
                    <th>Peso</th>
                    <th>Lugar</th>
                </tr>               
                <xsl:for-each select="inventario/producto">   
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <xsl:choose>
                            <!-- si el peso está en g, se divide entre 1000 para que se convierta a kg. Si no se queda como está -->
                            <xsl:when test="peso/@unidad='g'">
                                <xsl:variable name="convertirPeso"><xsl:value-of select="peso"/></xsl:variable>
                                <td><xsl:value-of select="$convertirPeso div 1000"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td><xsl:value-of select="peso"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                    </tr>                                                                                                                                     
                </xsl:for-each>            
            </table>        
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>