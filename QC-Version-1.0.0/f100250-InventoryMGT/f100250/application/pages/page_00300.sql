prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Multiple Requisition Approval Form'
,p_page_mode=>'MODAL'
,p_step_title=>'Multiple Requisition Approval Form'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function zeroPad(num, places) {',
'  var zero = places - num.toString().length + 1;',
'  return Array(+(zero > 0 && zero)).join("0") + num;',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200625211408'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193731979694801769)
,p_plug_name=>'button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>45
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(332081217351289686)
,p_plug_name=>'Multiple Requisition Approval Form'
,p_region_name=>'prod_info'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"RAISEDBY",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMDESC",',
'"ITEMRATE",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PARTYCDE",',
'"SMANCODE",',
'"APPRVDBY",',
'"STATUSCD",',
'"REMARKSS",',
'"HUOMCODE",',
'"CURRCODE",',
'"EXCGRATE",',
'"COSTCODE",',
'"APPRVLEV",',
'"WARECODE" ,',
'CASE',
'         WHEN STATUSCD= ''NEW'' THEN ''unchecked="unchecked"''',
'       END AS ADMIN_USER_CHECKBOX',
'from "#OWNER#"."NMREQAPR"',
'where DOCNUMBR=:P300_DOCNUM',
'and USERCODE=:APP_USER',
'and STATUSCD= ''NEW''',
'',
'--and 1<>1',
'/*where DOCTTYPE=:P300_S_DOCTYP',
'and SUBTTYPE=:P300_S_SUBTYP',
'and DOCNUMBR=:P300_S_DOCNUM',
'and DOCTDATE=:P300_S_REQDTE*/'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P300_ROWID,P300_DOCNUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P300_STATUS'
,p_plug_display_when_cond2=>'Current'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131956473355431283)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131956536585431284)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131956645843431285)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131956770015431286)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131956833887431287)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Document No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(131956960216431288)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(131957037601431289)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131957160587431290)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131957224267431291)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131957353342431292)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(131957422356431293)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(131957573598431294)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(131957681552431295)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Suom.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(131957686675431296)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Original Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(132243238801733747)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Approve Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
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
 p_id=>wwv_flow_api.id(132243294362733748)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243450689733749)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243537442733750)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243654305733751)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243729387733752)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243797985733753)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132243969003733754)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Approve;APR,Non-Approve;NEW'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_default_type=>'STATIC'
,p_default_expression=>'NEW'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244038953733755)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(132244119339733756)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244222927733757)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244288233733758)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244465228733759)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244536338733760)
,p_name=>'APPRVLEV'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVLEV'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244618923733761)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244703299733762)
,p_name=>'ADMIN_USER_CHECKBOX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_USER_CHECKBOX'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244886363733763)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(132244896380733764)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(131956289608431282)
,p_internal_uid=>164302672677832626
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
 p_id=>wwv_flow_api.id(132260460579734280)
,p_interactive_grid_id=>wwv_flow_api.id(131956289608431282)
,p_static_id=>'395743'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(132260546912734282)
,p_report_id=>wwv_flow_api.id(132260460579734280)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132261083422734285)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(131956473355431283)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132261515287734294)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(131956536585431284)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132261989829734297)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(131956645843431285)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132262565244734302)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(131956770015431286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132262987840734304)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(131956833887431287)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132263559437734305)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(131956960216431288)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132264008322734307)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(131957037601431289)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>20
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132264490232734308)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(131957160587431290)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132265004902734310)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(131957224267431291)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132265563868734311)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(131957353342431292)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132265994859734311)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(131957422356431293)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132266538159734313)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(131957573598431294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132267068410734315)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(131957681552431295)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132267530302734316)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(131957686675431296)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132268057236734316)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(132243238801733747)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132268580189734318)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(132243294362733748)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132269038740734319)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(132243450689733749)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132269542042734321)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(132243537442733750)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132270004448734322)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(132243654305733751)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132270526808734322)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(132243729387733752)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132271044086734324)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(132243797985733753)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132271529670734327)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(132243969003733754)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132272060297734329)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(132244038953733755)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132272545466734330)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(132244119339733756)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132273019886734330)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(132244222927733757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132273563122734332)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(132244288233733758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132274067789734333)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(132244465228733759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132274536323734335)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(132244536338733760)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132275015482734335)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(132244618923733761)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132275569729734336)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(132244703299733762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(132277500385734800)
,p_view_id=>wwv_flow_api.id(132260546912734282)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(132244886363733763)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(332086508431289703)
,p_plug_name=>'Approval Report'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"RAISEDBY",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMDESC",',
'"ITEMRATE",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PARTYCDE",',
'"SMANCODE",',
'"APPRVDBY",',
'"STATUSCD",',
'"REMARKSS",',
'"HUOMCODE",',
'"CURRCODE",',
'"EXCGRATE",',
'"COSTCODE",',
'"APPRVLEV",',
'"WARECODE" ',
'from NMREQAPR',
'where DOCNUMBR=:P300_DOCNUM',
'--and DOCTTYPE=:P300_DOCTYPE',
'--and SUBTTYPE=:P300_SUBTYPE',
'and USERCODE=:APP_USER',
'and STATUSCD= ''APR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P300_DOCNUM,P300_DOCTYPE,P300_SUBTYPE,P300_STATUS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P300_STATUS'
,p_plug_display_when_cond2=>'Approved'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(332086708348289703)
,p_name=>'Approval Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>364433091417691047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50020664853104670)
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
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50022248442104670)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Company<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50022642965104671)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doc. Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50023020344104671)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sub. Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50023477300104671)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Doc.<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50023855494104671)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doc.<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YY'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50024305722104671)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SERLNUMB'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50024708773104671)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'RAISEDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50025104606104671)
,p_db_column_name=>'COMMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Commcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50025424899104671)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Item Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50025825066104671)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Item Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50026272450104671)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Item Rate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMRATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50026653674104671)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Lum.Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'LUOMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50027068508104671)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Org. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'ORGNQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50027448715104671)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'App. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50027827660104671)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Trns. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'TRNSQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50028271811104673)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Oprstamp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'OPRSTAMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50028711923104673)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Timstamp'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'TIMSTAMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50029039645104673)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Partycde'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50029504661104673)
,p_db_column_name=>'SMANCODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Smancode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'SMANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50029862709104673)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Apprvoved<br>by'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'APPRVDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50030174412104674)
,p_db_column_name=>'STATUSCD'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'STATUSCD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50030552546104674)
,p_db_column_name=>'REMARKSS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Remarks'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'REMARKSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50030957614104674)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Huomcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'HUOMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50031391458104674)
,p_db_column_name=>'CURRCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CURRCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50031751322104674)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Excgrate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'EXCGRATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50021037159104670)
,p_db_column_name=>'COSTCODE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Cost.<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'COSTCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50021468662104670)
,p_db_column_name=>'APPRVLEV'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Apprvoved<br>level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'APPRVLEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50021844514104670)
,p_db_column_name=>'WARECODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Ware<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(332089693759289711)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'823785'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCNUMBR:DOCTDATE:ITEMCODE:ITEMDESC:ITEMRATE:LUOMCODE:RAISEDBY:ORGNQNTY:APPRQNTY:TRNSQNTY:PARTYCDE:APPRVDBY:STATUSCD:CURRCODE:COSTCODE:WARECODE:APPRVLEV:REMARKSS:'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(332090090155289714)
,p_name=>'Waiting Report'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   p.docnumbr, itemcode,(SELECT DISTINCT ITEMDES1',
'                     FROM nmitemas',
'                    WHERE ITEMCODE = p.ITEMCODE',
'                      AND compcode = p.compcode) Itemname, TO_CHAR (p.doctdate, ''dd/mm/rrrr'') doctdate,',
'         p.docttype, (SELECT DISTINCT  username',
'                     FROM syusrmas',
'                    WHERE usercode = p.usercode',
'                      AND divncode = p.compcode) userName,p.usercode, p.apprvlev,',
'         CASE',
'            WHEN p.statuscd = ''APR''',
'               THEN ''Approved''',
'            WHEN p.apprvlev =',
'                   (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                      FROM nmreqapr a',
'                     WHERE a.apprvlev <= p.apprvlev',
'                       AND a.statuscd = ''APR''',
'                       AND itemcode = p.itemcode',
'                       AND docnumbr = p.docnumbr)',
'               THEN ''Current''',
'            ELSE ''Waiting''',
'         END status,',
'         subttype',
'    FROM nmreqapr p',
'   WHERE compcode = :compcode',
'  --   AND itemcode = NVL (:2, itemcode)',
'     AND p.docnumbr = NVL (:P300_DOCNUM, p.docnumbr)',
'ORDER BY p.docnumbr, p.docttype, subttype, p.apprvlev'))
,p_display_when_condition=>'P300_STATUS'
,p_display_when_cond2=>'Waiting'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P300_DOCNUM'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50033225425104677)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Docnumber'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50033648872104677)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Item Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50034093523104677)
,p_query_column_id=>3
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50034511761104677)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50034888423104677)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Doc.Type'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50035231182104677)
,p_query_column_id=>6
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>8
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50035653486104677)
,p_query_column_id=>7
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>7
,p_column_heading=>'User Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50036111595104679)
,p_query_column_id=>8
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>9
,p_column_heading=>'Approved Level'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50036430130104679)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50036830007104679)
,p_query_column_id=>10
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Sub. Type'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50037929961104679)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(332081217351289686)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(97525185484758302)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(332081217351289686)
,p_button_name=>'Submit_all'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve All'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50016361164104668)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(332081217351289686)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50037251362104679)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(332090090155289714)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:300::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50016728469104668)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(332081217351289686)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50038384944104679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(193731979694801769)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:300::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50032598777104674)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(332086508431289703)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:300::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50041653217104691)
,p_branch_name=>'Go To Page 300'
,p_branch_action=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50017120092104668)
,p_name=>'P300_DOCNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(193731979694801769)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50017589521104668)
,p_name=>'P300_DOCTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(193731979694801769)
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50017997089104668)
,p_name=>'P300_SUBTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(193731979694801769)
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50018383011104670)
,p_name=>'P300_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(193731979694801769)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50018777378104670)
,p_name=>'P300_TEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(332081217351289686)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50019230513104670)
,p_tabular_form_region_id=>wwv_flow_api.id(332081217351289686)
,p_validation_name=>'compare APPRQNTY-ORGNQNTY'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if TO_NUMBER(:APPRQNTY) > TO_NUMBER(:ORGNQNTY) then',
'return :APPRQNTY||'' is more than original Qty.''||:ORGNQNTY;',
'else',
'return null;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50038749056104679)
,p_name=>'check all'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50039284512104687)
,p_event_id=>wwv_flow_api.id(50038749056104679)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' for (i=1;i<=3000;i++)',
'{',
'var b = zeroPad(i, 1);',
'document.getElementById(("f30_").concat(b)).checked=false;',
'};'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50039753772104687)
,p_event_id=>wwv_flow_api.id(50038749056104679)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#tcheckbox'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',false);',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50040161643104687)
,p_name=>'all check with plsql'
,p_event_sequence=>20
,p_triggering_element_type=>'DOM_OBJECT'
,p_triggering_element=>'tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50040619272104688)
,p_event_id=>wwv_flow_api.id(50040161643104687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f18.COUNT',
'    LOOP',
'        APEX_Application.g_f18(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f30(APEX_Application.g_f18(ii)) := ''checked'';',
'    END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50041156169104691)
,p_event_id=>wwv_flow_api.id(50040161643104687)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f18.COUNT',
'    LOOP',
'        APEX_Application.g_f18(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f30(APEX_Application.g_f18(ii)) := ''unchecked'';',
'    END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97525273255758303)
,p_name=>'all apr'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(97525185484758302)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97525375769758304)
,p_event_id=>wwv_flow_api.id(97525273255758303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var model = apex.region("prod_info").call("getViews","grid").model;',
'model.forEach(function(igrow) {',
'   igrow[model.setValue(igrow,"STATUSCD","APR")];',
'});',
'',
'$("#btnPostAll").hide();',
'$("#btnUnpostAll").show();'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50019952012104670)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(332081217351289686)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Multiple Requisition Approval Form - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50019524401104670)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(332081217351289686)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Checkbox flug'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_approval varchar2(10);',
'    v_cunt number;',
'    v_aprlvl number;',
'BEGIN',
'    SELECT max(APPRVLEV) ',
'      into v_aprlvl',
'      FROM nmreqapr a',
'     WHERE a.docnumbr = :DOCNUMBR;',
'',
'    SELECT distinct count(docnumbr) ',
'      into v_cunt',
'      FROM nmreqapr a',
'     WHERE a.AUTHTYPE = ''APR''',
'       AND a.USERCODE = :APP_USER',
'       AND a.docnumbr = :DOCNUMBR;',
'       --AND a.APPRVLEV = v_aprlvl;',
'    ',
'    if v_cunt > 0 and :statuscd = ''APR'' then',
'        update nmstkrec',
'           set STATUSCD = ''APR'',',
'               APPRQNTY = :APPRQNTY',
'         where docnumbr = :DOCNUMBR',
'           and itemcode = :ITEMCODE',
'           and statuscd = ''NEW'';',
'    end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_approval varchar2(10);',
'v_cunt number;',
'BEGIN',
'--FOR i in 1..APEX_APPLICATION.G_F15.count LOOP',
'SELECT distinct count(docnumbr) into v_cunt',
'                                FROM nmreqapr a',
'                                 WHERE a.AUTHTYPE = ''APR''',
'                                 AND a.USERCODE=:APP_USER',
'                                 AND a.docnumbr=:DOCNUMBR;',
'                                 ',
'                                 :P300_TEST:=v_cunt||:DOCNUMBR;',
'/*update nmreqapr',
'set statuscd = ''APR'' ',
'where docnumbr=:DOCNUMBR',
'and USERCODE=:APP_USER; */',
'',
'if v_cunt>0 then',
'update nmstkrec',
'set STATUSCD = ''APR''',
'where docnumbr=:DOCNUMBR',
'and itemcode=:ITEMCODE',
'and statuscd=''NEW'';',
'end if;',
'--END LOOP;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34283078718728536)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(332081217351289686)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE nmreqapr',
'   SET STATUSCD = ''APR''',
' WHERE DOCNUMBR = :DOCNUMBR',
'   AND ITEMCODE = :ITEMCODE',
'   AND STATUSCD = ''NEW'';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.component_end;
end;
/
