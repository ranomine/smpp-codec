as yet unclassified
readFrom: aStream with: anAttribute
	| str |
	str := WriteStream on: String new.
	[aStream peek = 0] whileFalse: [str nextPut: aStream next asCharacter].

	"Skip the $0 now"
	aStream next.

	"anAttribute... verify the max size"
	^str contents
