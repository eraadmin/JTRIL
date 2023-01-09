prompt --application/pages/page_00555
begin
--   Manifest
--     PAGE: 00555
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
 p_id=>555
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Information'
,p_alias=>'DOCUMENT-INFORMATION2'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Information'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_page_comment=>'without wizard page no 88'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230102104227'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(250748868526154263)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(36971309856355294)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(229226038180650829)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(250748868526154263)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(296577528863202223)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(250748868526154263)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36957968201355270)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(250748868526154263)
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
 p_id=>wwv_flow_api.id(36958358812355271)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(250748868526154263)
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
 p_id=>wwv_flow_api.id(36970759584355289)
,p_branch_name=>'Go To Page 556'
,p_branch_action=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(36958358812355271)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36959006393355276)
,p_name=>'P555_REFNUMBR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(229226038180650829)
,p_prompt=>'Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36959453086355277)
,p_name=>'P555_REFNDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(229226038180650829)
,p_prompt=>'Ref. Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'-365d'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36959841824355277)
,p_name=>'P555_MIONUM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(229226038180650829)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36960211549355277)
,p_name=>'P555_MIONAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(229226038180650829)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERNAME from syusrmas',
'where upper(USERCODE)=:APP_USER'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36960986200355278)
,p_name=>'P555_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Requisition Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630213775858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'-365d'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36961310827355278)
,p_name=>'P555_WARECODE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
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
,p_prompt=>'Indent From'
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
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47630213775858329)
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
 p_id=>wwv_flow_api.id(36961762783355278)
,p_name=>'P555_WARENAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P555_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36962159711355279)
,p_name=>'P555_COSTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cabasecc',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P555_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36962511301355279)
,p_name=>'P555_DOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36962927510355279)
,p_name=>'P555_PREVDCNM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36963370107355279)
,p_name=>'P555_DOCTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36963768341355280)
,p_name=>'P555_SUBTTYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36964114628355280)
,p_name=>'P555_S_PRDTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
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
 p_id=>wwv_flow_api.id(36964567686355280)
,p_name=>'P555_S_PRSTYP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
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
 p_id=>wwv_flow_api.id(36964941028355280)
,p_name=>'P555_DISPLAY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_item_default=>':DOCDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(36965336755355280)
,p_name=>'P555_NEXTPAGE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(296577528863202223)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(36965837596355284)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>10
,p_validation=>':P555_DOCTDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(36960986200355278)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36966969244355285)
,p_name=>'set warehouse name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P555_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36967437808355286)
,p_event_id=>wwv_flow_api.id(36966969244355285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT waredesc',
'  INTO :P555_WARENAME',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P555_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;',
'',
'BEGIN',
'SELECT cabasecc',
'  INTO :P555_COSTCODE',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P555_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;   '))
,p_attribute_02=>'P555_WARECODE'
,p_attribute_03=>'P555_WARENAME,P555_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(36967869484355287)
,p_name=>'Close Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(36957968201355270)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36968381086355288)
,p_event_id=>wwv_flow_api.id(36967869484355287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(36968819638355288)
,p_event_id=>wwv_flow_api.id(36967869484355287)
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
 p_id=>wwv_flow_api.id(36969392693355288)
,p_event_id=>wwv_flow_api.id(36967869484355287)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38951758382184025)
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
 p_id=>wwv_flow_api.id(36966101751355284)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO and add data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');    ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P555_DOCTDATE,',
'            p_c002            => :P555_REFNUMBR,',
'            p_c003            => :P555_REFNDATE,',
'            p_c004            => :P555_WARECODE,',
'            p_c005            => :P555_WARENAME,',
'            p_c006            => :P555_MIONUM,',
'            p_c007            => :P555_MIONAME,',
'            p_c008            => :P555_COSTCODE',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P555_DOCTDATE,',
'            p_c002            => :P555_REFNUMBR,',
'            p_c003            => :P555_REFNDATE,',
'            p_c004            => :P555_WARECODE,',
'            p_c005            => :P555_WARENAME,',
'            p_c006            => :P555_MIONUM,',
'            p_c007            => :P555_MIONAME,',
'            p_c008            => :P555_COSTCODE',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36958358812355271)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36966564667355284)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT_PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2',
'  INTO :P555_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(36958358812355271)
);
wwv_flow_api.component_end;
end;
/
