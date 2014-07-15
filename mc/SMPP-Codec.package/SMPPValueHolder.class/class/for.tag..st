as yet unclassified
for: aString tag: aTag
	^(TLVDescription new)
	    instVarName: aString;
	    parseClass: self;
	    tag: aTag;
	    beOptional;
	    beTLV;
	    yourself
