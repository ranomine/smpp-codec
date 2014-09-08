as yet unclassified
setUnauthenticated
	isAuthenticated := false.
	onAuthTimeout := TimerScheduler instance scheduleInSeconds: 5 block: [connection stop].