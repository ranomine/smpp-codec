as yet unclassified
scheduleBindTrx
	| header body |
	header := (SMPPPDUHeader new)
		    commandId: SMPPBindTransceiver messageType;
		    commandStatus: 0;
		    yourself.
	body := (SMPPBindTransceiver new)
		    systemId: systemId;
		    password: password;
		    systemType: systemType;
		    version: 16r34;
		    numberingPlanIndicator: 0;
		    typeOfNumber: 0;
		    addressRange: #[];
		    yourself.
	self send: ((SMPPMessage new)
		    header: header;
		    body: body)
	    onResponse: [:resp | ]
