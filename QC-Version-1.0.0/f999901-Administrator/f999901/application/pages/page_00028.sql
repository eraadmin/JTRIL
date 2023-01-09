prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Model Rate Modification Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Rate Modification Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200514135451'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19940110744536295)
,p_name=>'Search Results'
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       DISCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       CURRCODE,',
'       EXCGRATE,',
'       COSTCODE,',
'       WARECODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       BATCHNUM,',
'       BATCHDTE,',
'       NORMRATE,',
'       COSTRATE,',
'       AVRGRATE,',
'       CHANGEFLG,',
'       REMARKSS,',
'       SPCLRATE,',
'       SALEPERC,',
'       COSTRCHK,',
'       MINSRATE,',
'       ITEMDISC,',
'       GRADDIS,',
'       MODIFYDT,',
'       RATCGFLG,',
'       dfn_warename(warecode,compcode) warehouse',
'  from NMBTRATE',
' where COMPCODE = :COMPCODE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19942040200536414)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19942430033536414)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19942843309536415)
,p_query_column_id=>3
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19943279180536415)
,p_query_column_id=>4
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>4
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'Y'
,p_column_html_expression=>'#ITEMCODE# - #ITEMDESC#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19943616559536415)
,p_query_column_id=>5
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19944092415536415)
,p_query_column_id=>6
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>10
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19944462367536417)
,p_query_column_id=>7
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>17
,p_column_heading=>'Discpcnt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19944858974536417)
,p_query_column_id=>8
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>18
,p_column_heading=>'Discamnt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19945244023536417)
,p_query_column_id=>9
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>19
,p_column_heading=>'Spldispc'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19945671186536417)
,p_query_column_id=>10
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>20
,p_column_heading=>'Spldisnt'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15395843916835531)
,p_query_column_id=>11
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>12
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15395968189835532)
,p_query_column_id=>12
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>22
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396040541835533)
,p_query_column_id=>13
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19946095948536417)
,p_query_column_id=>14
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19946462713536418)
,p_query_column_id=>15
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396119813835534)
,p_query_column_id=>16
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>24
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396265713835535)
,p_query_column_id=>17
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>25
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396322942835536)
,p_query_column_id=>18
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>8
,p_column_heading=>'Batch no.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396459058835537)
,p_query_column_id=>19
,p_column_alias=>'BATCHDTE'
,p_column_display_sequence=>9
,p_column_heading=>'Batch Date'
,p_use_as_row_header=>'N'
,p_column_format=>'dd/mm/rr'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396540274835538)
,p_query_column_id=>20
,p_column_alias=>'NORMRATE'
,p_column_display_sequence=>26
,p_column_heading=>'Normrate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396695606835539)
,p_query_column_id=>21
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>11
,p_column_heading=>'Cost Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396723480835540)
,p_query_column_id=>22
,p_column_alias=>'AVRGRATE'
,p_column_display_sequence=>27
,p_column_heading=>'Avrgrate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396885241835541)
,p_query_column_id=>23
,p_column_alias=>'CHANGEFLG'
,p_column_display_sequence=>28
,p_column_heading=>'Changeflg'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15396936738835542)
,p_query_column_id=>24
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>16
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397013790835543)
,p_query_column_id=>25
,p_column_alias=>'SPCLRATE'
,p_column_display_sequence=>13
,p_column_heading=>'Special Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397189135835544)
,p_query_column_id=>26
,p_column_alias=>'SALEPERC'
,p_column_display_sequence=>14
,p_column_heading=>'Sales Margin (%)'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397217582835545)
,p_query_column_id=>27
,p_column_alias=>'COSTRCHK'
,p_column_display_sequence=>29
,p_column_heading=>'Costrchk'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397395152835546)
,p_query_column_id=>28
,p_column_alias=>'MINSRATE'
,p_column_display_sequence=>15
,p_column_heading=>'Min Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397479107835547)
,p_query_column_id=>29
,p_column_alias=>'ITEMDISC'
,p_column_display_sequence=>30
,p_column_heading=>'Itemdisc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397515768835548)
,p_query_column_id=>30
,p_column_alias=>'GRADDIS'
,p_column_display_sequence=>31
,p_column_heading=>'Graddis'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397664795835549)
,p_query_column_id=>31
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>32
,p_column_heading=>'Modifydt'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15397775723835550)
,p_query_column_id=>32
,p_column_alias=>'RATCGFLG'
,p_column_display_sequence=>33
,p_column_heading=>'Ratcgflg'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19973774048734602)
,p_query_column_id=>33
,p_column_alias=>'WAREHOUSE'
,p_column_display_sequence=>7
,p_column_heading=>'Warehouse'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19940229770536295)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1927908352502839038)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>2
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_api.id(19940110744536295)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_06=>'N'
,p_attribute_09=>'N'
,p_attribute_13=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19940715948536300)
,p_name=>'P28_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19940229770536295)
,p_prompt=>'Search'
,p_source=>'COMPCODE,ITEMCODE,ITEMDESC,WARECODE,WAREHOUSE,BATCHNUM,BATCHDTE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_label=>true
,p_fc_show_chart=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19941189295536303)
,p_name=>'P28_COSTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19940229770536295)
,p_prompt=>'Costcode'
,p_source=>'COSTCODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19941521393536304)
,p_name=>'P28_WARECODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19940229770536295)
,p_prompt=>'Warehouse'
,p_source=>'WARECODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (waredesc), warecode ',
' FROM nmwhsmas',
'WHERE compcode = :compcode'))
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
);
wwv_flow_api.component_end;
end;
/
