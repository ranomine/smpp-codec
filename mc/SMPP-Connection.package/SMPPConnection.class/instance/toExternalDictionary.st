external-configuration
toExternalDictionary
	^{
		'connectionName' -> connectionName.
		'connectionType' -> 'client'.
		'hostname' -> hostname.
		'port' -> port.
		'systemId' -> handler systemId.
		'systemType' -> handler systemType.
		'password' -> handler password.
		'role' -> handler role} asDictionary