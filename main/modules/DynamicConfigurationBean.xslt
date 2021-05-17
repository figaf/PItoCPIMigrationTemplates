<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://sap.com/xi/BASIS"
                xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd">
    <xsl:output indent="yes"/>





    <xsl:template match="ParameterGroup">
        <xsl:variable name="propertiestable" >

            <row>
                <cell id='Action'>Create</cell>
                <cell id='Type'>constant</cell>
                <cell id='Value'>daniel</cell>
                <cell id='Default'></cell>
                <cell id='Name'>UVW</cell>
                <cell id='Datatype'></cell>
            </row>
            
            <row>
                <cell id='Action'>Create</cell>
                <cell id='Type'>constant</cell>
                <cell id='Value'>123</cell>
                <cell id='Default'></cell>
                <cell id='Name'>XYZ</cell>
                <cell id='Datatype'></cell>
            </row>

        </xsl:variable>

        <figaf:Block>
            <Name>DynamicConfigurationBean</Name>
            <ExtensionElements>
                <ifl:property>
                    <key>bodyType</key>
                    <value>expression</value>
                </ifl:property>
                <ifl:property>
                    <key>propertyTable</key>
                    <value action="htmlencode">
                    <xsl:for-each select="Parameter[starts-with(Name,'key')]">
                        <xsl:variable name="keyno" select="concat('value.',substring-after(Name,'.'))"/>
                        <xsl:value-of select="$keyno"/>
                        <row>
                            <cell id='Action'>Create</cell>
                            <cell id='Type'>constant</cell>
                            <cell id='Value'><xsl:value-of select="../Parameter[Name = $keyno ]/Value"/></cell>
                            <cell id='Default'></cell>
                            <cell id='Name'><xsl:value-of select="substring-after(substring-after(Value, '/'),' ')"/></cell>
                            <cell id='Datatype'></cell>
                        </row>
                    </xsl:for-each>
                    </value>
                </ifl:property>
                <ifl:property>
                    <key>headerTable</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>wrapContent</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.5</value>
                </ifl:property>
                <ifl:property>
                    <key>activityType</key>
                    <value>Enricher</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::FlowstepVariant/cname::Enricher/version::1.5.0</value>
                </ifl:property>

            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>key</name>
                    <value>value</value>
                </item>

            </ExternalProperties>
            <Notifcations>
                <Warning></Warning>
            </Notifcations>


        </figaf:Block>


    </xsl:template>



</xsl:stylesheet>