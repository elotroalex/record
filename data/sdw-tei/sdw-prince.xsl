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
    <xsl:template match="tei:del[ancestor::tei:subst and following-sibling::tei:add[@type='clarification']]"/>
    <xsl:template match="tei:front/tei:titlePage"/>
    <xsl:template match="tei:head"/>
    
    <!-- This line erases all pages. To select pages you must select a range in the pages section below -->
    <xsl:template match="tei:div[@type='act']/tei:div[@type='page']"/>


    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: poem
        title: "prince"
        description: "" 
        author: alex gil
        ---
        
        (draft)

        </xsl:text>
        <xsl:apply-templates/>        
    </xsl:template>

    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->

    <!-- pages -->

    <xsl:template match="tei:div[@type='act' and position() = 1]/tei:div[@type='page' and position() &lt;= 22]">

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
    
    <xsl:template match="tei:sp">
        <ul>
            <xsl:apply-templates/>
        </ul>        
    </xsl:template>
    
    <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type='delivery']]]">
        <li class='speaker'>
            <p><xsl:apply-templates select="tei:speaker"/>
                <xsl:apply-templates select="tei:stage[@type='delivery']"/></p>
        </li>
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
        <li class='speaker'>
            <p><xsl:apply-templates/></p>
        </li>
    </xsl:template>

    <!-- stage -->
    <xsl:template match="tei:stage">
        <xsl:choose>
            <xsl:when test="./tei:add[starts-with(., '(')]">
                <p>
                    <xsl:text>(</xsl:text><xsl:apply-templates/><xsl:text>)</xsl:text>
                </p>
            </xsl:when>
            <xsl:when test=".[not(starts-with(., '('))]">
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
    <xsl:template match="tei:ab">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    

    <xsl:template match="tei:ab[@rend='indent']">
        <ul>
            <li>
            <xsl:apply-templates/></li>
        </ul>
    </xsl:template>

    <xsl:template match="tei:lb">
        <xsl:text> </xsl:text>
    </xsl:template>

    <!-- ########################################### -->
    <!-- ## Transcription and decorative elements ## -->
    <!-- ########################################### -->

    <!-- add -->
    <xsl:template match="tei:add"/>
    
    <xsl:template match="tei:add[@type='accent']">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:add[@type='clarification']">
        <xsl:apply-templates/>
    </xsl:template>


    <!-- del -->
    <xsl:template name="del" match="tei:del">
        <xsl:choose>

            <!-- double-check -->
            <xsl:when test="self::tei:del[@seq='2']">
                <span class="delete add">
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
        <span class="unclear"> [?<xsl:apply-templates/>] </span>
    </xsl:template>


</xsl:stylesheet>
