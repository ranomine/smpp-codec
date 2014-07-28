as yet unclassified
anyAuthenticatedConnection
	sem critical: [
		^clientConnections detect: [:each | each isAuthenticated ] ifNone: [nil]].
		