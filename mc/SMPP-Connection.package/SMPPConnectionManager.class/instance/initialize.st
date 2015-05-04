as yet unclassified
initialize
	super initialize.
	sem := Semaphore forMutualExclusion.
	clientConnections := OrderedCollection new.
	logger := LogStructuredLogger for: self area: #smppConnection.