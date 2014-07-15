as yet unclassified
testSubmitSM
	| msg res |
	msg := SMPPMessage readFrom: self exampleSubmitSM readStream.
	self assert: msg body class equals: SMPPSubmitSM.
	self assert: msg body shortMessage
	    equals: 'Dies ist eine Testnachricht!  2014-03-01_16.40.42'.
	self assert: msg body sourceAddress equals: '9225001'.
	self assert: msg body destinationAddress equals: '40099916'.

	"Do round trip test"
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleSubmitSM
