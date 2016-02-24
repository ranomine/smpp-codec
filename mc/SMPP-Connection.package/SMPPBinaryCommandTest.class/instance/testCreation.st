as yet unclassified
testCreation
	| command header message |
	command := SMPPBinaryCommand initWith: #[1 2 3 4] messageType: SMPPDeliverSM messageType.
	self assert: command messageType equals: SMPPDeliverSM messageType.

	header := SMPPPDUHeader new
		    sequenceNumber: 1;
		    commandId: command messageType;
		    commandStatus: 0;
		    yourself.
	message := (SMPPMessage new)
		    header: header;
		    body: command body;
		    yourself.
	self assert: message toMessage asByteArray equals: #[0 0 0 20 0 0 0 5 0 0 0 0 0 0 0 1 1 2 3 4].