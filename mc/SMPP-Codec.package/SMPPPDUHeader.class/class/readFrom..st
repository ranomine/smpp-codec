as yet unclassified
readFrom: aStream
	^(self new)
	    commandId: ((aStream next: 4) uintAt: 1) swap32;
	    commandStatus: ((aStream next: 4) uintAt: 1) swap32;
	    sequenceNumber: ((aStream next: 4) uintAt: 1) swap32;
	    yourself
