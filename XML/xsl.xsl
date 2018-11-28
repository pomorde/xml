<?xml version="1.0" encoding = "utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html>
   <body>
   <Center><h1>Каталог</h1></Center>
   <table border="4">
     <tr bgcolor="#a8d8ff">
	   <th>Цена</th>
       <th>Название</th>
	   <th>Авторы</th>
	   <th>Описание</th>
	   
     </tr>
     <xsl:for-each select="Catalog/Book">
     <tr>
	
	  <td><xsl:value-of select="@price"/></td>
       <td><xsl:value-of select="title"/></td>
	    <td><xsl:value-of select="Author//fio"/></td>
		<td><xsl:value-of select="describe"/></td>
	  
	  
     </tr>
     </xsl:for-each>
   </table>
   </body>
   </html>
</xsl:template>
</xsl:stylesheet> 
