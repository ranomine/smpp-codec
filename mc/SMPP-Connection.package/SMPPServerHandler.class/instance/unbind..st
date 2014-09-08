as yet unclassified
unbind: aMessage
	| respMsg |
	isAuthenticated := false.
	respMsg := (SMPPMessage new)
		    header: ((SMPPPDUHeader new)
				commandId: SMPPBodyBase unbindResp;
				commandStatus: 0;
				sequenceNumber: aMessage header sequenceNumber;
				yourself);
		    body: #[].
	connection sendDirect: respMsg toMessage asByteArray