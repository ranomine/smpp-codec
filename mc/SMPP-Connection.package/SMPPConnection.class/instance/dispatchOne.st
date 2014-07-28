as yet unclassified
dispatchOne
	| msg |
	
	[msg := SMPPMessage readFrom: socket.
	self dispatchMessage: msg] 
		on: Error
		do: 
		    [:e | 
		    e
			pass]
