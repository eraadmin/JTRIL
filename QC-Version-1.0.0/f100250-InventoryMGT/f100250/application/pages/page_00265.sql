prompt --application/pages/page_00265
begin
--   Manifest
--     PAGE: 00265
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
 p_id=>265
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Department Details'
,p_step_title=>'Department Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170309114758'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46380920387457911)
,p_plug_name=>'Department Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'                  COMPCODE,',
'                  DEPT_NO,',
'                  DEPT_NO_PARENT,',
'                  DEPT_NAME,',
'                  DEPT_ALIAS,',
'                  DESCR,',
'                  LOC,',
'                  ACTIVE_STAT',
'             FROM PRDEPARTMENT',
'       START WITH DEPT_NO_PARENT IS NULL',
'       CONNECT BY PRIOR DEPT_NO = DEPT_NO_PARENT',
'ORDER SIBLINGS BY DEPT_NO'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(46380976291457911)
,p_name=>'Department Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>9226109165777417
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46381412522457912)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46381787037457912)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46382261084457912)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dept No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46382632039457914)
,p_db_column_name=>'DEPT_NO_PARENT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dept No Parent'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46383004867457914)
,p_db_column_name=>'DEPT_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46383385514457914)
,p_db_column_name=>'DEPT_ALIAS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dept Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46383818992457914)
,p_db_column_name=>'DESCR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Descr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46384256056457914)
,p_db_column_name=>'LOC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Loc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46384605210457914)
,p_db_column_name=>'ACTIVE_STAT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Active Stat'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(46385017583458218)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'92302'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COMPCODE:DEPT_NO:DEPT_NO_PARENT:DEPT_NAME:DEPT_ALIAS:DESCR:LOC:ACTIVE_STAT'
);
wwv_flow_api.component_end;
end;
/
