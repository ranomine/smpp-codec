access-control
allowedRemoteAddress: anAddress
	anAddress ifNil: [
		allowedRemoteAddress := nil.
		^self
	 ].
	allowedRemoteAddress := ((anAddress subStrings: '.') collect: [:each | each asNumber ]) asByteArray.