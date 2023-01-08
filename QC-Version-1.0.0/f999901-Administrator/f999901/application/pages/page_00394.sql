prompt --application/pages/page_00394
begin
--   Manifest
--     PAGE: 00394
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
 p_id=>394
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Item Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Master'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region h2.t-Region-title {',
'    color: #191919 !important;',
'    /* height: 15px !important; */',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200504165600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61926894287445286)
,p_plug_name=>'Form on Item Master'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28618538556056125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(61926894287445286)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P394_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28618903462056125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61926894287445286)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:392:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28619346520056126)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(61926894287445286)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P394_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28619717509056126)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61926894287445286)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P394_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(28633392966056139)
,p_branch_action=>'f?p=&APP_ID.:392:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4987715385600114)
,p_name=>'P394_RIGHTS_CHECK'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Count(*)',
'	From Syrights',
'	Where COMPCODE=:compcode',
'	And   USERCODE=:app_user',
'	And   PROGNAME=:progname',
'	And   DELSTATS=''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28620182965056126)
,p_name=>'P394_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28620519415056128)
,p_name=>'P394_ITEMTYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S'
,p_prompt=>'Item Type'
,p_source=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Stock;S,Non Stock;N'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28620950256056128)
,p_name=>'P394_ITEMCLAS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Item Class'
,p_source=>'ITEMCLAS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Normal;N,Batch;B,Enumerative;E'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28621350043056128)
,p_name=>'P394_STATUSCD'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACT'
,p_prompt=>'Status'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;ACT,Not Active;NOT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28621787431056128)
,p_name=>'P394_ITEMCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Code'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28622187361056128)
,p_name=>'P394_USERCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28622558200056129)
,p_name=>'P394_ITEMDES1'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'ITEMDES1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28622912964056129)
,p_name=>'P394_ITEMDES2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28623391004056129)
,p_name=>'P394_SALERATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale Rate'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28623772116056129)
,p_name=>'P394_HUOMCODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit of Measurement '
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.LUOMCODE,A.LUOMCODE r',
'  FROM NMUOMMAS A',
' WHERE     A.COMPCODE = :COMPCODE '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28624147359056131)
,p_name=>'P394_LUOMCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28624540721056131)
,p_name=>'P394_LOCALPRT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Local parts'
,p_source=>'LOCALPRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28624965831056131)
,p_name=>'P394_FXASTFLG'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'FXASTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28625331948056131)
,p_name=>'P394_SALESFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SALESFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28625785400056131)
,p_name=>'P394_PAINTFLG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Paint Flag'
,p_source=>'PAINTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28626133740056132)
,p_name=>'P394_PROCESS_REQ'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESS_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28626595478056132)
,p_name=>'P394_CREADATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREADATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28626987762056132)
,p_name=>'P394_OPRSTAMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28627347348056132)
,p_name=>'P394_TIMSTAMP'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28627716718056134)
,p_name=>'P394_COMPCODE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28628134087056134)
,p_name=>'P394_USE_SLSPCT_FLG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'USE_SLSPCT_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28628549042056134)
,p_name=>'P394_FACTRVAL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28628972105056134)
,p_name=>'P394_PACKSETP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(61926894287445286)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3'
,p_source=>'PACKSETP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28630540429056137)
,p_name=>'Set Itemdesc2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_ITEMDES1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28631094213056137)
,p_event_id=>wwv_flow_api.id(28630540429056137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_ITEMDES2'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P394_ITEMDES1'
,p_attribute_07=>'P394_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28631402917056137)
,p_name=>'set LUOMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_HUOMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28631943291056137)
,p_event_id=>wwv_flow_api.id(28631402917056137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_LUOMCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P394_HUOMCODE'
,p_attribute_07=>'P394_HUOMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28632376563056139)
,p_name=>'set item code on usercode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28632877742056139)
,p_event_id=>wwv_flow_api.id(28632376563056139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P394_USERCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P394_ITEMCODE'
,p_attribute_07=>'P394_ITEMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4987812571600115)
,p_name=>'delete rights'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P394_RIGHTS_CHECK'
,p_condition_element=>'P394_RIGHTS_CHECK'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987965425600116)
,p_event_id=>wwv_flow_api.id(4987812571600115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(28619717509056126)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4988059997600117)
,p_event_id=>wwv_flow_api.id(4987812571600115)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(28619717509056126)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28629316012056135)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P394_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28629753001056135)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P394_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28630177420056137)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28619717509056126)
);
wwv_flow_api.component_end;
end;
/