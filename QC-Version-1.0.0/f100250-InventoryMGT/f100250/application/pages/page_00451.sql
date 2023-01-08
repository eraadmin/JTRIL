prompt --application/pages/page_00451
begin
--   Manifest
--     PAGE: 00451
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
 p_id=>451
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Audit Inventory'
,p_page_mode=>'MODAL'
,p_step_title=>'Audit Inventory'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20220615080407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130331296392631017)
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
 p_id=>wwv_flow_api.id(98250762054125131)
,p_plug_name=>'Doc Info Left '
,p_parent_plug_id=>wwv_flow_api.id(130331296392631017)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176159956729678977)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(130331296392631017)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64823040831864039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(176159956729678977)
,p_button_name=>'SNAPSHOT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Create Snapshot'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66128341599439004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130331296392631017)
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
 p_id=>wwv_flow_api.id(66129147254439004)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(130331296392631017)
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
 p_id=>wwv_flow_api.id(64823106311864040)
,p_branch_name=>'Go To 452'
,p_branch_action=>'f?p=&APP_ID.:452:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(66129147254439004)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64822819044864037)
,p_name=>'P451_PERIODCD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
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
,p_cSize=>100
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
 p_id=>wwv_flow_api.id(66131712508439007)
,p_name=>'P451_DOCTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
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
 p_id=>wwv_flow_api.id(66132121216439007)
,p_name=>'P451_WARECODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
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
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_api.id(66132575247439009)
,p_name=>'P451_WARENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P451_WARECODE;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66132968562439009)
,p_name=>'P451_COSTCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cabasecc',
'  FROM sycstacc',
' WHERE compcode = :compcode ',
'   AND grupcode = :app_user ',
'   AND warecode = :P451_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66133341825439009)
,p_name=>'P451_DOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66134150576439010)
,p_name=>'P451_DOCTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66134595807439010)
,p_name=>'P451_SUBTTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(98250762054125131)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69948639808226601)
,p_name=>'P451_LAST_SNAP_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(176159956729678977)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64822552239864034)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(66128341599439004)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84254592735817630)
,p_event_id=>wwv_flow_api.id(64822552239864034)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P451_DOCTDATE,P451_WARECODE,P451_PERIODCD,P451_LAST_SNAP_DATE,P451_WARENAME,P451_COSTCODE,P451_DOCNUMBR,P451_DOCTTYPE,P451_SUBTTYPE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64822601267864035)
,p_event_id=>wwv_flow_api.id(64822552239864034)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69948719663226602)
,p_name=>'Last Snapshot Date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_PERIODCD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69948836604226603)
,p_event_id=>wwv_flow_api.id(69948719663226602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 07/Jun/20 6:38:14 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
'   SELECT SNPSHTDT',
'     INTO :P451_LAST_SNAP_DATE',
'     FROM NMADTPRD',
'    WHERE COMPCODE = :COMPCODE ',
'      AND PERIODCD = :P451_PERIODCD;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P451_LAST_SNAP_DATE := NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      :P451_LAST_SNAP_DATE := NULL;',
'END;'))
,p_attribute_02=>'P451_PERIODCD'
,p_attribute_03=>'P451_LAST_SNAP_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69949086527226605)
,p_name=>'Shapshot Button'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P451_LAST_SNAP_DATE'
,p_condition_element=>'P451_LAST_SNAP_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69949184791226606)
,p_event_id=>wwv_flow_api.id(69949086527226605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(64823040831864039)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69949275932226607)
,p_event_id=>wwv_flow_api.id(69949086527226605)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(64823040831864039)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69948986480226604)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Initial Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66262547361293640)
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
'                      :P451_PERIODCD);',
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
'             AND PERIODCD = :P451_PERIODCD',
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
,p_process_when_button_id=>wwv_flow_api.id(64823040831864039)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(66262642495293641)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vPeriodCode   NUMBER;',
'BEGIN',
'    IF :P451_PERIODCD IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Audit Period Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P451_PERIODCD'');',
'    END IF;',
'',
'',
'    IF :P451_DOCTDATE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Transaction Date Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P451_DOCTDATE'');',
'    END IF;',
'',
'',
'    IF :P451_WARECODE IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Warehouse Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P451_WARECODE'');',
'    END IF;',
'',
'    --RAISE_APPLICATION_ERROR(-20001 ,:P451_PERIODCD );',
'',
'    IF :P451_PERIODCD IS NOT NULL',
'    THEN',
'        BEGIN',
'             SELECT COUNT (nvl(PERIODCD,0))',
'              INTO vPeriodCode',
'              FROM AUDIT_STOCK',
'             WHERE PERIODCD = :P451_PERIODCD;',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                vPeriodCode := 0;',
'        END;',
'',
'        IF vPeriodCode = 0',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Snapshot Should be created first. '', --  ',
'                p_display_location   => ',
'                    apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P451_PERIODCD'');',
'        END IF;',
'    /*IF :P451_LAST_SNAP_DATE IS NULL',
'    THEN',
'       -- RAISE_APPLICATION_ERROR(-20001, ''Snapshot Should be created first.'');',
'       apex_error.add_error (',
'            p_message            => ''Snapshot Should be created first. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P451_PERIODCD'');',
'    END IF; */',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66129147254439004)
);
wwv_flow_api.component_end;
end;
/
