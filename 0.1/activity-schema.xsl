<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:text># Activity Streams Base Schema

#### https://github.com/activitystreams/activity-schema/blob/master/activity-schema.md

This document presents a base set of Object types and Verbs for use with Activity Streams.


## Verbs


</xsl:text>
        <xsl:for-each select="//section[@id eq 'verbs']/table/tr/td[1]/tt/text()">
            <xsl:text>### </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#xa;&#xa;</xsl:text>
            <xsl:value-of select="../../following-sibling::td[1]"/>
            <xsl:text>&#xa;&#xa;```&#xa;</xsl:text>
            <!-- the regex simply removes leading and trailing whitespace. -->
            <xsl:value-of select="replace(../../following-sibling::td[2]/pre/text(), '^\s+|\s+$', '')"/>
            <xsl:text>&#xa;```&#xa;&#xa;&#xa;</xsl:text>
        </xsl:for-each>
        <xsl:text>## Object Types


</xsl:text>
        <xsl:for-each select="//section[@id eq 'object-types']/table/tr/td[1]/tt/text()">
            <xsl:text>### </xsl:text>
            <xsl:value-of select="."/>
            <xsl:text>&#xa;&#xa;</xsl:text>
            <xsl:value-of select="../../following-sibling::td[1]"/>
            <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>