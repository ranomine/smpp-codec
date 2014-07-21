as yet unclassified
dispatchOne
	| msg |
	
	[msg := SMPPMessage readFrom: socket.
	msg body connectionDispatchOn: self with: msg] 
		on: Error
		do: 
		    [:e | 
		    e
			pass]
