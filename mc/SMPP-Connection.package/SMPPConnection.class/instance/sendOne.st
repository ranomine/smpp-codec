as yet unclassified
sendOne
	"TODO: Pill of death!"

	| msg |
	msg := writeQueue next.
	socket nextPutAllFlush: msg
