as yet unclassified
connect
	super connect.
	nextSeq := 1.
	writeQueue := SharedQueue new.
	pendingCommands := Dictionary new.
	self scheduleBindTrx
