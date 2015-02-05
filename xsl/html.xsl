<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>CV</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="contacts">
        <div class="contacts">
            <h2 class="section-title">Contacts</h2>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="contact">
        <p>
            <span class="contact-label"><xsl:value-of select="@name"/></span>
            <span class="contact-value"><xsl:apply-templates/></span>
        </p>
    </xsl:template>
</xsl:stylesheet>