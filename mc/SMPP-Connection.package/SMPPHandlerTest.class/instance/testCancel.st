as yet unclassified
testCancel
	| command canceled |

	"Schedule a command"
	canceled := false.
	command := SMPPCommand new
		body: SMPPEnquireLink new;
		onCancel: [canceled := true];
		onError: [self halt];
		onResult: [self halt];
		onTimeout: [self halt].
	handler scheduleCommand: command.
	self assert: connection sent size equals: 1.
	self assert: command timeoutScheduled.

	"Ask to cancel"
	handler disconnected.
	self assert: canceled.
	self deny: command timeoutScheduled.