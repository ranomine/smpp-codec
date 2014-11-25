as yet unclassified
acceptOneConnection
	| client |
	client := socket waitForAcceptFor: 60.
	client ifNil: [^self].
	
	OsmoDispatcher dispatchBlock:  [
		| conn socketStream |
		socketStream := (SocketStream on: client)
				binary;
	    			noTimeout;
				yourself.
		conn := SMPPIncomingConnection new
				socket: socketStream;
				systemType: systemType;
				systemId: systemId;
				password: password;
				onUnhandledCommand: on_unhandled_command;
				onUnhandledResponse: on_unhandled_response;
				yourself.
		handlerCreator ifNotNil: [conn handler: handlerCreator value].
		self addClientConnection: conn.
		conn onConnectionClosed: [self removeConnection: conn].
		conn start.
	].