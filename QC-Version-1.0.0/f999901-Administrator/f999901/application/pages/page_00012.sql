prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'xReport Parameter Value'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Parameter Value'
,p_allow_duplicate_submissions=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'700'
,p_dialog_width=>'900'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200226194351'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51584473289235314)
,p_name=>'Values'
,p_template=>wwv_flow_api.id(1582248360698857849)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.CHECKBOX (p_idx => 1, p_value => ID) "Select",',
'       APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 2, p_value => NAME) NAME,',
'       APEX_ITEM.DISPLAY_AND_SAVE (p_idx => 3, p_value => ROW_NUMBER() OVER (ORDER BY ID ASC)) SL_NO',
'  from SY_REPORT_PARAMETER',
'  WHERE PROGNAME = ''sy2pfrep''',
'    AND SHOW_HIDE = ''Y'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51585365971235323)
,p_query_column_id=>1
,p_column_alias=>'Select'
,p_column_display_sequence=>3
,p_column_heading=>'Select'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51584790964235317)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52366557070963809)
,p_query_column_id=>3
,p_column_alias=>'SL_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Sl No'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51586851559235338)
,p_plug_name=>'Report Parameter Entry'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noBorder:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(52348139428895354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52031803583422325)
,p_plug_name=>'Report Parameter Value'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SY_REPORT_PARAMETER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52038471663422367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51586851559235338)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51585528922235325)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51586851559235338)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_NEXT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_NEXT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52036867845422359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51586851559235338)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52366754370963811)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(51586851559235338)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12::'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51585690944235326)
,p_branch_name=>'Go To 13'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51585528922235325)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52032289203422328)
,p_name=>'P12_SERIAL'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_item_source_plug_id=>wwv_flow_api.id(52031803583422325)
,p_source=>'SERIAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52032685663422335)
,p_name=>'P12_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_item_source_plug_id=>wwv_flow_api.id(52031803583422325)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52033045085422346)
,p_name=>'P12_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_item_source_plug_id=>wwv_flow_api.id(52031803583422325)
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52033478970422350)
,p_name=>'P12_LOV_QUERY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_item_source_plug_id=>wwv_flow_api.id(52031803583422325)
,p_source=>'LOV_QUERY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52033821360422351)
,p_name=>'P12_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_prompt=>'Program Name : '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52034201977422353)
,p_name=>'P12_SHOW_HIDE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(52031803583422325)
,p_item_source_plug_id=>wwv_flow_api.id(52031803583422325)
,p_source=>'SHOW_HIDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52036930489422359)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52036867845422359)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52037747421422362)
,p_event_id=>wwv_flow_api.id(52036930489422359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52367097842963814)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P12_PROGNAME IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Program Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P12_PROGNAME'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51585498550235324)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 18/Feb/20 9:32:50 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vId     VARCHAR2 (40);',
'   vSlNo   VARCHAR2 (40);',
'   vName   VARCHAR2 (40);',
'BEGIN',
'   APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION (',
'      p_collection_name => ''REPORT_ID'');',
'',
'',
'   FOR i IN 1 .. APEX_APPLICATION.G_f01.COUNT',
'   LOOP',
'      vId := APEX_APPLICATION.G_f01 (i);',
'',
'      --raise_application_error(-20001, vId );',
'',
'      FOR j IN 1 .. APEX_APPLICATION.G_f03.COUNT',
'      LOOP',
'         IF APEX_APPLICATION.G_f03 (j) = APEX_APPLICATION.G_f01 (i)',
'         THEN',
'            vSlNo := APEX_APPLICATION.g_f03 (j);',
'            vName := APEX_APPLICATION.g_f02 (j);',
'            --raise_application_error(-20001, vId || '' ''||vName || '' '' ||vSlNo);',
'            ',
'            --raise_application_error(-20001,:P12_PROGNAME);',
'',
'            APEX_COLLECTION.ADD_MEMBER (p_collection_name   => ''REPORT_ID'',',
'                                        p_c001              => vId,',
'                                        p_c002              => vName);',
'         END IF;',
'      END LOOP;',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51585528922235325)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52040036381422368)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(52031803583422325)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Report Parameter Value'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52039652582422367)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(52031803583422325)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Report Parameter Value'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
