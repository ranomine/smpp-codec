versions
version10: spec
	<version: '10' imports: #('0.10-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 10'.
		spec author: 'HolgerHansPeterFreyther'.
		spec timestamp: '3/19/2016 18:10'.
		spec 
			project: 'OsmoGSM' with: '1';
			project: 'OsmoLogging' with: '1';
			project: 'OsmoNetwork' with: '3';
			project: 'OsmoCore' with: '1'.
		spec 
			package: #'SMPP-Codec' with: 'SMPP-Codec-HolgerHansPeterFreyther.45';
			package: #'SMPP-Connection' with: 'SMPP-Connection-HolgerHansPeterFreyther.52'. ].
