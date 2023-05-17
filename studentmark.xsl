<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : studentmark.xsl
    Created on : 17 May, 2023, 11:03 PM
    Author     : Vishnu
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>studentmark.xsl</title>
                <style>
                    .pass{
                    color:green;
                    }
                    .fail{
                     color:red;
                    }
                    
                </style> 

            </head>
            <body>
                <table>
                    <xsl:for-each select="root/student">
                        <tr>
                            <td>
                                <xsl:value-of select="name"></xsl:value-of>
                            </td>
                             <td>
                                <xsl:value-of select="marks/tam"></xsl:value-of>
                            </td>
                             <td>
                                <xsl:value-of select="marks/mat"></xsl:value-of>
                            </td>
                             <td>
                                <xsl:value-of select="marks/soc"></xsl:value-of>
                            </td>
                            
                            <xsl:choose>  
                                <xsl:when test="marks/tam &gt;=30 and marks/mat &gt;=30 and marks/soc &gt;=30">
                               <td>     <span class="pass">pass</span></td>
                                </xsl:when>
                                <xsl:otherwise>
                                <td>      <span class="fail">fail</span></td>
                                </xsl:otherwise>
                            
                            </xsl:choose>
                        </tr>  
                    </xsl:for-each>
                </table>   
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
