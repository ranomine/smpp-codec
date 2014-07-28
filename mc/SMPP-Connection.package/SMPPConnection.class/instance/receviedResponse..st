as yet unclassified
receviedResponse: aMessage
	"Search for a response"

	| seq command |
	seq := aMessage header sequenceNumber.
	command := pendingCommands removeKey: seq
		    ifAbsent: 
			["TODO: log it"

			^false].
	aMessage header commandStatus = 0
		ifTrue: [command result: aMessage]
		ifFalse: [command error: aMessage]
