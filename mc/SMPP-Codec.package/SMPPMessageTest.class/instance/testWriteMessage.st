as yet unclassified
testWriteMessage
	| data |
	data := ((SMPPMessage new)
		    header: ((SMPPPDUHeader new)
				commandId: 2;
				commandStatus: 0;
				sequenceNumber: 1;
				yourself);
		    body: (self examplePdu copyFrom: 17 to: self examplePdu size);
		    toMessage) asByteArray.
	self assert: data equals: self examplePdu
