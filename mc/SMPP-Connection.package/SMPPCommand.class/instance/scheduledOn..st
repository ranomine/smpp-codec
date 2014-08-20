as yet unclassified
scheduledOn: aConnection
	connection := aConnection.
	timeoutTimer := TimerScheduler instance scheduleInSeconds: timeout
		    block: [self timeout]
