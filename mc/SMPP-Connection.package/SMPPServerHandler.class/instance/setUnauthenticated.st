as yet unclassified
setUnauthenticated
	isAuthenticated := false.
	onAuthTimeout := TimerScheduler instance scheduleInSeconds: sessionInitTimeout block: [connection stop].