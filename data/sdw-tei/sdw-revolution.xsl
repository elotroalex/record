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
        author: alex gil
        ---
        
        (a speculative version)[^1]
            
        ---
        </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>---
        
        [^1]: This speculative version was constructed from the pages of `P1`, and the original type, without revisions.</xsl:text>
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
    
<!--    <xsl:template match="tei:ab[@rend = 'indent']">
        <xsl:text>- {:.indent-3} </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>
       </xsl:text>
    </xsl:template>-->
    
    <!-- line breaks -->
    
    <!--    <xsl:template match="tei:ab/tei:lb">
        <xsl:text>
       - </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:stage/tei:lb">
        <xsl:text>
       - </xsl:text>
    </xsl:template>-->
    
    <xsl:template match="tei:lb">
        <xsl:text>
       - </xsl:text>
    </xsl:template>
    
    <!-- ########################################### -->
    <!-- ## Transcription and decorative elements ## -->
    <!-- ########################################### -->
    
    <!-- add -->
 <!--   <xsl:template match="tei:add">
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
                <span class="add">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    -->
    <!-- del -->
    <xsl:template name="del" match="tei:del">
<!--        <xsl:choose>
            
            <!-\- double-check -\->
            <xsl:when test="self::tei:del[@seq = '2']">
                <span class="delete add">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <!-\- -\->
            
            <xsl:otherwise>
                <span class="delete">-->
        <xsl:text> </xsl:text><xsl:apply-templates/><xsl:text> </xsl:text>
                <!--</span>
            </xsl:otherwise>
        </xsl:choose>-->
    </xsl:template>
    
    <!-- unclear -->
<!--    <xsl:template match="tei:unclear">
        <span class="unclear"> [?<xsl:apply-templates/>] </span>
    </xsl:template>-->
    
    <!-- random underscored elements -->
<!--    <xsl:template match="tei:hi[@rend = 'underlined']">
        <span class="underlined">
            <xsl:apply-templates/>
        </span>
    </xsl:template>-->
    
    <!-- normalize space -->
    <!--    <xsl:template match="*/text()[normalize-space()]">
        <xsl:value-of select="normalize-space()"/>
    </xsl:template>-->
    
    <!--    <xsl:template match="*/text()[not(normalize-space())]" />-->
    
    
    
</xsl:stylesheet>
