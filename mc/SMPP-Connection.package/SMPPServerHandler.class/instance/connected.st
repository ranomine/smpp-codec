as yet unclassified
connected
	isAuthenticated := false.
	onAuthTimeout := TimerScheduler instance scheduleInSeconds: 5 block: [connection stop].