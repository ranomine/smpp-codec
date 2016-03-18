as yet unclassified
testRole
	connection role: nil.
	self assert: connection role equals: nil.
	self assert: (connection toExternalDictionary at: 'role') isNil.

	connection role: 'abc'.
	self assert: connection role equals: #abc.
	self assert: (connection toExternalDictionary at: 'role') equals: #abc.