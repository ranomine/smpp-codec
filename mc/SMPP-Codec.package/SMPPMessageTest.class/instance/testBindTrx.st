as yet unclassified
testBindTrx
	| msg |
	msg := SMPPMessage readFrom: self exampleBind readStream.
	self assert: msg body class equals: SMPPBindTransceiver.
	self assert: msg body systemId equals: 'AAAAAAAAAA'
