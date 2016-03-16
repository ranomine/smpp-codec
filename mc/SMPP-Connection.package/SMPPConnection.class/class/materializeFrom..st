as yet unclassified
materializeFrom: aDictionary
	(aDictionary at: 'connectionType') = 'client' ifFalse: [
		^nil].

	^self new
		connectionName: (aDictionary at: 'connectionName');
		systemType: (aDictionary at: 'systemType');
		systemId: (aDictionary at: 'systemId');
		password: (aDictionary at: 'password');
		hostname: (aDictionary at: 'hostname');
		port: (aDictionary at: 'port');
		role: (aDictionary at: 'role' ifAbsent: [nil]);
		yourself