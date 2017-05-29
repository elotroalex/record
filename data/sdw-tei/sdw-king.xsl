<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="1.0">
    
    <!-- global settings -->
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>
    
    <!-- IGNORE LIST -->
    <xsl:template match="tei:teiHeader"/>
    <xsl:template match="tei:note"/>
    <xsl:template match="tei:front/tei:titlePage"/>
    <xsl:template match="tei:head"/>
    <xsl:template match="tei:sic"/>
    <xsl:template match="tei:orig"/>
    
    <!-- This line erases all pages. To select pages you must select a range in the pages section below -->
    
    
    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: poem
        title: "king"
        description: "" 
        author: alex gil
        ---
        
        (draft)

        </xsl:text>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt; 22 and position() &lt;= 40]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt; 1 and position() &lt;= 22]"/>
    </xsl:template>
    
    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->

    
    <!-- pages -->
    <xsl:template match="tei:div[@type='page' and position() = 1]"/>
    <xsl:template match="tei:div[@type='page' and position() &gt;= 1]"/>
    
    <xsl:template match="tei:div[@type='page']">
        
        <hr/>
        <xsl:apply-templates/>
        
    </xsl:template>

    
    <!-- page numbers -->
    <xsl:template match="tei:fw">
        <xsl:if test="tei:locus/@scheme!='#Page'"/>
        
        <xsl:if test="tei:locus/@scheme='#Page'">            
            <p>
                <a target="_blank"><xsl:attribute name="href"
                    select='concat("/data/sdw-data", ../@facs)'/>[ <xsl:value-of select="tei:locus"
                    /> ]</a>            
            </p>
        </xsl:if>
    </xsl:template>
    
    <!-- speaker + delivery -->
    
    <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type='delivery']]]">
        <xsl:text>
            - {:.speaker} **</xsl:text><xsl:apply-templates select="tei:speaker"/><xsl:text>** </xsl:text>
        <xsl:apply-templates select="tei:stage[@type = 'delivery']"/>        
        <xsl:text>
            
        </xsl:text>
        <xsl:apply-templates select="tei:stage[@type='delivery']/following-sibling::*"/>
    </xsl:template>
    
    <xsl:template match="tei:speaker[following-sibling::tei:stage[@type='delivery']]">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:stage[@type='delivery']">
        <xsl:apply-templates/>
    </xsl:template>
    
    
    
    <!-- speaker -->
    <xsl:template match="tei:speaker">
        <xsl:text>
            
       </xsl:text>
        <xsl:text>- {:.speaker} **</xsl:text><xsl:apply-templates/><xsl:text>**</xsl:text>      
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <!-- stage -->
    <xsl:template match="tei:stage">
        <xsl:choose>
            
            <xsl:when test=".[not(starts-with(., '(')) and not(descendant::tei:del[@rend='overprint'][1])]">
                <p>
                    <xsl:text>(</xsl:text><xsl:apply-templates/><xsl:text>)</xsl:text>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <p>
                    <xsl:apply-templates/>
                </p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:stage[@rend='inline']">
        <xsl:choose>
            <xsl:when test="./tei:add[starts-with(., '(')]">
                <span>
                    <xsl:text>(</xsl:text><xsl:apply-templates/><xsl:text>)</xsl:text>
                </span>
            </xsl:when>
            <xsl:otherwise>
                <span>
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- text blocks -->
    <xsl:template match="tei:ab[descendant::tei:lb]">
        <xsl:text>- {:.prose} </xsl:text><xsl:apply-templates/>
        <xsl:text>
       </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:ab[not(descendant::tei:lb)]">
        <xsl:text>- </xsl:text><xsl:apply-templates/>
        <xsl:text>
       </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:ab[@rend='indent' and descendant::tei:lb]">
        <p class="prose" style="text-indent:2rem"><xsl:apply-templates/></p>
        <xsl:text>
       </xsl:text>       
    </xsl:template>
    
    <xsl:template match="tei:ab[@rend='indent' and not(descendant::tei:lb)]">
        <xsl:text>- {:.indent-2} </xsl:text><xsl:apply-templates/>
        <xsl:text>
       </xsl:text>       
    </xsl:template>
    
    
    
    <xsl:template match="tei:lb">
        <xsl:text> </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:lb[parent::tei:w]">
        <xsl:text></xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:lb[parent::tei:w and @rend='hyphen']">
        <xsl:text></xsl:text>
    </xsl:template>
    
    
    
    <!-- ########################################### -->
    <!-- ## Transcription and decorative elements ## -->
    <!-- ########################################### -->
    
    <!-- add -->
    
<!--    <xsl:template match="tei:add[@seq='1']"/> -->   
    <xsl:template match="tei:add[@type='substantial']">
        <span class="add">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:add">
        <xsl:choose>
            
            <xsl:when test="@place = 'above'">
                <span class="add above">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:when test="@place = 'below'">
                <span class="add below">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:when test="@place = 'bottom'">
                <span class="add below">
                    <xsl:text></xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text></xsl:text>
                </span>
            </xsl:when>
            <xsl:when test="@place = 'margin'">
                <span class="add margin">
                    <xsl:text>&#160;</xsl:text>|<xsl:text>&#160;</xsl:text>
                    <xsl:apply-templates/><xsl:text>&#160;</xsl:text>|<xsl:text>&#160;</xsl:text>
                </span>
            </xsl:when>
            <xsl:otherwise>
                <span class="add">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <!-- del -->
    <xsl:template match="tei:del[ancestor::tei:subst and following-sibling::tei:add[@type='clarification']]"/>
    <xsl:template match="tei:del[@rend='overprint']"/>
    
    <xsl:template match="tei:del">
        <xsl:choose>
            
            <!-- double-check -->
            <xsl:when test="self::tei:del[@seq='2']">
                <span class="delete">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <!-- -->
            
            <xsl:otherwise>
                <span class="delete">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    
    <!-- unclear -->
    <xsl:template match="tei:unclear">
        <span class="unclear"> [<xsl:apply-templates/>] </span>
    </xsl:template>
    
    <xsl:template match="tei:unclear[@confidence &gt;= 0.5]">
        <span class="unclear"><xsl:apply-templates/></span>
    </xsl:template>
    
    
</xsl:stylesheet>
