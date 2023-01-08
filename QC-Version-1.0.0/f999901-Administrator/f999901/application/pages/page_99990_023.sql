prompt --application/pages/page_99990_023
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
 p_id=>9999010010
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Wizard'
,p_alias=>'REPORT-WIZARD'
,p_page_mode=>'MODAL'
,p_step_title=>'BI Report Design'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function openReport(){',
'apex.message.confirm( "Are you sure to open the Report?", (okPressed) => { ',
'if ( okPressed ) {',
'//    apex.submit();',
'   openModal(''BI_REPORT'');',
'   apex.region("BI").refresh();',
'   apex.region("BL").refresh();',
'//    apex.item("P1_YOURITEM").setValue("Y");',
'}',
'});',
'}',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20220714163328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34937584626985357)
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
 p_id=>wwv_flow_api.id(35366206153396802)
,p_plug_name=>'Report Image'
,p_parent_plug_id=>wwv_flow_api.id(34937584626985357)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'u-hot-text'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'The wizard will help you to create a report of your system. After completing this wizard you can print or save the report.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_region_image=>'#WORKSPACE_FILES#report_img_2.jfif'
,p_region_image_attr=>'width="400" height="auto"'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38041830497677902)
,p_plug_name=>'Saved Report'
,p_parent_plug_id=>wwv_flow_api.id(34937584626985357)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38042034172677904)
,p_plug_name=>'Saved Report'
,p_region_name=>'BI_REPORT'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_api.id(1582248828871857852)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(38042198574677905)
,p_name=>'BI Report'
,p_region_name=>'BI'
,p_parent_plug_id=>wwv_flow_api.id(38042034172677904)
,p_template=>wwv_flow_api.id(1582248360698857849)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sql varchar2(4000);',
'begin',
'    begin',
'        SELECT DBMS_LOB.SUBSTR(executeable_query,DBMS_LOB.getlength(executeable_query),1) QRY',
'          INTO v_sql',
'          FROM bi_userdefine_report ',
'         WHERE report_no = :P9999010010_REPORT;',
'    exception',
'    when others then',
'        v_sql := ''select 1 qry_exception from dual'';',
'    end;',
'return v_sql; ',
'',
'BEGIN',
'    APEX_DEBUG.ENABLE(apex_debug.c_log_level_info);',
'    APEX_DEBUG.message(''test'');',
'    APEX_DEBUG.message(v_sql);',
'END;',
'',
'exception when others then',
'    return ''select 1 final_exception from dual'';',
'end;',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9999010010_REPORT'
,p_lazy_loading=>true
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
 p_id=>wwv_flow_api.id(39471923315815523)
,p_query_column_id=>1
,p_column_alias=>'QRY_EXCEPTION'
,p_column_display_sequence=>10
,p_column_heading=>'Qry Exception'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34939313724985358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(34937584626985357)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38041971950677903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(38041830497677902)
,p_button_name=>'Show'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show Report'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:openReport();'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34939679786985358)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(34937584626985357)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34940373116985359)
,p_branch_action=>'f?p=&APP_ID.:9999010011:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34939679786985358)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37118794342783912)
,p_name=>'P9999010010_NEXTPAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34937584626985357)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38041747072677901)
,p_name=>'P9999010010_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38041830497677902)
,p_prompt=>'Report'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT report_name d, report_no r',
'    FROM bi_userdefine_report',
'ORDER BY report_no'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--SELECT--'
,p_cSize=>60
,p_field_template=>wwv_flow_api.id(263844700291047892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37151959773807657)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34939313724985358)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37152836711807657)
,p_event_id=>wwv_flow_api.id(37151959773807657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Exit?'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37118840435783913)
,p_event_id=>wwv_flow_api.id(37151959773807657)
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
 p_id=>wwv_flow_api.id(37152302448807657)
,p_event_id=>wwv_flow_api.id(37151959773807657)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38680994311263612)
,p_name=>'show or hide button'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010010_REPORT'
,p_condition_element=>'P9999010010_REPORT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38681079069263613)
,p_event_id=>wwv_flow_api.id(38680994311263612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38041971950677903)
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P9999010010_REPORT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38681315459263616)
,p_event_id=>wwv_flow_api.id(38680994311263612)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(38041971950677903)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P9999010010_REPORT'
);
wwv_flow_api.component_end;
end;
/
