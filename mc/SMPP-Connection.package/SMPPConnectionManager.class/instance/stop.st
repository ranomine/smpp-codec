as yet unclassified
stop
	quit := true.
	socket ifNotNil: [socket closeAndDestroy].
	acceptLoop ifNotNil: [acceptLoop terminate].