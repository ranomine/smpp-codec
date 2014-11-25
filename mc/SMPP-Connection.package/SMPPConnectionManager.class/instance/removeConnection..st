as yet unclassified
removeConnection: aConnection
	"There are two paths to have the connection de-registered. Deal
	with it already being dead."
	sem critical: [clientConnections remove: aConnection ifAbsent: []]