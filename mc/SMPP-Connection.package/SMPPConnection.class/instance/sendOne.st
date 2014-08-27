as yet unclassified
sendOne
	"TODO: Pill of death!"

	| msg |
	msg := writeQueue next.
	socket ifNil: [ ConnectionClosed signal ].
	socket nextPutAllFlush: msg
