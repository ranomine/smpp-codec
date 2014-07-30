as yet unclassified
acceptConnections
	[quit] whileFalse: [
		self acceptOneConnection.
		
		"Pharo sockets are strange. Check if it is still valid after image
		resumption and just return. We need some other way to stop/resume
		the socket across image starts but this stops a 100% CPU usage."
		socket isValid ifFalse: [
			self flag: #todo. "Add logging"
			^self].
	]