as yet unclassified
write: aValue on: aMsg with: anAttribute
	anAttribute valueSize = 1 ifTrue: [^aMsg putByte: aValue].
	^self error: 'This value size is not supported yet.'
