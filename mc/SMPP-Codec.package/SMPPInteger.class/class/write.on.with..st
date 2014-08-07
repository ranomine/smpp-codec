as yet unclassified
write: aValue on: aMsg with: anAttribute
	anAttribute valueSize = 1 ifTrue: [
		anAttribute hasLength
			ifTrue: [aMsg putLen16: 1].
		^aMsg putByte: aValue].
	anAttribute valueSize = 2 ifTrue: [
		anAttribute hasLength
			ifTrue: [aMsg putLen16: 2].
		^aMsg putLen16: aValue].
	^self error: 'This value size is not supported yet.'
