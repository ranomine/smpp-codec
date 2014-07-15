as yet unclassified
testWrite
	| data |
	data := ((SMPPPDUHeader new)
		    commandId: 2;
		    commandStatus: 0;
		    sequenceNumber: 1;
		    toMessage) asByteArray.
	self assert: data equals: #[0 0 0 2 0 0 0 0 0 0 0 1]
