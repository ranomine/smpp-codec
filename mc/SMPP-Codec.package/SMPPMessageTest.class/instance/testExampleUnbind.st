as yet unclassified
testExampleUnbind
	| msg |
	msg := SMPPMessage readFrom: self exampleUnbind readStream.
	self assert: msg body class equals: SMPPUnbind
