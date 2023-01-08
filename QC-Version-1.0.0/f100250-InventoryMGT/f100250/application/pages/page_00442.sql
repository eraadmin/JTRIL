prompt --application/pages/page_00442
begin
--   Manifest
--     PAGE: 00442
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
 p_id=>442
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Information'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 86'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230102103654'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117017702750934860)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(53292964414742481)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84937168412428974)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(117017702750934860)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162846363087982820)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(117017702750934860)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52815421961742857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(117017702750934860)
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
 p_id=>wwv_flow_api.id(52815897454742859)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(117017702750934860)
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
 p_id=>wwv_flow_api.id(52832653287742892)
,p_branch_name=>'Go To Page 443'
,p_branch_action=>'f?p=&APP_ID.:&P442_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52815897454742859)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52816519049742862)
,p_name=>'P442_SRCWARECODE'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(84937168412428974)
,p_prompt=>'Receiving Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || waredesc d, warecode',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND nvl(SRVCWFLG,''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :app_user)',
'     AND WARECODE <> :P442_WARECODE',
'ORDER BY warecode;'))
,p_lov_cascade_parent_items=>'P442_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52816971044742867)
,p_name=>'P442_SRCWARENAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(84937168412428974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52817328846742868)
,p_name=>'P442_APRPERSON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(84937168412428974)
,p_prompt=>'Approve Person'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT usercode d, usercode r',
'  FROM nmusrlev',
' WHERE locncode = :P442_SRCWARECODE',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P442_SRCWARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52817744646742868)
,p_name=>'P442_APRPERSNM'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(84937168412428974)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52818444854742871)
,p_name=>'P442_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52818813250742871)
,p_name=>'P442_WARECODE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_prompt=>'Issuing Warehouse'
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
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND regncode = ''RS''',
'     AND warecode IN (SELECT warecode',
'                            FROM sycstacc',
'                           WHERE compcode = :compcode ',
'                             AND grupcode = :app_user)'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52819201042742876)
,p_name=>'P442_WARENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P442_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52819570197742876)
,p_name=>'P442_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cabasecc',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P442_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52819997945742876)
,p_name=>'P442_DOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52820315489742876)
,p_name=>'P442_PREVDCNM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52820763518742876)
,p_name=>'P442_DOCTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52821178919742878)
,p_name=>'P442_SUBTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52821536232742878)
,p_name=>'P442_S_PRDTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
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
 p_id=>wwv_flow_api.id(52821942761742879)
,p_name=>'P442_S_PRSTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
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
 p_id=>wwv_flow_api.id(52822376064742879)
,p_name=>'P442_DISPLAY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52822759651742879)
,p_name=>'P442_NEXTPAGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52823189624742879)
,p_name=>'P442_APPRNEED'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(162846363087982820)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52823649460742879)
,p_validation_name=>'Soruce warehouse not null'
,p_validation_sequence=>10
,p_validation=>'P442_SRCWARECODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value!.'
,p_associated_item=>wwv_flow_api.id(52816519049742862)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55400906950215415)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>20
,p_validation=>':P442_DOCTDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(52818444854742871)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52825677244742885)
,p_name=>'set warehouse name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P442_WARECODE'
,p_condition_element=>'P442_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52826116695742885)
,p_event_id=>wwv_flow_api.id(52825677244742885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT waredesc',
'  INTO :P442_WARENAME',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P442_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'BEGIN',
'SELECT cabasecc',
'  INTO :P442_COSTCODE',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P442_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P442_WARECODE'
,p_attribute_03=>'P442_WARENAME,P442_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52826595150742887)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52815421961742857)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52827049010742889)
,p_event_id=>wwv_flow_api.id(52826595150742887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52827536301742889)
,p_event_id=>wwv_flow_api.id(52826595150742887)
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
 p_id=>wwv_flow_api.id(52828017299742889)
,p_event_id=>wwv_flow_api.id(52826595150742887)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52828492818742890)
,p_name=>'warehouse name'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P442_SRCWARECODE'
,p_condition_element=>'P442_SRCWARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52828927476742890)
,p_event_id=>wwv_flow_api.id(52828492818742890)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT waredesc',
'  INTO :P442_SRCWARENAME',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P442_SRCWARECODE;',
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
,p_attribute_02=>'P442_SRCWARECODE'
,p_attribute_03=>'P442_SRCWARENAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52830294577742892)
,p_name=>'Approve Person Name'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P442_APRPERSON'
,p_condition_element=>'P442_APRPERSON'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52830758428742892)
,p_event_id=>wwv_flow_api.id(52830294577742892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P442_APRPERSNM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT username',
'  --INTO :p86_aprpersnm',
'  FROM syusrmas',
' WHERE usercode = :P442_APRPERSON;'))
,p_attribute_07=>'P442_APRPERSON'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52829359470742890)
,p_name=>'Approve Person'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52829894975742892)
,p_event_id=>wwv_flow_api.id(52829359470742890)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT NVL(APPRNEED,''N'')',
'  INTO :P442_APPRNEED',
'  FROM nmwrkflw',
' WHERE COMPCODE = :COMPCODE',
'   AND TRDOCTYP = :P442_DOCTTYPE ',
'   AND TRSUBTYP = :P442_SUBTTYPE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'    :P442_APPRNEED := ''N'';',
'    --raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'END;'))
,p_attribute_02=>'P442_DOCTTYPE,P442_SUBTTYPE'
,p_attribute_03=>'P442_APPRNEED'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52831125779742892)
,p_name=>'Enable Disable Approve Person'
,p_event_sequence=>90
,p_condition_element=>'P442_APPRNEED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52831638659742892)
,p_event_id=>wwv_flow_api.id(52831125779742892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P442_APRPERSON'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52832120305742892)
,p_event_id=>wwv_flow_api.id(52831125779742892)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P442_APRPERSON'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38951492854184022)
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
 p_id=>wwv_flow_api.id(52823925151742879)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO and add data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');    ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P442_DOCTDATE,',
'            p_c002            => :P442_WARECODE,',
'            p_c003            => :P442_WARENAME,',
'            p_c004            => :P442_SRCWARECODE,',
'            p_c005            => :P442_SRCWARENAME,',
'            p_c006            => :P442_APRPERSON,',
'            p_c007            => :P442_APRPERSNM,',
'            p_c008            => :P442_COSTCODE,',
'            p_c009            => :P442_S_PRDTYP,',
'            p_c010            => :P442_S_PRSTYP',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P442_DOCTDATE,',
'            p_c002            => :P442_WARECODE,',
'            p_c003            => :P442_WARENAME,',
'            p_c004            => :P442_SRCWARECODE,',
'            p_c005            => :P442_SRCWARENAME,',
'            p_c006            => :P442_APRPERSON,',
'            p_c007            => :P442_APRPERSNM,',
'            p_c008            => :P442_COSTCODE,',
'            p_c009            => :P442_S_PRDTYP,',
'            p_c010            => :P442_S_PRSTYP            ',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52824324651742881)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT_PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2',
'  INTO :P442_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52815897454742859)
);
wwv_flow_api.component_end;
end;
/
