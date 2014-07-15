as yet unclassified
tlvDescription
	^(TLVDescription new)
	    beLV;
	    instVarName: #short_message;
	    minSize: 0 maxSize: 254;
	    parseClass: self;
	    yourself
