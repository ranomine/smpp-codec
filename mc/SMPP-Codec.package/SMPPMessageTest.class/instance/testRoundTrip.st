as yet unclassified
testRoundTrip
	| msg res |
	msg := SMPPMessage readFrom: self examplePdu readStream.
	res := msg toMessage asByteArray.
	self assert: res equals: self examplePdu
