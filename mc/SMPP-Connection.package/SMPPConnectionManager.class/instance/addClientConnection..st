as yet unclassified
addClientConnection: aConnection
	sem critical: [clientConnections add: aConnection]