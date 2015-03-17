<?xml version="1.0" encoding="UTF-8"?>
<!-- This XSLT transforms ADSL service documents into HTML. It MD-derived HTML as input, and Sedola XML as intermediate processing step. -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:include href="html2sedola.xsl"/>
    <xsl:template match="services">
        <xsl:variable name="asdl-set">
            <adsl-set>
                <xsl:apply-templates select="service"/>
            </adsl-set>
        </xsl:variable>
        <xsl:copy-of select="asdl-set"/>
    </xsl:template>
</xsl:stylesheet>