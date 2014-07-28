as yet unclassified
start: aPort
	quit := false.
	socket := Socket newTCP.
	socket listenOn: aPort backlogSize: 4.

	"Defaults for Pharo otherwise things don't work."
	socket 
		setOption: 'SO_SNDBUF' value: 4096;
		setOption: 'SO_RCVBUF' value: 4096.

	acceptLoop := [
		self acceptConnections] newProcess.
	acceptLoop name: 'SMPPConnectionManager acceptLoop'.
	acceptLoop resume.
