as yet unclassified
materializeFrom: aDictionary
	(aDictionary at: 'connectionType') = 'server' ifFalse: [
		^nil].

	^self new
		connectionName: (aDictionary at: 'connectionName');
		systemType: (aDictionary at: 'systemType');
		systemId: (aDictionary at: 'systemId');
		password: (aDictionary at: 'password');
		allowedRemoteAddress: ((aDictionary at: 'allowedRemoteAddress')
										ifNotNil: [:type | type asByteArray]);
		allowedRemotePort: (aDictionary at: 'allowedRemotePort');
		yourself