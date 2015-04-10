logging
formatForLogging
	^String streamContents: [:stream |
		stream
			nextPutAll: self class printString;
			nextPutAll: '(systemId=';
			nextPutAll: systemId;
			nextPut: $)]