as yet unclassified
bindTransceiver: aMsg
	| respMsg respBody |
	aMsg body systemId = systemId
		ifFalse: [^false].
	aMsg body password = password
		ifFalse: [^false].

	"We trust this system now"
	isAuthenticated := true.
	boundReceiver := true.
	boundSender := true.
	onAuthTimeout ifNotNil: [onAuthTimeout cancel. onAuthTimeout := nil].

	"Respond now"
	respBody := SMPPBindTransceiverResponse new
			systemId: systemId;
			yourself.
	respMsg := (SMPPMessage new)
		    header: ((SMPPPDUHeader new)
				commandId: SMPPBodyBase bindTransceiverResp;
				commandStatus: 0;
				sequenceNumber: aMsg header sequenceNumber;
				yourself);
		    body: respBody.
	connection sendDirect: respMsg toMessage asByteArray.
	self startEnquireLink.