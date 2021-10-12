<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" encoding="utf-8" indent="yes"/>

  <xsl:template match="/">

    Trüki välja auto registrinumber:
    <xsl:value-of select="/autos/auto[1]/regiNumber"/>
    <br></br>
    Trüki välja auto registrinumbri numbrite osa:
    <xsl:value-of select="substring(/autos/auto[1]/regiNumber, 5)"/>
    <br />
    Trüki välja auto registrinumbri tähtede osa:
    <xsl:value-of select="substring(/autos/auto[1]/regiNumber, 0,5)"/>
    <br />
    Trüki välja inimese perekonnanime esimene täht:
    <xsl:value-of select="substring(/autos/auto[1]/perenimi, 1,1)"/>
    <br />
    Trüki välja inimese perekonnanime viimane täht:
    <xsl:value-of select="substring(/autos/auto[1]/perenimi,(string-length(/autos/auto[1]/perenimi)))"/>
    <br />
    Leia, mitme inimese perekonnanimi on Kaalikas / Cколько человек с фамилией ...
    <xsl:value-of select="count(/autos/auto[perenimi = 'Valjataga'])"/>
    <br />
    Leia, mitme inimese perekonnanimi algab M-tähega / Cколько людей имеют фамилию с первой буквой M.
    <xsl:for-each select="/autos/auto[starts-with(perenimi, 'M')]">
    <xsl:sort select="perenimi" order="descending"/>
    <xsl:value-of select="concat(perenimi,',', regiNumber)"/>
    <xsl:text></xsl:text>
  </xsl:for-each>
    <br />
    Leia, mitme auto registrimärgi numbritest viimane on 2 / количество авто, где в рег номере последняя цифра 2. - 
    <xsl:for-each select="/autos/auto[substring(regiNumber,string-length(regiNumber)) = 2]">
    <xsl:sort select="perenimi" order="descending"/>
    <xsl:value-of select="concat(perenimi,',', regiNumber)"/>
    <xsl:text></xsl:text>
  </xsl:for-each>
    <br></br>
    Leia, mitme auto registrimärgi numbritest viimane on 1 või 2 количество авто, где в рег номере последняя цифра 1 или 2.
    <xsl:for-each select="/autos/auto[substring(regiNumber,string-length(regiNumber)) = 1] ">
    <xsl:sort select="perenimi" order="descending"/>
    <xsl:value-of select="concat(perenimi,',', regiNumber)"/>
    <xsl:text></xsl:text>
  </xsl:for-each>

  </xsl:template>
</xsl:stylesheet>
