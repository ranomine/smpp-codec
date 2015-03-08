as yet unclassified
scheduleCommand: aCommand
	scheduledCommands add: aCommand.
	scheduleToSuper
		ifTrue: [^super scheduleCommand: aCommand]
		ifFalse: [
			aCommand scheduledOn: self.
			omitResult ifFalse: [aCommand result: nil]]