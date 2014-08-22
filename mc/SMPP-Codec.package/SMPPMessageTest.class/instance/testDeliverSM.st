as yet unclassified
testDeliverSM
	| msg res |
	msg := SMPPMessage readFrom: self exampleDeliverSM readStream.
	self assert: msg body class equals: SMPPDeliverSM.


	"Do round trip test"
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleDeliverSM.
