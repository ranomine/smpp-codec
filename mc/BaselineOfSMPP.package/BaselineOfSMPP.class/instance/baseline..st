as yet unclassified
baseline: spec

	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'OsmoGSM'
			with: [ 
			spec repository: 'github://moiji-mobile/osmocom-gsm:v3/source' ].
		spec
			baseline: 'OsmoLogging'
			with: [ 
			spec repository: 'github://moiji-mobile/osmocom-logging:v8/source' ].
		spec
			baseline: 'OsmoNetwork'
			with: [ 
			spec repository: 'github://moiji-mobile/osmocom-network:v10/source' ].
		spec baseline: 'OsmoCore' with: [
			spec repository: 'github://moiji-mobile/osmocom-core:v9/source' ].

		spec
			package: #'SMPP-Codec' with: [ spec requires: #( 'OsmoGSM' ) ];
			package: #'SMPP-Connection' with: [ 
				spec requires:
						#( #'SMPP-Codec' 'OsmoCore' 'OsmoLogging' 'OsmoNetwork' ) ].
		spec group: 'default' with: #( #'SMPP-Codec' #'SMPP-Connection' ) ]
