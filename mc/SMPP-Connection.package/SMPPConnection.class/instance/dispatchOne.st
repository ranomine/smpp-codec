as yet unclassified
dispatchOne
	| msg |
	
	[
		"Check if the socket is closed?!"
		msg := SMPPMessage readFrom: socket.
		msg ifNil: [
			self scheduleReconnect].
		self dispatchMessage: msg
	] on: Error do: [:e | 
		 e pass
	]
