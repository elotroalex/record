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

    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: default
        title: ""
        description: "" 
        author: alex gil
        ---

        </xsl:text>
        <xsl:apply-templates/>

    </xsl:template>



    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->

    <!-- headings: title page -->
    <xsl:template match="tei:front/tei:titlePage">
        <div class="page">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="tei:titlePage/tei:docAuthor">
        <p class="heading">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:titlePage/tei:docTitle/tei:titlePart[@type='main']">
        <p class="heading">
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="tei:titlePage/tei:docTitle/tei:titlePart[@type='sub']">
        <p class="heading">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- headings: acts -->
    <xsl:template match="tei:head">
        <p class="heading">
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- pages -->

    <xsl:template match="tei:div[@type='page']">
        <div class="page">
            <hr></hr>
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <!-- page numbers -->
    <xsl:template match="tei:fw">
        <xsl:if test="tei:locus/@scheme!='#main'"/>

        <xsl:if test="tei:locus/@scheme='#main'">            
            <p>[ <xsl:value-of select="tei:locus"/> ]</p>
        </xsl:if>
    </xsl:template>

    <!-- speaker + delivery -->
    <xsl:template match="tei:sp[tei:speaker[following-sibling::tei:stage[@type='delivery']]]">
        <p>
            <xsl:apply-templates select="tei:speaker"/>
            <xsl:apply-templates select="tei:stage[@type='delivery']"/>
        </p>
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
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- stage -->
    <xsl:template match="tei:stage">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <!-- stage -->
    <xsl:template match="tei:stage">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:stage[@rend='inline']">
        <span>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- text blocks -->
    <xsl:template match="tei:ab">
        <li><xsl:apply-templates/></li>
    </xsl:template>

    <xsl:template match="tei:ab[@rend='indent']">
        <ul>
            <li class="indent">
            <xsl:apply-templates/></li>
        </ul>
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

            <xsl:when test="@place='above'">
                <span class="add above">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:when test="@place='below'">
                <span class="add below">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:when test="@place='bottom'">
                <span class="add below">
                    <xsl:text>&#160;|&#160;</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text>&#160;|&#160;</xsl:text>
                </span>
            </xsl:when>
            <xsl:when test="@place='margin'">
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

    <!-- random underscored elements -->
    <xsl:template match="tei:hi[@rend='underlined']">
        <span class="underlined">
            <xsl:apply-templates/>
        </span>
    </xsl:template>




</xsl:stylesheet>
