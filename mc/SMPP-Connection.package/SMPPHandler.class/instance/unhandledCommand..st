as yet unclassified
unhandledCommand: aCommand
	on_unhandled_command ifNotNil: [:block | block value: self value: aCommand].