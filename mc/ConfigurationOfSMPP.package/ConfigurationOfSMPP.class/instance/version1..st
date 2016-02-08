versions
version1: spec
	<version: '1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '2/8/2016 13:23'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '1';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.43';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.45'. ].
