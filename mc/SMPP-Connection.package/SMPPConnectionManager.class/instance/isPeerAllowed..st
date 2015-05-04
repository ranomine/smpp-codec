access-control
isPeerAllowed: aClient
	allowedRemoteAddress ifNotNil: [
		allowedRemoteAddress = aClient remoteAddress ifFalse: [
			^false]].

	allowedRemotePort ifNotNil: [
		allowedRemotePort = aClient remotePort ifFalse: [
			^false]].

	^true