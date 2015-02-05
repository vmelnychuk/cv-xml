<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html>
        <head>
            <meta charset="utf-8"/>
            <link rel="stylesheet" type="text/css" href="../css/main.css"/>
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
            <span class="contact-label">
                <xsl:value-of select="@name"/>
            </span>
            <xsl:text>: </xsl:text>
            <span class="contact-value">
                <xsl:apply-templates/>
            </span>
        </p>
    </xsl:template>
    <xsl:template match="work-experience">
        <div class="work-experience">
            <h2 class="section-title">Work Experience</h2>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="work">
        <div class="work">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="skills">
        <div class="skills">
            <h2>Skills &amp; Qualifications</h2>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="skills-category">
        <div class="skills-category">
            <h3>
                <xsl:value-of select="@name"/>
            </h3>
            <div class="skills-group">
                <xsl:apply-templates/>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="skill">
        <div class="skill">
            <span class="skill-tag"><xsl:apply-templates select="tags"/></span>
            <xsl:text>(</xsl:text>
            <span class="skill-values">
                <xsl:apply-templates select="value"/>
            </span>
            <xsl:text>)</xsl:text>
        </div>
    </xsl:template>
</xsl:stylesheet>