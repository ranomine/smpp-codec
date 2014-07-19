socket
createConnection: aHostname port: aPort
	^(SocketStream openConnectionToHostNamed: aHostname port: aPort)
	    binary;
	    noTimeout;
	    yourself
