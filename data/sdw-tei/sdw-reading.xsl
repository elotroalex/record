<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei saxon" version="1.0">

    <!-- global settings -->
    <xsl:output method="html" saxon:line-length="500"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="text()">
        <xsl:choose>
            <xsl:when test=". = ' '">
                <xsl:text> </xsl:text>
            </xsl:when>
            <xsl:when test="substring(., 1, 1) = ' ' and substring(., string-length(), 1) = ' '">
                <xsl:text> </xsl:text>
                <xsl:value-of select="normalize-space(.)"/>
                <xsl:text> </xsl:text>
            </xsl:when>
            <xsl:when test="substring(., 1, 1) = ' '">
                <xsl:text> </xsl:text>
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:when>
            <xsl:when test="substring(., string-length(), 1) = ' '">
                <xsl:value-of select="normalize-space(.)"/>
                <xsl:text> </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="normalize-space(.)"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!-- IGNORE LIST -->
    <xsl:template match="tei:teiHeader"/>
    <xsl:template match="tei:note"/>
    <xsl:template match="tei:front/tei:titlePage"/>
    <xsl:template match="tei:orig"/>


    <!-- HTML wrapper | document element -->
    <xsl:template match="/">
        <xsl:text>---
        layout: poem
        title: "reading edition: ...et les chiens se taisaient"
        description: "An interpretation of the final stage of the Saint-Dié witness." 
        author: Aimé Césaire
        editor: alex gil
        ---
        
        The following text is an interpretation of the final authorial stage of the Saint-Dié witness (~1943). 
        Editorial interventions lean on the side of pleasure. I respected most 
        accidentals in Toussaint's speeches in deference to freedom; the speeches of others became more 
        regular, unless a strange comma or an intrepid indentation lucidly stopped me. Substantials required 
        very little conjecture, and strange spellings were rare. Page numbers
        provide links to the relevant images for easy access to the complexities lost in translation.
        
        ---
        
        - {:.centered} AIMÉ CÉSAIRE.
        
        </xsl:text>
        
        <hr align="center" width="30%" class="flourish"/>
        
        <xsl:text>
            
        </xsl:text>
        
        <br/>
        
        <xsl:text>
            
        - {:.centered} ...ET LES CHIENS SE TAISAIENT.
        - {:.centered} ( Drame en trois actes )     
            
        </xsl:text>

       

        <!-- Select all pages -->
        <xsl:apply-templates/>
        <xsl:text>
            
            ---
            
            ## Notes
            
        </xsl:text>
        <xsl:apply-templates select="//tei:note[@type = 'scholarly']" mode="content"/>

    </xsl:template>

    <!-- #################################### -->
    <!-- ############### TEXT ############### -->
    <!-- #################################### -->

    <!-- pages -->


    <xsl:template match="tei:div[@type = 'page']">
        <hr/>
        <xsl:text>
  </xsl:text>

        <xsl:apply-templates/>

    </xsl:template>

    <!-- act headers -->
    <xsl:template match="tei:head">
        <xsl:choose>
            <xsl:when test="@type = 'speakers'">
                <xsl:text>
                </xsl:text>
                <xsl:text>- {:.speakerGroup} </xsl:text>
                <xsl:apply-templates/>
                <xsl:text>
                </xsl:text>
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



    <!-- page numbers and curtains -->
    <xsl:template match="tei:fw">

        <xsl:if test="@type = 'curtain'">
            <xsl:text>
                
            </xsl:text>
            <xsl:text>- {:.centered} </xsl:text>
            <xsl:apply-templates/>
            <xsl:text>
                
            </xsl:text>
        </xsl:if>
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
        <em>
            <xsl:apply-templates select="tei:stage[@type = 'delivery']"/>
        </em>
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
        <xsl:choose>

            <xsl:when test=".[not(starts-with(., '(')) and not(descendant::tei:del[contains(@rend, 'overprint')][1])]">
                <xsl:text>
            
                </xsl:text>
                <em>
                    <xsl:text>(</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text>)</xsl:text>
                </em>
                <xsl:text>
            
                </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>
            
                </xsl:text>
                <em>
                    <xsl:apply-templates/>
                </em>
                <xsl:text>
            
                </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="tei:stage[@rend = 'inline']">
        <xsl:choose>
            <xsl:when test="./tei:add[starts-with(., '(')]">
                <em>
                    <xsl:text>(</xsl:text>
                    <xsl:apply-templates/>
                    <xsl:text>)</xsl:text>
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
        <xsl:choose>
            <xsl:when test="@type = 'implied'">
                <xsl:text>
            
            </xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="tei:lb[parent::tei:w]">
        <xsl:text/>
    </xsl:template>



    <!-- ########################################### -->
    <!-- ## Transcription and decorative elements ## -->
    <!-- ########################################### -->

    <!-- accents -->
    <xsl:template match="tei:sic">
        <xsl:choose>
            <xsl:when test="following-sibling::*[position() = 1][name() = 'add'][@type = 'accent']">
                <xsl:apply-templates/>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>

    </xsl:template>


    <!-- additions -->

    <xsl:template match="tei:add">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:add[text() = '&#8208;']"/>

    <xsl:template match="tei:add[@type = 'grouping']"/>
    <xsl:template match="tei:add[@status = 'duplicate']"/>

    <!-- deletions -->

    <xsl:template match="tei:del"/>

    <!-- unclear -->
    <xsl:template match="tei:unclear[@confidence &lt; 0.5]">
        <span class="unclear"> [?<xsl:apply-templates/>] </span>
    </xsl:template>
    <xsl:template match="tei:unclear[@confidence >= 0.5]">
        <span class="unclear">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <!-- special  -->

    <xsl:template match="tei:del[child::tei:restore]">
        <xsl:apply-templates select="tei:restore"/>

    </xsl:template>


    <xsl:template match="tei:note[@type = 'scholarly']">
        <xsl:text>[^</xsl:text>
        <xsl:value-of select="@n"/>
        <xsl:text>]</xsl:text>
    </xsl:template>

    <xsl:template match="tei:note[@type = 'scholarly']" mode="content">
        <xsl:text>[^</xsl:text>
        <xsl:value-of select="@n"/>
        <xsl:text>]: </xsl:text>
        <xsl:apply-templates/>

        <xsl:text>
            
        </xsl:text>
    </xsl:template>



</xsl:stylesheet>
