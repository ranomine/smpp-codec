as yet unclassified
receviedResponse: aMessage
	"Search for a response"

	| seq command |
	seq := aMessage header sequenceNumber.
	command := pendingCommands removeKey: seq
		    ifAbsent: 
			[^self unhandledResponse: aMessage].

	aMessage header commandStatus = 0
		ifTrue: [command result: aMessage]
		ifFalse: [command error: aMessage]
