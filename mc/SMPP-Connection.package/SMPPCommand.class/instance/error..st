result dispatch
error: anError
	timeoutTimer cancel.
	onError ifNotNil: [:block | block value: anError]
