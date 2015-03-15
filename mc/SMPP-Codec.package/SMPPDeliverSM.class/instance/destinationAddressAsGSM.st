as yet unclassified
destinationAddressAsGSM
	^GSMAddress new
		typeOfNumber: dest_addr_ton;
		numberingPlan: dest_addr_npi;
		address: destination_addr;
		encodeGSM