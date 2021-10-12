<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" encoding="utf-8" indent="yes"/>

    <xsl:template match="/">
        
      Esemene eesnimi:
      <xsl:value-of select="/inimesed/inimene[1]/eesnimi"/>
      <br></br>
      Viimane eesnimi:
      <xsl:value-of select="/inimesed/inimene[last()]/eesnimi"/>
      <br></br>
      Esitäht eesnimes:
      <xsl:value-of select="substring(/inimesed/inimene[1]/eesnimi, 1,1)"/>

      <br></br> Eesnimi, Perekonnanimi
      <xsl:value-of select="concat(/inimesed/inimene[1]/eesnimi, ',',
                    /inimesed/inimene[1]/perenimi)"/>


      <br></br> eesnimi Teksti pikkus:
      <xsl:value-of select="string-length(/inimesed/inimene[1]/eesnimi)"/>

      <br /> Loendame inimeste arv = 
      <xsl:value-of select="count(/inimesed/inimene)"/>

      <br /> Sündinute= 2003 inimeste arv
      <xsl:value-of select="count(/inimesed/inimene[synd=2003])"/>

      <br /> väiksem Sündinute= 2003 inimeste arv
      <xsl:value-of select="count(/inimesed/inimene[synd&lt;2003])"/>
      
      <ul>
      <br /> Kordised - kõik perenimed nimekirjast
      <br/>
        <xsl:for-each select="inimesed/inimene">
          <li>
            <xsl:value-of select="perenimi"/>
          </li>
        </xsl:for-each>
      </ul>

      <ul>
        <br /> Kordised - kõik perenimed nimekirjast - variant 2
        <br/>
        <xsl:for-each select="inimesed/inimene/perenimi">
          <li>
            <xsl:value-of select="."/>
          </li>
        </xsl:for-each>
      </ul>
      <br />
      Leia kõik nimed , mis algavad .... tähega
      <xsl:for-each select="/inimesed/inimene[starts-with(eesnimi, 'J')]">
        <xsl:sort select="synd" order="descending"/>
        <xsl:value-of select="concat(perenimi,',', synd)"/>
        <xsl:text></xsl:text>
      </xsl:for-each> 
      
      
    </xsl:template>
</xsl:stylesheet>
