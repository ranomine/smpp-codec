result dispatch
cancel
	onCancel ifNotNil: [:block | block value]
