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
                        <br/>
                        <xsl:value-of select="runTime"/>
                        <br/>
                        <xsl:value-of select="productionCompany"/>     
                    </p>
                    <p>
                        <a href="https://www.imdb.com/title/{imdbRef}"> IMDb</a>
                    </p>
                    <p>Director:<br/>
                        <xsl:value-of select="director/name"/>
                        <br/>
                        <xsl:value-of select="director/birthdate"/>   
                    </p>
                    <p>MetaScore: 
                        <xsl:value-of select="metascore"/>
                        <br/>Rotten Tomatoes: 
                        <xsl:value-of select="rottenTomatoes"/>
                            
                        <xsl:for-each select="keywords">
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
