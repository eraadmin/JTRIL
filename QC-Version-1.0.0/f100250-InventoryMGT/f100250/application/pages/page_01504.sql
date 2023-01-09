prompt --application/pages/page_01504
begin
--   Manifest
--     PAGE: 01504
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
 p_id=>1504
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Ware House Zone Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Ware House Zone Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171112122024'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193269435415204872)
,p_plug_name=>'Ware House Zone Entry'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_display_column=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193604377555162109)
,p_plug_name=>'Ware House Zone Tree'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       AREANAME as title, ',
'       null as icon, ',
'       "ZONLCODE" as value, ',
'       null as tooltip,',
'       '' javascript:$s(''''P1504_WHSZONPK_1'''',''||WHSZONPK||'')'' as link',
'from "#OWNER#"."NMWHZNMS"',
'where COMPCODE = ''100''',
'start with "ZONLCODE" =''ROOT''',
'connect by prior "AREACODE"="ZONLCODE"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P1504_TREEVALUE'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_07=>'APEX_TREE'
,p_attribute_08=>'a-Icon'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47940527563632688)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(193269435415204872)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P1504_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47940969801632693)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(193269435415204872)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1502:&SESSION.::&DEBUG.:RP,1504::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47941374652632694)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(193269435415204872)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P1504_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47941766769632694)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(193269435415204872)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1504_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47949710065632703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(193604377555162109)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Collapse All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree225950760624563453'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47950033428632703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(193604377555162109)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree225950760624563453'');'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47942202191632696)
,p_name=>'P1504_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47942606534632696)
,p_name=>'P1504_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47942939752632697)
,p_name=>'P1504_ZONLCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47943404449632697)
,p_name=>'P1504_AREACODE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_prompt=>'Parent Areacode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>71
,p_cHeight=>1
,p_tag_attributes=>'readonly=true;'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'and P.DEPT_NO = :P1504_TREEVALUE',
'',
'readonly=true'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47943729595632697)
,p_name=>'P1504_AREACODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Code'
,p_source=>'AREACODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>71
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'and P.DEPT_NO = :P1504_TREEVALUE',
'',
'readonly=true'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47944135651632697)
,p_name=>'P1504_AREANAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Name'
,p_source=>'AREANAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47944567326632697)
,p_name=>'P1504_AREADESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Area Description'
,p_source=>'AREADESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>30
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47944937640632697)
,p_name=>'P1504_WHSZONPK'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'WHSZONPK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47945346583632697)
,p_name=>'P1504_WHSZONPK_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47945717417632699)
,p_name=>'P1504_WARECODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>71
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47946132282632699)
,p_name=>'P1504_SMANCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SMANNAME||'' (''||SMANCODE||'')'' D,SMANCODE R',
'from nmsmnmas',
'where compcode = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>65
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47946537139632699)
,p_name=>'P1504_ZONECODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location Type'
,p_source=>'ZONECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NMCODDES ,NMSOFCDE',
'from nmcodmas',
'where NMHRDCDE = ''LOC'' and compcode = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>65
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47947007332632699)
,p_name=>'P1504_PROD_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Production Type'
,p_source=>'PROD_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(nmcoddes)||'' (''||nmsofcde||'')'' product_name,nmsofcde R',
'from nmcodmas',
'where COMPCODE = :COMPCODE',
'AND NMHRDCDE = ''PRD''',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>65
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47947395426632699)
,p_name=>'P1504_STATUSCD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Status'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_cHeight=>1
,p_tag_attributes=>'style="width:52%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47947729628632699)
,p_name=>'P1504_OPRSTAMP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47948120702632699)
,p_name=>'P1504_TIMSTAMP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47948538012632703)
,p_name=>'P1504_MODIFYDT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47948933489632703)
,p_name=>'P1504_TREEVALUE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(193269435415204872)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47950554028632705)
,p_validation_name=>'Areacode validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P1504_AREACODE =:P1504_AREACODE_1 then',
'        return ''This ''||:P1504_AREACODE_1 ||'' is already exist'';',
'    end if;',
'    return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47952908892632705)
,p_name=>'change on warhouse'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1504_WHSZONPK_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47953343934632707)
,p_event_id=>wwv_flow_api.id(47952908892632705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P1504_WHSZONPK_1 IS NOT NULL THEN',
'select AREACODE into :P1504_AREACODE_1 ',
'from nmwhznms	where WHSZONPK = :P1504_WHSZONPK_1;',
'END IF;',
'Exception',
'when no_data_found then',
':P1504_AREACODE_1:='''';',
'when too_many_rows then',
':P1504_AREACODE_1:='''';',
'when others then',
':P1504_AREACODE_1:='''';',
'',
'end;',
''))
,p_attribute_02=>'P1504_WHSZONPK_1'
,p_attribute_03=>'P1504_AREACODE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47950848296632705)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWHZNMS'
,p_attribute_02=>'NMWHZNMS'
,p_attribute_03=>'P1504_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47951305375632705)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWHZNMS'
,p_attribute_02=>'NMWHZNMS'
,p_attribute_03=>'P1504_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47951714523632705)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47941766769632694)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47952481803632705)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear status'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47941374652632694)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47952046444632705)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P1504_OPRSTAMP := :APP_USER;',
'   :P1504_TIMSTAMP := sysdate;',
'   :P1504_MODIFYDT := sysdate;',
'   :P1504_COMPCODE := :COMPCODE;',
'   ',
'IF :P1504_WHSZONPK_1 IS  NULL THEN',
'	SELECT NVL(MAX(WHSZONPK),0)+1',
'	INTO :P1504_WHSZONPK',
'	FROM NMWHZNMS',
'	WHERE COMPCODE = :COMPCODE;',
'ELSE ',
'SELECT NVL(MAX(WHSZONPK),0)+1',
'	INTO :P1504_WHSZONPK',
'	FROM NMWHZNMS',
'	WHERE COMPCODE = :COMPCODE;',
'END IF;',
'/*   ',
'IF :P1504_WHSZONPK IS  NOT NULL THEN',
'   select ZONLCODE ',
'   into :P1504_AREACODE',
'from nmwhznms	',
'where  WHSZONPK = :P1504_WHSZONPK;--AREACODE = :P1504_AREACODE and',
'*/',
'IF :P1504_ZONLCODE IS NULL and :P1504_WHSZONPK_1 IS  NULL THEN ',
'		:P1504_ZONLCODE := ''ROOT'';',
'ELSE',
'		:P1504_ZONLCODE := :P1504_AREACODE_1;',
'END IF;',
'',
'   	',
'   EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'	 :P1504_WHSZONPK:=1;',
'	WHEN OTHERS THEN',
'     :P1504_WHSZONPK:=1;',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(47941374652632694)
);
wwv_flow_api.component_end;
end;
/
