serialize
writeOn: aMsg
	"Custom write to avoid having to box String code"

	"Write each element"
	self class tlvDescription do: 
		[:attr | 
		| val |
		val := self instVarNamed: attr instVarName.

		"Now write it"
		val isNil 
		    ifFalse: 
			[attr needsTag ifTrue: [aMsg putLen16: attr tag].
			attr parseClass 
			    write: val
			    on: aMsg
			    with: attr]]
