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
    <xsl:template
        match="tei:del[ancestor::tei:subst and following-sibling::tei:add[@type = 'clarification']]"/>


    <!-- HTML wrapper | document element -->
    <xsl:template match="/">---
        layout: poem
        title: "the saint-dié witness"
        description: "A draft edition of the typescript" 
        author: alex gil
        ---
        
        (a minimal diplomatic edition)
        
        <p>A note for readers: Individual pages are separated by a horizontal line. At the top of each page, the [page number] is indicated in brackets, and corresponds to the canonical pagination. To access the facsimile for each page, click on the relevant page number. [?Uncertain] readings are indicated in brackets with a question mark. To reduce the complex material evidence for revisions to <span style="color:#288828;font-style: italic;">additions</span> in green and italics, and <span style="color:#AA3232;">deletions</span> in red is of course nonsense, but I figured it would make the diplomatic more readable. Hanging indentation indicates the line continues from above. </p>
           
        
        ---
        
        <a target="_blank" href="/data/sdw-data/P000.jpg">[Title]</a>
        <xsl:text>            
        </xsl:text>
        <p class="centered">AIME CESAIRE.</p>           
        <p class="centered">+++++++++++++</p>
        <p class="centered">......ET LES CHIENS SE TAISAIENT.</p>
        <p class="centered">( drame en trois actes )</p>
        <p class="centered">++++++++++++++++++</p>

        <xsl:apply-templates/>
    </xsl:template>



    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->

    <!-- headings: acts -->
    <xsl:template match="tei:head">
        <p class="centered">
            <xsl:apply-templates/>
        </p>
        <xsl:text>
           
       </xsl:text>
    </xsl:template>

    <!-- pages -->

    <xsl:template match="tei:div[@type = 'page']">
        <xsl:text>
       </xsl:text>
        <xsl:comment>New page: <xsl:value-of select="@n"/></xsl:comment>
        <xsl:text>
       </xsl:text>
        <hr/>
        <xsl:text>
       </xsl:text>
        <xsl:apply-templates/>
    </xsl:template>

    <!-- page numbers -->
    <xsl:template match="tei:fw">
        <xsl:if test="tei:locus/@scheme != '#Page'"/>
        <xsl:if test="tei:locus/@scheme = '#Page'">
            <xsl:variable name="pageno" select="tei:locus"/>
            <a target="_blank"><xsl:attribute name="href"
                    select='concat("/data/sdw-data", ../@facs)'/>[ <xsl:value-of select="tei:locus"
                /> ]</a>
            <xsl:text>
                
            </xsl:text>
        </xsl:if>
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

    <xsl:template match="tei:ab[@rend = 'indent']">
        <xsl:text>- {:.indent-3} </xsl:text>
        <xsl:apply-templates/>
        <xsl:text>
       </xsl:text>
    </xsl:template>
    
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


    <!-- del -->
    <xsl:template name="del" match="tei:del">
        <xsl:choose>

            <!-- double-check -->
            <xsl:when test="self::tei:del[@seq = '2']">
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
    <xsl:template match="tei:hi[@rend = 'underlined']">
        <span class="underlined">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- normalize space -->
<!--    <xsl:template match="*/text()[normalize-space()]">
        <xsl:value-of select="normalize-space()"/>
    </xsl:template>-->
    
<!--    <xsl:template match="*/text()[not(normalize-space())]" />-->



</xsl:stylesheet>
