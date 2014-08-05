as yet unclassified
tlvDescription
	^(OrderedCollection new)
	    add: SMPPServiceType tlvDescription;
	    add: ((SMPPAddressTypeOfNumber tlvDescription)
			instVarName: #source_addr_ton;
			yourself);
	    add: ((SMPPAddressNumberingPlanIndicator tlvDescription)
			instVarName: #source_addr_npi;
			yourself);
	    add: ((SMPPAddress tlvDescription)
			instVarName: #source_addr;
			yourself);
	    add: ((SMPPAddressTypeOfNumber tlvDescription)
			instVarName: #dest_addr_ton;
			yourself);
	    add: ((SMPPAddressNumberingPlanIndicator tlvDescription)
			instVarName: #dest_addr_npi;
			yourself);
	    add: ((SMPPAddress tlvDescription)
			instVarName: #destination_addr;
			yourself);
	    add: SMPPESMClass tlvDescription;
	    add: SMPPProtocolId tlvDescription;
	    add: SMPPPriorityFlag tlvDescription;
	    add: SMPPScheduleDeliveryTime tlvDescription;
	    add: SMPPValidityPeriod tlvDescription;
	    add: SMPPRegisteredDelivery tlvDescription;
	    add: SMPPReplaceIfPresentFlag tlvDescription;
	    add: SMPPDataCoding tlvDescription;
	    add: SMPPDefaultMessageId tlvDescription;
	    add: SMPPShortMessage tlvDescription;
	    add: (SMPPValueHolder for: #user_message_reference tag: 16r0204);
	    add: (SMPPValueHolder for: #source_port tag: 16r020A);
	    add: (SMPPValueHolder for: #destination_port tag: 16r020B);
	    add: (SMPPInteger tlvDescription
			instVarName: #sar_msg_ref_num;
			tag: 16r020C; valueSize: 1;
			beOptional; yourself);
	    add: (SMPPInteger tlvDescription
			instVarName: #sar_total_segments;
			tag: 16r020E; valueSize: 1;
			beOptional; yourself);
	    add: (SMPPInteger tlvDescription
			instVarName: #sar_segment_seqnum;
			tag: 16r020F; valueSize: 1;
			beOptional; yourself);
	    add: (SMPPValueHolder for: #user_response_code tag: 16r0205);
	    add: (SMPPValueHolder for: #privacy_indicator tag: 16r0201);
	    add: (SMPPValueHolder for: #payload_type tag: 16r0019);
	    add: (SMPPValueHolder for: #message_payload tag: 16r0424);
	    add: (SMPPValueHolder for: #callback_num tag: 16r0381);
	    add: (SMPPValueHolder for: #source_subaddress tag: 16r0202);
	    add: (SMPPValueHolder for: #dest_subaddress tag: 16r0203);
	    add: (SMPPValueHolder for: #language_indicator tag: 16r020D);
	    add: (SMPPValueHolder for: #its_session_info tag: 16r1383);
	    add: (SMPPValueHolder for: #network_error_code tag: 16r0423);
	    add: (SMPPValueHolder for: #message_state tag: 16r0427);
	    add: (SMPPValueHolder for: #receipted_message_id tag: 16r001E);
	    yourself
