as yet unclassified
stop
	onConnectionClosed ifNotNil: [:block | block cull: self].
	super stop