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
        title: "revolution rising"
        description: "An eclectic edition of a speculative stage in the genesis of the Saint-Dié witness." 
        author: alex gil
        ---
        
        The following is an eclectic edition of a speculative stage in the genesis 
        of the Saint-Dié witness of *Et les chiens se taisaient* by Aimé Césaire.
        This speculative stage was constructed from the pages of `P1`, and the original
		type, without revisions using [an XSLT transformation]({{site.baseurl}}/data/sdw-tei/sdw-revolution.xsl)
		of [a TEI encoding of the typescript]({{site.baseurl}}/data/sdw-tei/sdw.xml). The
		approach to the edition is *eclectic*, in the sense that I set the transformation
		to make corrections, normalizations, etc. Most of the changes were done to accidentals
		(punctuation, spacing, etc.). I respected deletions made immediately on the line with
		the typewriter.
		For a detailed study of this speculative edition and the rationale behind it, see
		chapter 2, "[how to erase history with a no.2 pencil]({{site.baseurl}}/chapters/02-versionism/)."
        
        </xsl:text>        
		<!-- Select p1 pages -->
		<xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt;= 23 and position() &lt;= 24]"/>
		<hr/>
		<p style="color:gray">[missing pages]</p>
		<xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[1]/tei:div[position() &gt;= 25 and position() &lt;= 40]"/>
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

					<xsl:apply-templates/>
	</xsl:template>
	
	
	<!-- unclear -->
	<xsl:template match="tei:unclear">
		<span class="unclear"><xsl:apply-templates/></span>
	</xsl:template>
	
	
</xsl:stylesheet>
