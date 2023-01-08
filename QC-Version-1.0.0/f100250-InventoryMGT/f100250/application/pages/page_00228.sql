prompt --application/pages/page_00228
begin
--   Manifest
--     PAGE: 00228
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
 p_id=>228
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Department'
,p_step_title=>'Department'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170308130250'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45959503225267417)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT P.COMPCODE, P.DEPT_NO , P.DEPT_NAME , P.DEPT_NO_PARENT ,P.DEPT_ALIAS, P.DESCR',
'      FROM prdepartment p',
'      START WITH DEPT_NO_PARENT is null',
'      CONNECT BY PRIOR p.DEPT_NO = p.DEPT_NO_PARENT',
'      ORDER SIBLINGS BY DEPT_NO'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45960233196267417)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45960665228267420)
,p_query_column_id=>2
,p_column_alias=>'DEPT_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Dept No'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45961038042267420)
,p_query_column_id=>3
,p_column_alias=>'DEPT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Dept Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45961378225267420)
,p_query_column_id=>4
,p_column_alias=>'DEPT_NO_PARENT'
,p_column_display_sequence=>4
,p_column_heading=>'Dept No Parent'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45961857996267420)
,p_query_column_id=>5
,p_column_alias=>'DEPT_ALIAS'
,p_column_display_sequence=>5
,p_column_heading=>'Dept Alias'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45962263588267420)
,p_query_column_id=>6
,p_column_alias=>'DESCR'
,p_column_display_sequence=>6
,p_column_heading=>'Descr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.component_end;
end;
/
