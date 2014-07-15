as yet unclassified
connect
	super connect.
	nextSeq := 100.
	writeQueue := SharedQueue new.
	pendingCommands := Dictionary new.
	self scheduleBindTrx
