as yet unclassified
initialize
	super initialize.
	reachable := true.
	omitResult := false.
	scheduleToSuper := false.
	sent := OrderedCollection new.
	scheduledCommands := OrderedCollection new.