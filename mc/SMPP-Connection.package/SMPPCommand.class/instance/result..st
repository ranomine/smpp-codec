result dispatch
result: aResult
	timeoutTimer cancel.
	onResult ifNotNil: [:block | block value: aResult]
