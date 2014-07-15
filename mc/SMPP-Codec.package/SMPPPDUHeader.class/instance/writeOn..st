as yet unclassified
writeOn: aMsg
	aMsg
	    putLen32: commandId;
	    putLen32: commandStatus;
	    putLen32: sequenceNumber
