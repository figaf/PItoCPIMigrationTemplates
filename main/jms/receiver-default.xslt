<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://sap.com/xi/BASIS"
                xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd">
    <xsl:output indent="yes"/>

    <xsl:param name="iflowTechnicalName"/>
    <xsl:param name="iflowDisplayedName"/>
    <xsl:param name="packageTechnicalName"/>
    <xsl:param name="packageDisplayedName"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>AMQP</Name>
            <ExternalCallType>SEND</ExternalCallType>
            <ExtensionElements>
                <ifl:property>
                    <key>Description</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>location_id</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>AMQPReceiver</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.7.0</value>
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
                    <key>messageType</key>
                    <value>automatic</value>
                </ifl:property>
                <ifl:property>
                    <key>jmsKeyFormatStrategy</key>
                    <value>passthrough</value>
                </ifl:property>
                <ifl:property>
                    <key>destinationName</key>
                    <value>{{AMQP_QUEUE}}</value>
                </ifl:property>
                <ifl:property>
                    <key>host</key>
                    <value>{{AMQP_HOST}}</value>
                </ifl:property>
                <ifl:property>
                    <key>alias</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>destinationType</key>
                    <value>queue</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>AMQP1.0</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.7.0</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>authentication</key>
                    <value>SASL</value>
                </ifl:property>
                <ifl:property>
                    <key>delivery</key>
                    <value>persistent</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>AMQP</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyType</key>
                    <value>sapcc</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.5</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyHost</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>connectWithTLS</key>
                    <value>true</value>
                </ifl:property>
                <ifl:property>
                    <key>expirationPeriod</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>port</key>
                    <value>{{AMQP_PORT}}</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>TCP</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:AMQP/tp::TCP/mp::AMQP1.0/direction::Receiver/version::1.5.0</value>
                </ifl:property>
                <ifl:property>
                    <key>credentialName</key>
                    <value>{{AMQP_USER}}</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.7.0</value>
                </ifl:property>
            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>AMQP_USER</name>
                    <value>AMQP_USER</value>
                </item>
                <item>
                    <name>AMQP_HOST</name>
                    <value><xsl:value-of select="//AdapterSpecificAttribute[Name='WSMQServer']/Value"/></value>
                </item>
                <item>
                    <name>AMQP_PORT</name>
                    <value><xsl:value-of select="//AdapterSpecificAttribute[Name='WSMQPort']/Value"/></value>
                </item>
                <item>
                    <name>AMQP_QUEUE</name>
                    <value><xsl:value-of select="//AdapterSpecificAttribute[Name='WSMQQueue']/Value"/></value>
                </item>
            </ExternalProperties>
            <Notifications>
                <ManualActionRequired>Check the AMQP setup</ManualActionRequired>
            </Notifications>
        </figaf:Block>
    </xsl:template>
</xsl:stylesheet>