prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Master Page'
,p_step_title=>'Master Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140736'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(66934626350287826)
,p_name=>'Master NMSTKREC'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "NMSTKREC"."ROWID" "ROWID", ',
'   "NMSTKREC"."DOCTTYPE" "DOCTTYPE", ',
'   "NMSTKREC"."SUBTTYPE" "SUBTTYPE", ',
'   "NMSTKREC"."DOCNUMBR" "DOCNUMBR", ',
'   "NMSTKREC"."DOCTDATE" "DOCTDATE", ',
'   "NMSTKREC"."PARTYCDE" "PARTYCDE", ',
'   "NMSTKREC"."RAISEDBY" "RAISEDBY", ',
'   "NMSTKREC"."APPRVDBY" "APPRVDBY", ',
'   "NMSTKREC"."APPRDATE" "APPRDATE"',
'FROM ',
'   "NMSTKREC"',
''))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66945025465287977)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=#APP_ID#:67:#APP_SESSION#:::RP:P67_ROWID:#ROWID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66945224238287987)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Docttype'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66945435519287990)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Subttype'
,p_column_alignment=>'RIGHT'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66945637826287991)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Docnumbr'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66945819943287995)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66946023478287996)
,p_query_column_id=>6
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>6
,p_column_heading=>'Partycde'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66946232255287999)
,p_query_column_id=>7
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>7
,p_column_heading=>'Raisedby'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66946417118288001)
,p_query_column_id=>8
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Apprvdby'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66946634394288002)
,p_query_column_id=>9
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Apprdate'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSTKREC'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66946914524288004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(66934626350287826)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(66947132992288009)
,p_computation_sequence=>1
,p_computation_item=>'P67_ROWID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
