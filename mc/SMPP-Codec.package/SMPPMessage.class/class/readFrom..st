as yet unclassified
readFrom: aStream
	| len data stream header body |
	len := ((aStream next: 4) asByteArray uintAt: 1) swap32.
	data := aStream next: len - 4.
	stream := data asByteArray readStream.
	header := SMPPPDUHeader readFrom: stream.
	body := SMPPBodyBase readFrom: stream for: header.
	^(SMPPMessage new)
	    header: header;
	    body: body;
	    yourself
