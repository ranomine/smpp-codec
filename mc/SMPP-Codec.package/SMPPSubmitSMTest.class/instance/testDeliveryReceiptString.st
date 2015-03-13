as yet unclassified
testDeliveryReceiptString
	| text |
	text := SMPPSubmitSM new
				short_message: '012345678901234567890123456789ABC';
				deliveryReceiptString: (DateAndTime fromUnixTime: 1426244836) translateToUTC.

	self assert: text equals: 'id:0 sub:001 dlvrd:001 submit date:1503131207 done date:1503131207 stat:DELIVRD err:000 Text:01234567890123456789'.