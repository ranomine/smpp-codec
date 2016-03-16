versions
version8: spec
	<version: '8' imports: #('0.8-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 8'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '3/16/2016 17:19'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '3';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.44';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.51'. ].
