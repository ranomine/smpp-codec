as yet unclassified
initialize
	super initialize.
	sem := Semaphore forMutualExclusion.
	clientConnections := OrderedCollection new.