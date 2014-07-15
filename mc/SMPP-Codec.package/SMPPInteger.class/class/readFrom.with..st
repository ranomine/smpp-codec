as yet unclassified
readFrom: aStream with: anAttribute
	anAttribute valueSize = 1 ifTrue: [^aStream next].

	"This is not implemented yet"
	^self error: 'The base class does not support other value sizes'
