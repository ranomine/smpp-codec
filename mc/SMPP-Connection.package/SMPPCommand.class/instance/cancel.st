result dispatch
cancel
	timeoutTimer cancel.
	onCancel ifNotNil: [:block | block value]
