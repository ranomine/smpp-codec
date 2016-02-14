versions
version5: spec
	<version: '5' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 5'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '2/14/2016 19:37'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '3';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.44';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.47'. ].
