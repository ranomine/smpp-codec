as yet unclassified
testRole
	connectionManager role: nil.
	self assert: connectionManager role equals: nil.
	self assert: (connectionManager toExternalDictionary at: 'role') isNil.

	connectionManager role: 'abc'.
	self assert: connectionManager role equals: #abc.
	self assert: (connectionManager toExternalDictionary at: 'role') equals: #abc.