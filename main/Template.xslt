<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name></Name>
            <ExtensionElements>
                <ifl:property>
                    <key>disconnect</key>
                    <value>0</value>
                </ifl:property>

            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>key</name>
                    <value>value</value>
                </item>

            </ExternalProperties>
            <Notifications>
                <ManualActionRequired>Message1</ManualActionRequired>
                <Warning>Message2</Warning>
                <Advice>Message3</Advice>
                <Information>Message4</Information>
            </Notifications>



        </figaf:Block>



    </xsl:template>


</xsl:stylesheet>