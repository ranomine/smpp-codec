as yet unclassified
testBindResponse
	| msg res |
	msg := SMPPMessage readFrom: self exampleBindResponse readStream.
	self assert: msg body class equals: SMPPBindTransceiverResponse.
	self assert: msg body systemId equals: 'SMPPMAP'.	
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleBindResponse
