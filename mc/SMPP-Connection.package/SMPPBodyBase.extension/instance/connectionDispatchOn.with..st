*SMPP-Connection
connectionDispatchOn: aConnection with: aMessage
	self isCommand
		ifTrue: [aConnection unhandledCommand: aMessage]
		ifFalse: [aConnection receviedResponse: aMessage].