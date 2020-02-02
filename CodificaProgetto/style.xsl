<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" version="1.0">
   <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
   <xsl:template match="/">
      <html>
         <head>
            <title>Cartoline Giovannino</title>
            <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet"/>
            <link href="css.css" rel="stylesheet" type="text/css"/>
            <script src="script.js"/>
            <meta charset="UTF-8"/>
         </head>
         <body>
            <!-- menu di navigazione -->
            <ul>
               <li>
                  <a href="#menu1">Cartolina 1: Un augurio da Modena</a>
               </li>
               <li>
                  <a href="#menu2">Cartolina 2: Un saluto da Giovannino</a>
               </li>
               <li>
                  <a href="#menu3">Cartolina 3: Le scuse di Giovannino</a>
               </li>
               <li>
                  <a href="#">Crediti</a>
               </li>
            </ul>
            <!-- Titolo pagina -->
            <header>
               <p>Le cartoline di Giovannino</p>
            </header>
            <!-- Tabelle a comparsa in base al retro cartolina su cui si passa sopra col cursore con CODIFICA LINGUISTICA-->
            <table id="tabella1">
               <tr>
                  <th>Parole</th>
                  <th>Categoria grammaticale</th>
                  <th>Lemma</th>
               </tr>
               <xsl:for-each select="//tei:p[@xml:id = 'corpo1']/tei:phr/tei:w">
                  <tr>
                     <td>
                        <xsl:value-of select="current()"/>
                     </td>
                     <xsl:choose>
                        <xsl:when test="@pos = 'NOM'">
                           <td> NOME COMUNE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ADJ'">
                           <td> AGGETTIVO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'NPR'">
                           <td> NOME PROPRIO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ADV'">
                           <td> AVVERBIO </td>
                        </xsl:when>
                     </xsl:choose>
                     <td>
                        <xsl:value-of select="current()/@lemma"/>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <table id="tabella2">
               <tr>
                  <th>Parole</th>
                  <th>Categoria grammaticale</th>
                  <th>Lemma</th>
               </tr>
               <xsl:for-each select="//tei:p[@xml:id = 'corpo2']/tei:phr/tei:w">
                  <tr>
                     <td>
                        <xsl:value-of select="current()"/>
                     </td>
                     <xsl:choose>
                        <xsl:when test="@pos = 'NOM'">
                           <td> NOME COMUNE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ADJ'">
                           <td> AGGETTIVO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'PRE'">
                           <td> PREPOSIZIONE </td>
                        </xsl:when>
                     </xsl:choose>
                     <td>
                        <xsl:value-of select="current()/@lemma"/>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <table id="tabella3">
               <tr>
                  <th>Parole</th>
                  <th>Categoria grammaticale</th>
                  <th>Lemma</th>
               </tr>
               <xsl:for-each select="//tei:p[@xml:id = 'solotesto3']/tei:phr/tei:w">
                  <tr>
                     <td>
                        <xsl:value-of select="current()"/>
                     </td>
                     <xsl:choose>
                        <xsl:when test="@pos = 'NOM'">
                           <td> NOME COMUNE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ADJ'">
                           <td> AGGETTIVO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'PRE'">
                           <td> PREPOSIZIONE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'PRO:pers'">
                           <td> PRONOME PERSONALE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'VER'">
                           <td> VERBO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'VER:inf'">
                           <td> VERBO INFINITO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ART'">
                           <td> ARTICOLO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'CON:coo'">
                           <td> CONGIUNZIONE COORDINANTE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'ADV'">
                           <td> AVVERBIO </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'PRE:art'">
                           <td> PREPOSIZIONE ARTICOLATA </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'PRO'">
                           <td> PRONOME </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'AUX:pper'">
                           <td> VERBO AUSILIARE </td>
                        </xsl:when>
                        <xsl:when test="@pos = 'CON:sub'">
                           <td> CONGIUNZIONE SUBORDINANTE </td>
                        </xsl:when>
                     </xsl:choose>
                     <td>
                        <xsl:value-of select="current()/@lemma"/>
                     </td>
                  </tr>
               </xsl:for-each>
            </table>
            <!-- teiHeader -->
            <xsl:element name="div1">
               <xsl:attribute name="id">crediti</xsl:attribute>
               <xsl:apply-templates select="//tei:title[@xml:id = 'titprinc']"/>
               <xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp1' or @xml:id = 'resp2']"/>
               <xsl:apply-templates select="//tei:respStmt[@xml:id = 'resp3' or @xml:id = 'resp4' or @xml:id = 'resp5' or @xml:id = 'resp6']"/>
               <xsl:apply-templates select="//tei:edition[@xml:id = 'edit']"/>
               <xsl:apply-templates select="//tei:publicationStmt[@xml:id = 'pub']"/>
            </xsl:element>
            <!-- div per posizionare il menu -->
            <div id="menu1"></div>
            <!-- Contenitore cartolina 1 -->
            <xsl:element name="div2">
               <xsl:attribute name="id">cartolina1</xsl:attribute>
               <div id="contenitore1">
                  <xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc1']"/>
                  <div id="contenitoreimg1">
                     <xsl:apply-templates select="//tei:figure[@xml:id = 'figure1']"/>
                     <xsl:apply-templates select="//tei:surface[@xml:id = 'fronte1']"/>
                     <!-- Immagine retro alla quale verrà collegata la zona interattiva -->
                     <img>
                        <xsl:attribute name="usemap">
                           <xsl:value-of select="concat('#', //tei:graphic/@xml:id, '1')"/>
                        </xsl:attribute>
                        <xsl:attribute name="src">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro1']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro1']/@xml:id"/>
                        </xsl:attribute>
                     </img>
                     <!-- Mappa area interattiva -->
                     <map>
                        <xsl:attribute name="name">
                           <xsl:value-of select="concat(//tei:graphic/@xml:id, '1')"/>
                        </xsl:attribute>
                        <xsl:for-each select="//tei:zone[@xml:id = 'zone1']">
                           <area id="area1" shape="rect">
                              <xsl:attribute name="coords">
                                 <xsl:value-of
                                    select="concat(@ulx, ',', @uly, ',', @lrx, ',', @lry)"/>
                              </xsl:attribute>
                              <xsl:attribute name="class">
                                 <xsl:value-of select="current()/@xml:id"/>
                              </xsl:attribute>
                           </area>
                        </xsl:for-each>
                     </map>
                  </div>
                  <xsl:apply-templates select="//tei:div[@xml:id = 'divTxt1']"/>
               </div>
            </xsl:element>
            <!-- div per posizionare il menu -->
            <div id="menu2"></div>
            <!-- Contenitore cartolina 2 -->
            <xsl:element name="div3">
               <xsl:attribute name="id">cartolina2</xsl:attribute>
               <div id="contenitore2">
                  <xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc2']"/>
                  <div id="contenitoreimg1">
                     <xsl:apply-templates select="//tei:figure[@xml:id = 'figure2']"/>
                     <xsl:apply-templates select="//tei:surface[@xml:id = 'fronte2']"/>
                     <!-- Immagine retro alla quale verrà collegata la zona interattiva -->
                     <img>
                        <xsl:attribute name="usemap">
                           <xsl:value-of select="concat('#', //tei:graphic/@xml:id, '2')"/>
                        </xsl:attribute>
                        <xsl:attribute name="src">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro2']/@url"/>
                        </xsl:attribute>
                        <xsl:attribute name="id">
                           <xsl:value-of select="//tei:graphic[@xml:id = 'Retro2']/@xml:id"/>
                        </xsl:attribute>
                     </img>
                     <!-- Mappa area interattiva -->
                     <map>
                        <xsl:attribute name="name">
                           <xsl:value-of select="concat(//tei:graphic/@xml:id, '2')"/>
                        </xsl:attribute>
                        <xsl:for-each select="//tei:zone[@xml:id = 'zone2']">
                           <area id="area2" shape="rect">
                              <xsl:attribute name="coords">
                                 <xsl:value-of
                                    select="concat(@ulx, ',', @uly, ',', @lrx, ',', @lry)"/>
                              </xsl:attribute>
                              <xsl:attribute name="class">
                                 <xsl:value-of select="current()/@xml:id"/>
                              </xsl:attribute>
                           </area>
                        </xsl:for-each>
                     </map>
                  </div>
                  <xsl:apply-templates select="//tei:div[@xml:id = 'divTxt2']"/>
               </div>
            </xsl:element>
            <!-- div per posizionare il menu -->
            <div id="menu3"></div>
            <!-- Contenitore cartolina 3 -->
            <xsl:element name="div4">
               <xsl:attribute name="id">cartolina3</xsl:attribute>
               <div id="contenitore3">
                  <xsl:apply-templates select="//tei:sourceDesc[@xml:id = 'sourceDesc3']"/>
                  <div id="contenitoreimg3">
                     <xsl:apply-templates select="//tei:figure[@xml:id = 'figure3']"/>
                     <div id="immagini3">
                        <xsl:apply-templates select="//tei:surface[@xml:id = 'fronte3']"/>
                        <!-- Immagine retro alla quale verrà collegata la zona interattiva -->
                        <img>
                           <xsl:attribute name="usemap">
                              <xsl:value-of select="concat('#', //tei:graphic/@xml:id, '3')"/>
                           </xsl:attribute>
                           <xsl:attribute name="src">
                              <xsl:value-of select="//tei:graphic[@xml:id = 'Retro3']/@url"/>
                           </xsl:attribute>
                           <xsl:attribute name="id">
                              <xsl:value-of select="//tei:graphic[@xml:id = 'Retro3']/@xml:id"/>
                           </xsl:attribute>
                        </img>
                        <!-- Mappa area interattiva -->
                        <map>
                           <xsl:attribute name="name">
                              <xsl:value-of select="concat(//tei:graphic/@xml:id, '3')"/>
                           </xsl:attribute>
                           <xsl:for-each select="//tei:zone[@xml:id = 'zone3']">
                              <area id="area3" shape="rect">
                                 <xsl:attribute name="coords">
                                    <xsl:value-of
                                       select="concat(@ulx, ',', @uly, ',', @lrx, ',', @lry)"/>
                                 </xsl:attribute>
                                 <xsl:attribute name="class">
                                    <xsl:value-of select="current()/@xml:id"/>
                                 </xsl:attribute>
                              </area>
                           </xsl:for-each>
                        </map>
                     </div>
                  </div>
                  <xsl:apply-templates select="//tei:div[@xml:id = 'divTxt3']"/>
               </div>
            </xsl:element>
            <xsl:apply-templates/>
         </body>
      </html>
   </xsl:template>

   <xsl:template match="tei:facsimile[@xml:id = 'facsimile3']">
      <div id="immagini1">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:surface[@xml:id = 'fronte1' or @xml:id = 'fronte2' or @xml:id = 'fronte3']/tei:graphic">
      <img id="dimFronte" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:surface[@xml:id = 'fronte3']/tei:graphic">
      <img id="dimFronte1" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:sourceDesc[@xml:id = 'sourceDesc1' or @xml:id = 'sourceDesc2']">
      <div id="sourceDescStile">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:sourceDesc[@xml:id = 'sourceDesc3']">
      <div id="sourceDescStile1">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:div">
      <p>
         <xsl:apply-templates/>
      </p>
   </xsl:template>
   <xsl:template match="tei:availability">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:distributor">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:address[@xml:id = 'lab']">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>
   <xsl:template match="tei:lb">
      <br/>
   </xsl:template>
   <xsl:template match="tei:title">
      <p class="title">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:name">
      <xsl:choose>
         <xsl:when test="@xml:id = 'CD'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id = 'GP'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id = 'AB'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'SP'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'XY1'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'XY2'">
            <xsl:apply-templates/>
            <xsl:text>,</xsl:text>
         </xsl:when>
         <xsl:when test="@xml:id = 'XZ1'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'ES'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:when test="@xml:id = 'ER'">
            <xsl:apply-templates/>
            <br/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:edition">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:pubPlace">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:publisher">
      <b>
         <xsl:text>Pubblicazione: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:date">
      <xsl:choose>
         <xsl:when test="@when = '2018'">
            <br/>
            <b>
               <xsl:text>Anno di compilazione: </xsl:text>
            </b>
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="@when = '1913' or @when = '1915'">
            <b>
               <xsl:text>Anno: </xsl:text>
            </b>
            <xsl:apply-templates/>
         </xsl:when>
         <xsl:when test="@when = '2020'">
            <b>
               <xsl:apply-templates/>
            </b>
         </xsl:when>
         <xsl:otherwise>
            <xsl:apply-templates/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <xsl:template match="tei:publicationStmt">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:note[@xml:id = 'cart1' or @xml:id = 'cart3']">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:bibl">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:date[@xml:id = 'date1' or @xml:id = 'date2' or @xml:id = 'date3']">
      <b>
         <xsl:text>Data: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:pubPlace[@xml:id = 'pubPlace1' or @xml:id = 'pubPlace2']">
      <b>
         <xsl:text>Luogo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:repository">
      <b>
         <xsl:text>Deposito: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:summary">
      <b>
         <xsl:text>Tipo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:idno">
      <b>
         <xsl:text>Codice identificativo: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:textLang">
      <b>
         <xsl:text>Lingua: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:objectType">
      <b>
         <xsl:text>Oggetto: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:material">
      <b>
         <xsl:text>Materiale: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:dimensions">
      <b>
         <xsl:text>Dimensioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:height">
      <xsl:apply-templates/>
      <xsl:text>cm x</xsl:text>
   </xsl:template>
   <xsl:template match="tei:width">
      <xsl:apply-templates/>
      <xsl:text>cm</xsl:text>
   </xsl:template>
   <xsl:template match="tei:stamp">
      <b>
         <xsl:text>Timbro: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type = 'postmark']">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:stamp[@type = 'postage']">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:condition">
      <b>
         <xsl:text>Conservazone: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:support">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:physDesc">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:listPerson">
      <b>
         <xsl:text>Persone nominate:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:person">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listPlace">
      <b>
         <xsl:text>Luoghi nominati:</xsl:text>
      </b>
      <br/>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:place">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>
   <xsl:template match="tei:listOrg">
      <b>
         <xsl:text>Organizzazioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:sex">
      <xsl:text>Sesso: </xsl:text>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:note">
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:settlement">
      <b>
         <xsl:text>Città: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:country[@key = 'N']">
      <xsl:apply-templates/>
      <xsl:text>)</xsl:text>
   </xsl:template>
   <xsl:template match="tei:resp">
      <b>
         <xsl:apply-templates/>
         <xsl:text>:</xsl:text>
      </b>
   </xsl:template>
   <xsl:template match="tei:district[@type = 'comune']">
      <xsl:text>(comune di </xsl:text>
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:district[@type = 'provincia']">
      <xsl:apply-templates/>
      <xsl:text>,</xsl:text>
   </xsl:template>
   <xsl:template match="tei:country">
      <b>
         <xsl:text>Paese: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:figure">
      <div id="imgDesc">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:author">
      <b>
         <xsl:text>Autore: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
   <xsl:template match="tei:author[@xml:id = 'Giovannino']">
      <b>
         <xsl:text>Autore: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'divTxt1']">
      <div id="txt1">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'divTxt2']">
      <div id="txt2">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id = 'solotesto3']">
      <div id="txt3">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'timbri1' or @xml:id = 'timbri2']">
      <div id="timbri">
         <xsl:text>TIMBRI</xsl:text>
         <br/>
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id = 'corpo1' or @xml:id = 'corpo2' or @xml:id = 'corpo3']">
      <i>
         <xsl:apply-templates/>
      </i>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'testo1' or @xml:id = 'testo2' or @xml:id = 'testo3']">
      <div id="testo">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:div[@xml:id = 'indDest1' or @xml:id = 'indDest2']">
      <div id="indirizzo">
         <xsl:apply-templates/>
      </div>
   </xsl:template><xsl:template match="tei:TEI[@xml:id = 'tei1' or @xml:id = 'tei2' or @xml:id = 'tei3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:teiHeader[@xml:id = 'teiHeader']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>
   <xsl:template match="tei:profileDesc">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:notesStmt[@xml:id = 'noteStmt1' or @xml:id = 'noteStmt2' or @xml:id = 'noteStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:titleStmt[@xml:id = 'titleStmt1' or @xml:id = 'titleStmt2' or @xml:id = 'titleStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:editionStmt[@xml:id = 'editionStmt1' or @xml:id = 'editionStmt2' or @xml:id = 'editionStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template
      match="tei:publicationStmt[@xml:id = 'publicationStmt1' or @xml:id = 'publicationStmt2' or @xml:id = 'publicationStmt3']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:expan">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:p[@xml:id = 'address1' or @xml:id = 'address2']">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:orig">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   <xsl:template match="tei:langUsage">
      <div class="no">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
</xsl:stylesheet>
