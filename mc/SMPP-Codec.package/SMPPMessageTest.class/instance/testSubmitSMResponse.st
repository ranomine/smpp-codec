as yet unclassified
testSubmitSMResponse
	| msg res |
	msg := SMPPMessage readFrom: self exampleSubmitSMResponse readStream.
	self assert: msg body messageId equals: '0'.
	res := msg toMessage asByteArray.
	self assert: res equals: self exampleSubmitSMResponse.

	msg body: (SMPPSubmitSMResponse new
					messageId: '0'; yourself).
	self assert: res equals: self exampleSubmitSMResponse.