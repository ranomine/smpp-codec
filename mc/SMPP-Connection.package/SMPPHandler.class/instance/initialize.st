as yet unclassified
initialize
	super initialize.
	nextSeq := 1.
	boundReceiver := false.
	boundSender := false.
	pendingCommands := Dictionary new.

	"Timers from 7.2 Timer Definitions"
	enquireLinkTimeout := 10.
	inactivityTimeout := 10 * 60.
	responseTimeout := 3 * 60.
	