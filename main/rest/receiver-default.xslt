<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>HTTP</Name>
            <ExtensionElements>
                <ifl:property>
                    <key>Description</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>methodSourceExpression</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>privateKeyAlias</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>httpMethod</key>
                    <value>POST</value>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>HTTP</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.7.3</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyPort</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>httpAddressQuery</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>httpRequestTimeout</key>
                    <value>60000</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>None</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.7.3</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>HTTP</value>
                </ifl:property>
                <ifl:property>
                    <key>httpShouldSendBody</key>
                    <value>false</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyType</key>
                    <value>default</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.7</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyHost</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>authenticationMethod</key>
                    <value>None</value>
                </ifl:property>
                <ifl:property>
                    <key>locationID</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>HTTP</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:HTTP/tp::HTTP/mp::None/direction::Receiver/version::1.7.3</value>
                </ifl:property>
                <ifl:property>
                    <key>credentialName</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.7.3</value>
                </ifl:property>
                <ifl:property>
                    <key>httpAddressWithoutQuery</key>
                    <value>{{REST_URL}}</value>
                </ifl:property>

            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>REST_URL</name>
                    <value><xsl:value-of select="AdapterSpecificAttribute[Name='URLPattern']/Value"/></value>
                </item>

            </ExternalProperties>
            <Notifications>
                <ManualActionRequired>Add User crdentials</ManualActionRequired>
            </Notifications>



        </figaf:Block>



    </xsl:template>


</xsl:stylesheet>