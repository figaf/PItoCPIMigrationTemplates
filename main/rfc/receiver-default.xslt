<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://sap.com/xi/BASIS"
                xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd">
    <xsl:output indent="yes"/>

    <xsl:param name="iflowTechnicalName"/>
    <xsl:param name="iflowDisplayedName"/>
    <xsl:param name="packageTechnicalName"/>
    <xsl:param name="packageDisplayedName"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>RFC</Name>
            <ExtensionElements>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>RFC</value>
                </ifl:property>
                <ifl:property>
                    <key>Description</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>destination</key>
                    <value>{{SAP_RFC}}</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.2</value>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>RFC</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.2.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>transactioncommit</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>newConnection</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>RFC</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:RFC/tp::RFC/mp::Synchronous RFC/direction::Receiver/version::1.2.1</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>Synchronous RFC</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.2.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.2.1</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>
            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>SAP_RFC</name>
                    <value>RFCDESTINATION</value>
                </item>
            </ExternalProperties>
            <Notifications>
                <ManualActionRequired>Create or update RFCDESTINATION</ManualActionRequired>
            </Notifications>
        </figaf:Block>
    </xsl:template>
</xsl:stylesheet>