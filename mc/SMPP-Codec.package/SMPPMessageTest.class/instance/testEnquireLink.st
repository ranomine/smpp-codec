as yet unclassified
testEnquireLink
	| msg |
	msg := SMPPMessage readFrom: self exampleEnquire readStream.
	self assert: msg body class equals: SMPPEnquireLink
