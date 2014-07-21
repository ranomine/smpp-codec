as yet unclassified
receviedResponse: aMessage
	"Search for a response"

	| seq command |
	seq := aMessage header sequenceNumber.
	command := pendingCommands removeKey: seq
		    ifAbsent: 
			["TODO: log it"

			^false].
	command result: aMessage
