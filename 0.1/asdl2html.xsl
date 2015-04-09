<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms ADSL service documents into HTML. It MD-derived HTML as input, and Sedola XML as intermediate processing step. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:include href="html2sedola.xsl"/>
    <xsl:template match="services">
        <xsl:variable name="asdl-set">
            <asdl-set>
                <xsl:apply-templates select="service"/>
            </asdl-set>
        </xsl:variable>
        <xsl:apply-templates select="$asdl-set"/>
    </xsl:template>
    <xsl:template match="asdl-set">
        <xsl:variable name="document" select="."/>
        <html>
            <h1>ASDL Collection</h1>
            <ol>
                <li><a href="#index">Cross-ASDL Index</a></li>
                <li>
                    <a href="#asdl-listings">Individual ASDL Listings</a>
                    <ol>
                        <xsl:for-each select="/asdl-set/asdl">
                            <li>
                                <a href="#{translate(title/text(), ' ', '')}">
                                    <xsl:value-of select="title/text()"></xsl:value-of>
                                </a>
                            </li>
                        </xsl:for-each>
                    </ol>
                </li>
            </ol>
            <hr/>
            <h2 id="index">Cross-ASDL Index</h2>
            <xsl:for-each select="('Verbs','Object Types','Object Properties')">
                <h4>
                    <xsl:value-of select="."/>
                </h4>
                <p>
                    <xsl:variable name="current-position" select="position()"/>
                    <xsl:for-each select="$document//*[local-name() eq ('as-verb','as-object-type','as-object-property')[$current-position]]">
                        <xsl:sort select="@def"/>
                        <a href="" title="Source: { ../title/text() }">
                            <xsl:value-of select="@def"/>
                            <xsl:if test="position() ne last()">
                                <xsl:text>&#160;· </xsl:text>
                            </xsl:if>
                        </a>
                    </xsl:for-each>
                </p>
            </xsl:for-each>
            <hr/>
            <h2 id="asdl-listings">Individual ASDL Listings</h2>
            <ol>
                <xsl:for-each select="/asdl-set/asdl">
                    <li>
                        <a href="#{translate(title/text(), ' ', '')}">
                            <xsl:value-of select="title/text()"></xsl:value-of>
                        </a>
                    </li>
                </xsl:for-each>
            </ol>
            <xsl:for-each select="/asdl-set/asdl">
                <hr/>
                <h3 id="{translate(title/text(), ' ', '')}">
                    <xsl:value-of select="title/text()"></xsl:value-of>
                </h3>
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>