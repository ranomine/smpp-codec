as yet unclassified
readFrom: aStream with: anAttribute
	| len |
	len := ((aStream next: 2) shortAt: 1) swap16.
	^aStream next: len
