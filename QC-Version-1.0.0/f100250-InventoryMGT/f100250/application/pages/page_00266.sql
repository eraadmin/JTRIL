prompt --application/pages/page_00266
begin
--   Manifest
--     PAGE: 00266
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
 p_id=>266
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'dfdfd'
,p_step_title=>'dfdfd'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170327122534'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60648793306743579)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select H.SL_NO,H.BATCH_NO||''/''||H.TGT_FG_ITEMCODE||''/''||T.ITEMDES1 "Batch",docnumbr',
'from prbom_batch h,nmitemas t',
'where H.COMPCODE = :compcode',
'and H.COMPCODE = T.COMPCODE',
'and H.TGT_FG_ITEMCODE = T.ITEMCODE',
'and t.FINISHGD = ''Y'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_max_columns=>60
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60649490192743583)
,p_query_column_id=>1
,p_column_alias=>'SL_NO'
,p_column_display_sequence=>1
,p_column_heading=>'Sl No'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60649948122743584)
,p_query_column_id=>2
,p_column_alias=>'Batch'
,p_column_display_sequence=>2
,p_column_heading=>'Batch'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60650301793743584)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.component_end;
end;
/
