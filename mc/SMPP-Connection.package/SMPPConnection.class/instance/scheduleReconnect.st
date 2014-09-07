as yet unclassified
scheduleReconnect
	handler disconnected.
	onConnectionClosed ifNotNil: [:block | block cull: self].
	super scheduleReconnect