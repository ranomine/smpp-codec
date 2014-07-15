as yet unclassified
write: aValue on: aMsg with: anAttribute
	aMsg
	    putByte: aValue size;
	    putByteArray: aValue asByteArray
