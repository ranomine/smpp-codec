as yet unclassified
testUnbind
	| connection handler unbindResponse |

	connection := SMPPMockConnection new.
	handler := SMPPServerHandler new.
	handler
		setAuthenticated;
		connection: connection.

	self assert: connection sent size equals: 0.
	self assert: handler isAuthenticated.
	handler dispatchMessage: (SMPPMessage new
							header: (SMPPPDUHeader new
										sequenceNumber: 23;
										commandStatus: 0;
										commandId: SMPPUnbind messageType;
										yourself);
							body: SMPPUnbind new;
							yourself).
	self assert: connection sent size equals: 1.
	self deny: handler isAuthenticated.
	unbindResponse := SMPPMessage readFrom: connection sent first readStream.
	self assert: unbindResponse header commandStatus equals: 0.
	self assert: unbindResponse body class equals: SMPPUnbindResponse.
	handler stopAuthenticationTimer.