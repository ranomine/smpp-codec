as yet unclassified
removeConnection: aConnection
	sem critical: [clientConnections remove: aConnection]