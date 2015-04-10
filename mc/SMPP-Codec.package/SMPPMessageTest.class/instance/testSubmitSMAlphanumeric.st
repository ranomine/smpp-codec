as yet unclassified
testSubmitSMAlphanumeric
	| msg res |
	msg := SMPPMessage readFrom: self exampleSubmitSMAlphaNumeric readStream.
	self assert: msg body class equals: SMPPSubmitSM.
	self assert: msg body shortMessage
	    equals: 'Hej, Nu testar vi.'.
	self assert: msg body sourceAddress equals: 'Test123'.
	self assert: msg body destinationAddress equals: '328485010119'.

	"Do round trip test"
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleSubmitSMAlphaNumeric
