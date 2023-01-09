prompt --application/pages/page_01503
begin
--   Manifest
--     PAGE: 01503
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
 p_id=>1503
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Department Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Department Modify'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	<script type=''text/javascript''>',
'',
'    function noenter(ev)  {',
'',
'        if (window.event && window.event.keyCode == 13 || ev.which == 13) {',
'',
'             window.document.getElementById(this).focus();',
'',
'            return false;',
'',
'         } else {',
'',
'              return true;',
'',
'         }',
'',
'     }',
'',
'</script>',
''))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70148112614208556)
,p_plug_name=>'Form on PRDEPARTMENT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'onkeypress="return noenter(event);"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61165969222078911)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(70148112614208556)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P1503_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61166369683078912)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70148112614208556)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1502:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61166840458078914)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70148112614208556)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P1503_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61167252039078914)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(70148112614208556)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1503_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61167588813078914)
,p_name=>'P1503_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61167974484078915)
,p_name=>'P1503_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61168466188078915)
,p_name=>'P1503_DEPT_NO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept No'
,p_source=>'DEPT_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61168866423078915)
,p_name=>'P1503_DEPT_NO_PARENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept No Parent'
,p_source=>'DEPT_NO_PARENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  ''Select Departmet'' "pro", 0 DEPT_NO',
'from dual d',
'where :P1504_TREEVALUE is null',
'union all',
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61169226087078917)
,p_name=>'P1503_DEPT_NAME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Name'
,p_source=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61169658196078917)
,p_name=>'P1503_DEPT_ALIAS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Alias'
,p_source=>'DEPT_ALIAS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61170010249078917)
,p_name=>'P1503_DESCR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descr'
,p_source=>'DESCR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61170408312078917)
,p_name=>'P1503_LOC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'LOC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61170842112078917)
,p_name=>'P1503_DEPT_TYPE_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dept Type No'
,p_source=>'DEPT_TYPE_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61171190633078917)
,p_name=>'P1503_ACTIVE_STAT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Active Stat'
,p_source=>'ACTIVE_STAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61171580286078917)
,p_name=>'P1503_OPRSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61172001402078918)
,p_name=>'P1503_TIMSTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61172441425078918)
,p_name=>'P1503_MODIFYDT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62778304932997532)
,p_name=>'P1503_WARECODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ware House'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.WAREDESC , S.WARECODE ,s.costcode',
'from nmwhsmas s',
'where S.COMPCODE = :compcode',
'Order By  S.WAREDESC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_06=>'3'
,p_attribute_07=>'P1503_COSTCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62778386692997533)
,p_name=>'P1503_COSTCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(70148112614208556)
,p_use_cache_before_default=>'NO'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61172835585078918)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PRDEPARTMENT'
,p_attribute_02=>'PRDEPARTMENT'
,p_attribute_03=>'P1503_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when=>'P1503_ROWID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61173263561078918)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PRDEPARTMENT'
,p_attribute_02=>'PRDEPARTMENT'
,p_attribute_03=>'P1503_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61173662735078918)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61167252039078914)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61173983389078918)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre_deptno'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'	SELECT NVL(MAX(DEPT_NO),0)+1',
'	INTO :P1503_DEPT_NO',
'	FROM PRDEPARTMENT',
'	WHERE COMPCODE = :compcode;',
'',
'   :P1503_OPRSTAMP := :APP_USER;',
'   :P1503_TIMSTAMP := sysdate;',
'   :P1503_MODIFYDT := sysdate;',
'   :P1503_COMPCODE := :COMPCODE;',
'EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'	 :P1503_DEPT_NO:=1;',
'	WHEN OTHERS THEN',
'     :P1503_DEPT_NO:=1;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(61166840458078914)
);
wwv_flow_api.component_end;
end;
/
