as yet unclassified
initialize
	super initialize.
	handler := SMPPClientHandler new
					connection: self;
					yourself.