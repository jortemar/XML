<!-- 3. Hacer una plantilla que fabrique una tabla con los datos de los productos del edificio A y otra
tabla separada para los productos del edificio B -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2. Apartado 3</title>
        </head>
        <body>
            <h3><u>Tabla de productos de edificio A</u></h3>
            <table border="1px">
                <tr>
                    <th>Producto</th>
                    <th>Peso</th>
                    <th>Lugar</th>
                </tr> 
                <xsl:for-each select="inventario/producto">    
                    <xsl:if test="lugar/@edificio='A'">                                                  
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
                    </xsl:if>           
                </xsl:for-each>
            </table>  

            <h3><u>Tabla de productos de edificio B</u></h3>
            <table border="1px">
                <tr>
                    <th>Producto</th>
                    <th>Peso</th>
                    <th>Lugar</th>
                </tr> 
        <xsl:for-each select="inventario/producto">    
            <xsl:if test="lugar/@edificio='B'">                                                  
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
            </xsl:if>           
        </xsl:for-each>
            </table>      
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>