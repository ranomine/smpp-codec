versions
version3: spec
	<version: '3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 3'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '2/11/2016 20:58'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '1';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.44';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.47'. ].
