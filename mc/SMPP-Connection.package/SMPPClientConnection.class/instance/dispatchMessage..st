as yet unclassified
dispatchMessage: msg
	isAuthenticated
		ifTrue: [^super dispatchMessage: msg].
	
	msg body connectionDispatchUnAuthenticatedOn: self with: msg