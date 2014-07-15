as yet unclassified
writeOn: aMsg
	| hdrData bodyData |
	hdrData := header toMessageOrByteArray.
	bodyData := body toMessageOrByteArray.
	aMsg
	    putLen32: hdrData size + bodyData size + 4;
	    putByteArray: hdrData;
	    putByteArray: bodyData
