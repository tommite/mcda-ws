<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:x2="http://www.decision-deck.org/2009/XMCDA-2.1.0">

	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes"
		encoding="UTF-8" />

	<xsl:template match="node() | @*">
		<xsl:copy>
			<xsl:apply-templates select="node() | @*" />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="x2:XMCDA">
		<xsl:apply-templates select="node()" />
	</xsl:template>
	
</xsl:stylesheet>
