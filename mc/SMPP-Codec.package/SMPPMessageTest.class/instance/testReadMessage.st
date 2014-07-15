as yet unclassified
testReadMessage
	| msg |
	msg := SMPPMessage readFrom: self examplePdu readStream.
	self assert: msg header commandId equals: 2.
	self assert: msg header commandStatus equals: 0.
	self assert: msg header sequenceNumber equals: 1.
	self assert: msg body systemId equals: 'SMPP3TEST'.
	self assert: msg body password equals: 'secret08'.
	self assert: msg body systemType equals: 'SUBMIT1'.
	self assert: msg body version equals: 0.
	self assert: msg body typeOfNumber equals: 1.
	self assert: msg body numberingPlanIndicator equals: 1.
	self assert: msg body addressRange equals: ''
