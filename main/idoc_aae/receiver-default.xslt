<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:param name="iflowTechnicalName"/>
    <xsl:param name="iflowDisplayedName"/>
    <xsl:param name="packageTechnicalName"/>
    <xsl:param name="packageDisplayedName"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>IDOC</Name>
            <ExtensionElements>
             <ifl:property>
                    <key>cleanupHeaders</key>
                    <value>1</value>
                </ifl:property>
                <ifl:property>
                    <key>Description</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>privateKeyAlias</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>IDOC</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.7.2</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyPort</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>IDocContentType</key>
                    <value>application/x-sap.idoc</value>
                </ifl:property>
                <ifl:property>
                    <key>CompressMessage</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>sendHttpResponseCode</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>IDoc SOAP</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.7.2</value>
                </ifl:property>
                <ifl:property>
                    <key>requestTimeout</key>
                    <value>60000</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>authentication</key>
                    <value>Basic</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>IDOC</value>
                </ifl:property>
                <ifl:property>
                    <key>address</key>
                    <value>{{SAP_HOST}}</value>
                </ifl:property>
                <ifl:property>
                    <key>allowChunking</key>
                    <value>1</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyType</key>
                    <value>sapcc</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.7</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyHost</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>locationID</key>
                    <value />
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>HTTP</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:IDOC/tp::HTTP/mp::IDoc SOAP/direction::Receiver/version::1.7.2</value>
                </ifl:property>
                <ifl:property>
                    <key>credentialName</key>
                    <value>{{SAP_USER}}</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.7.2</value>
                </ifl:property>
                <ifl:property>
                    <key>KeepConnectionAlive</key>
                    <value>1</value>
                </ifl:property>
            </ExtensionElements>
            <ExternalProperties>
			     <item>
                    <name>SAP_USER</name>
                    <value>SAP_USER</value>
                </item>
				 <item>
                    <name>SAP_HOST</name>
                    <value>http://SAPHOST:8000/URL</value>
                </item>
            </ExternalProperties>
            <Notifications>
			    <Advice>Check the configuration of the SAP host url and user</Advice>
            </Notifications>
        </figaf:Block>
    </xsl:template>
</xsl:stylesheet>