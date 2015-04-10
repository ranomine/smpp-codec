logging
formatForLogging
	^String streamContents: [:stream |
		stream
			nextPutAll: self class printString;
			nextPutAll: '(body=';
			nextPutAll: body formatForLogging;
			nextPut: $)]