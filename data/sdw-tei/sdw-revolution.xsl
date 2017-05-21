<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="1.0">
    
    <!-- global settings -->
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>
    
    <!-- IGNORE LIST -->
    <xsl:template match="tei:teiHeader"/>
    <xsl:template match="tei:front/tei:titlePage"/>
    <xsl:template match="tei:note"/>
    <xsl:template match="tei:div[@type= 'page' and not(descendant::tei:locus[@scheme='#P1'])]"/>
    <xsl:template match="tei:fw"/>
    <xsl:template match="tei:del[ancestor::tei:subst and following-sibling::tei:add[@type = 'clarification']]"/>
    
    
    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: poem
        title: "revolution rising"
        description: "A speculative version based on the Saint-Dié witness of Et les chiens se taisaient"
        author: Aimé Césaire 
        editor: alex gil
        ---
        
        The following is a draft edition of a speculative stage in the genesis of the Saint-Dié witness of *Et les chiens se taisaient* by Aimé Césaire. [^1]
            
        ---
        </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>---
        
        [^1]: This speculative version was constructed from the pages of `P1`, and the original type, without revisions using [an XSLT transformation]({{site.baseurl}}/data/sdw-tei/sdw-revolution.xsl) of [a TEI encoding of the typescript]({{site.baseurl}}/data/sdw-tei/sdw.xml). The approach to the edition is *eclectic*, in the sense that I set the transformation to make corrections, normalizations, etc. Most of the changes were done to accidentals (punctuation, spacing, etc.). I respected deletions made immediately on the line with the typewriter. Intra-textual footnotes and a few judgement calls were added post-transformation. For a detailed study of this speculative edition and the rationale behind it, see chapter 2, "[how to erase history with a no.2 pencil]({{site.baseurl}}/chapters/02-versionism/)."
            </xsl:text>
    </xsl:template>    
    
    
    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->
    
    <!-- pages -->
    
    <xsl:template match="tei:div[@type= 'page' and descendant::tei:locus[@scheme='#P1']]">
        <xsl:text>

       </xsl:text>
        <xsl:text>
       </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:sp">
        <xsl:apply-templates/>
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <!-- speaker + delivery -->
    <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type = 'delivery']]]">
        <xsl:text>- {:.centered} </xsl:text><xsl:apply-templates select="tei:speaker"/>
        <xsl:apply-templates select="tei:stage[@type = 'delivery']"/>        
        <xsl:text>
            
        </xsl:text>
        <xsl:apply-templates select="tei:stage[@type = 'delivery']/following-sibling::*"/>
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:speaker[following-sibling::tei:stage[@type = 'delivery']]">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:stage[@type = 'delivery']">
        <xsl:text> </xsl:text><xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:stage[@type = 'setting']">
        <xsl:text>- </xsl:text><xsl:apply-templates/>
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <!-- speaker -->
    <xsl:template match="tei:speaker">
        <xsl:text>
       </xsl:text>
        <xsl:text>- {:.centered} </xsl:text><xsl:apply-templates/>        
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <!-- stage -->
    <xsl:template match="tei:stage">
        <xsl:apply-templates/>
        <xsl:text>
           
       </xsl:text>
    </xsl:template>    
    
    <xsl:template match="tei:stage[@rend = 'inline']">
        <span class="stage">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <!-- text blocks -->
    <xsl:template match="tei:ab">
        <xsl:text>- </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>
       </xsl:text>
    </xsl:template>    
    
    <xsl:template match="tei:lb">
        <xsl:text>
       - </xsl:text>
    </xsl:template>

    <xsl:template name="del" match="tei:del">
        <xsl:text> </xsl:text><xsl:apply-templates/><xsl:text> </xsl:text>
    </xsl:template>

</xsl:stylesheet>
