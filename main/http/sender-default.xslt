<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:param name="iflowTechnicalName"/>
    <xsl:param name="iflowDisplayedName"/>
    <xsl:param name="packageTechnicalName"/>
    <xsl:param name="packageDisplayedName"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>HTTP</Name>
            <ExtensionElements>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>HTTPS</value>
                </ifl:property>
                <ifl:property>
                    <key>Description</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>maximumBodySize</key>
                    <value>40</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.4</value>
                </ifl:property>
                <ifl:property>
                    <key>urlPath</key>
                    <value>/<xsl:value-of select="$iflowTechnicalName"/></value>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>HTTPS</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.4.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Sender</value>
                </ifl:property>
                <ifl:property>
                    <key>xsrfProtection</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>HTTPS</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:HTTPS/tp::HTTPS/mp::None/direction::Sender/version::1.4.1</value>
                </ifl:property>
                <ifl:property>
                    <key>userRole</key>
                    <value>ESBMessaging.send</value>
                </ifl:property>
                <ifl:property>
                    <key>senderAuthType</key>
                    <value>RoleBased</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>None</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.4.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.4.1</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Sender</value>
                </ifl:property>
                <ifl:property>
                    <key>clientCertificates</key>
                    <value/>
                </ifl:property>
            </ExtensionElements>
            <ExternalProperties>

            </ExternalProperties>
            <Notifications>

            </Notifications>
        </figaf:Block>
    </xsl:template>
</xsl:stylesheet>