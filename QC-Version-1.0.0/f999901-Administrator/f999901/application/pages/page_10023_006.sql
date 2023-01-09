prompt --application/pages/page_10023_006
begin
--   Manifest
--     PAGE: 10023
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
 p_id=>10023507
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'JOURNAL ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'JOURNAL ENTRY'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'$(''input,select'').keydown( function(e) {',
'        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;',
'        if(key == 13) {',
'            var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
'			var sKey = model.getFieldKey("JVFCAMNT");',
'			var total = 0; ',
'			model.forEach(function(r) {',
'			var ordamt = parseInt(r[sKey], 10);',
'',
'			if (!isNaN(ordamt)) {',
'				total += ordamt;',
'            }',
'            });',
'        }',
'    });',
'});'))
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190926113703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(258564598637461654)
,p_plug_name=>'TITLE'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_source=>'<h1 style="text-align:center;">JOURNAL ENTRY</h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(258573551561486462)
,p_plug_name=>'header'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:#EDF1FE "'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(258575061838488779)
,p_plug_name=>'Body'
,p_region_template_options=>'#DEFAULT#:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:#EDF1FE"'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(208840390262343981)
,p_plug_name=>'DATA_GRID'
,p_region_name=>'IGT'
,p_parent_plug_id=>wwv_flow_api.id(258575061838488779)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rowid P_ID, COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB, ACCTCODE, COSTCODE, SUBLEDCD, NARATION, ',
'DBCRCODE, CURRCODE, EXCGRATE, nvl(DECODE(DBCRCODE,''D'', JVFCAMNT),JVFCAMNT) DRAMT, nvl(DECODE(DBCRCODE,''C'', JVFCAMNT),JVFCAMNT) CRAMT, JVFCAMNT,',
'JVLCAMNT, REFDOCNO, REFDOCDT, REFDOCTY, REFDCSTY, STATCODE,',
'BANKNAME, BANKBRCH, BANKCODE, OPRSTAMP, TIMSTAMP ',
'FROM ACTRNDTL',
'WHERE DOCNUMBR = :P10023507_VOUCHER_NO',
'--AND COMPCODE = :P10023507_COMPCODE',
'--AND DOCTTYPE = :P10023507_DOCTYPE',
'--AND SUBTTYPE = :P10023507_SUBTYPE;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P10023507_VOUCHER_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95943617651797913)
,p_name=>'DRAMT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Debit Amt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(95943729105797914)
,p_name=>'CRAMT'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Credit Amt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(208840664456343984)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(208840764939343985)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docttype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(208840914188343986)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Subttype'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209070716857322237)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>8
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209070787474322238)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Doctdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209070949240322239)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Serlnumb'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071012012322240)
,p_name=>'ACCTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Account'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ACCTNAME||'' (''||ACCTCODE||'')'' ACCNT, ACCTCODE CODE',
'from SYCHRTAC',
'where LEVLCODE=5'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-- SELECT ACCT--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071071029322241)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Cost Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COSTDESC,COSTCODE from SYJOBMAS',
'order by 1'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-- SELECT --'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071206996322242)
,p_name=>'SUBLEDCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBLEDCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Party'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRTYNAME, PARTYCDE',
'from SYCOMPTY',
'where PARTYTYP in (''VE'',''CU'')',
'order by PRTYNAME'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-- SELECT PARTY --'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071291914322243)
,p_name=>'NARATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NARATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Particular'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071457177322244)
,p_name=>'DBCRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DBCRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dbcrcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071515448322245)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>3
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071660783322246)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Excgrate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071706268322247)
,p_name=>'JVFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JVFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_attributes=>'onkeypress="return tabE(this,event,''P10023507_TOTAL_DAMT'')"'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071828284322248)
,p_name=>'JVLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JVLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Jvlcamnt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071933104322249)
,p_name=>'REFDOCNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refdocno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209071987453322250)
,p_name=>'REFDOCDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Refdocdt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072068309322251)
,p_name=>'REFDOCTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refdocty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072194327322252)
,p_name=>'REFDCSTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDCSTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Refdcsty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>240
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072322153322253)
,p_name=>'STATCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072368843322254)
,p_name=>'BANKNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Bankname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072541184322255)
,p_name=>'BANKBRCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKBRCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Bankbrch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072588736322256)
,p_name=>'BANKCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bankcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072741477322257)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>6
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209072811502322258)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209073812980322268)
,p_name=>'P_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'P_ID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209074775743322278)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(209074929911322279)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(208840605055343983)
,p_internal_uid=>264847557556067361
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(209076298912323390)
,p_interactive_grid_id=>wwv_flow_api.id(208840605055343983)
,p_static_id=>'401591'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(209076383953323390)
,p_report_id=>wwv_flow_api.id(209076298912323390)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(100989655194683221)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(95943617651797913)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(100990165497683225)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(95943729105797914)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209076946101323390)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(208840664456343984)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209077457866323392)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(208840764939343985)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209077904654323393)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(208840914188343986)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209078384594323393)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(209070716857322237)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209078864886323395)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(209070787474322238)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209079373247323396)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(209070949240322239)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209079888470323396)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(209071012012322240)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209080415735323398)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(209071071029322241)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209080866863323398)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(209071206996322242)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209081443767323400)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(209071291914322243)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>163
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209081916604323401)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(209071457177322244)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209082370848323404)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(209071515448322245)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209082852927323406)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(209071660783322246)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209083355076323411)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(209071706268322247)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209083780789323412)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(209071828284322248)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209084268994323414)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(209071933104322249)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209084849942323414)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(209071987453322250)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209085314456323415)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(209072068309322251)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209085842246323415)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(209072194327322252)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209086346553323417)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(209072322153322253)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209086813782323418)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(209072368843322254)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209087291573323418)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(209072541184322255)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209087805076323420)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(209072588736322256)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209088336411323420)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(209072741477322257)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209088799543323421)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(209072811502322258)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209136769182272126)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(209073812980322268)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209206456027774862)
,p_view_id=>wwv_flow_api.id(209076383953323390)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(209074775743322278)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(258853537576763264)
,p_plug_name=>'FOOTER'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(209224654301057355)
,p_name=>'New'
,p_parent_plug_id=>wwv_flow_api.id(258853537576763264)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SEQ_ID AS P_SEQ, C001 AS ACCOUNT, N001 AS AMONT  FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME=''ACCNT_BNKBK_COLLECTION'';'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2158395380966042)
,p_query_column_id=>1
,p_column_alias=>'P_SEQ'
,p_column_display_sequence=>1
,p_column_heading=>'P Seq'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2158824104966043)
,p_query_column_id=>2
,p_column_alias=>'ACCOUNT'
,p_column_display_sequence=>3
,p_column_heading=>'Account'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2159222529966043)
,p_query_column_id=>3
,p_column_alias=>'AMONT'
,p_column_display_sequence=>2
,p_column_heading=>'Amont'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(258934368597962577)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2159880919966043)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(258934368597962577)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'SUBMIT'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2160270382966043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(258934368597962577)
,p_button_name=>'ADD_COLLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Add Colle'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2160659990966045)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(258934368597962577)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2161063310966045)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(258934368597962577)
,p_button_name=>'new_entry'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'NEW ENTRY'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:10023507:&SESSION.::&DEBUG.:RP,81::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2134696772966025)
,p_name=>'P10023507_VOUCHER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(258573551561486462)
,p_prompt=>'Voucher No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-right-sm'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2135127448966026)
,p_name=>'P10023507_VOUCHER_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(258573551561486462)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Voucher Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2135752624966026)
,p_name=>'P10023507_ROW_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2136154684966026)
,p_name=>'P10023507_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_item_default=>'100'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2136613964966026)
,p_name=>'P10023507_TRANTYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_prompt=>'Voucher Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  NARATION VOUCHER_TYPE, TRANTYPE || '' - '' ||SUBTTYPE VOUCHER_TYPE_RETURN',
' FROM SYDOCMAS',
' WHERE COMPCODE = 100',
' AND MODLCODE = ''AC''',
'-- AND TRANTYPE LIKE ''J%''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT TYPE --'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2137008286966026)
,p_name=>'P10023507_DOCTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2137410988966026)
,p_name=>'P10023507_SUBTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2137789740966026)
,p_name=>'P10023507_SERLNUMB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2138148618966026)
,p_name=>'P10023507_DBCRCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2138581716966026)
,p_name=>'P10023507_MDLCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2139027111966026)
,p_name=>'P10023507_LOCCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2139419822966026)
,p_name=>'P10023507_ORIGMODL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2139748780966026)
,p_name=>'P10023507_PARTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2140165264966028)
,p_name=>'P10023507_REFERENCE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_prompt=>'Reference No'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2140592702966028)
,p_name=>'P10023507_ACCTCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2141042776966028)
,p_name=>'P10023507_COSTCODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2141433320966028)
,p_name=>'P10023507_BANKNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2141781235966028)
,p_name=>'P10023507_REFERENCE_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_prompt=>'Reference Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2142210444966028)
,p_name=>'P10023507_BANKBRANCH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2142574682966028)
,p_name=>'P10023507_BANKCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROUTING_NO  FROM',
' ACBNKVW',
' WHERE BANKNAME =  :P10023507_BANKNAME ',
' and BRANCH_NAME = :P10023507_BANKBRANCH'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2142960542966028)
,p_name=>'P10023507_AMOUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2143376283966028)
,p_name=>'P10023507_PARTICULAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(258575061838488779)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2157729786966042)
,p_name=>'P10023507_TOTAL_DAMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(258853537576763264)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3393947996950023)
,p_name=>'P10023507_TRANTYPE2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(258934368597962577)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3394081455950024)
,p_name=>'P10023507_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(258934368597962577)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3394219034950025)
,p_name=>'P10023507_TRN_MODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(258934368597962577)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2162303131966045)
,p_name=>'DOCTYPE-SUBTYPE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023507_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2162780913966045)
,p_event_id=>wwv_flow_api.id(2162303131966045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10023507_DOCTYPE, P10023507_SUBTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* SELECT SUBSTR(:P10023507_VOUCHER_TYPE, 0,INSTR(:P10023507_VOUCHER_TYPE,''#'')-2 ) TRANTYPE,  ',
'        SUBSTR(:P10023507_VOUCHER_TYPE, INSTR(:P10023507_VOUCHER_TYPE,''#'')+2,INSTR(:P10023507_VOUCHER_TYPE,''#'')+4 )  SUBTTYPE',
' FROM DUAL;',
' */',
' ',
'  SELECT SUBSTR(:P10023507_TRANTYPE, 0,INSTR(:P10023507_TRANTYPE,'' - '')-1 ) TRANTYPE,  ',
'        SUBSTR(:P10023507_TRANTYPE, INSTR(:P10023507_TRANTYPE,'' - '')+3,INSTR(:P10023507_TRANTYPE,'' - '')+4 )  SUBTTYPE',
' FROM DUAL;'))
,p_attribute_07=>'P10023507_TRANTYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2163236103966045)
,p_name=>'JVLCAMT'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'JVFCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2163659778966045)
,p_event_id=>wwv_flow_api.id(2163236103966045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'JVLCAMNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:JVFCAMNT);'
,p_attribute_07=>'JVFCAMNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2164135365966045)
,p_name=>'JVFCAMNT'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'JVLCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2164628407966045)
,p_event_id=>wwv_flow_api.id(2164135365966045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'JVLCAMNT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:JVFCAMNT);'
,p_attribute_07=>'JVFCAMNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2164961033966045)
,p_name=>'DRAMT'
,p_event_sequence=>275
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'DRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DRAMT'
,p_triggering_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2165542283966047)
,p_event_id=>wwv_flow_api.id(2164961033966045)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CRAMT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(0);'
,p_attribute_07=>'DRAMT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2165939379966047)
,p_name=>'CRAMT'
,p_event_sequence=>285
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'CRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CRAMT'
,p_triggering_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2166398684966047)
,p_event_id=>wwv_flow_api.id(2165939379966047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DRAMT'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(0);'
,p_attribute_07=>'DRAMT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2166783527966047)
,p_name=>'DR_DBCRCD'
,p_event_sequence=>295
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'DRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DRAMT'
,p_triggering_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2167277119966047)
,p_event_id=>wwv_flow_api.id(2166783527966047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DBCRCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :DRAMT>0 THEN',
'return(''D'');',
'ELSE',
'return(''C'');',
'END IF;'))
,p_attribute_07=>'DRAMT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2167692174966047)
,p_name=>'CR_DBCRCD'
,p_event_sequence=>305
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'CRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CRAMT'
,p_triggering_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2168214765966047)
,p_event_id=>wwv_flow_api.id(2167692174966047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DBCRCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :CRAMT>0 THEN',
'return(''C'');',
'END IF;'))
,p_attribute_07=>'CRAMT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2168638176966047)
,p_name=>'disable cramt'
,p_event_sequence=>315
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'DRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'DRAMT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2169050342966047)
,p_event_id=>wwv_flow_api.id(2168638176966047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CRAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2169631345966047)
,p_event_id=>wwv_flow_api.id(2168638176966047)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'CRAMT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2170005614966047)
,p_name=>'disable dramt'
,p_event_sequence=>325
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(208840390262343981)
,p_triggering_element=>'CRAMT'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'CRAMT'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2170462584966047)
,p_event_id=>wwv_flow_api.id(2170005614966047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DRAMT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2171021721966047)
,p_event_id=>wwv_flow_api.id(2170005614966047)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DRAMT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2171361519966047)
,p_name=>'close'
,p_event_sequence=>335
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2160659990966045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2171917056966047)
,p_event_id=>wwv_flow_api.id(2171361519966047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2161869284966045)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add_collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'RAISE_APPLICATION_ERROR(-20151,:ACCTCODE||''-''||:JVFCAMNT);',
'',
'    IF NOT apex_collection.collection_exists (''ACCNT_BNKBK_COLLECTION'')',
'       THEN',
'          apex_collection.create_collection (''ACCNT_BNKBK_COLLECTION'');',
'       END IF;',
'',
'         APEX_COLLECTION.ADD_MEMBER(',
'         p_collection_name =>  ''ACCNT_BNKBK_COLLECTION'',',
'                                P_C001 => :ACCTCODE,',
'                                P_N001 => :JVFCAMNT,',
'                                P_C017 => :APP_SESSION ',
'                                );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2160270382966043)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2161505925966045)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT PROCESS MST'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'doc_number varchar2(20);',
'',
'BEGIN',
'',
'       /* if NVL(:P10023507_AMOUNT,0) <> NVL(:P10023507_TOTAL_DAMT,0) then ',
'          apex_error.add_error(',
'                                p_message=> ''TOTAL ITEM AMOUNT NOT MATCHED WITH TOTAL AMOUNT..!'',',
'                                p_display_location=> apex_error.c_inline_in_notification   ',
'                                ) ;',
'        else ',
'        null;',
'        end if;*/',
'        ',
'        ',
'    Docnumber_Generation(''100'', ''AC'' , :P10023507_DOCTYPE, :P10023507_SUBTYPE , TRUNC(SYSDATE) ,null , ''AC'' , doc_number );',
'     ',
'   :P10023507_VOUCHER_NO := doc_number;',
'',
'   :P10023507_SERLNUMB := 1;',
'  /*  ',
'    DPK_ACCOUNTS.DPR_ACCOUNTS_INSERT(',
'                         P_COMPCODE => ''100'', ',
'                         p_DOCTTYPE => :P10023507_DOCTYPE,',
'                         p_SUBTTYPE => :P10023507_SUBTYPE, ',
'                         p_DOCNUMBR => :P10023507_VOUCHER_NO, ',
'                         p_DOCTDATE => :P10023507_VOUCHER_DATE,  	',
'                         p_SUBLEDCD => :P10023507_PARTY,',
'                         P_DBCRCODE => :P10023507_DBCRCODE,',
'                         P_NARATION => :P10023507_PARTICULAR,',
'                         p_ACCTCODE => :P10023507_ACCTCODE,',
'                         p_BANKNAME => :P10023507_BANKNAME,',
'                         p_BANKBRCH => :P10023507_BANKBRANCH,',
'                         p_BANKCODE => :P10023507_BANKCODE,',
'                         P_COSTCODE => :P10023507_COSTCODE,',
'                         p_JVFCAMNT => :P10023507_AMOUNT,',
'                         p_JVLCAMNT => :P10023507_AMOUNT,',
'                         p_SERLNUMB => 1,',
'                         P_CURRCODE => ''BDT'',',
'                         P_EXCGRATE => 1,',
'                         P_STATCODE => ''N'',',
'                         P_OPRSTAMP => :APP_USER,',
'                         P_TIMSTAMP => SYSDATE',
'                         );',
'         ',
'',
'COMMIT;',
' ',
'exception',
'',
'when others then',
'raise_application_error(-20001,SQLERRM);*/',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'ERROR FROM MASTER DATA'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2159880919966043)
,p_process_success_message=>'Data successfully saved...'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'doc_number varchar2(20);',
'V_SERLNUMB NUMBER;',
'',
'BEGIN',
'',
'SELECT NVL(MAX(SERLNUMB),0)+1',
'INTO V_SERLNUMB',
'FROM ACTRNDTL',
'WHERE DOCNUMBR= :P72_DOCNUMBR;',
'',
'if :P72_VOUCHER_NO is null then',
'     Docnumber_Generation(:P72_COMPCODE, ''AC'' , :P72_DOCTYPE, :P72_SUBTYPE , TRUNC(SYSDATE) ,null , ''AC'' , doc_number );',
'     ',
'     :P72_VOUCHER_NO := doc_number;',
'     :SERLNUMB := V_SERLNUMB;',
'     ',
' if :P72_AMOUNT = :P72_TOTAL_DAMT then        ',
'    ',
'    DPK_ACCOUNTS.DPR_ACCOUNTS_INSERT(',
'                         P_COMPCODE => ''100'', ',
'                         p_DOCTTYPE => :P72_DOCTYPE,',
'                         p_SUBTTYPE => :P72_SUBTYPE, ',
'                         p_DOCNUMBR => doc_number, ',
'                         p_DOCTDATE => :P72_VOUCHER_DATE,  	',
'                         p_SUBLEDCD => :P72_PARTY,',
'                         P_DBCRCODE => :P72_DBCRCODE,',
'                         P_NARATION => :NARATION,',
'                         p_ACCTCODE => :P72_ACCTCODE,',
'                         p_BANKNAME => :P72_BANKNAME,',
'                         p_BANKBRCH => :P72_BANKBRANCH,',
'                         p_BANKCODE => :P72_BANKCODE,',
'                         P_COSTCODE => :COSTCODE,',
'                         p_JVFCAMNT => :JVFCAMNT,',
'                         p_JVLCAMNT => :P72_AMOUNT,',
'                         p_SERLNUMB => :SERLNUMB,',
'                         P_CURRCODE => ''BDT'',',
'                         P_EXCGRATE => 1,',
'                         P_STATCODE => ''N'',',
'                         P_OPRSTAMP => ''ITUSER'',',
'                         P_TIMSTAMP => SYSDATE',
'                         );',
'         ',
'       ELSE',
'       RAISE_APPLICATION_ERROR(-20105,''TOTAL ITEM AMOUNT NOT MATCHED WITH TOTAL AMOUNT..!'');',
' end if;',
'end if;',
'COMMIT;',
' ',
'exception',
'when others then',
'raise_application_error(-20001,SQLERRM);',
'',
'end;',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2156988522966040)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(208840390262343981)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' /*SELECT CASE WHEN :JVFCAMNT>0 ',
'THEN ''D''',
'ELSE ''C'' ',
'END INTO :DBCRCODE',
'FROM DUAL;',
'',
'SELECT TRANTYPE, SUBTTYPE INTO :P10023507_DOCTYPE, :P10023507_SUBTYPE',
' FROM SYDOCMAS',
' WHERE COMPCODE = :P10023507_COMPCODE',
' AND MODLCODE = ''AC''',
' AND NARATION =:P10023507_VOUCHER_TYPE;*/',
' ',
'',
'',
'    :P10023507_SERLNUMB := :P10023507_SERLNUMB +1;',
'',
'    :COMPCODE:= ''100''; ',
'    :SERLNUMB:= :P10023507_SERLNUMB;',
'    :DOCTTYPE:= :P10023507_DOCTYPE;',
'    :SUBTTYPE:= :P10023507_SUBTYPE;',
'    :DOCNUMBR:= :P10023507_VOUCHER_NO;',
'    :DOCTDATE:= :P10023507_VOUCHER_DATE;',
'    :CURRCODE:= ''BDT'';',
'    :DBCRCODE:= :DBCRCODE;',
'    :EXCGRATE:= 1;',
'    :JVFCAMNT:= nvl(:DRAMT,0)+nvl(:CRAMT,0);',
'    :JVLCAMNT:= nvl(:DRAMT,0)+nvl(:CRAMT,0);',
'    --:JVFCAMNT:= :DRAMT;',
'    --:JVLCAMNT:= :CRAMT;',
'    :STATCODE:= ''N'';',
'    :OPRSTAMP:= :APP_USER;',
'    :TIMSTAMP:= SYSDATE;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2159880919966043)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2156615765966039)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(208840390262343981)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DATA_GRID - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2159880919966043)
);
wwv_flow_api.component_end;
end;
/
