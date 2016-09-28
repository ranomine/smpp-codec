as yet unclassified
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'OsmoGSM' with: [
				spec
					className: #ConfigurationOfOsmoGSM;
					versionString: '2';
					repository: 'http://smalltalkhub.com/mc/osmocom/GSM/main/' ];
			project: 'OsmoLogging' with: [
				spec
					className: #ConfigurationOfOsmoLogging;
					versionString: '2';
					repository: 'http://smalltalkhub.com/mc/osmocom/Logging/main/' ];
			project: 'OsmoNetwork' with: [
				spec
					className: #ConfigurationOfOsmoNetwork;
					versionString: '3';
					repository: 'http://smalltalkhub.com/mc/osmocom/Network/main/' ];
			project: 'OsmoCore' with: [
				spec
					className: #ConfigurationOfOsmoCore;
					versionString: '1';
					repository: 'http://smalltalkhub.com/mc/osmocom/Core/main/' ].

		spec 
			package: #'SMPP-Codec' with: [
				spec requires: #('OsmoGSM' ). ];
			package: #'SMPP-Connection' with: [
				spec requires: #(#'SMPP-Codec' 'OsmoCore' 'OsmoLogging' 'OsmoNetwork' ). ].
		spec group: 'default' with: #(#'SMPP-Codec' #'SMPP-Connection' ).
	]