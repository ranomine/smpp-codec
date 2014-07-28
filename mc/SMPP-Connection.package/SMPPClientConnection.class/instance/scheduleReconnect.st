as yet unclassified
scheduleReconnect
	onConnectionClosed ifNotNil: [:block | block cull: self].
	super scheduleReconnect