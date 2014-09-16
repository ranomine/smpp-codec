as yet unclassified
testSubmitSMMessageReference
	| msg res |
	msg := SMPPMessage readFrom: self exampleSubmitSMDeliveryReportMessageReference readStream.
	self assert: msg body class equals: SMPPSubmitSM.
	self assert: msg body shortMessage
	    equals: 'Test after connection'.
	self assert: msg body sourceAddress equals: '17023713798'.
	self assert: msg body destinationAddress equals: '18883577347'.
	self assert: msg body registeredDelivery equals: 1.
	self assert: msg body userMessageReference equals: #[0 9].

	"Do round trip test"
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleSubmitSMDeliveryReportMessageReference
