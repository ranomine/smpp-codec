as yet unclassified
receviedResponse: aMessage
	"Search for a response"

	| seq block |
	seq := aMessage header sequenceNumber.
	block := pendingCommands removeKey: seq
		    ifAbsent: 
			["TODO: log it"

			^false].
	block value: aMessage
