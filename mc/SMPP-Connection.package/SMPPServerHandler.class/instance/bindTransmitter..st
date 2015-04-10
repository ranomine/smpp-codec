as yet unclassified
bindTransmitter: aMsg
	| respMsg respBody |
	self flag: #todo. "HACK!!! share the code with bindTransceiver"
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
	respBody := SMPPBindTransmitterResponse new
			systemId: systemId;
			yourself.
	respMsg := (SMPPMessage new)
		    header: ((SMPPPDUHeader new)
				commandId: aMsg body responseForCommand;
				commandStatus: 0;
				sequenceNumber: aMsg header sequenceNumber;
				yourself);
		    body: respBody.
	connection sendDirect: respMsg toMessage asByteArray.
	self startEnquireLink.