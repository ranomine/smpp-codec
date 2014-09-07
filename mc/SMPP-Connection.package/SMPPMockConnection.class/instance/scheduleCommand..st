as yet unclassified
scheduleCommand: aCommand
	scheduleToSuper
		ifTrue: [^super scheduleCommand: aCommand]
		ifFalse: [
			aCommand scheduledOn: self.
			omitResult ifFalse: [aCommand result: nil]]