as yet unclassified
disconnected
	| oldCommands |
	"Forget about all commands"
	oldCommands := pendingCommands.
	pendingCommands := Dictionary new.
	oldCommands valuesDo: [:each |
		each cancel].