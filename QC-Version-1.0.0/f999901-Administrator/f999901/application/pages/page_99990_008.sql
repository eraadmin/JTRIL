prompt --application/pages/page_99990_008
begin
--   Manifest
--     PAGE: 99990
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>99990108
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'SINGLE GLOBAL ITEM ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'SINGLE GLOBAL ITEM ENTRY'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220620114112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11696814239224331)
,p_plug_name=>'GLOBAL ITEM ENTRY'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11697353591224336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11696814239224331)
,p_button_name=>'Insert'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Insert Item'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28435911060451618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11696814239224331)
,p_button_name=>'Back'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:99990106:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11697620203224339)
,p_branch_name=>'GO TO PAGE 99990106'
,p_branch_action=>'f?p=&APP_ID.:99990106:&SESSION.::&DEBUG.:RP:P99990106_APP_ID:&P99990108_APP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11697353591224336)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11696985475224332)
,p_name=>'P99990108_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11696814239224331)
,p_item_default=>'10000'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'App Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT FLOW_ID AS DIS, FLOW_ID from',
'apex_210200.WWV_FLOW_ITEMS',
'order by flow_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select App  Id --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11697061192224333)
,p_name=>'P99990108_SCOPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11696814239224331)
,p_item_default=>'GLOBAL'
,p_prompt=>'Scope'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Application;APP,Global;GLOBAL'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11697190154224334)
,p_name=>'P99990108_DATATYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11696814239224331)
,p_item_default=>'VARCHAR'
,p_prompt=>'Datatype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NUMBER;NUMBER,VARCHAR;VARCHAR'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11697205825224335)
,p_name=>'P99990108_PROTECTION_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11696814239224331)
,p_item_default=>'N'
,p_prompt=>'Protection Level'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Unrestricted;N,Checksum Required - Application Level;B,Checksum Required - Users Level;P,Checksum Required - Session Level;S,Restricted - May not be set from browser;I'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11697522077224338)
,p_name=>'P99990108_ITEM_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11696814239224331)
,p_prompt=>'Item Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11697421233224337)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO apex_210200.WWV_FLOW_ITEMS (ID,',
'                                              FLOW_ID,',
'                                              NAME,',
'                                              NAME_LENGTH,',
'                                              SCOPE,',
'                                              DATA_TYPE,',
'                                              IS_PERSISTENT,',
'                                              PROTECTION_LEVEL,',
'                                              REQUIRED_PATCH,',
'                                              SECURITY_GROUP_ID,',
'                                              LAST_UPDATED_BY,',
'                                              LAST_UPDATED_ON,',
'                                              CREATED_BY,',
'                                              CREATED_ON,',
'                                              ITEM_COMMENT)',
'           VALUES (wwv_flow_id.next_val,',
'                   :P99990108_APP_ID,',
'                   :P99990108_ITEM_NAME,',
'                   LENGTH (:P99990108_ITEM_NAME),',
'                   :P99990108_SCOPE,',
'                   :P99990108_DATATYPE,',
'                   ''Y'',',
'                   :P99990108_PROTECTION_LEVEL,',
'                   NULL,',
'                   :P99990108_APP_ID,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   NULL);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11697353591224336)
,p_process_success_message=>'ITEM SUCCESSFULLY INSERTED..'
);
wwv_flow_api.component_end;
end;
/
