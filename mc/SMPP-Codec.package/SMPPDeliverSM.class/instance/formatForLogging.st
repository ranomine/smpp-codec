logging
formatForLogging
	^String streamContents: [:stream |
		stream
			nextPutAll: self class printString;
			nextPutAll: '(source=';
			nextPutAll: source_addr;
			nextPutAll: ',dest=';
			nextPutAll: destination_addr;
			nextPut: $)]