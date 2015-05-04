as yet unclassified
acceptOneConnection
	| client |
	client := socket waitForAcceptFor: 60.
	client ifNil: [^self].
	
	OsmoDispatcher dispatchBlock:  [
		(self isPeerAllowed: client)
			ifFalse: [
				logger logError: 'Peer not allowed' with: { 'address' -> client remoteAddress. 'port' -> client remotePort }.
				client closeAndDestroy]
			ifTrue: [
				self handleConnection: client]
	]