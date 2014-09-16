as yet unclassified
initialize
	super initialize.
	handler := SMPPServerHandler new
				connection: self;
				yourself