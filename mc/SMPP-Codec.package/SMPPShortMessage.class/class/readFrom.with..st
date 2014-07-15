as yet unclassified
readFrom: aStream with: anAttribute
	| len |
	len := aStream next.
	^(aStream next: len) asString
