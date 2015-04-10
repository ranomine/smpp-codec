as yet unclassified
tlvDescription
	^(OrderedCollection new)
	    add: SMPPSystemId tlvDescription;
	    add: (SMPPValueHolder for: #sc_interface_version tag: 16r0210);
	    yourself
