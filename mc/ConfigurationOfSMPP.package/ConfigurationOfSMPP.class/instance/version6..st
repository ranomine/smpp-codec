versions
version6: spec
	<version: '6' imports: #('0.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 6'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '2/22/2016 23:48'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '3';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.44';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.49'. ].
