as yet unclassified
setUp
	"Set-up"
	connection := SMPPMockConnection new.
	handler := SMPPHandler new.
	handler connection: connection.