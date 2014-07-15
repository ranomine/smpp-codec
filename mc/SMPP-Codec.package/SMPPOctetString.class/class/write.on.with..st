as yet unclassified
write: aValue on: aMsg with: anAttr
	"Todo.. verify the size constraints..."

	aMsg
	    putByteArray: aValue asByteArray;
	    putByte: 0
