as yet unclassified
readFrom: aStream
	| len data stream header body |
	"Pharo is quite bad when it comes to things leaving the image. Instead
	of telling us that the socket is disconnected it will just return nil here.
	Instead of making the code to check all events just assume we don't
	get broken while parsing a message."
	len := aStream next: 4.
	len size = 4 ifFalse: [^nil].
	len := (len asByteArray uintAt: 1) swap32.
	data := aStream next: len - 4.
	stream := data asByteArray readStream.
	header := SMPPPDUHeader readFrom: stream.
	body := SMPPBodyBase readFrom: stream for: header.
	^(SMPPMessage new)
	    header: header;
	    body: body;
	    yourself
