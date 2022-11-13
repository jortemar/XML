<!-- 4. Se pide  generar un fichero HTML con una tabla pero en la que solo aparezcan los
productos cuyo edificio sea el A y además pesen menos de 7kg. -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2. Apartado 2</title>
        </head>
        <body>
            <h3><u>Tabla de productos de edificio A y de menos de 7 kg</u></h3>
            <table border="1px">
                <tr>
                    <th>Producto</th>
                    <th>Peso</th>
                    <th>Lugar</th>
                </tr>               
                <xsl:for-each select="inventario/producto">    
                    <xsl:if test="lugar/@edificio = 'A'">
                        <xsl:if test="peso/@unidad='g'">
                            <xsl:if test="peso &lt; 7000">                                                  
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <xsl:variable name="convertirPeso"><xsl:value-of select="peso"/></xsl:variable>
                                    <td><xsl:value-of select="$convertirPeso div 1000"/></td>
                                    <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                                </tr> 
                            </xsl:if>
                        </xsl:if> 
                        <xsl:if test="peso/@unidad='kg'">
                            <xsl:if test="peso &lt; 7">                                                  
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="peso"/></td>
                                    <td><xsl:value-of select="lugar/@edificio"/><xsl:value-of select="lugar/aula"/></td>
                                </tr> 
                            </xsl:if>
                        </xsl:if>                                                                
                    </xsl:if>           
                </xsl:for-each>         
            </table>        
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
