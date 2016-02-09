versions
version2: spec
	<version: '2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '2/9/2016 08:56'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '1';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.44';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.45'. ].
