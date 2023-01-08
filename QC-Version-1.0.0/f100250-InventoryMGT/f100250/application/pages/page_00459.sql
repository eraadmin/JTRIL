prompt --application/pages/page_00459
begin
--   Manifest
--     PAGE: 00459
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
 p_id=>459
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Physical Inventory Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Physical Inventory Modify'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200608205512'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(202323819410319620)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_api.id(66220155285901010)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170243285071813734)
,p_plug_name=>'Doc Info Left '
,p_parent_plug_id=>wwv_flow_api.id(202323819410319620)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(248152479747367580)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(202323819410319620)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71993193710688604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(202323819410319620)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(71993569577688604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(202323819410319620)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_NEXT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_NEXT_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(72003082168688617)
,p_branch_name=>'Go To 452'
,p_branch_action=>'f?p=&APP_ID.:452:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(71993569577688604)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71994685563688607)
,p_name=>'P459_PERIODCD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(170243285071813734)
,p_prompt=>'Audit Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    TO_CHAR (FINYEARB, ''DD/MM/RRRR'')',
'       || '' To : ''',
'       || TO_CHAR (FINYEARE, ''DD/MM/RRRR'')  as D,',
'       PERIODCD as R',
'  FROM NMADTPRD',
' WHERE COMPCODE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71995075688688607)
,p_name=>'P459_LAST_SNAP_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(170243285071813734)
,p_prompt=>'Snapshot Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71995760906688607)
,p_name=>'P459_DOCTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Transaction Date'
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
 p_id=>wwv_flow_api.id(71996135361688609)
,p_name=>'P459_WARECODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT INITCAP (WAREDESC) AS d, WARECODE AS r',
'  FROM VW_BRANCH',
' WHERE COMPCODE = :COMPCODE',
'   AND GRUPCODE = :APP_USER',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Default Value--',
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
 p_id=>wwv_flow_api.id(71996567209688609)
,p_name=>'P459_WARENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P459_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71996996188688610)
,p_name=>'P459_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cabasecc',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P459_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71997386890688610)
,p_name=>'P459_DOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71997716482688610)
,p_name=>'P459_DOCTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(71998178661688610)
,p_name=>'P459_SUBTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(248152479747367580)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72002064060688615)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66128341599439004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72002538552688615)
,p_event_id=>wwv_flow_api.id(72002064060688615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(72001181864688615)
,p_name=>'Last Snapshot Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P459_PERIODCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(72001625462688615)
,p_event_id=>wwv_flow_api.id(72001181864688615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 07/Jun/20 6:38:14 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   SELECT SNPSHTDT',
'     INTO :P459_LAST_SNAP_DATE',
'     FROM NMADTPRD',
'    WHERE COMPCODE = :COMPCODE ',
'      AND PERIODCD = :P459_PERIODCD;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P459_LAST_SNAP_DATE := NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      :P459_LAST_SNAP_DATE := NULL;',
'END;'))
,p_attribute_02=>'P459_PERIODCD'
,p_attribute_03=>'P459_LAST_SNAP_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71999700347688614)
,p_name=>'Shapshot Button'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P459_LAST_SNAP_DATE'
,p_condition_element=>'P459_LAST_SNAP_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71999307865688614)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Initial Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71998519005688612)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Shapshot Audit Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR C_AUDIT',
'   IS',
'        SELECT W.COMPCODE,',
'               W.WARECODE,',
'               W.ITEMCODE,',
'               W.OPBALDTE,',
'               W.OPBALQTY,',
'               W.OPBALRTE,',
'               W.OPBALVAL,',
'               W.TOTALRCP,',
'               W.TOTALISS,',
'               W.CLBALDTE,',
'               W.CLBALQTY,',
'               W.CLBALRTE,',
'               W.CLBALVAL,',
'               W.BINLOCTN,',
'               W.LASISSDT,',
'               W.LASRCPDT,',
'               W.BCARDQTY,',
'               W.PHYSCQTY,',
'               W.VERFRATE,',
'               W.OPRSTAMP,',
'               W.TIMSTAMP,',
'               DFN_ITEMBATCH_COSTRATE (W.COMPCODE,',
'                                       W.ITEMCODE,',
'                                       W.BATCHNUM,',
'                                       TRUNC (SYSDATE),',
'                                       ''C'',',
'                                       ''N'',',
'                                       W.WARECODE)',
'                  COSTRATE,',
'               W.BATCHNUM',
'          FROM NMWHIMAS W',
'         WHERE     W.COMPCODE = :COMPCODE',
'               AND WARECODE IN',
'                      (SELECT WARECODE',
'                         FROM NMWHSMAS',
'                        WHERE     COMPCODE = :COMPCODE',
'                              AND NVL (SRVCWFLG, ''N'') = ''N'')',
'      ORDER BY 3;',
'',
'BEGIN',
'   FOR i IN C_AUDIT',
'   LOOP',
'      BEGIN',
'         INSERT INTO AUDIT_STOCK (COMPCODE,',
'                                  WARECODE,',
'                                  ITEMCODE,',
'                                  OPBALDTE,',
'                                  OPBALQTY,',
'                                  OPBALRTE,',
'                                  OPBALVAL,',
'                                  TOTALRCP,',
'                                  TOTALISS,',
'                                  CLBALDTE,',
'                                  CLBALQTY,',
'                                  CLBALRTE,',
'                                  CLBALVAL,',
'                                  BINLOCTN,',
'                                  LASISSDT,',
'                                  LASRCPDT,',
'                                  BCARDQTY,',
'                                  PHYSCQTY,',
'                                  VERFRATE,',
'                                  OPRSTAMP,',
'                                  TIMSTAMP,',
'                                  COSTRATE,',
'                                  BATCHNUM,',
'                                  PERIODCD)',
'              VALUES (i.COMPCODE,',
'                      i.WARECODE,',
'                      i.ITEMCODE,',
'                      i.OPBALDTE,',
'                      i.OPBALQTY,',
'                      i.OPBALRTE,',
'                      i.OPBALVAL,',
'                      i.TOTALRCP,',
'                      i.TOTALISS,',
'                      i.CLBALDTE,',
'                      i.CLBALQTY,',
'                      i.CLBALRTE,',
'                      i.CLBALVAL,',
'                      i.BINLOCTN,',
'                      i.LASISSDT,',
'                      i.LASRCPDT,',
'                      i.BCARDQTY,',
'                      i.PHYSCQTY,',
'                      i.VERFRATE,',
'                      :APP_USER,',
'                      SYSDATE,',
'                      i.COSTRATE,',
'                      i.BATCHNUM,',
'                      :P459_PERIODCD);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20001, ''Unable to Insert Audit Data. '');',
'      END;',
'   END LOOP;',
'',
'',
'   BEGIN',
'      UPDATE NMADTPRD',
'         SET SNPSHTDT =',
'                TO_DATE (TO_CHAR (SYSDATE, ''ddmmrrrr hh24miss''),',
'                         ''ddmmrrrr hh24miss'')',
'       WHERE     COMPCODE = :COMPCODE',
'             AND PERIODCD = :P459_PERIODCD',
'             AND SNPSHTDT IS NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20002, ''Unable to Update Audit Period. '');',
'   END;',
'',
'   IF SQL%NOTFOUND',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20005, ''Audit Period Not Updated. '');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(71998938042688612)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P459_PERIODCD IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Audit Period Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P459_PERIODCD'');',
'    END IF;',
'    ',
'    ',
'    IF :P459_DOCTDATE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Transaction Date Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P459_DOCTDATE'');',
'    END IF;',
'',
'',
'    IF :P459_WARECODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Warehouse Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P459_WARECODE'');',
'    END IF;',
'    ',
'    IF :P459_PERIODCD IS NOT NULL',
'    THEN      ',
'    IF :P459_LAST_SNAP_DATE IS NULL',
'    THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''Snapshot Should be created first.'');',
'       /* apex_error.add_error (',
'            p_message            => ''Snapshot Should be created first. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P459_PERIODCD'');*/',
'    END IF;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
