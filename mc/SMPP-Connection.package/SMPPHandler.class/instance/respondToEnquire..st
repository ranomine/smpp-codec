as yet unclassified
respondToEnquire: aMessage
	| msg |
	msg := (SMPPMessage new)
		    header: ((SMPPPDUHeader new)
				commandId: SMPPBodyBase enquireLinkResp;
				commandStatus: 0;
				sequenceNumber: aMessage header sequenceNumber;
				yourself);
		    body: #[].
	connection sendDirect: msg toMessage asByteArray
