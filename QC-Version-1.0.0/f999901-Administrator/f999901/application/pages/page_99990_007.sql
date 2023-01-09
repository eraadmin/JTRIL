prompt --application/pages/page_99990_007
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>99990107
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'GLOBAL ITEM INSERT WITH APP ID'
,p_page_mode=>'MODAL'
,p_step_title=>'GLOBAL ITEM INSERT WITH APP ID'
,p_autocomplete_on_off=>'OFF'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220620113359'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11696203371224325)
,p_plug_name=>'ITEMS'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11696409493224327)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11696203371224325)
,p_button_name=>'PROCESS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Process'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(86889007606835222)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11696203371224325)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11697743074224340)
,p_branch_name=>'GO TO PAGE 99990106'
,p_branch_action=>'f?p=&APP_ID.:99990106:&SESSION.::&DEBUG.:RP:P99990106_APP_ID:&P99990107_APP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11696409493224327)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11696388313224326)
,p_name=>'P99990107_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11696203371224325)
,p_prompt=>'App Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT FLOW_ID AS DIS, FLOW_ID from',
'apex_210200.WWV_FLOW_ITEMS',
'order by flow_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT APP --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(86889184298835223)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(86889007606835222)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(86889235638835224)
,p_event_id=>wwv_flow_api.id(86889184298835223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11696571017224328)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCESS_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR i',
'      IN (SELECT NAME',
'            FROM apex_210200.WWV_FLOW_ITEMS',
'           WHERE     SCOPE = ''GLOBAL''',
'                 AND FLOW_ID = 100420',
'                 AND PROTECTION_LEVEL = ''N''',
'                 --AND SCOPE = ''GLOBAL''',
'		         AND NAME NOT IN (SELECT NAME FROM apex_210200.WWV_FLOW_ITEMS',
'                        WHERE FLOW_ID= :P99990107_APP_ID))',
'                 /*AND NAME NOT IN',
'                        (''COMPCODE'',',
'                         ''REPSERVER'',',
'                         ''DOCTTYPE'',',
'                         ''SUBTTYPE'',',
'                         ''DOCDESC''))*/',
'   LOOP',
'      INSERT INTO apex_210200.WWV_FLOW_ITEMS (ID,',
'                                              FLOW_ID,',
'                                              NAME,',
'                                              NAME_LENGTH,',
'                                              SCOPE,',
'                                              DATA_TYPE,',
'                                              IS_PERSISTENT,',
'                                              PROTECTION_LEVEL,',
'                                              REQUIRED_PATCH,',
'                                              SECURITY_GROUP_ID,',
'                                              LAST_UPDATED_BY,',
'                                              LAST_UPDATED_ON,',
'                                              CREATED_BY,',
'                                              CREATED_ON,',
'                                              ITEM_COMMENT)',
'           VALUES (wwv_flow_id.next_val,',
'                   :P99990107_APP_ID,',
'                   i.NAME,',
'                   LENGTH (i.NAME),',
'                   ''GLOBAL'',',
'                   ''VARCHAR'',',
'                   ''Y'',',
'                   ''N'',',
'                   NULL,',
'                   :P99990107_APP_ID,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   NULL);',
'   END LOOP;',
'   ',
'   EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'   NULL;',
'   WHEN OTHERS THEN',
'   NULL;',
'   ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11696409493224327)
,p_process_success_message=>'GLOBAL ITEMS SUCCESSFULLY INSERTED WITH THIS APP_ID : &P99990107_APP_ID.'
);
wwv_flow_api.component_end;
end;
/
