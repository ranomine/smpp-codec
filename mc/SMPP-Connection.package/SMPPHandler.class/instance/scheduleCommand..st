as yet unclassified
scheduleCommand: aCommand
	aCommand scheduledOn: self.
	self send: aCommand