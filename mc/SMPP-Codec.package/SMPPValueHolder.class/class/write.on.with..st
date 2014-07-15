as yet unclassified
write: aValue on: aMsg with: anAttribute
	aMsg
	    putLen16: aValue size;
	    putByteArray: aValue asByteArray
