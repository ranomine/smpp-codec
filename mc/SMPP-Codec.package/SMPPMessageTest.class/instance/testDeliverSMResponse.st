as yet unclassified
testDeliverSMResponse
	| msg res |
	msg := SMPPMessage readFrom: self exampleDeliverSMResponse readStream.
	self assert: msg body class equals: SMPPDeliverSMResponse.


	"Do round trip test"
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleDeliverSMResponse.
