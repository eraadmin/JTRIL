prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'BANK BOOK ENTRY BKP'
,p_page_mode=>'MODAL'
,p_step_title=>'BANK BOOK ENTRY BKP'
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
'        var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'        $s(''P10023503_TOTAL_DAMT'',total);',
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
,p_last_upd_yyyymmddhh24miss=>'20190926125255'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(206244077391134137)
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
 p_id=>wwv_flow_api.id(206253030315158945)
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
 p_id=>wwv_flow_api.id(206254540592161262)
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
 p_id=>wwv_flow_api.id(156519869016016464)
,p_plug_name=>'DATA_GRID'
,p_region_name=>'IGT'
,p_parent_plug_id=>wwv_flow_api.id(206254540592161262)
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
'WHERE DOCNUMBR=  :P7_VOUCHER_NO',
'AND COMPCODE =:P7_COMPCODE',
'AND DOCTTYPE =   :P7_DOCTYPE',
'AND SUBTTYPE =   :P7_SUBTYPE',
'AND DBCRCODE <>:P7_DBCRCODE;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_VOUCHER_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(156520143210016467)
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
 p_id=>wwv_flow_api.id(156520243693016468)
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
 p_id=>wwv_flow_api.id(156520392942016469)
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
 p_id=>wwv_flow_api.id(156750195610994720)
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
 p_id=>wwv_flow_api.id(156750266227994721)
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
 p_id=>wwv_flow_api.id(156750427993994722)
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
 p_id=>wwv_flow_api.id(156750490765994723)
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
'where CASHBANK = ''B''',
' --AND LEVLCODE=5'))
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
 p_id=>wwv_flow_api.id(156750549782994724)
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
 p_id=>wwv_flow_api.id(156750685749994725)
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
 p_id=>wwv_flow_api.id(156750770667994726)
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
 p_id=>wwv_flow_api.id(156750935930994727)
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
 p_id=>wwv_flow_api.id(156750994201994728)
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
 p_id=>wwv_flow_api.id(156751139536994729)
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
 p_id=>wwv_flow_api.id(156751185021994730)
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
 p_id=>wwv_flow_api.id(156751307037994731)
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
 p_id=>wwv_flow_api.id(156751411857994732)
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
 p_id=>wwv_flow_api.id(156751466206994733)
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
 p_id=>wwv_flow_api.id(156751547062994734)
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
 p_id=>wwv_flow_api.id(156751673080994735)
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
 p_id=>wwv_flow_api.id(156751800906994736)
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
 p_id=>wwv_flow_api.id(156751847596994737)
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
 p_id=>wwv_flow_api.id(156752019937994738)
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
 p_id=>wwv_flow_api.id(156752067489994739)
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
 p_id=>wwv_flow_api.id(156752220230994740)
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
 p_id=>wwv_flow_api.id(156752290255994741)
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
 p_id=>wwv_flow_api.id(156753291733994751)
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
 p_id=>wwv_flow_api.id(156754254496994761)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(156754408664994762)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(156520083809016466)
,p_internal_uid=>212527036309739844
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
 p_id=>wwv_flow_api.id(156755777665995873)
,p_interactive_grid_id=>wwv_flow_api.id(156520083809016466)
,p_static_id=>'401401'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(156755862706995873)
,p_report_id=>wwv_flow_api.id(156755777665995873)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156756424854995873)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(156520143210016467)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>68
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156756936619995875)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(156520243693016468)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156757383407995876)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(156520392942016469)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156757863347995876)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(156750195610994720)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156758343639995878)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(156750266227994721)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>132
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156758852000995879)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(156750427993994722)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>146
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156759367223995879)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(156750490765994723)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>257
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156759894488995881)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(156750549782994724)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156760345616995881)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(156750685749994725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156760922520995883)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(156750770667994726)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>271
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156761395357995884)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(156750935930994727)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156761849601995887)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(156750994201994728)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156762331680995889)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(156751139536994729)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156762833829995894)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(156751185021994730)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156763259542995895)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(156751307037994731)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156763747747995897)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(156751411857994732)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156764328695995897)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(156751466206994733)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156764793209995898)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(156751547062994734)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156765320999995898)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(156751673080994735)
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
 p_id=>wwv_flow_api.id(156765825306995900)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(156751800906994736)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156766292535995901)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(156751847596994737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156766770326995901)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(156752019937994738)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156767283829995903)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(156752067489994739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156767815164995903)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(156752220230994740)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156768278296995904)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(156752290255994741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156816247935944609)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(156753291733994751)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(156885934781447345)
,p_view_id=>wwv_flow_api.id(156755862706995873)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(156754254496994761)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(206533016330435747)
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
 p_id=>wwv_flow_api.id(206613847351635060)
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
 p_id=>wwv_flow_api.id(5057605100217251)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(206613847351635060)
,p_button_name=>'ADD_COLLE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Add Colle'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5057960196217251)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(206613847351635060)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:10023502:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5058434470217251)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(206613847351635060)
,p_button_name=>'new_entry'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'NEW ENTRY'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,10023503::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5056103581217250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(206533016330435747)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'SUBMIT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5056525662217251)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(206533016330435747)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Update'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5054330001217231)
,p_name=>'P7_VOUCHER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(206253030315158945)
,p_prompt=>'Voucher No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(5054730955217248)
,p_name=>'P7_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(206253030315158945)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5055037071217248)
,p_name=>'P7_VOUCHER_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(206253030315158945)
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
 p_id=>wwv_flow_api.id(5055440634217248)
,p_name=>'P7_TRN_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(206253030315158945)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5056946385217251)
,p_name=>'P7_TOTAL_DAMT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(206533016330435747)
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
 p_id=>wwv_flow_api.id(5059126623217253)
,p_name=>'P7_ROW_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5059513680217253)
,p_name=>'P7_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_item_default=>'100'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5059922391217253)
,p_name=>'P7_TRANTYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  NARATION VOUCHER_TYPE, TRANTYPE || '' - '' ||SUBTTYPE RETURN',
' FROM SYDOCMAS',
' WHERE COMPCODE = :P7_COMPCODE',
' AND MODLCODE = ''AC''',
' AND TRANTYPE LIKE ''J%''',
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
 p_id=>wwv_flow_api.id(5060295950217254)
,p_name=>'P7_DOCTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5060746100217254)
,p_name=>'P7_SUBTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5061061305217254)
,p_name=>'P7_SERLNUMB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5061493145217257)
,p_name=>'P7_DBCRCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'DBCRCODE'
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
 p_id=>wwv_flow_api.id(5061848999217259)
,p_name=>'P7_MDLCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5062316792217259)
,p_name=>'P7_LOCCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5062706699217261)
,p_name=>'P7_ORIGMODL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5063135121217261)
,p_name=>'P7_PARTY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Party'
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
 p_id=>wwv_flow_api.id(5063479976217261)
,p_name=>'P7_REFERENCE_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
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
 p_id=>wwv_flow_api.id(5063914398217262)
,p_name=>'P7_ACCTCODE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Bank Code'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACCTNAME || '' ('' || ACCTCODE || '')''  ACCTNAME, ACCTCODE',
'FROM SYCHRTAC',
'WHERE COMPCODE = :P7_COMPCODE',
'AND CASHBANK = ''B''',
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
 p_id=>wwv_flow_api.id(5064294087217264)
,p_name=>'P7_COSTCODE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Cost Center'
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
 p_id=>wwv_flow_api.id(5064705387217264)
,p_name=>'P7_BANKNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Bank Name'
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
 p_id=>wwv_flow_api.id(5065113968217264)
,p_name=>'P7_REFERENCE_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
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
 p_id=>wwv_flow_api.id(5065523140217264)
,p_name=>'P7_BANKBRANCH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Branch Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BRANCH_NAME as d, BRANCH_NAME as r from ACBNKVW',
'where BANKNAME=:P7_BANKNAME',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'<-Select Branch->'
,p_lov_cascade_parent_items=>'P7_BANKNAME'
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
 p_id=>wwv_flow_api.id(5065865328217264)
,p_name=>'P7_BANKCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Bank Code'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROUTING_NO  FROM',
' ACBNKVW',
' WHERE BANKNAME =  :P7_BANKNAME ',
' and BRANCH_NAME = :P7_BANKBRANCH'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROUTING_NO as d, ROUTING_NO as r FROM',
' ACBNKVW',
' WHERE BANKNAME =  :P7_BANKNAME ',
' and BRANCH_NAME = :P7_BANKBRANCH'))
,p_lov_cascade_parent_items=>'P7_BANKBRANCH'
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
 p_id=>wwv_flow_api.id(5066331083217265)
,p_name=>'P7_AMOUNT'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5066697731217265)
,p_name=>'P7_PARTICULAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(206254540592161262)
,p_prompt=>'Particular'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5081208812217353)
,p_name=>'Total_Amt'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5081671011217353)
,p_event_id=>wwv_flow_api.id(5081208812217353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'$s(''P7_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5082093905217353)
,p_name=>'naration-click'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_PARTICULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5082621928217354)
,p_event_id=>wwv_flow_api.id(5082093905217353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NARATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:P7_PARTICULAR);'
,p_attribute_07=>'P7_PARTICULAR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5082958382217354)
,p_name=>'naration_grid'
,p_event_sequence=>170
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(156519869016016464)
,p_triggering_element=>'ACCTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5083525698217357)
,p_event_id=>wwv_flow_api.id(5082958382217354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NARATION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:P7_PARTICULAR);'
,p_attribute_07=>'ACCTCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5083991450217359)
,p_event_id=>wwv_flow_api.id(5082958382217354)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DBCRCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF',
'        :P7_DBCRCODE = ''D''',
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
 p_id=>wwv_flow_api.id(5084357242217359)
,p_name=>'GridSumAmount_Chng'
,p_event_sequence=>190
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(156519869016016464)
,p_triggering_element=>'JVFCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5084936009217361)
,p_event_id=>wwv_flow_api.id(5084357242217359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'$s(''P7_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5085320569217361)
,p_name=>'GridSumAmount_GTFCS_LC'
,p_event_sequence=>200
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(156519869016016464)
,p_triggering_element=>'JVLCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5085778096217361)
,p_event_id=>wwv_flow_api.id(5085320569217361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'$s(''P7_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5086196858217361)
,p_name=>'DOCTYPE-SUBTYPE'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5086667203217362)
,p_event_id=>wwv_flow_api.id(5086196858217361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_DOCTYPE, P7_SUBTYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT SUBSTR(:P7_TRANTYPE, 0,INSTR(:P7_TRANTYPE,''-'')-2 ) TRANTYPE,  ',
'        SUBSTR(:P7_TRANTYPE, INSTR(:P7_TRANTYPE,''-'')+2,INSTR(:P7_TRANTYPE,''-'')+4 )  SUBTTYPE',
' FROM DUAL;'))
,p_attribute_07=>'P7_TRANTYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5087072288217362)
,p_name=>'total_amt_lc_gtfcs'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_TOTAL_DAMT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5087572828217362)
,p_event_id=>wwv_flow_api.id(5087072288217362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_TOTAL_DAMT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'$s(''P7_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5088032799217362)
,p_name=>'JVLCAMT'
,p_event_sequence=>250
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(156519869016016464)
,p_triggering_element=>'JVFCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5088473971217362)
,p_event_id=>wwv_flow_api.id(5088032799217362)
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
 p_id=>wwv_flow_api.id(5088939014217362)
,p_name=>'JVFCAMNT'
,p_event_sequence=>260
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(156519869016016464)
,p_triggering_element=>'JVLCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5089358204217362)
,p_event_id=>wwv_flow_api.id(5088939014217362)
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
 p_id=>wwv_flow_api.id(5089762643217362)
,p_name=>'total'
,p_event_sequence=>265
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2039955894957434)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5090252106217365)
,p_event_id=>wwv_flow_api.id(5089762643217362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("IGT").widget().interactiveGrid("getViews", "grid").model;',
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
'$s(''P7_TOTAL_DAMT'',total);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5080349871217336)
,p_name=>'rgnstycky'
,p_event_sequence=>275
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5080940585217347)
,p_event_id=>wwv_flow_api.id(5080349871217336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(206533016330435747)
,p_attribute_01=>'$("#rgnSticky").stickyWidget({toggleWidth:true});'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5080022959217336)
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
'        if NVL(:P7_AMOUNT,0) <> NVL(:P7_TOTAL_DAMT,0) then ',
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
'    Docnumber_Generation(:P7_COMPCODE, ''AC'' , :P7_DOCTYPE, :P7_SUBTYPE , TRUNC(SYSDATE) ,null , ''AC'' , doc_number );',
'     ',
'   :P7_VOUCHER_NO := doc_number;',
'',
'   :P7_SERLNUMB := 1;',
'    ',
'    DPK_ACCOUNTS.DPR_ACCOUNTS_INSERT(',
'                         P_COMPCODE => ''100'', ',
'                         p_DOCTTYPE => :P7_DOCTYPE,',
'                         p_SUBTTYPE => :P7_SUBTYPE, ',
'                         p_DOCNUMBR => :P7_VOUCHER_NO, ',
'                         p_DOCTDATE => :P7_VOUCHER_DATE,  	',
'                         p_SUBLEDCD => :P7_PARTY,',
'                         P_DBCRCODE => :P7_DBCRCODE,',
'                         P_NARATION => :P7_PARTICULAR,',
'                         p_ACCTCODE => :P7_ACCTCODE,',
'                         p_BANKNAME => :P7_BANKNAME,',
'                         p_BANKBRCH => :P7_BANKBRANCH,',
'                         p_BANKCODE => :P7_BANKCODE,',
'                         P_COSTCODE => :P7_COSTCODE,',
'                         p_JVFCAMNT => :P7_AMOUNT,',
'                         p_JVLCAMNT => :P7_AMOUNT,',
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
,p_process_when_button_id=>wwv_flow_api.id(2039955894957434)
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
 p_id=>wwv_flow_api.id(5079567689217311)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(156519869016016464)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE WHEN :P7_DBCRCODE = ''D'' ',
'THEN ''C''',
'ELSE ''D'' ',
'END INTO :DBCRCODE',
'FROM DUAL;',
'',
' /*SELECT TRANTYPE, SUBTTYPE INTO :P7_DOCTYPE, :P7_SUBTYPE',
' FROM SYDOCMAS',
' WHERE COMPCODE = :P7_COMPCODE',
' AND MODLCODE = ''AC''',
' AND NARATION =:P7_VOUCHER_TYPE;*/',
'',
'    :P7_SERLNUMB := :P7_SERLNUMB +1;',
'',
'    :COMPCODE:= :P7_COMPCODE; ',
'    :SERLNUMB:= :P7_SERLNUMB;',
'    :DOCTTYPE:= :P7_DOCTYPE;',
'    :SUBTTYPE:= :P7_SUBTYPE;',
'    :DOCNUMBR:= :P7_VOUCHER_NO;',
'    :DOCTDATE:= :P7_VOUCHER_DATE;',
'    :CURRCODE:= ''BDT'';',
'    :EXCGRATE:= 1;',
'    :JVLCAMNT:= :JVFCAMNT;',
'    :STATCODE:= ''N'';',
'    :OPRSTAMP:= :APP_USER;',
'    :TIMSTAMP:= SYSDATE;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2039955894957434)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5079205022217307)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(156519869016016464)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'DATA_GRID - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2039955894957434)
);
wwv_flow_api.component_end;
end;
/
