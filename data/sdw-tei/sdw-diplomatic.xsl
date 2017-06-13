<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
 exclude-result-prefixes="xs tei" version="1.0">

 <!-- global settings -->
 <xsl:output method="html"/>
 <xsl:strip-space elements="*"/>
 <xsl:template match="text()">
  <xsl:value-of select="normalize-space(.)"/>
 </xsl:template>

 <!-- IGNORE LIST -->
 <xsl:template match="tei:teiHeader"/>
 <xsl:template match="tei:note"/>
 <xsl:template match="tei:front/tei:titlePage"/>
 <xsl:template match="tei:reg"/>
 <xsl:template match="tei:corr"/>


 <!-- HTML wrapper | document element -->
 <xsl:template match="/">
  <xsl:text>---
        layout: poem
        title: "diplomatic"
        description: "" 
        author: Aimé Césaire
        editor: alex gil
        ---
        
        A diplomatic edition of the Saint-Dié witness of 
        "...Et le chiens se taisaient" by Aimé Césaire.
        
        </xsl:text>
    <hr/>
  <xsl:text>
   
  <!-- Front matter -->
  </xsl:text>
    <a target="_blank" href="/data/sdw-data/P000.jpg">Title</a>
  <xsl:text>            
        </xsl:text>
  <p class="centered">AIME CESAIRE.</p>
  <p class="centered">+++++++++++++</p>
  <p class="centered">......ET LES CHIENS SE TAISAIENT.</p>
  <p class="centered">( drame en trois actes )</p>
  <p class="centered">++++++++++++++++++</p>
  
  <!-- All pages -->
  <xsl:apply-templates/>
 </xsl:template>

 <!-- #################################### -->
 <!-- ############### TEXT ############### -->
 <!-- #################################### -->

 <!-- headers -->
 <xsl:template match="tei:head">
  <xsl:choose>
   <xsl:when test="@type = 'speakers'">
    <xsl:text>
            </xsl:text>
    <xsl:text>- {:.speakerGroup} </xsl:text>
    <xsl:apply-templates/>
   </xsl:when>
   <xsl:otherwise>
    <xsl:text>
            </xsl:text>
    <xsl:text>- {:.centered} </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
            </xsl:text>
   </xsl:otherwise>
  </xsl:choose>
 </xsl:template>

 <!-- pages -->

 <xsl:template match="tei:div[@type = 'page']">
  <hr/>
  <xsl:text>
  </xsl:text>

  <xsl:apply-templates/>

 </xsl:template>


 <!-- page numbers -->
 <xsl:template match="tei:fw">
  <xsl:if test="tei:locus/@scheme != '#Page'"/>

  <xsl:if test="tei:locus/@scheme = '#Page'">
   <xsl:text>
            
            </xsl:text>
   <xsl:text>[ </xsl:text>
   <xsl:value-of select="tei:locus"/>
   <xsl:text> ]</xsl:text>
   <xsl:text>(/data/sdw-data</xsl:text>
   <xsl:value-of select="../@facs"/>
   <xsl:text>){: target='_blank'}</xsl:text>
   <xsl:text>
    
  </xsl:text>
  </xsl:if>
 </xsl:template>




 <!-- speaker + delivery -->

 <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type = 'delivery']]]">
  <xsl:text>
            - {:.speaker} </xsl:text>
  <xsl:apply-templates select="tei:speaker"/>
  <xsl:text> </xsl:text>

  <xsl:apply-templates select="tei:stage[@type = 'delivery']"/>

  <xsl:text>
            
        </xsl:text>
  <xsl:apply-templates select="tei:stage[@type = 'delivery']/following-sibling::*"/>
 </xsl:template>

 <xsl:template match="tei:speaker[following-sibling::tei:stage[@type = 'delivery']]">
  <xsl:apply-templates/>
 </xsl:template>

 <xsl:template match="tei:stage[@type = 'delivery']">
  <xsl:apply-templates/>
 </xsl:template>



 <!-- speaker -->
 <xsl:template match="tei:speaker">
  <xsl:text>
            
       </xsl:text>
  <xsl:text>- {:.speaker} </xsl:text>
  <xsl:apply-templates/>
  <xsl:text/>
  <xsl:text>
           
       </xsl:text>
 </xsl:template>

 <!-- stage -->
 <xsl:template match="tei:stage">
  <xsl:text>
            
                </xsl:text>

  <xsl:apply-templates/>

  <xsl:text>
            
                </xsl:text>
 </xsl:template>

  <xsl:template match="tei:stage[@rend = 'inline']">
  <xsl:apply-templates/>
 </xsl:template>

 <!-- text blocks -->
 <xsl:template match="tei:ab">
  <xsl:choose>
   <xsl:when test="descendant::tei:lb and not(@rend = 'indent')">
    <xsl:text>- {:.prose} </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
                </xsl:text>
   </xsl:when>
   <xsl:when test="descendant::tei:lb and @rend = 'indent'">
    <xsl:text>- {:.prose .prose-indent} </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
                </xsl:text>
   </xsl:when>
   <xsl:when test="not(descendant::tei:lb) and @rend = 'indent'">
    <xsl:text>- {:.indent-2} </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
                </xsl:text>
   </xsl:when>
   <xsl:otherwise>
    <xsl:text>- </xsl:text>
    <xsl:apply-templates/>
    <xsl:text>
                </xsl:text>
   </xsl:otherwise>
  </xsl:choose>

 </xsl:template>



 <xsl:template match="tei:lb">
  <br/>
 </xsl:template>




 <!-- ########################################### -->
 <!-- ## Transcription and decorative elements ## -->
 <!-- ########################################### -->

 <!-- add -->


 <xsl:template match="tei:add">
  <xsl:choose>
   <xsl:when test="@place = 'bottom'">
    <span class="add below">
     <xsl:text>&#160;|&#160;</xsl:text>
     <xsl:apply-templates/>
     <xsl:text>&#160;|&#160;</xsl:text>
    </span>
   </xsl:when>
   <xsl:when test="@place = 'margin'">
    <span class="add margin">
     <xsl:text>&#160;</xsl:text>|<xsl:text>&#160;</xsl:text>
     <xsl:apply-templates/><xsl:text>&#160;</xsl:text>|<xsl:text>&#160;</xsl:text>
    </span>
   </xsl:when>
   <xsl:otherwise>
    <span>
     <xsl:attribute name="class">
      <xsl:text>add </xsl:text>
      <xsl:value-of select="@rend"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="@place"/>
     </xsl:attribute>
     <xsl:apply-templates/>
    </span>
   </xsl:otherwise>
  </xsl:choose>
 </xsl:template>

 <xsl:template match="tei:add[@type = 'accent']">
  <span>
   <xsl:attribute name="class">
    <xsl:text>add </xsl:text>
    <xsl:value-of select="@rend"/>
    <xsl:text> accent</xsl:text>
   </xsl:attribute>
   <xsl:apply-templates/>
  </span>
 </xsl:template>

 <!-- special spaces -->
 <xsl:template match="tei:space">
  <xsl:text>&#32;</xsl:text>
 </xsl:template>



 <!-- deletions -->

 <xsl:template match="tei:del">
  <xsl:choose>

   <!-- overwritten -->
   <xsl:when test="self::tei:del[@rend = 'overwritten']">
    <span class="delete write-over">
     <xsl:apply-templates/>
    </span>
   </xsl:when>

   <xsl:otherwise>
    <span class="delete">
     <xsl:apply-templates/>
    </span>
   </xsl:otherwise>
  </xsl:choose>
 </xsl:template>


 <!-- unclear -->
 <xsl:template match="tei:unclear[@confidence &lt; 0.5]">
  <span class="unclear"> [<xsl:apply-templates/>] </span>
 </xsl:template>
 <xsl:template match="tei:unclear[@confidence >= 0.5]">
  <span class="unclear">
   <xsl:apply-templates/>
  </span>
 </xsl:template>

</xsl:stylesheet>
