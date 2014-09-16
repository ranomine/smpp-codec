as yet unclassified
disconnected
	| oldCommands |
	"Forget about all commands"
	enquireLinkTimer ifNotNil: [:timer | timer cancel].
	oldCommands := pendingCommands.
	pendingCommands := Dictionary new.
	oldCommands valuesDo: [:each |
		each cancel].