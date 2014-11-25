as yet unclassified
testEnquireLinkResponse
	| msg |
	msg := SMPPMessage readFrom: self exampleEnquireResponse readStream.
	self assert: msg body class equals: SMPPEnquireLinkResponse