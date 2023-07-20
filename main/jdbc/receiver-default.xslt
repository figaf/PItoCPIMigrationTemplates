<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>JDBC</Name>
            <ExtensionElements>
      <ifl:property>
                    <key>queryTimeout</key>
                    <value>3</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>JDBC</value>
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
                    <key>pageSize</key>
                    <value>100000</value>
                </ifl:property>
                <ifl:property>
                    <key>Vendor</key>
                    <value>SAP</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.5</value>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>JDBC</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.5.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>batchOperation</key>
                    <value>atomic</value>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>batchMode</key>
                    <value>false</value>
                </ifl:property>
                <ifl:property>
                    <key>alias</key>
                    <value>{{JDBCDataSource}}</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>JDBC</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::JDBC/vendor::SAP/tp::JDBC/mp::JDBC/direction::Receiver/version::1.5.1</value>
                </ifl:property>
                <ifl:property>
                    <key>connectionTimeout</key>
                    <value>3</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>JDBC</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.5.1</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.5.1</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>

            </ExtensionElements>
            <ExternalProperties>
                <item>
                    <name>JDBCDataSource</name>
                    <value><xsl:value-of select="CommunicationChannelID/ComponentID"/>_JDBC</value>
                </item>

            </ExternalProperties>
            <Notifications>
                <Advice>Check the JDBC Datastore <xsl:value-of select="CommunicationChannelID/ComponentID"/>_JDBC</Advice>
            </Notifications>



        </figaf:Block>



    </xsl:template>


</xsl:stylesheet>