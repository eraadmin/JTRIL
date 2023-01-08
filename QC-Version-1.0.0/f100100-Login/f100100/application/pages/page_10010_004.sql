prompt --application/pages/page_10010_004
begin
--   Manifest
--     PAGE: 10010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10010006
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Change Password'
,p_page_mode=>'MODAL'
,p_step_title=>'Change Password'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(115022350790909979)
,p_dialog_height=>'350'
,p_dialog_width=>'500'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220717161542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(103850518992193479)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99961991426690149)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(103851167529193485)
,p_plug_name=>'Change Password'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(103850660958193480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(103850518992193479)
,p_button_name=>'Change'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Change Password'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(103850410697193478)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(103850518992193479)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(56603176895513547)
,p_branch_name=>'Go To Page 9999'
,p_branch_action=>'&LOGOUT_URL.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(103850660958193480)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103850714208193481)
,p_name=>'P10010006_CONP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(103851167529193485)
,p_prompt=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103850788102193482)
,p_name=>'P10010006_NEWP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(103851167529193485)
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103850943833193483)
,p_name=>'P10010006_OLDP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(103851167529193485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103850974411193484)
,p_name=>'P10010006_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(103851167529193485)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USERNAME||'' (''||USERCODE||'')'' USRINFO',
'FROM syusrmas',
'WHERE USERCODE = :APP_USER;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(100041020544690187)
,p_item_template_options=>'#DEFAULT#:margin-left-lg'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103850342027193477)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(103850410697193478)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103850239393193476)
,p_event_id=>wwv_flow_api.id(103850342027193477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(103850085723193475)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vEncryptPass   VARCHAR2 (50);',
'BEGIN',
'',
'    IF :P10010006_NEWP IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P10010006_NEWP'');',
'    END IF;',
'',
'',
'    IF :P10010006_NEWP IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P10010006_NEWP) < 6',
'        THEN',
'        apex_error.add_error (',
'            p_message            => ''New Password Must Be greater than Six Character. '',',
'            p_display_location   =>  apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P10010006_NEWP'');',
'        END IF;',
'    END IF;',
'',
'',
'    IF :P10010006_CONP IS NULL',
'    THEN',
'        apex_error.add_error (',
'            p_message            => ''Confirm Password Value Required. '',',
'            p_display_location   => apex_error.c_inline_with_field_and_notif,',
'            p_page_item_name     => ''P10010006_CONP'');',
'    END IF;',
'',
'',
'    IF :P10010006_CONP IS NOT NULL',
'    THEN',
'        IF LENGTH ( :P10010006_CONP) < 6',
'        THEN',
'            apex_error.add_error (',
'                p_message            => ''Confirm Password Must Be Greater than Six Character. '',',
'                p_display_location   =>  apex_error.c_inline_with_field_and_notif,',
'                p_page_item_name     => ''P10010006_CONP'');',
'        END IF;',
'    END IF;',
'    ',
'    ',
'    IF LENGTH ( :P10010006_NEWP) >= 6 AND LENGTH ( :P10010006_CONP) >= 6',
'    THEN',
'        IF :P10010006_NEWP <> :P10010006_CONP',
'        THEN',
'            RAISE_APPLICATION_ERROR (-20003, ''New Password & Confirm Password Mismatch!'');',
'        ELSE',
'            BEGIN',
'                PROC_CREATE_PASSWORD (USERID    => UPPER (:APP_USER),',
'                                      PASSWD    => :P10010006_NEWP,',
'                                      ENCPASS   => vEncryptPass',
'                                     );',
'                                      ',
'                        UPDATE syusrmas  SET USERPAWD = vEncryptPass',
'                        WHERE USERCODE = UPPER(:APP_USER);',
'            EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    RAISE_APPLICATION_ERROR (-20004,''Unable to Change Password .. ''|| SQLERRM);',
'            END;',
'',
'            --:P1011_USERPAWD := vEncryptPass;',
'        --RAISE_APPLICATION_ERROR(-20001, vEncryptPass);',
'',
'        -- :P1011_PASWDATE := SYSDATE;',
'        END IF;',
'    END IF;',
'    ',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(103850660958193480)
,p_process_success_message=>'Password changed....'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'   vPASS   VARCHAR2 (30);',
'BEGIN',
'        SELECT  USERPAWD      INTO vPASS',
'        FROM syusrmas',
'        WHERE USERCODE = :APP_USER;',
'',
'   IF :P10010006_OLDP = VPASS THEN',
'      IF :P10010006_NEWP = :P10010006_CONP THEN',
'           UPDATE syusrmas  SET USERPAWD = :P10010006_CONP',
'             WHERE USERCODE = :APP_USER;',
'      ELSE',
'         raise_application_error ( -20011,  ''New Password and Confirm Password Dose Not Match'');',
'      END IF;',
'   ELSE',
'      raise_application_error (-20012, ''Old Password Not Correct.'');',
'   END IF;',
'END;',
''))
);
wwv_flow_api.component_end;
end;
/
