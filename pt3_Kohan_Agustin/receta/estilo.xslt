<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <body>

  <link rel="stylesheet" href="../css/Style.css" />
	<header>
	<!--lista-->
		<div class="paginas">          
                <a class="linkpaginas" href="../index.html">Inicio</a>
                <a class="linkpaginas" href="../listado/Llista de receptes.html">Sobre mí</a>
                <a class="linkpaginas" href="../listado/Llista de receptes.html">Recetas</a>
                <a class="linkpaginas" href="../contacto/Formulari de contacte.html">Contacto</a>
                <a class="linkpaginas" href="../listado/Llista de receptes.html">Otras Cosas</a>        
        </div>		
	</header>

      <h2><xsl:value-of select="recetas/receta/nombre"/></h2>
      <h3><xsl:value-of select="recetas/receta/cantidad"/></h3>
      <table border="1">
        <tr bgcolor="#9acd32">
          <th style="text-align:left">Ingredientes</th>
        </tr>
        <xsl:for-each select="recetas/receta/ingredientes/ingrediente">
        <tr bgcolor="#b4ff9a">
          <td><xsl:value-of select="nombre_ingrediente"/></td>
          <td><xsl:value-of select="cantidad"/></td>
        </tr>
        </xsl:for-each>
        <!---->
        <tr bgcolor="#9acd32">
          <th style="text-align:left">Procedimiento</th>
        </tr>
        <xsl:for-each select="recetas/receta/preparacion">
        <tr bgcolor="#b4ff9a">
          <td><xsl:value-of select="dificultad"/></td>
          <td><xsl:value-of select="tiempo"/></td>
        </tr>
        </xsl:for-each>
        <xsl:for-each select="recetas/receta/instrucciones">
        <tr bgcolor="#b4ff9a">
          <td><xsl:value-of select="paso"/></td>
        </tr>
        </xsl:for-each>
      </table>

  <footer>
                <div class="redes">
                        <a class="linkredes" href="./listado/Llista de receptes.html">Facebook</a>
                        <a class="linkredes" href="./listado/Llista de receptes.html">Twitter</a>
                        <a class="linkredes" href="./listado/Llista de receptes.html">Instagram</a>
                        <a class="linkredes" href="./contacto/Formulari de contacte.html">Pinterest</a>
                        <a class="linkredes" href="./listado/Llista de receptes.html">Email</a>
                        <a class="linkredes" href="./listado/Llista de receptes.html">RSS</a>
                </div>
            </footer>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>