<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0" > 
    <xsl:template match="/"> 
        <html> 
            <body> 
                <xsl:for-each select="playList/movie">
                    <h2 align="center">
                        <xsl:value-of select="title"/>
                    </h2>
                    <p>
                        <xsl:value-of select="year"/>
                        <xsl:value-of select="runTime"/>
                        <xsl:value-of select="productionCompany"/>
                        <a>
                            <xsl:value-of select="imbRef"/>
                        </a>
                        <xsl:value-of select="name"/>
                        <xsl:value-of select="birthdate"/>
                        <xsl:value-of select="metascore"/>
                        <xsl:value-of select="rottenTomatoes"/>
                        <xsl:for-each select="keyword">
                            <ul>
                                <li>
                                    <xsl:value-of select="keyword"/>
                                </li>
                            </ul>
                        </xsl:for-each>
                    </p>
                </xsl:for-each>
            </body> 
        </html> 
    </xsl:template> 
</xsl:stylesheet> 
