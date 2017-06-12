<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="1.0">
    
    <!-- global settings -->
    <xsl:output method="html"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)" />  
    </xsl:template>
    
    <!-- IGNORE LIST -->
    <xsl:template match="tei:teiHeader"/>
    <xsl:template match="tei:note"/>
    <xsl:template match="tei:front/tei:titlePage"/>
    <xsl:template match="tei:sic"/>
    <xsl:template match="tei:orig"/>
    
    <!-- This line erases all pages. To select pages you must select a range in the pages section below -->
    
    
    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: poem
        title: "scaffold"
        description: "" 
        author: alex gil
        ---
        
        (draft)
        
        </xsl:text>
       
        
        <!-- Select first 40 pages -->
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() = 1]"/>
        <hr/>
        <p style="color:gray">[missing page]</p>        
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt;= 2 and position() &lt;= 22]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt;= 23 and position() &lt;= 24]"/>
        <hr/>
        <p style="color:gray">[missing pages]</p>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt;= 25 and position() &lt;= 40]"/>

        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[position() &gt;= 8 and position() &lt;= 14]"/>
        <hr/>
        <p style="color:gray">[missing page]</p>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[position() = 16]"/>
        <hr/>
        <p style="color:gray">[missing page]</p>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[position() &gt;= 18 and position() &lt;= 27]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[2]/tei:div[position() = 1]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[3]/tei:div[position() &gt;= 2 and position() &lt;= 3]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[3]/tei:div[position() &gt;= 6 and position() &lt;= 8]"/>
        <hr/>
        <p style="color:gray">[missing page]</p>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[3]/tei:div[position() &gt;= 13 and position() &lt;= 16]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[3]/tei:div[position() &gt;= 24 and position() &lt;= 29]"/>
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[3]/tei:div[position() = 34]"/>
    </xsl:template>
    
    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->
    
    
    <!-- pages -->    
    
    <xsl:template match="tei:div[@type='page']">
        
        <hr/>
        <xsl:apply-templates/>
        
    </xsl:template>
    
    
    <!-- page numbers -->
    <xsl:template match="tei:fw">
        <xsl:if test="tei:locus/@scheme!='#Page'"/>
        
        <xsl:if test="tei:locus/@scheme='#Page'">            
            <xsl:text>
            
            </xsl:text>
            <xsl:text>[ </xsl:text><xsl:value-of select="tei:locus"/><xsl:text> ]</xsl:text><xsl:text>(/data/sdw-data</xsl:text><xsl:value-of select="../@facs"/><xsl:text>){: target='_blank'}</xsl:text>
            <xsl:text>
                
            </xsl:text>
        </xsl:if>
    </xsl:template>
    
    <!-- headers -->
    <xsl:template match="tei:head">
    <xsl:choose>
        <xsl:when test="@type='speakers'">
            <xsl:text>
            </xsl:text>
            <xsl:text>- {:.speakerGroup} </xsl:text><xsl:apply-templates/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>
            </xsl:text>
            <xsl:text>- {:.centered} </xsl:text><xsl:apply-templates/>
            <xsl:text>
            </xsl:text>
        </xsl:otherwise>
    </xsl:choose>
    </xsl:template>
    
    
    <!-- speaker + delivery -->
    
    <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type='delivery']]]">
        <xsl:text>
            - {:.speaker} </xsl:text><xsl:apply-templates select="tei:speaker"/><xsl:text> </xsl:text>
        <em><xsl:apply-templates select="tei:stage[@type = 'delivery']"/></em>        
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
        <xsl:text>- {:.speaker} </xsl:text><xsl:apply-templates/><xsl:text></xsl:text>      
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:speaker[ancestor::tei:spGrp]">
        <xsl:text>
       </xsl:text>
        <xsl:text>- {:.speaker} </xsl:text><xsl:apply-templates/><xsl:text></xsl:text>      
        <xsl:text>
           
       </xsl:text>
    </xsl:template>
    
    <!-- stage -->
    <xsl:template match="tei:stage">
        <xsl:text>
            
                </xsl:text>
        <em><xsl:apply-templates/></em>
        <xsl:text>
            
                </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:stage[@rend='inline']">
        <xsl:choose>
            <xsl:when test="./tei:add[starts-with(., '(')]">
                <em>
                    <xsl:text>(</xsl:text><xsl:apply-templates/><xsl:text>)</xsl:text>
                </em>
            </xsl:when>
            <xsl:otherwise>
                <em>
                    <xsl:apply-templates/>
                </em>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- text blocks -->
    <xsl:template match="tei:ab">
        <xsl:choose>
            <xsl:when test="descendant::tei:lb and not(@rend='indent')">
                <xsl:text>- {:.prose} </xsl:text><xsl:apply-templates/>
                <xsl:text>
                </xsl:text>
            </xsl:when>
            <xsl:when test="descendant::tei:lb and @rend='indent'">
                <xsl:text>- {:.prose .prose-indent} </xsl:text><xsl:apply-templates/>
                <xsl:text>
                </xsl:text>
            </xsl:when>
            <xsl:when test="not(descendant::tei:lb) and @rend='indent'">
                <xsl:text>- {:.indent-2} </xsl:text><xsl:apply-templates/>
                <xsl:text>
                </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>- </xsl:text><xsl:apply-templates/>
                <xsl:text>
                </xsl:text>              
            </xsl:otherwise>            
        </xsl:choose>       
        
    </xsl:template>
    
    
    
    <xsl:template match="tei:lb">
        <xsl:choose>
            <xsl:when test="@type='implied'">
                <xsl:text>
            
            </xsl:text>
            </xsl:when>
            <xsl:otherwise><xsl:text> </xsl:text></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:lb[parent::tei:w]">
        <xsl:text></xsl:text>
    </xsl:template>
    
    
    
    <!-- ########################################### -->
    <!-- ## Transcription and decorative elements ## -->
    <!-- ########################################### -->
    
    <!-- additions -->
    
    <xsl:template match="tei:add"/>
    
    
    <!-- special spaces -->
    <xsl:template match="tei:space">
        <xsl:text>&#32;</xsl:text>
    </xsl:template>
    
    
    
    <!-- deletions -->
    
    <xsl:template match="tei:del[ancestor::tei:subst and following-sibling::tei:add[@type='clarification']]"/>
    <xsl:template match="tei:del[@type='correction']"/>
    <xsl:template match="tei:add[@type='clarification']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:del[contains(@rend, 'overprint')]"/>
    
    
    <xsl:template match="tei:del">
        <xsl:choose>
            
            <!-- double-check -->
            <xsl:when test="self::tei:del[@seq='2']">
                
                    <xsl:apply-templates/>
                
            </xsl:when>
            <!-- end double-check -->
            
            <xsl:otherwise>
                
                    <xsl:apply-templates/>
                
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <!-- unclear -->
    <xsl:template match="tei:unclear">
        <span class="unclear"><xsl:apply-templates/></span>
    </xsl:template>
    
    
</xsl:stylesheet>
