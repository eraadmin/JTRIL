prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Refreshing a tabular form'
,p_step_title=>'Refreshing a tabular form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setDeptno(pDeptno) {',
'  var get = new htmldb_Get(null, &APP_ID., ''APPLICATION_PROCESS=dummy'', 0);',
'  get.add(''P72_DEPTNO'', pDeptno);',
'  gReturn = get.get();',
'  get = null;',
'  $s(''P72_DEPTNO'', pDeptno);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140811'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(55756967758957054)
,p_name=>'Departments'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT deptno     "Deptno"',
'     , dname      "Department Name"',
'  FROM dept'))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i>Click on the blue user icon to select a department''s employees. <a href="http://apexplained.wordpress.com/2012/03/31/refreshing-a-tabular-form/" target="_blank">Go to blog post ></a></i>',
'<br/><br/>'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55757177524957080)
,p_query_column_id=>1
,p_column_alias=>'Deptno'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:void(0);'
,p_column_linktext=>'<img src="#WORKSPACE_IMAGES#user.png" alt="" title="Employees">'
,p_column_link_attr=>'onclick="setDeptno(#Deptno#)"'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55757276754957083)
,p_query_column_id=>2
,p_column_alias=>'Department Name'
,p_column_display_sequence=>1
,p_column_heading=>'Department Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(55757598343957102)
,p_name=>'Employees'
,p_region_name=>'cstmEmployees'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="display:none;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT empno',
'     , ename',
'     , job',
'     , hiredate',
'     , sal',
'     , comm',
'  FROM emp',
' WHERE deptno = :P72_DEPTNO'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No employees found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55757770417957104)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'Empno'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'EMPNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55757875584957104)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'ENAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55757980831957104)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>3
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'JOB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55758084098957104)
,p_query_column_id=>4
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Date Hired'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'HIREDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55758179099957104)
,p_query_column_id=>5
,p_column_alias=>'SAL'
,p_column_display_sequence=>5
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'SAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(55758272665957104)
,p_query_column_id=>6
,p_column_alias=>'COMM'
,p_column_display_sequence=>6
,p_column_heading=>'Commission'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'APEXPLAINED'
,p_ref_table_name=>'EMP'
,p_ref_column_name=>'COMM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55758367896957104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(55757598343957102)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(55760072127957143)
,p_branch_action=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55757399658957086)
,p_name=>'P72_DEPTNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(55756967758957054)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55758689132957113)
,p_tabular_form_region_id=>wwv_flow_api.id(55757598343957102)
,p_validation_name=>'HIREDATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'HIREDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(55758367896957104)
,p_associated_column=>'HIREDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55758887862957118)
,p_tabular_form_region_id=>wwv_flow_api.id(55757598343957102)
,p_validation_name=>'SAL must be numeric'
,p_validation_sequence=>60
,p_validation=>'SAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(55758367896957104)
,p_associated_column=>'SAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55759086953957118)
,p_tabular_form_region_id=>wwv_flow_api.id(55757598343957102)
,p_validation_name=>'COMM must be numeric'
,p_validation_sequence=>70
,p_validation=>'COMM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(55758367896957104)
,p_associated_column=>'COMM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(55759378155957125)
,p_name=>'refresh_emp_tab_form'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P72_DEPTNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(55759688793957136)
,p_event_id=>wwv_flow_api.id(55759378155957125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(55757598343957102)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(55759879064957141)
,p_event_id=>wwv_flow_api.id(55759378155957125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(55757598343957102)
,p_attribute_01=>'$(''#cstmEmployees'').slideDown(500);'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55759168752957118)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(55757598343957102)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'EMP'
,p_attribute_03=>'EMPNO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(55758367896957104)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.component_end;
end;
/
