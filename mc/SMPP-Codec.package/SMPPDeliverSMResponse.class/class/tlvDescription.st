as yet unclassified
tlvDescription
	^(OrderedCollection new)
		add: (SMPPOctetString tlvDescription
			instVarName: #message_id;
			yourself);
		yourself