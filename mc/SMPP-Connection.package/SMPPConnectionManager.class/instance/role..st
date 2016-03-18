as yet unclassified
role: aRole 
	role := aRole isNil
					ifTrue: [nil]
					ifFalse: [aRole asSymbol].