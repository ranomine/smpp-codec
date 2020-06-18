socket
createConnection: aHostname port: aPort
	^(ZdcSecureSocketStream openConnectionToHostNamed: aHostname port: aPort)
	    binary;
	    noTimeout;
	    yourself
