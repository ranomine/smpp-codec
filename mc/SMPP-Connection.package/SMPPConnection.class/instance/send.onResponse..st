as yet unclassified
send: aMessage onResponse: aBlock
	| seq key |
	seq := nextSeq.
	nextSeq := nextSeq + 1.
	aMessage header sequenceNumber: seq.

	"Remember that we want a response. TODO add timeout handling"
	pendingCommands at: seq put: aBlock.
	writeQueue nextPut: aMessage toMessage asByteArray
