as yet unclassified
scheduleReconnect
	[
		handler disconnected.
		onConnectionClosed ifNotNil: [:block | block cull: self]
	] on: Error do: [:e |
		"TODO... handle it"
		Transcript nextPutAll: 'Issue in callback'; cr.
	].
	super scheduleReconnect