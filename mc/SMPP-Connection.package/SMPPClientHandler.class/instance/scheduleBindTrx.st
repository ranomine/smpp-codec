as yet unclassified
scheduleBindTrx
	| command body |
	body := (SMPPBindTransceiver new)
		    systemId: systemId;
		    password: password;
		    systemType: systemType;
		    version: 16r34;
		    numberingPlanIndicator: 0;
		    typeOfNumber: 0;
		    addressRange: #[];
		    yourself.
	command := SMPPCommand initWith: body.
	command
		onResult: [:res |
			boundReceiver := true.
			boundSender := true.
			self startEnquireLink];
		onError: [:err | self linkFailed];
		onTimeout: [ self linkFailed].
	self scheduleCommand: command
