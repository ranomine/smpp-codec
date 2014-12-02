copy-and-paste
sourceAddressAsE164
	| hdr |
	hdr := 2r1 bitShift: 7.
	hdr := hdr bitOr: ((source_addr_ton bitAnd: 2r111) bitShift: 4).
	hdr := hdr bitOr: (source_addr_npi bitAnd: 2r1111).
	^ByteArray streamContents: [:stream |
		stream
			nextPut: hdr;
			nextPutAll: source_addr toTBCD].