as yet unclassified
send: aCommand
	| seq key header message |
	seq := nextSeq.
	nextSeq := nextSeq + 1.
	header := (SMPPPDUHeader new)
		    sequenceNumber: seq;
		    commandId: aCommand messageType;
		    commandStatus: 0;
		    yourself.
	message := (SMPPMessage new)
		    header: header;
		    body: aCommand body;
		    yourself.

	"Remember that we want a response. TODO add timeout handling"
	pendingCommands at: seq put: aCommand.
	writeQueue nextPut: message toMessage asByteArray
