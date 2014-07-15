as yet unclassified
tlvDescription
	^(OrderedCollection new)
	    add: SMPPSystemId tlvDescription;
	    add: SMPPPassword tlvDescription;
	    add: SMPPSystemType tlvDescription;
	    add: SMPPInterfaceVersion tlvDescription;
	    add: SMPPAddressTypeOfNumber tlvDescription;
	    add: SMPPAddressNumberingPlanIndicator tlvDescription;
	    add: SMPPAddressRange tlvDescription;
	    yourself
