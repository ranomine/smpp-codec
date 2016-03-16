as yet unclassified
handleConnection: client
	| socketStream conn |
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
		role: role;
		yourself.
	handlerCreator ifNotNil: [conn handler: handlerCreator value].
	self addClientConnection: conn.
	conn onConnectionClosed: [self removeConnection: conn].
	conn start.