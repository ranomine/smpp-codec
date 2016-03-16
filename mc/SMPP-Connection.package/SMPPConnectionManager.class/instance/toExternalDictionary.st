as yet unclassified
toExternalDictionary
	^{
		'connectionName' -> connectionName.
		'connectionType' -> 'server'.
		'systemId' -> systemId.
		'systemType' -> systemType.
		'allowedRemoteAddress' -> (allowedRemoteAddress ifNotNil: ['.' join: allowedRemoteAddress]).
		'allowedRemotePort' -> allowedRemotePort. 
		'password' -> password.
		'port' -> port.
		'role' -> role } asDictionary