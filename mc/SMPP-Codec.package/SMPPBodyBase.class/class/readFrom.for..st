parsing
readFrom: aStream for: aHeader
	self allSubclassesDo: 
		[:each | 
		aHeader commandId = each messageType ifTrue: [^each new readFrom: aStream]].
	^self 
	    error: 'No handler for command id = ', aHeader commandId printString
