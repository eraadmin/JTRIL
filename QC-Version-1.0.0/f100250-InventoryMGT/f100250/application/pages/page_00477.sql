prompt --application/pages/page_00477
begin
--   Manifest
--     PAGE: 00477
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
 p_id=>477
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Engine Chassis Change'
,p_page_mode=>'MODAL'
,p_step_title=>'Engine Chassis Change'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103152603'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41056001795124313)
,p_plug_name=>'Engine Chassis Change'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41057012669124323)
,p_plug_name=>'Old Info'
,p_parent_plug_id=>wwv_flow_api.id(41056001795124313)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41057185951124324)
,p_plug_name=>'New Info'
,p_parent_plug_id=>wwv_flow_api.id(41056001795124313)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(237925803856467733)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41343938387642954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(237925803856467733)
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
 p_id=>wwv_flow_api.id(41344354556642962)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(237925803856467733)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41344686897642962)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(237925803856467733)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41056180844124314)
,p_name=>'P477_OLD_CHASSIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41057012669124323)
,p_prompt=>'Old Chassis No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT VINNUMBR as D,  VINNUMBR as R',
'  FROM NMENUDTL',
' WHERE COMPCODE = :COMPCODE',
' AND VINNUMBR IS NOT NULL'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Chassis --'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'300'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41056206873124315)
,p_name=>'P477_OLD_ENGINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41057012669124323)
,p_prompt=>'Old Engine No'
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
 p_id=>wwv_flow_api.id(41056319038124316)
,p_name=>'P477_NEW_ENGINE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(41057185951124324)
,p_prompt=>'New Engine No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41056457102124317)
,p_name=>'P477_NEW_CHASSIS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41057185951124324)
,p_prompt=>'New Chassis No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41056516171124318)
,p_name=>'P477_REMARKS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(41057185951124324)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41057288401124325)
,p_name=>'P477_X1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(41057012669124323)
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
 p_id=>wwv_flow_api.id(41056630798124319)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41343938387642954)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41056754340124320)
,p_event_id=>wwv_flow_api.id(41056630798124319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41056808980124321)
,p_name=>'Engine No'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P477_OLD_CHASSIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41056919646124322)
,p_event_id=>wwv_flow_api.id(41056808980124321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P477_OLD_ENGINE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ENGINENO',
'  FROM NMENUDTL',
' WHERE COMPCODE = :COMPCODE',
' AND VINNUMBR = :P477_OLD_CHASSIS'))
,p_attribute_07=>'P477_OLD_CHASSIS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41057323722124326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_eng   NUMBER (10);',
'   v_chi   NUMBER (10);',
'BEGIN',
'   ----------   Engine  --------',
'',
'   IF :P477_NEW_ENGINE IS NOT NULL',
'   THEN',
'      BEGIN',
'         SELECT NVL (COUNT (ENGINENO), 0)',
'           INTO v_eng',
'           FROM NMENUDTL',
'          WHERE ENGINENO = :P477_NEW_ENGINE AND COMPCODE = :COMPCODE;',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''1.Problem to Check Existance of New Engine. '');',
'      END;',
'',
'      IF v_eng > 0',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Already Exist the Engine. '');',
'      ELSIF v_eng = 0',
'      THEN',
'         BEGIN',
'            UPDATE NMENUDTL',
'               SET ENGINENO = :P477_NEW_ENGINE,',
'                   REMARKSS = :P477_REMARKS,',
'                   OPRSTAMP = :APP_USER',
'             WHERE COMPCODE = :COMPCODE AND ENGINENO = :P477_OLD_ENGINE;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''1.Unable to Update Engine No. '');',
'         END;',
'',
'         BEGIN',
'            UPDATE SERVICE_COUPON',
'               SET ENGINENO = :P477_NEW_ENGINE',
'             WHERE ENGINENO = :P477_OLD_ENGINE;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (',
'                  -20001,',
'                  ''2.Unable to Update Engine No of Service Coupon. '');',
'         END;',
'',
'         BEGIN',
'            SELECT COUNT (NVL (VINNUMBR, 0))',
'              INTO v_eng',
'              FROM NMSTKRCG',
'             WHERE VINNUMBR = :P477_NEW_ENGINE AND COMPCODE = :COMPCODE;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (',
'                  -20001,',
'                  ''2.Problem to Check Existance of New Engine. '');',
'         END;',
'',
'',
'         IF v_eng = 0',
'         THEN',
'            BEGIN',
'               UPDATE NMSTKRCG',
'                  SET ENGINE_NO = :P477_NEW_ENGINE',
'                WHERE ENGINE_NO = :P477_OLD_ENGINE;',
'            EXCEPTION',
'               WHEN OTHERS',
'               THEN',
'                  RAISE_APPLICATION_ERROR (-20001,',
'                                           ''3.Unable to Update Engine No. '');',
'            END;',
'         END IF;',
'      END IF;',
'   END IF;',
'',
'   ------------ Chassis  -----------',
'',
'   IF :P477_NEW_CHASSIS IS NOT NULL',
'   THEN',
'      BEGIN',
'         SELECT NVL (COUNT (VINNUMBR), 0)',
'           INTO v_chi',
'           FROM NMENUDTL',
'          WHERE VINNUMBR = :P477_NEW_CHASSIS AND COMPCODE = :COMPCODE;',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''1.Problem to Check Existance of New Chassis. '');',
'      END;',
'',
'      IF v_chi > 0',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Already Exist the Chassis. '');',
'      ELSIF v_chi = 0',
'      THEN',
'         BEGIN',
'            UPDATE NMENUDTL',
'               SET VINNUMBR = :P477_NEW_CHASSIS,',
'                   REMARKSS = :P477_REMARKS,',
'                   OPRSTAMP = :APP_USER,',
'                   BATCHNUM = :P477_OLD_CHASSIS',
'             WHERE VINNUMBR = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''1.Unable to Update Chassis No. '');',
'         END;',
'',
'         BEGIN',
'            UPDATE NMSALREC',
'               SET BATCHNUM = :P477_NEW_CHASSIS',
'             WHERE BATCHNUM = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''2.Unable to Update Chassis No. '');',
'         END;',
'',
'',
'         BEGIN',
'            UPDATE NMDEVREC',
'               SET BATCHNUM = :P477_NEW_CHASSIS',
'             WHERE BATCHNUM = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''3.Unable to Update Chassis No. '');',
'         END;',
'',
'',
'         BEGIN',
'            UPDATE SERVICE_COUPON',
'               SET CHASSISNO = :P477_NEW_CHASSIS',
'             WHERE CHASSISNO = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''4.Unable to Update Chassis No. '');',
'         END;',
'',
'         BEGIN',
'            UPDATE SALES_COMMISSION',
'               SET BATCHNUM = :P477_NEW_CHASSIS, VINNUMBR = :P477_NEW_CHASSIS',
'             WHERE VINNUMBR = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''5.Unable to Update Chassis No. '');',
'         END;',
'',
'         BEGIN',
'            UPDATE SALES_COMMISSION_APPROVAL',
'               SET BATCHNUM = :P477_NEW_CHASSIS, VINNUMBR = :P477_NEW_CHASSIS',
'             WHERE VINNUMBR = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''6.Unable to Update Chassis No. '');',
'         END;',
'',
'',
'         BEGIN',
'            UPDATE NMDTLSLS',
'               SET BATCHNUM = :P477_NEW_CHASSIS',
'             WHERE VINNUMBR = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''7.Unable to Update Chassis No. '');',
'         END;',
'',
'         BEGIN',
'            UPDATE REGISTRATION',
'               SET CHASSISNO = :P477_NEW_CHASSIS',
'             WHERE CHASSISNO = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''8.Unable to Update Chassis No. '');',
'         END;',
'      END IF;',
'',
'      BEGIN',
'         SELECT COUNT (VINNUMBR)',
'           INTO v_chi',
'           FROM NMSTKRCG',
'          WHERE VINNUMBR = :P477_NEW_CHASSIS AND COMPCODE = :COMPCODE;',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''2.Problem to Check Existance of New Chassis. '');',
'      END;',
'',
'      IF v_chi = 0',
'      THEN',
'         BEGIN',
'            UPDATE NMSTKRCG',
'               SET VINNUMBR = :P477_NEW_CHASSIS',
'             WHERE VINNUMBR = :P477_OLD_CHASSIS;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               RAISE_APPLICATION_ERROR (-20001,',
'                                        ''9.Unable to Update Chassis No. '');',
'         END;',
'      END IF;',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41344354556642962)
,p_process_success_message=>'Change Successful.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41057478368124327)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P477_REMARKS IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Remarks Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P477_REMARKS'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41344354556642962)
);
wwv_flow_api.component_end;
end;
/
