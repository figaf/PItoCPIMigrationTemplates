<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:ns2="http://sap.com/xi/BASIS" xmlns:figaf="http://figaf.com/cpi" xmlns:ifl="http:///com.sap.ifl.model/Ifl.xsd" >
    <xsl:output indent="yes"/>

    <xsl:template match="ns2:CommunicationChannel">
        <figaf:Block>
            <Name>FTP</Name>
            <ExtensionElements>
                <ifl:property>
                    <key>disconnect</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>fileName</key>
                    <value>{{FTP_FILENAME}}</value>
                </ifl:property>
                <ifl:property>
                    <key>Description</key>
                    <value/>
                </ifl:property>
                <ifl:property>
                    <key>maximumReconnectAttempts</key>
                    <value>3</value>
                </ifl:property>
                <ifl:property>
                    <key>stepwise</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>fileExist</key>
                    <value>Override</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentNS</key>
                    <value>sap</value>
                </ifl:property>
                <ifl:property>
                    <key>autoCreate</key>
                    <value>1</value>
                </ifl:property>
                <ifl:property>
                    <key>location_id</key>
                    <value>{{GATEWAY}}</value>
                </ifl:property>
                <ifl:property>
                    <key>Name</key>
                    <value>FTP</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocolVersion</key>
                    <value>1.1.0</value>
                </ifl:property>
                <ifl:property>
                    <key>flatten</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>sftpSecEnabled</key>
                    <value>1</value>
                </ifl:property>
                <ifl:property>
                    <key>useTempFile</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVName</key>
                    <value>external</value>
                </ifl:property>
                <ifl:property>
                    <key>path</key>
                    <value>{{FTP_DIRECTORY}}</value>
                </ifl:property>
                <ifl:property>
                    <key>encryption</key>
                    <value>ftpes</value>
                </ifl:property>
                <ifl:property>
                    <key>host</key>
                    <value>{{FTP_HOST}}</value>
                </ifl:property>
                <ifl:property>
                    <key>connectTimeout</key>
                    <value>10000</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocol</key>
                    <value>File</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentSWCVId</key>
                    <value>1.1.0</value>
                </ifl:property>
                <ifl:property>
                    <key>direction</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>ComponentType</key>
                    <value>FTP</value>
                </ifl:property>
                <ifl:property>
                    <key>fileAppendTimeStamp</key>
                    <value>0</value>
                </ifl:property>
                <ifl:property>
                    <key>credential_name</key>
                    <value>{{FTP_PASSWORD}}</value>
                </ifl:property>
                <ifl:property>
                    <key>proxyType</key>
                    <value>sapcc</value>
                </ifl:property>
                <ifl:property>
                    <key>componentVersion</key>
                    <value>1.1</value>
                </ifl:property>
                <ifl:property>
                    <key>reconnectDelay</key>
                    <value>1000</value>
                </ifl:property>
                <ifl:property>
                    <key>system</key>
                    <value>Receiver</value>
                </ifl:property>
                <ifl:property>
                    <key>tempFileName</key>
                    <value>${file:name}.tmp</value>
                </ifl:property>
                <ifl:property>
                    <key>TransportProtocol</key>
                    <value>FTP</value>
                </ifl:property>
                <ifl:property>
                    <key>cmdVariantUri</key>
                    <value>ctype::AdapterVariant/cname::sap:FTP/tp::FTP/mp::File/direction::Receiver/version::1.1.0</value>
                </ifl:property>
                <ifl:property>
                    <key>MessageProtocolVersion</key>
                    <value>1.1.0</value>
                </ifl:property>
            </ExtensionElements>
            <ExternalProperties>
                <item>
                <name>FTP_PASSWORD</name>
                <value>APPMEMBERSITE_USER</value>
            </item>
                <item>
                    <name>FTP_HOST</name>
                    <value><xsl:value-of select="//AdapterSpecificAttribute[Name='ftp.host']/Value"></xsl:value-of></value>
                </item>
                <item>
                    <name>FTP_DIRECTORY</name>
                    <value><xsl:value-of select="AdapterSpecificAttribute[Name='ftp.targetDir']/Value"/></value>
                </item>
                <item>
                    <name>FTP_FILENAME</name>
                    <value><xsl:value-of select="AdapterSpecificAttribute[Name='file.targetFileName']/Value"/></value>
                </item>
            </ExternalProperties>
            <Notifcations>
                <Warning>Check FTP username</Warning>
            </Notifcations>
        </figaf:Block>
    </xsl:template>
</xsl:stylesheet>