prompt --application/pages/page_10025_011
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500413
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Material Requisition (Department)'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 86'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230102104031'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105384862903390703)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(41540688182999803)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73304328564884817)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(105384862903390703)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(151213523240438663)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(105384862903390703)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41182659959198746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(105384862903390703)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41183003987198746)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(105384862903390703)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41200270782198848)
,p_branch_name=>'Go To Page 414'
,p_branch_action=>'f?p=&APP_ID.:&P1002500413_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(41183003987198746)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41183701037198754)
,p_name=>'P1002500413_SRCWARECODE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73304328564884817)
,p_prompt=>'Source Warehouse/Business Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || INITCAP (waredesc) d, warecode',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode <> :P1002500413_WARECODE',
'ORDER BY warecode;'))
,p_lov_cascade_parent_items=>'P1002500413_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>150
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41184082105198775)
,p_name=>'P1002500413_SRCWARENAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(73304328564884817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41184436593198775)
,p_name=>'P1002500413_APRPERSON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(73304328564884817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT usercode d, usercode r',
'  FROM nmusrlev',
' WHERE locncode = :P1002500413_SRCWARECODE',
''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41184821866198776)
,p_name=>'P1002500413_APRPERSNM'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(73304328564884817)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41185591456198779)
,p_name=>'P1002500413_DOCTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41185927797198779)
,p_name=>'P1002500413_WARECODE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND regncode = ''RS''',
'     AND warecode IN (SELECT warecode',
'                            FROM sycstacc',
'                           WHERE compcode = :compcode ',
'                             AND grupcode = :app_user)'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Warehouse/Business Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST (USERWISE)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || ''-'' || waredesc d, warecode',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND nvl(SRVCWFLG,''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :app_user)',
'ORDER BY warecode;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41186314719198781)
,p_name=>'P1002500413_WARENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P1002500413_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41186770244198781)
,p_name=>'P1002500413_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cabasecc',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P1002500413_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41187193156198781)
,p_name=>'P1002500413_DOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41187561700198781)
,p_name=>'P1002500413_PREVDCNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41187914814198781)
,p_name=>'P1002500413_DOCTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188383410198781)
,p_name=>'P1002500413_SUBTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41188785703198781)
,p_name=>'P1002500413_S_PRDTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41189141470198781)
,p_name=>'P1002500413_S_PRSTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41189521926198781)
,p_name=>'P1002500413_DISPLAY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41189933319198784)
,p_name=>'P1002500413_NEXTPAGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41190365224198784)
,p_name=>'P1002500413_APPRNEED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(151213523240438663)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41190828017198814)
,p_validation_name=>'Soruce warehouse not null'
,p_validation_sequence=>10
,p_validation=>'P1002500413_SRCWARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value!.'
,p_associated_item=>wwv_flow_api.id(41183701037198754)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41191255233198820)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>20
,p_validation=>':P1002500413_DOCTDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(41185591456198779)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41192313275198829)
,p_name=>'set warehouse name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500413_WARECODE'
,p_condition_element=>'P1002500413_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41192864199198834)
,p_event_id=>wwv_flow_api.id(41192313275198829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT waredesc',
'  INTO :P1002500413_WARENAME',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P1002500413_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'BEGIN',
'SELECT cabasecc',
'  INTO :P1002500413_COSTCODE',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P1002500413_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P1002500413_WARECODE'
,p_attribute_03=>'P1002500413_WARENAME,P1002500413_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41193299093198837)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41182659959198746)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41193718733198839)
,p_event_id=>wwv_flow_api.id(41193299093198837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41194203013198839)
,p_event_id=>wwv_flow_api.id(41193299093198837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41194762572198840)
,p_event_id=>wwv_flow_api.id(41193299093198837)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41195134587198840)
,p_name=>'warehouse name'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500413_SRCWARECODE'
,p_condition_element=>'P1002500413_SRCWARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41195620757198842)
,p_event_id=>wwv_flow_api.id(41195134587198840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT waredesc',
'  INTO :P1002500413_SRCWARENAME',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P1002500413_SRCWARECODE;',
'',
'/*',
'BEGIN',
'',
'SELECT DISTINCT s.username d,s.usercode r',
'into :P86_APRPERSNM,:P86_APRPERSON',
'           FROM nmusrlev v, syusrmas s',
'          WHERE v.compcode = :compcode ',
'            AND v.trdoctyp = :P86_DOCTTYPE',
'            AND v.trsubtyp = :P86_SUBTTYPE',
'            AND v.usercode = s.usercode',
'            AND v.locncode = :P86_SOURCEWARECODE',
'           AND v.aprlevel <> 0;',
'  ',
'',
' EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'',
'END;',
'*/',
'',
'END;   ',
'',
''))
,p_attribute_02=>'P1002500413_SRCWARECODE'
,p_attribute_03=>'P1002500413_SRCWARENAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41196963018198842)
,p_name=>'Approve Person Name'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500413_APRPERSON'
,p_condition_element=>'P1002500413_APRPERSON'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41197406900198843)
,p_event_id=>wwv_flow_api.id(41196963018198842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1002500413_APRPERSNM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT username',
'  --INTO :p86_aprpersnm',
'  FROM syusrmas',
' WHERE usercode = :P1002500413_APRPERSON;'))
,p_attribute_07=>'P1002500413_APRPERSON'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41197893360198843)
,p_name=>'Approve Person'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41198333415198843)
,p_event_id=>wwv_flow_api.id(41197893360198843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT NVL(APPRNEED,''N'')',
'  INTO :P1002500413_APPRNEED',
'  FROM nmwrkflw',
' WHERE COMPCODE = :COMPCODE',
'   AND TRDOCTYP = :P1002500413_DOCTTYPE ',
'   AND TRSUBTYP = :P1002500413_SUBTTYPE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P1002500413_APPRNEED := ''N'';',
'    --raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P1002500413_DOCTTYPE,P1002500413_SUBTTYPE'
,p_attribute_03=>'P1002500413_APPRNEED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41198727570198843)
,p_name=>'Enable Disable Approve Person'
,p_event_sequence=>90
,p_condition_element=>'P1002500413_APPRNEED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41199268918198843)
,p_event_id=>wwv_flow_api.id(41198727570198843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1002500413_APRPERSON'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41199770851198845)
,p_event_id=>wwv_flow_api.id(41198727570198843)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1002500413_APRPERSON'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38951536678184023)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'truncate collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41191512283198820)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO and add data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');    ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500413_DOCTDATE,',
'            p_c002            => :P1002500413_WARECODE,',
'            p_c003            => :P1002500413_WARENAME,',
'            p_c004            => :P1002500413_SRCWARECODE,',
'            p_c005            => :P1002500413_SRCWARENAME,',
'            p_c006            => :P1002500413_APRPERSON,',
'            p_c007            => :P1002500413_APRPERSNM,',
'            p_c008            => :P1002500413_COSTCODE',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500413_DOCTDATE,',
'            p_c002            => :P1002500413_WARECODE,',
'            p_c003            => :P1002500413_WARENAME,',
'            p_c004            => :P1002500413_SRCWARECODE,',
'            p_c005            => :P1002500413_SRCWARENAME,',
'            p_c006            => :P1002500413_APRPERSON,',
'            p_c007            => :P1002500413_APRPERSNM,',
'            p_c008            => :P1002500413_COSTCODE',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41191980458198828)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT_PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2',
'  INTO :P1002500413_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41183003987198746)
);
wwv_flow_api.component_end;
end;
/
