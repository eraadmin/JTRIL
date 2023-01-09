prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Account Group Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Account Group Master'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'400'
,p_dialog_max_width=>'500'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220120150137'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48963911487089568)
,p_plug_name=>'Account Group Master'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_display_column=>3
,p_query_type=>'TABLE'
,p_query_table=>'NMACTGRP'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48970613925089576)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48452135700051244)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(48970613925089576)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:RP,79::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48971054761089576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48970613925089576)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48972660460089578)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48970613925089576)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_DELT_LBL.'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P79_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_DELT_ICON.'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48973057645089579)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48970613925089576)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_button_condition=>'P79_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48973497467089579)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(48970613925089576)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P79_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48964319609089570)
,p_name=>'P79_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48964768497089570)
,p_name=>'P79_COMPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_default=>'COMPCODE'
,p_item_default_type=>'ITEM'
,p_source=>'COMPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48965146679089570)
,p_name=>'P79_TYPECODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_prompt=>'Type'
,p_source=>'TYPECODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Consumption;CSP,Sales;SAL,Stock;STK,Stock Adjusment;STA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>10
,p_grid_label_column_span=>3
,p_read_only_when=>'P79_ROWID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48965597421089570)
,p_name=>'P79_GRUPCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_prompt=>'Group Code'
,p_source=>'GRUPCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_tag_attributes=>'style="text-transform:uppercase"'
,p_colspan=>10
,p_grid_label_column_span=>3
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P79_CNSMPGRPCNT <> 0 THEN',
'    RETURN TRUE;',
'ELSIF :P79_SALESGRPCNT <> 0 THEN',
'    RETURN TRUE;',
'ELSIF :P79_STOCKGRPCNT <> 0 THEN',
'    RETURN TRUE;',
'ELSE',
'    RETURN FALSE;',
'END IF;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48965997064089571)
,p_name=>'P79_ACCTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_prompt=>'Account Code'
,p_source=>'ACCTCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ACCTCODE || '' - '' || ACCTNAME AS D, ACCTCODE',
'    FROM SYCHRTAC',
'   WHERE COMPCODE = :COMPCODE ',
'   AND HEADFLAG = ''N''',
'---AND ACCTCODE LIKE :CRQ2.ACCTCODE || ''%''',
'ORDER BY ACCTNAME'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'350'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48966300579089571)
,p_name=>'P79_OPRSTAMP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48966747172089571)
,p_name=>'P79_TIMSTAMP'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48967196647089573)
,p_name=>'P79_JOBTYPFL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_default=>'B'
,p_source=>'JOBTYPFL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48967583542089573)
,p_name=>'P79_MODIFYDT'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_item_source_plug_id=>wwv_flow_api.id(48963911487089568)
,p_source=>'MODIFYDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(56693661331743121)
,p_name=>'P79_MESSAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:red;"'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66263130026293646)
,p_name=>'P79_CNSMPGRPCNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66263479210293649)
,p_name=>'P79_SALESGRPCNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66263564821293650)
,p_name=>'P79_STOCKGRPCNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(48963911487089568)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48971100172089576)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(48971054761089576)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48971902232089578)
,p_event_id=>wwv_flow_api.id(48971100172089576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49107819663469762)
,p_name=>'close X button from dialog page'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49108253063469762)
,p_event_id=>wwv_flow_api.id(49107819663469762)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56693790568743122)
,p_name=>'Group Code Duplicate Checking'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_GRUPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P79_ROWID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56693847337743123)
,p_event_id=>wwv_flow_api.id(56693790568743122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 31/05/2020 5:08:25 PM (QP5 v5.354) */',
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'   :P79_MESSAGE := NULL;',
'   ',
'    BEGIN',
'        SELECT COUNT (1)',
'          INTO vCountExist',
'          FROM NMACTGRP',
'         WHERE     COMPCODE = :COMPCODE',
'               AND UPPER (GRUPCODE) = UPPER ( :P79_GRUPCODE);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            vCountExist := 0;',
'        WHEN TOO_MANY_ROWS',
'        THEN',
'            vCountExist := 0;',
'        WHEN OTHERS',
'        THEN',
'            vCountExist := 0;',
'    END;',
'',
'    IF vCountExist <> 0',
'    THEN',
'        :P79_MESSAGE := ''Group Code ''|| :P79_GRUPCODE ||'' Already Exist. '';',
'    END IF;',
'END;'))
,p_attribute_02=>'P79_GRUPCODE'
,p_attribute_03=>'P79_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56693976569743124)
,p_name=>'Set Focus'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_MESSAGE'
,p_condition_element=>'P79_MESSAGE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56694067245743125)
,p_event_id=>wwv_flow_api.id(56693976569743124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_GRUPCODE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66263396219293648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    :P79_COMPCODE := :COMPCODE;',
'    :P79_OPRSTAMP := :APP_USER;',
'    :P79_TIMSTAMP := SYSDATE;',
'     --RAISE_APPLICATION_ERROR(-20004, :P79_COMPCODE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48974211778089579)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(48963911487089568)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form NMACTGRP'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48974696113089581)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48973835236089579)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(48963911487089568)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form NMACTGRP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36431510558111017)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Initial'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P79_ROWID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66263232810293647)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Group Code If Applied'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 04/06/2020 4:30:06 PM (QP5 v5.354) */',
'BEGIN',
'    BEGIN',
'        SELECT COUNT (CNSMPGRP)',
'          INTO :P79_CNSMPGRPCNT',
'          FROM NMITEMAS',
'         WHERE COMPCODE = :COMPCODE AND CNSMPGRP = UPPER ( :P79_GRUPCODE);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            :P79_MESSAGE := ''Consumption Group find Problem in Item Master Table.'';',
'    END;',
'',
'    BEGIN',
'        SELECT COUNT (SALESGRP)',
'          INTO :P79_SALESGRPCNT',
'          FROM NMITEMAS',
'         WHERE COMPCODE = :COMPCODE AND SALESGRP = UPPER ( :P79_GRUPCODE);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            :P79_MESSAGE := ''Sales Group find Problem in Item Master Table.'';',
'    END;',
'',
'',
'    BEGIN',
'        SELECT COUNT (STOCKGRP)',
'          INTO :P79_STOCKGRPCNT',
'          FROM NMITEMAS',
'         WHERE COMPCODE = :COMPCODE AND STOCKGRP = UPPER ( :P79_GRUPCODE);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            :P79_MESSAGE := ''Stock Group find Problem in Item Master Table.'';',
'    END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P79_ROWID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48452224316051245)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Page Validation Setup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P79_TYPECODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Type Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P79_TYPECODE'');',
'   END IF;',
'',
'',
'   IF :P79_GRUPCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Group Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P79_GRUPCODE'');',
'   END IF;',
'',
'',
'   IF :P79_ACCTCODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Account Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P79_ACCTCODE'');',
'   END IF;',
'   ',
'   :P79_GRUPCODE := UPPER(:P79_GRUPCODE);',
'   --:P79_JOBTYPFL := UPPER(:P79_JOBTYPFL);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(56694111995743126)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Group Code Duplicate Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vCountExist   NUMBER := 0;',
'BEGIN',
'    BEGIN',
'        SELECT COUNT (1)',
'          INTO vCountExist',
'          FROM NMACTGRP',
'         WHERE     COMPCODE = :COMPCODE',
'               AND UPPER (GRUPCODE) = UPPER ( :P79_GRUPCODE);',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND',
'        THEN',
'            vCountExist := 0;',
'        WHEN TOO_MANY_ROWS',
'        THEN',
'            vCountExist := 0;',
'        WHEN OTHERS',
'        THEN',
'            vCountExist := 0;',
'    END;',
'',
'    IF vCountExist <> 0',
'    THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Group Code ''|| :P79_GRUPCODE ||'' Already Exist. '');',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P79_ROWID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.component_end;
end;
/
