*SMPP-Connection
connectionDispatchOn: aConnection with: aMessage
	aMessage isCommand
		ifTrue: [aConnection unhandledCommand: aMessage]
		ifFalse: [aConnection unhandledResponse: aMessage].