enquire-link
startEnquireLink
	| command |
	enquireLinkTimer ifNotNil: [enquireLinkTimer cancel].

	command := (SMPPCommand initWith: SMPPEnquireLink new)
		setTimeout: 5;
		onTimeout: [self linkFailed];
		onError: [:err | "Should not happen?" self linkFailed];
		onResult: [:res |
			enquireLinkTimer := TimerScheduler instance scheduleInSeconds: enquireLinkTimeout block: [
				self startEnquireLink]];
		yourself.
	self scheduleCommand: command.