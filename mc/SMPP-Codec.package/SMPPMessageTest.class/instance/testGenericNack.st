as yet unclassified
testGenericNack
	| msg |
	msg := SMPPMessage readFrom: self exampleGenericNack readStream.
	self assert: msg body class equals: SMPPGenericNack
