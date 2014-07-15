as yet unclassified
testParse
	| hdr |
	hdr := SMPPPDUHeader readFrom: #[0 0 0 2 0 0 0 0 0 0 0 1] readStream.
	self assert: hdr commandId equals: 2.
	self assert: hdr commandStatus equals: 0.
	self assert: hdr sequenceNumber equals: 1
