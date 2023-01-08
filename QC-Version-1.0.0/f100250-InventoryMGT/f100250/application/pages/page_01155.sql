prompt --application/pages/page_01155
begin
--   Manifest
--     PAGE: 01155
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>1155
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'test localhost'
,p_step_title=>'test localhost'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180708183322'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42125354802178014)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42125427499178015)
,p_name=>'P1155_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42125354802178014)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42125827730178019)
,p_name=>'P1155_NEW_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42125354802178014)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42125636076178017)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42125959812178020)
,p_event_id=>wwv_flow_api.id(42125636076178017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--select SYS_CONTEXT(''USERENV'', ''IP_ADDRESS'', 15) ipaddr,utl_inaddr.get_host_address(sys_context(''userenv'',''server_host'')) b into :P1155_NEW_1,:P1155_NEW from dual;',
'--SELECT UTL_INADDR.get_host_address ss into :P1155_NEW FROM DUAL;',
'select host_name hostname into :P1155_NEW from v$instance;',
'select utl_inaddr.get_host_address(''dbapp'') ipaddress into :P1155_NEW_1 from dual;',
'end;'))
,p_attribute_03=>'P1155_NEW_1,P1155_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
