as yet unclassified
initializeConnection
	nextSeq := 1.
	writeQueue := SharedQueue new.
	pendingCommands := Dictionary new.