as yet unclassified
deliveryReceiptString: aDate
	| dateString |
	"See SMPPv3.4 AppendixB for the definition. This code is a bit insane as it
	doesn't deal with failures and we are asked to copy the first 20 chars of the
	initial message. This means the rest of the message would need to be in the
	right codec as well. It is not! The exampl and table disagree with Text/text
	so let's stick with the example as we have an example for it."
	dateString := String streamContents: [:stream |
		(aDate year \\ 100) printOn: stream base: 10 length: 2 padded: true.
		aDate month printOn: stream base: 10 length: 2 padded: true.
		aDate dayOfMonth printOn: stream base: 10 length: 2 padded: true.
		aDate hour printOn: stream base: 10 length: 2 padded: true.
		aDate minute printOn: stream base: 10 length: 2 padded: true.
	].
	^String streamContents: [:stream |
		stream
			nextPutAll: 'id:0 ';
			nextPutAll: 'sub: 001 ';
			nextPutAll: 'dlvrd: 001 ';
			nextPutAll: 'submit date: '; nextPutAll: dateString; nextPutAll: ' ';
			nextPutAll: 'done date: '; nextPutAll: dateString; nextPutAll: ' ';
			nextPutAll: 'stat:DELIVRD ';
			nextPutAll: 'err:0 ';
			nextPutAll: 'Text:'; nextPutAll: (short_message copyUpTo: 20)
	  ]