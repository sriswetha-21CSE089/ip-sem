<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : bookdis.xsl
    Created on : 17 May, 2023, 5:42 PM
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
                <title>bookdis.xsl</title>
            </head>
            <body>
                <xsl:for-each select="root/book">
                    <xsl:value-of select="title"/>
                    <xsl:value-of select="author"/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
