prompt --application/pages/page_99990_024
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
 p_id=>9999010011
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Source Object'
,p_alias=>'SOURCE-OBJECT'
,p_page_mode=>'MODAL'
,p_step_title=>'BI Report Design'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20220621152543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34941056471985360)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(34937098592985354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34941187367985360)
,p_plug_name=>'Source Object'
,p_parent_plug_id=>wwv_flow_api.id(34941056471985360)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37119764007783922)
,p_plug_name=>'User Query'
,p_parent_plug_id=>wwv_flow_api.id(34941187367985360)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P9999010011_REPORT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37119816200783923)
,p_plug_name=>'Query Builder'
,p_parent_plug_id=>wwv_flow_api.id(34941187367985360)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P9999010011_REPORT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(38527259523051128)
,p_name=>'Saved Report'
,p_parent_plug_id=>wwv_flow_api.id(34941187367985360)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sql varchar2(4000);',
'    v_report_no number := :P9999010011_REPORT;',
'begin',
'    begin',
'        SELECT DBMS_LOB.SUBSTR(executeable_query,DBMS_LOB.getlength(executeable_query),1) QRY',
'          INTO v_sql',
'          FROM bi_userdefine_report',
'         WHERE report_no = 22; --to_number(:P9999010011_REPORT);',
'    exception',
'    when others then',
'        v_sql := ''select 1 qry_exception from dual'';',
'        --v_sql := sqlerrm;',
'',
'    end;',
'',
'/*',
'v_sql := q''~ ',
'    SELECT DBMS_LOB.SUBSTR(executeable_query,DBMS_LOB.getlength(executeable_query),1) QRY',
'        FROM bi_userdefine_report',
'        WHERE report_no = ''~''||:P9999010011_REPORT||q''~''',
'        ~'';',
'v_sql := ''SELECT DBMS_LOB.SUBSTR(executeable_query,DBMS_LOB.getlength(executeable_query),1) QRY',
'        FROM bi_userdefine_report',
'        WHERE report_no = :P9999010011_REPORT'';',
'    ',
'if :P9999010011_REPORT is not null then',
'    v_sql := v_sql || q''~ WHERE report_no = :P9999010011_REPORT ~'';',
'end if;',
'',
'apex_debug.enable(p_level => apex_debug.c_log_level_info);',
'apex_debug.message(p_message => ''Debug enabled.'');',
'apex_debug.message(p_message => v_report_no||'' ''|| v_sql);',
'*/',
'',
'return v_sql;',
'exception when others then',
'    return ''select 1 final_exception from dual'';',
'end;',
'',
''))
,p_display_when_condition=>'P9999010011_REPORT'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9999010011_REPORT'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39474299415815546)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39474330178815547)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39474463515815548)
,p_query_column_id=>3
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>30
,p_column_heading=>'Itemdes1'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34942832217985361)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(34941056471985360)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34943130158985361)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(34941056471985360)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34943048213985361)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(34941056471985360)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34944590362985362)
,p_branch_action=>'f?p=&APP_ID.:9999010012:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34943130158985361)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34943846552985361)
,p_branch_action=>'f?p=&APP_ID.:9999010010:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34943048213985361)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34413505184954613)
,p_name=>'P9999010011_OBJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37119816200783923)
,p_prompt=>'Object'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT object_name d, object_name r',
'  FROM user_objects',
' WHERE object_type LIKE ''VIEW%'' ',
'   AND object_name LIKE ''ERABI%'';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--SELECT--'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34413696515954614)
,p_name=>'P9999010011_COLUMNS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(37119816200783923)
,p_prompt=>'Columns'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT column_name d, column_name r',
'    FROM user_tab_cols',
'   WHERE table_name = :P9999010011_OBJECT',
'ORDER BY column_id;'))
,p_lov_cascade_parent_items=>'P9999010011_OBJECT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>15
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37119640880783921)
,p_name=>'P9999010011_USER_QUERY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37119764007783922)
,p_prompt=>'User Query'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38682087311263623)
,p_name=>'P9999010011_USER_WHERE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37119764007783922)
,p_prompt=>'User Where'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39472339980815527)
,p_name=>'P9999010011_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38527259523051128)
,p_prompt=>'Report'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37150666908805319)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34942832217985361)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37151505840805320)
,p_event_id=>wwv_flow_api.id(37150666908805319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Exit?'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37118962026783914)
,p_event_id=>wwv_flow_api.id(37150666908805319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37151067873805319)
,p_event_id=>wwv_flow_api.id(37150666908805319)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39473056288815534)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010011_REPORT'
,p_condition_element=>'P9999010011_REPORT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39473186340815535)
,p_event_id=>wwv_flow_api.id(39473056288815534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(38527259523051128)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39472174168815525)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>':P9999010011_REPORT := :P9999010010_REPORT;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
