as yet unclassified
readFrom: aStream
	| description tag |
	description := self class tlvDescription.
	description do: 
		[:attribute | 
		attribute isMandatory ifTrue: [self doParse: attribute stream: aStream].
		attribute isOptional 
		    ifTrue: 
			["Read the tag if we have not done so far. We can not
			 peek for more than one character."

			(tag isNil and: [aStream atEnd not]) 
			    ifTrue: [tag := ((aStream next: 2) shortAt: 1) swap16].
			tag = attribute tag 
			    ifTrue: 
				[tag := nil.
				self doParse: attribute stream: aStream]]].
	aStream atEnd ifFalse: [^self error: 'Message not consumed']
