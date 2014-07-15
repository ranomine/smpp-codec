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
	    add: (SMPPValueHolder for: #source_addr_subunit tag: 16r000D);
	    add: (SMPPValueHolder for: #destination_port tag: 16r020B);
	    add: (SMPPValueHolder for: #dest_addr_subunit tag: 16r0005);
	    add: (SMPPValueHolder for: #sar_msg_ref_num tag: 16r020C);
	    add: (SMPPValueHolder for: #sar_total_segments tag: 16r020E);
	    add: (SMPPValueHolder for: #sar_segment_seqnum tag: 16r020F);
	    add: (SMPPValueHolder for: #more_messages_to_send tag: 16r0426);
	    add: (SMPPValueHolder for: #payload_type tag: 16r0019);
	    add: (SMPPValueHolder for: #message_payload tag: 16r0424);
	    add: (SMPPValueHolder for: #privacy_indicator tag: 16r0201);
	    add: (SMPPValueHolder for: #callback_num tag: 16r0381);
	    add: (SMPPValueHolder for: #callback_num_pres_ind tag: 16r0302);
	    add: (SMPPValueHolder for: #callback_num_atag tag: 16r0303);
	    add: (SMPPValueHolder for: #source_subaddress tag: 16r0202);
	    add: (SMPPValueHolder for: #dest_subaddress tag: 16r0203);
	    add: (SMPPValueHolder for: #user_response_code tag: 16r0205);
	    add: (SMPPValueHolder for: #display_time tag: 16r1201);
	    add: (SMPPValueHolder for: #sms_signal tag: 16r1203);
	    add: (SMPPValueHolder for: #ms_validity tag: 16r1204);
	    add: (SMPPValueHolder for: #ms_msg_wait_facilities tag: 16r0030);
	    add: (SMPPValueHolder for: #number_of_messages tag: 16r0304);
	    add: (SMPPValueHolder for: #alert_on_msg_delivery tag: 16r130C);
	    add: (SMPPValueHolder for: #language_indicator tag: 16r020D);
	    add: (SMPPValueHolder for: #its_reply_type tag: 16r1380);
	    add: (SMPPValueHolder for: #its_session_info tag: 16r1383);
	    add: (SMPPValueHolder for: #ussd_service_op tag: 16r0501);
	    yourself
