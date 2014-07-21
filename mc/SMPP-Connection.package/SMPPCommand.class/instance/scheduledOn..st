as yet unclassified
scheduledOn: aConnection
	connection := aConnection.
	timeoutTimer := TimerScheduler instance scheduleInSeconds: 10
		    block: [self timeout]
