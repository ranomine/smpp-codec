as yet unclassified
start
	super start.
	isAuthenticated := false.
	onAuthTimeout := TimerScheduler instance scheduleInSeconds: 5 block: [self stop].