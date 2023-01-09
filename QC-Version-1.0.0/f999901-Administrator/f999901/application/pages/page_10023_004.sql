prompt --application/pages/page_10023_004
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
 p_id=>10023505
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'CASH BOOK ENTRY'
,p_page_mode=>'MODAL'
,p_step_title=>'CASH BOOK ENTRY'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'    ',
'    /*var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0; ',
'',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
' ',
'',
'    if (!isNaN(ordamt)) {',
'',
'        total += ordamt;',
'',
'    }',
'',
'});',
'',
'$s(''P72_TOTAL_DAMT'',total);*/',
'    ',
'    ',
'    $(document).on("keyup",".amnt", function(){',
'       /*var total = parseFloat($(this).val());',
'       $(".a-GV-cell .u-tE").each(function(){',
'           total += parseFloat($(this).html());',
'           console.log(parseFloat($(this).html()))',
'       });console.log(total)',
'       $("#P72_TOTAL_DAMT").val(total);*/',
'        //alert(''-'')',
'        ',
'        var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'        var sKey = model.getFieldKey("JVFCAMNT");',
'        var myVal = $(this).val();',
'        var total = 0; ',
'        if(myVal){',
'            total = parseFloat(myVal);',
'        }',
'',
'        //-----------------------',
'        console.log($(this).attr(''id''))',
'        console.log(sKey)',
'        $.each(this.attributes, function() {',
'    // this.attributes is not a plain object, but an array',
'    // of attribute nodes, which contain both the name and value',
'    if(this.specified) {',
'      console.log(this.name, this.value);',
'    }',
'  });',
'        //------------------------------',
'        model.forEach(function(r) {',
'            var ordamt = parseInt(r[sKey], 10);',
'            ',
'            /*if (!isNaN(ordamt)) {',
'                total += ordamt;',
'            }*/',
'            if(ordamt){',
'                console.log(ordamt)',
'                total += parseFloat(ordamt);',
'            }',
'        });',
'        console.log(total)',
'        $s(''P10023505_TOTAL_DAMT'',total);',
'    })',
' ',
'});',
'',
'',
'//P72_TOTAL_DAMT a-GV-cell u-tE'))
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190929094621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205588586804413272)
,p_plug_name=>'TITLE'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_source=>'<h1 style="text-align:center;">BANK BOOK</h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205597539728438080)
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
 p_id=>wwv_flow_api.id(205599050005440397)
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
 p_id=>wwv_flow_api.id(155864378429295599)
,p_plug_name=>'DATA_GRID'
,p_region_name=>'IGTC'
,p_parent_plug_id=>wwv_flow_api.id(205599050005440397)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT rowid P_ID, COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB, ACCTCODE, COSTCODE, SUBLEDCD, NARATION, DBCRCODE, CURRCODE, EXCGRATE, JVFCAMNT, JVLCAMNT, REFDOCNO, REFDOCDT, REFDOCTY, REFDCSTY, STATCODE, BANKNAME, BANKBRCH, BANKCODE, O'
||'PRSTAMP, TIMSTAMP ',
'FROM ACTRNDTL',
'WHERE DOCNUMBR=  :P10023505_VOUCHER_NO',
'AND COMPCODE =:P10023505_COMPCODE',
'AND DOCTTYPE =   :P10023505_DOCTYPE',
'AND SUBTTYPE =   :P10023505_SUBTYPE',
'AND DBCRCODE <>:P10023505_DBCRCODE;'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155864652623295602)
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
 p_id=>wwv_flow_api.id(155864753106295603)
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
 p_id=>wwv_flow_api.id(155864902355295604)
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
 p_id=>wwv_flow_api.id(156094705024273855)
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
 p_id=>wwv_flow_api.id(156094775641273856)
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
 p_id=>wwv_flow_api.id(156094937407273857)
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
 p_id=>wwv_flow_api.id(156095000179273858)
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
'where CASHBANK = ''C''',
'--and LEVLCODE=5',
''))
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
 p_id=>wwv_flow_api.id(156095059196273859)
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
 p_id=>wwv_flow_api.id(156095195163273860)
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
 p_id=>wwv_flow_api.id(156095280081273861)
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
 p_id=>wwv_flow_api.id(156095445344273862)
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
 p_id=>wwv_flow_api.id(156095503615273863)
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
 p_id=>wwv_flow_api.id(156095648950273864)
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
 p_id=>wwv_flow_api.id(156095694435273865)
,p_name=>'JVFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JVFCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'amnt'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'amnt'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(156095816451273866)
,p_name=>'JVLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JVLCAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Jvlcamnt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
 p_id=>wwv_flow_api.id(156095921271273867)
,p_name=>'REFDOCNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refdocno'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
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
 p_id=>wwv_flow_api.id(156095975620273868)
,p_name=>'REFDOCDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Refdocdt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(156096056476273869)
,p_name=>'REFDOCTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refdocty'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
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
 p_id=>wwv_flow_api.id(156096182494273870)
,p_name=>'REFDCSTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDCSTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Refdcsty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_api.id(156096310320273871)
,p_name=>'STATCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
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
 p_id=>wwv_flow_api.id(156096357010273872)
,p_name=>'BANKNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Bankname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
 p_id=>wwv_flow_api.id(156096529351273873)
,p_name=>'BANKBRCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKBRCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Bankbrch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
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
 p_id=>wwv_flow_api.id(156096576903273874)
,p_name=>'BANKCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANKCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bankcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(156096729644273875)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
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
 p_id=>wwv_flow_api.id(156096799669273876)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(156097801147273886)
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
 p_id=>wwv_flow_api.id(156098763910273896)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(156098918078273897)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(155864593222295601)
,p_internal_uid=>211871545723018979
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
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
 p_id=>wwv_flow_api.id(156100287079275008)
,p_interactive_grid_id=>wwv_flow_api.id(155864593222295601)
,p_static_id=>'401588'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(156100372120275008)
,p_report_id=>wwv_flow_api.id(156100287079275008)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156100934268275008)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(155864652623295602)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156101446033275010)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(155864753106295603)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156101892821275011)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(155864902355295604)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156102372761275011)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(156094705024273855)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156102853053275013)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(156094775641273856)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156103361414275014)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(156094937407273857)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156103876637275014)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(156095000179273858)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>257
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156104403902275016)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(156095059196273859)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156104855030275016)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(156095195163273860)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156105431934275018)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(156095280081273861)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156105904771275019)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(156095445344273862)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156106359015275022)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(156095503615273863)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156106841094275024)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(156095648950273864)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156107343243275029)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(156095694435273865)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156107768956275030)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(156095816451273866)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156108257161275032)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(156095921271273867)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156108838109275032)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(156095975620273868)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156109302623275033)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(156096056476273869)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156109830413275033)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(156096182494273870)
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
 p_id=>wwv_flow_api.id(156110334720275035)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(156096310320273871)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156110801949275036)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(156096357010273872)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156111279740275036)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(156096529351273873)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156111793243275038)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(156096576903273874)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156112324578275038)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(156096729644273875)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156112787710275039)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(156096799669273876)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156160757349223744)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(156097801147273886)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156230444194726480)
,p_view_id=>wwv_flow_api.id(156100372120275008)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(156098763910273896)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205877525743714882)
,p_plug_name=>'FOOTER'
,p_region_name=>'rgnSticky'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205958356764914195)
,p_plug_name=>'FOOTER2'
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
 p_id=>wwv_flow_api.id(4401821250496312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(205958356764914195)
,p_button_name=>'ADD_COLLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Add Colle'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4402233307496312)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(205958356764914195)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4402598031496312)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(205958356764914195)
,p_button_name=>'new_entry'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'NEW ENTRY'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:10023505:&SESSION.::&DEBUG.:RP,10023503::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4400701382496306)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(205877525743714882)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'SUBMIT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4398759468496301)
,p_name=>'P10023505_VOUCHER_NO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(205597539728438080)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Voucher No'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4399236859496304)
,p_name=>'P10023505_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(205597539728438080)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4399611945496304)
,p_name=>'P10023505_VOUCHER_DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(205597539728438080)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Voucher Date'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(4400046395496304)
,p_name=>'P10023505_TRN_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(205597539728438080)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4401139796496311)
,p_name=>'P10023505_TOTAL_DAMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(205877525743714882)
,p_prompt=>'Total Damt'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>5
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4403334762496314)
,p_name=>'P10023505_ROW_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4403724520496314)
,p_name=>'P10023505_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_item_default=>'100'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4404050913496314)
,p_name=>'P10023505_TRANTYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  NARATION VOUCHER_TYPE, TRANTYPE || '' - '' ||SUBTTYPE RETURN',
' FROM SYDOCMAS',
' WHERE COMPCODE = :P10023505_COMPCODE',
' AND MODLCODE = ''AC''',
' AND TRANTYPE LIKE ''J%''',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- Select Type --'
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
 p_id=>wwv_flow_api.id(4404486930496314)
,p_name=>'P10023505_DOCTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4404887876496315)
,p_name=>'P10023505_SUBTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4405310402496315)
,p_name=>'P10023505_SERLNUMB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_source=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4405699362496315)
,p_name=>'P10023505_DBCRCODE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'DBCRCODE'
,p_source=>'DBCRCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DEBIT;D,CREDIT;C'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4406057380496315)
,p_name=>'P10023505_MDLCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4406484441496315)
,p_name=>'P10023505_LOCCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4406883842496315)
,p_name=>'P10023505_ORIGMODL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4407268638496317)
,p_name=>'P10023505_PARTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Party'
,p_source=>'SUBLEDCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRTYNAME, PARTYCDE',
'from SYCOMPTY',
'where PARTYTYP in (''VE'',''CU'')',
'order by PRTYNAME'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<--Select Party-->'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4407734619496317)
,p_name=>'P10023505_REFERENCE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_prompt=>'Reference No'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4408112831496317)
,p_name=>'P10023505_ACCTCODE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Account Code'
,p_source=>'ACCTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME || '' ('' || ACCTCODE || '')''  ACCTNAME, ACCTCODE',
'FROM SYCHRTAC',
'WHERE COMPCODE = :P10023505_COMPCODE',
'AND CASHBANK = ''C''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-- SELECT --'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4408496494496317)
,p_name=>'P10023505_COSTCODE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Center'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COSTDESC,COSTCODE from SYJOBMAS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--  SELECT --'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4408848063496317)
,p_name=>'P10023505_BANKNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bank Name'
,p_source=>'BANKNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct BANKNAME AS DIS,BANKNAME AS RET',
'from ACBNKVW',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<-Select Bank->'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4409265623496317)
,p_name=>'P10023505_REFERENCE_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
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
 p_id=>wwv_flow_api.id(4409725482496317)
,p_name=>'P10023505_BANKBRANCH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Branch Name'
,p_source=>'BANKBRCH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRANCH_NAME as d, BRANCH_NAME as r from ACBNKVW',
'where BANKNAME=:P10023505_BANKNAME',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<-Select Branch->'
,p_lov_cascade_parent_items=>'P10023505_BANKNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4410059912496318)
,p_name=>'P10023505_BANKCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bank Code'
,p_source=>'BANKCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROUTING_NO as d, ROUTING_NO as r FROM',
' ACBNKVW',
' WHERE BANKNAME =  :P10023505_BANKNAME ',
' and BRANCH_NAME = :P10023505_BANKBRANCH'))
,p_lov_cascade_parent_items=>'P10023505_BANKBRANCH'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4410478635496318)
,p_name=>'P10023505_AMOUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Amount'
,p_source=>'JVFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4410902747496318)
,p_name=>'P10023505_PARTICULAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(205599050005440397)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Particular'
,p_source=>'NARATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4425887913496367)
,p_name=>'Total_Amt'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4426417642496368)
,p_event_id=>wwv_flow_api.id(4425887913496367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10023505_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0; ',
'',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
' ',
'',
'    if (!isNaN(ordamt)) {',
'',
'        total += ordamt;',
'',
'    }',
'',
'});',
'',
'$s(''P10023505_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4426803189496368)
,p_name=>'naration-click'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023505_PARTICULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4427302714496368)
,p_event_id=>wwv_flow_api.id(4426803189496368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NARATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:P10023505_PARTICULAR);'
,p_attribute_07=>'P10023505_PARTICULAR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4427669709496368)
,p_name=>'naration_grid'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(155864378429295599)
,p_triggering_element=>'ACCTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4428235573496370)
,p_event_id=>wwv_flow_api.id(4427669709496368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NARATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:P10023505_PARTICULAR);'
,p_attribute_07=>'ACCTCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4428727944496370)
,p_event_id=>wwv_flow_api.id(4427669709496368)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DBCRCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF',
'        :P10023505_DBCRCODE = ''D''',
'    THEN',
'        RETURN(''C'');',
'    ELSE',
'        RETURN (''D'');',
'END IF;'))
,p_attribute_07=>'ACCTCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4429134251496379)
,p_name=>'GridSumAmount_Chng'
,p_event_sequence=>190
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(155864378429295599)
,p_triggering_element=>'JVFCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4429563736496379)
,p_event_id=>wwv_flow_api.id(4429134251496379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0;',
' ',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
'    if (!isNaN(ordamt)) {',
'        total += ordamt;',
'    }',
'  ',
'});',
'',
'$s(''P10023505_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4430002759496379)
,p_name=>'GridSumAmount_GTFCS_LC'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(155864378429295599)
,p_triggering_element=>'JVLCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4430486525496381)
,p_event_id=>wwv_flow_api.id(4430002759496379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10023505_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0;',
' ',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
'    if (!isNaN(ordamt)) {',
'        total += ordamt;',
'    }',
'  ',
'});',
'',
'$s(''P10023505_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4430869633496381)
,p_name=>'DOCTYPE-SUBTYPE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023505_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4431373512496382)
,p_event_id=>wwv_flow_api.id(4430869633496381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10023505_DOCTYPE, P10023505_SUBTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBSTR(:P10023505_TRANTYPE, 0,INSTR(:P10023505_TRANTYPE,'' - '')-1 ) TRANTYPE,  ',
'        SUBSTR(:P10023505_TRANTYPE,   INSTR(:P10023505_TRANTYPE,'' - '')+3,  INSTR(:P10023505_TRANTYPE,''-'')+4 ) SUBTTYPE',
' FROM DUAL;'))
,p_attribute_07=>'P10023505_TRANTYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4431821851496382)
,p_name=>'total_amt_lc_gtfcs'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023505_TOTAL_DAMT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4432259815496382)
,p_event_id=>wwv_flow_api.id(4431821851496382)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10023505_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0;',
' ',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
'    if (!isNaN(ordamt)) {',
'        total += ordamt;',
'    }',
'  ',
'});',
'',
'$s(''P10023505_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4432649987496382)
,p_name=>'JVLCAMT'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(155864378429295599)
,p_triggering_element=>'JVFCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4433156582496384)
,p_event_id=>wwv_flow_api.id(4432649987496382)
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
 p_id=>wwv_flow_api.id(4433604311496384)
,p_name=>'JVFCAMNT'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(155864378429295599)
,p_triggering_element=>'JVLCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4434061072496384)
,p_event_id=>wwv_flow_api.id(4433604311496384)
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
 p_id=>wwv_flow_api.id(4434483384496384)
,p_name=>'total'
,p_event_sequence=>265
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4400701382496306)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4434998265496384)
,p_event_id=>wwv_flow_api.id(4434483384496384)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGTC").widget().interactiveGrid("getViews", "grid").model;',
'',
'var sKey = model.getFieldKey("JVFCAMNT");',
'',
'var total = 0; ',
'',
'model.forEach(function(r) {',
'',
'    var ordamt = parseInt(r[sKey], 10);',
'',
' ',
'',
'    if (!isNaN(ordamt)) {',
'',
'        total += ordamt;',
'',
'    }',
'',
'});',
'',
'$s(''P10023505_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4424981514496361)
,p_name=>'rgnstycky'
,p_event_sequence=>275
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4425522260496364)
,p_event_id=>wwv_flow_api.id(4424981514496361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(205877525743714882)
,p_attribute_01=>'$("#rgnSticky").stickyWidget({toggleWidth:true});'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4424231235496359)
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
'        if NVL(:P10023505_AMOUNT,0) <> NVL(:P10023505_TOTAL_DAMT,0) then ',
'        RAISE_APPLICATION_ERROR(-20105,''TOTAL ITEM AMOUNT NOT MATCHED WITH TOTAL AMOUNT..!'');',
'          apex_error.add_error(',
'                                p_message=> ''TOTAL ITEM AMOUNT NOT MATCHED WITH TOTAL AMOUNT..!'',',
'                                p_display_location=> apex_error.c_inline_in_notification   ',
'                                ) ;',
'        else ',
'        null;',
'        end if;',
'        ',
'        ',
'    Docnumber_Generation(:P10023505_COMPCODE, ''AC'' , :P10023505_DOCTYPE, :P10023505_SUBTYPE , TRUNC(SYSDATE) ,null , ''AC'' , doc_number );',
'     ',
'   :P10023505_VOUCHER_NO := doc_number;',
'',
'   :P10023505_SERLNUMB := 1;',
'    ',
'    DPK_ACCOUNTS.DPR_ACCOUNTS_INSERT(',
'                         P_COMPCODE => ''100'', ',
'                         p_DOCTTYPE => :P10023505_DOCTYPE,',
'                         p_SUBTTYPE => :P10023505_SUBTYPE, ',
'                         p_DOCNUMBR => :P10023505_VOUCHER_NO, ',
'                         p_DOCTDATE => :P10023505_VOUCHER_DATE,  	',
'                         p_SUBLEDCD => :P10023505_PARTY,',
'                         P_DBCRCODE => :P10023505_DBCRCODE,',
'                         P_NARATION => :P10023505_PARTICULAR,',
'                         p_ACCTCODE => :P10023505_ACCTCODE,',
'                         p_BANKNAME => :P10023505_BANKNAME,',
'                         p_BANKBRCH => :P10023505_BANKBRANCH,',
'                         p_BANKCODE => :P10023505_BANKCODE,',
'                         P_COSTCODE => :P10023505_COSTCODE,',
'                         p_JVFCAMNT => :P10023505_AMOUNT,',
'                         p_JVLCAMNT => :P10023505_AMOUNT,',
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
'raise_application_error(-20001,SQLERRM);',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'ERROR FROM MASTER DATA'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4400701382496306)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4423753519496359)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(155864378429295599)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :P10023505_DBCRCODE = ''D'' ',
'THEN ''C''',
'ELSE ''D'' ',
'END INTO :DBCRCODE',
'FROM DUAL;',
'',
' /*SELECT TRANTYPE, SUBTTYPE INTO :P10023505_DOCTYPE, :P10023505_SUBTYPE',
' FROM SYDOCMAS',
' WHERE COMPCODE = :P10023505_COMPCODE',
' AND MODLCODE = ''AC''',
' AND NARATION =:P10023505_VOUCHER_TYPE;*/',
'',
'    :P10023505_SERLNUMB := :P10023505_SERLNUMB +1;',
'',
'    :COMPCODE:= :P10023505_COMPCODE; ',
'    :SERLNUMB:= :P10023505_SERLNUMB;',
'    :DOCTTYPE:= :P10023505_DOCTYPE;',
'    :SUBTTYPE:= :P10023505_SUBTYPE;',
'    :DOCNUMBR:= :P10023505_VOUCHER_NO;',
'    :DOCTDATE:= :P10023505_VOUCHER_DATE;',
'    :CURRCODE:= ''BDT'';',
'    :EXCGRATE:= 1;',
'    :JVLCAMNT:= :JVFCAMNT;',
'    :STATCODE:= ''N'';',
'    :OPRSTAMP:= :APP_USER;',
'    :TIMSTAMP:= SYSDATE;',
'    :BANKNAME := :P10023505_BANKNAME; ',
'    :BANKBRCH := :P10023505_BANKBRANCH;',
'    :BANKCODE := :P10023505_BANKCODE;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4400701382496306)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4423419888496356)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(155864378429295599)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DATA_GRID - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(4400701382496306)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(4663658719832667)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'row process'
,p_attribute_02=>'ACTRNDTL'
,p_attribute_03=>'P10023505_ROW_ID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
