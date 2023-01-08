prompt --application/pages/page_00434
begin
--   Manifest
--     PAGE: 00434
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
 p_id=>434
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Information (Batch Method)'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'manual batch page no 418'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201104162210'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107667738851315533)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(20271553871181337)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58877549321677255)
,p_plug_name=>'Doc Info'
,p_parent_plug_id=>wwv_flow_api.id(107667738851315533)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59286946871093084)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(107667738851315533)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59173482262995773)
,p_plug_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(59286946871093084)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id sl,',
'       c001 SERLNUMB,',
'       c002 COMPCODE,',
'       c003 DOCTTYPE,',
'       c004 SUBTTYPE,',
'       c005 DOCNUMBR,',
'       c006 DOCTDATE,',
'       c007 PARTYCDE,',
'       c008 RAISEDBY,',
'       c009 APPRVDBY,',
'       c010 APPRDATE,',
'       c011 REQDDATE,',
'       c012 COMMCODE,',
'       c013 ITEMCODE,',
'       c014 ITEMTYPE,',
'       c015 ITEMDESC,',
'       c016 ITEMLONG,',
'       c017 ITEMRATE,',
'       c018 SCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       c022 SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 APPRQNTY,',
'       c028 TRNSQNTY,',
'       c029 MSFCAMNT,',
'       c030 CURRCODE,',
'       c031 EXCGRATE,',
'       c032 MSLCAMNT,',
'       c033 REFNUMBR,',
'       c034 REFNDATE,',
'       c035 REMARKSS,',
'       c036 COSTCODE,',
'       c037 WARECODE,',
'       c038 POSTFLAG,',
'       c039 PRNTFLAG,',
'       c040 PRICFLAG,',
'       c041 STATUSCD,',
'       c042 BATCHNUM,',
'       c043 COLORCDE,',
'       c044 COSTRATE,',
'       c045 BOM_NO,',
'       c046 SRCWRECD,',
'       c047 ISSQTY,',
'       c048 BATCH_QTY,',
'       nvl(c049,0) STOCK',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51543867115684713)
,p_name=>'STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<font color="red">Stock</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>520
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174374505995782)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'SL'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(59174465234995783)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serlnumb'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174567866995784)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174628532995785)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docttype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174750858995786)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Subttype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174850718995787)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59174965185995788)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doctdate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59175060406995789)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Partycde'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59175141354995790)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raisedby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59282654025093041)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprvdby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59282723746093042)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprdate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59282830656093043)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reqddate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59282970698093044)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Commcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283085410093045)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283135562093046)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemtype'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283265807093047)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283398353093048)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemlong'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283421800093049)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemrate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283519810093050)
,p_name=>'SCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCPCNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Scpcnt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283615577093051)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discamnt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>300
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283757732093052)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldispc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>310
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59283858660093053)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldisnt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284006803093054)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Salerate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284106073093055)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>340
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284181022093056)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Factrval'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>350
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284219426093057)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284342057093058)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Original Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284446432093059)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Approve Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284608482093060)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284677629093061)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Msfcamnt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>360
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284726660093062)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>370
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284810040093063)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Excgrate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>380
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59284934156093064)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mslcamnt'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>390
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285044304093065)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>400
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(59285171067093066)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refndate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>410
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285224000093067)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285349983093068)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285436329093069)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>430
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285606015093070)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Postflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>440
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285631441093071)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prntflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>450
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285746928093072)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pricflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>460
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285866674093073)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statuscd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>470
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59285955706093074)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(59286010575093075)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Colorcde'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>480
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59286171621093076)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costrate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>490
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59286223473093077)
,p_name=>'BOM_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bom No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>500
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59286317167093078)
,p_name=>'SRCWRECD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWRECD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Srcwrecd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>510
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(59286470983093079)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Issue Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_api.id(59286608761093080)
,p_name=>'BATCH_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_QTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(59286684007093081)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(59286733221093082)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(59174298344995781)
,p_internal_uid=>59174298344995781
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {  ',
'  config.initActions = function( actions ) {',
'    actions.remove("single-row-view");',
'  };  ',
'  return config;  ',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(59272182417060341)
,p_interactive_grid_id=>wwv_flow_api.id(59174298344995781)
,p_static_id=>'395968'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(59272230192060341)
,p_report_id=>wwv_flow_api.id(59272182417060341)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52482255905343984)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(51543867115684713)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59272712627060349)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(59174374505995782)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59273270382060354)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(59174465234995783)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59273664231060355)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(59174567866995784)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59274128070060357)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(59174628532995785)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59274699452060357)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(59174750858995786)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59275122011060358)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(59174850718995787)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59275626519060360)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(59174965185995788)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59288694213093125)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(59175060406995789)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59289134438093129)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(59175141354995790)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59289692951093130)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(59282654025093041)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59290169692093132)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(59282723746093042)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59290648341093132)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(59282830656093043)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59291110224093133)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(59282970698093044)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59291643079093135)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(59283085410093045)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59292208059093136)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(59283135562093046)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59292646774093141)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(59283265807093047)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>219
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59293208369093141)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(59283398353093048)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59293678361093143)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(59283421800093049)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59294157644093144)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(59283519810093050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59294665415093144)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(59283615577093051)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59295196532093146)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(59283757732093052)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59295642833093147)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(59283858660093053)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59296162300093149)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(59284006803093054)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59296623935093150)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(59284106073093055)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59297189301093152)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(59284181022093056)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59297668153093154)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(59284219426093057)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59298170113093154)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(59284342057093058)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59298542947093155)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(59284446432093059)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59299065478093157)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(59284608482093060)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59299534458093157)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(59284677629093061)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59300064718093158)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(59284726660093062)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59300511560093160)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(59284810040093063)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59301079175093161)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(59284934156093064)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59301540588093161)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(59285044304093065)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59302022298093163)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(59285171067093066)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59302518772093165)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(59285224000093067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59303095059093166)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(59285349983093068)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59303516495093168)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(59285436329093069)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59304013048093169)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(59285606015093070)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59304514331093169)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(59285631441093071)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59305107075093171)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(59285746928093072)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59305576669093172)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(59285866674093073)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59306012692093172)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(59285955706093074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59306522234093174)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(59286010575093075)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59307087156093175)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(59286171621093076)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59307574428093177)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(59286223473093077)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59308094594093177)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(59286317167093078)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59308574204093179)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(59286470983093079)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>72
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59311435600246757)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(59286608761093080)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(59327666980257954)
,p_view_id=>wwv_flow_api.id(59272230192060341)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(59286684007093081)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35054711107854760)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107667738851315533)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(145329162655245435)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(59286946871093084)
,p_button_name=>'SEND_PURCHASE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Send Purchase Request'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Send Purchase Request?'',''PURCHASE_REQUEST'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35055116245854767)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(107667738851315533)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35055549930854767)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(107667738851315533)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35112322582854885)
,p_branch_name=>'Go To Page 419'
,p_branch_action=>'f?p=&APP_ID.:&P434_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(35055116245854767)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35112793396854887)
,p_branch_name=>'Go To Page 417'
,p_branch_action=>'f?p=&APP_ID.:&P434_PREVPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(35055549930854767)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34283321281728539)
,p_name=>'P434_DSWHSCDE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_prompt=>'Source Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35103482884854873)
,p_name=>'P434_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35103871783854876)
,p_name=>'P434_SRWHSCDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_prompt=>'Destination Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35104234619854876)
,p_name=>'P434_SRWHSNME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35104663863854878)
,p_name=>'P434_DSWHSNME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35105094979854878)
,p_name=>'P434_S_PRDTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35105368763854879)
,p_name=>'P434_S_PRSTYP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35105783849854881)
,p_name=>'P434_PREVPAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35106113002854881)
,p_name=>'P434_NEXTPAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35106543529854881)
,p_name=>'P434_COMPCODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35106942831854881)
,p_name=>'P434_PRVDDT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134138590265153614)
,p_name=>'P434_DOCNUMBR_PR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(134138644042153615)
,p_name=>'P434_STATUSCD_PR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(58877549321677255)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47184665919642220)
,p_tabular_form_region_id=>wwv_flow_api.id(59173482262995773)
,p_validation_name=>'issqty not null'
,p_validation_sequence=>10
,p_validation=>'ISSQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have valid value.'
,p_when_button_pressed=>wwv_flow_api.id(35055116245854767)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51543933155684714)
,p_tabular_form_region_id=>wwv_flow_api.id(59173482262995773)
,p_validation_name=>'Issue Qty less than stock'
,p_validation_sequence=>30
,p_validation=>'to_number(NVL(:STOCK,0)) >=to_number(:ISSQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Issue Qty. must be less than Stock!'
,p_when_button_pressed=>wwv_flow_api.id(35055116245854767)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51543757857684712)
,p_tabular_form_region_id=>wwv_flow_api.id(59173482262995773)
,p_validation_name=>'Issue Qty validation'
,p_validation_sequence=>40
,p_validation=>'to_number(:APPRQNTY)-to_number(nvl(:TRNSQNTY,0)) >= to_number(:ISSQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Issue Qty. must be less than Approve Qty.!'
,p_when_button_pressed=>wwv_flow_api.id(35055116245854767)
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35110843324854885)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32155141285904283)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35111866766854885)
,p_event_id=>wwv_flow_api.id(35110843324854885)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35111366218854885)
,p_event_id=>wwv_flow_api.id(35110843324854885)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(35108934231854882)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(35054711107854760)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35109970961854885)
,p_event_id=>wwv_flow_api.id(35108934231854882)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sute to Cancel!.'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35109440627854885)
,p_event_id=>wwv_flow_api.id(35108934231854882)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;   ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;        ',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(35110465761854885)
,p_event_id=>wwv_flow_api.id(35108934231854882)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35107302890854881)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 DOCNUMBR,',
'   		  c003 PRVDDT,',
'          c006 SRWHSCDE,',
'          c006 ||''-''|| c007 srcwarename, ',
'          c010 DSWHSCDE,',
'          c010 ||''-''|| c011 deswarename,',
'          c016 S_PRDTYP,',
'          c017 S_PRSTYP',
'     INTO :P434_DOCNUMBR, :P434_PRVDDT, :P434_SRWHSCDE, :P434_SRWHSNME, :P434_DSWHSCDE, :P434_DSWHSNME, :P434_S_PRDTYP, :P434_S_PRSTYP',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35077455541854818)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(59173482262995773)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''U'' then',
'    ',
'    begin',
'/*',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 42,',
'            p_attr_value => :BATCHNUM);  ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 48,',
'            p_attr_value => :BATCH_QTY);     ',
'*/',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 47,',
'            p_attr_value => :ISSQTY);             ',
'',
'            commit;',
'    exception ',
'        when others then',
'        raise_application_error(-20001, ''upd collection ''||sqlcode||'' ''||sqlerrm);',
'    end;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'    ',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(35055116245854767)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35108555469854882)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin      ',
'        for i in',
'        (   SELECT seq_id SL,',
'                     c027 APPRQNTY,',
'                     c028 TRNSQNTY,',
'                     --c042 BATCHNUM,',
'                     --c048 BATCH_QTY,     ',
'                     c047 ISSQTY,',
'                     c049 STOCK',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.ISSQTY) is null ',
'               or to_number(i.ISSQTY) = 0',
'               or to_number(i.ISSQTY) > to_number(i.APPRQNTY-nvl(i.TRNSQNTY,0))',
'               or to_number(i.ISSQTY) > to_number(NVL(i.stock,0))',
'               --or i.BATCHNUM is null ',
'               --or i.BATCH_QTY is null ',
'               then',
'                raise_application_error(-20001, ''Issue Qty. must be less than Stock or Approve Qty.!'');',
'            end if;',
'        end loop;',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(35055116245854767)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47185567185642229)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'item selection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number := 0;',
'begin    ',
'    select count(*)',
'    into v_count',
'    from apex_collections',
'    where collection_name = ''ORDER_ITEMS'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20001, ''No Item Selected for &PROGDESC.'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(35055116245854767)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(145328704339242264)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purchase Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_exist number;',
'    docnum varchar2(500);',
'begin',
'    select count(*)',
'      into v_exist',
'      FROM apex_collections',
'     WHERE collection_name = ''ORDER_ITEMS''',
'       AND to_number(c047) > to_number(nvl(c049,0));',
'',
'if v_exist > 0 then',
'     docnumber_generation(:COMPCODE, ''NM'', ''PR'',',
'                         1, sysdate, :P434_DSWHSCDE,',
'                         ''NM'', docnum); ',
'    :P434_DOCNUMBR_PR:= docnum;',
'else',
' raise_application_error(-20001,''Request not done. Stock Available!'');',
'end if;',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'',
'BEGIN',
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               ''PR'',',
'                               1,',
'                               :P434_STATUSCD_PR);',
'END;',
'',
'',
'begin',
'    for i in',
'    (   SELECT seq_id sl,',
'               c001 SERLNUMB,',
'               c002 COMPCODE,',
'               c003 DOCTTYPE,',
'               c004 SUBTTYPE,',
'               c005 DOCNUMBR,',
'               c006 DOCTDATE,',
'               c007 PARTYCDE,',
'               c008 RAISEDBY,',
'               c009 APPRVDBY,',
'               c010 APPRDATE,',
'               c011 REQDDATE,',
'               c012 COMMCODE,',
'               c013 ITEMCODE,',
'               c014 ITEMTYPE,',
'               c015 ITEMDESC,',
'               c016 ITEMLONG,',
'               c017 ITEMRATE,',
'               c018 SCPCNT,',
'               c019 DISCAMNT,',
'               c020 SPLDISPC,',
'               c021 SPLDISNT,',
'               c022 SALERATE,',
'               c023 HUOMCODE,',
'               c024 FACTRVAL,',
'               c025 LUOMCODE,',
'               to_number(c026) ORGNQNTY,',
'               to_number(c027) APPRQNTY,',
'               c028 TRNSQNTY,',
'               c029 MSFCAMNT,',
'               c030 CURRCODE,',
'               c031 EXCGRATE,',
'               c032 MSLCAMNT,',
'               c033 REFNUMBR,',
'               c034 REFNDATE,',
'               c035 REMARKSS,',
'               c036 COSTCODE,',
'               c037 WARECODE,',
'               c038 POSTFLAG,',
'               c039 PRNTFLAG,',
'               c040 PRICFLAG,',
'               c041 STATUSCD,',
'               c042 BATCHNUM,',
'               c043 COLORCDE,',
'               c044 COSTRATE,',
'               c045 BOM_NO,',
'               c046 SRCWRECD,',
'               to_number(c047) ISSQTY,',
'               to_number(c048) BATCH_QTY,',
'               nvl(c049,0) STOCK     ',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'           AND to_number(c047) > to_number(nvl(c049,0))',
'         order by sl)',
'loop',
'',
'     dpr_insert_nmprocur ( p_compcode   => :COMPCODE,',
'                           p_docttype   => ''PR'',',
'                           p_subttype   => 1,',
'                           p_docnumbr   => :P434_DOCNUMBR_PR,',
'                           p_doctdate   => sysdate,',
'                           p_serlnumb   => i.sl,',
'                           p_partycde   => null,',
'                           p_smancode   => NULL,',
'                           p_raisedby   => :app_user,',
'                           p_apprvdby   => NULL,',
'                           p_apprdate   => NULL,',
'                           p_reqddate   => NULL,',
'                           p_commcode   => i.COMMCODE,',
'                           p_itemcode   => i.ITEMCODE,',
'                           p_itemtype   => i.ITEMTYPE,',
'                           p_itemdesc   => i.ITEMDESC,',
'                           p_itemlong   => i.ITEMDESC,',
'                           p_itemrate   => i.ITEMRATE,',
'                           p_markpcnt   => NULL,',
'                           p_discpcnt   => NULL,',
'                           p_discamnt   => NULL,',
'                           p_spldispc   => NULL,',
'                           p_spldisnt   => NULL,',
'                           p_salerate   => NULL,',
'                           p_huomcode   => i.HUOMCODE,',
'                           p_factrval   => NULL,',
'                           p_luomcode   => i.LUOMCODE,',
'                           p_orgnqnty   => i.ISSQTY - i.STOCK,',
'                           p_apprqnty   => i.ISSQTY - i.STOCK,',
'                           p_trnsqnty   => NULL,',
'                           p_msfcamnt   => (i.ISSQTY - i.STOCK) * i.ITEMRATE * NVL(i.EXCGRATE,1),',
'                           p_currcode   => i.currcode,',
'                           p_excgrate   => i.EXCGRATE,',
'                           p_mslcamnt   => (i.ISSQTY - i.STOCK) * i.ITEMRATE,',
'                           p_refnumbr   => :P434_DOCNUMBR,',
'                           p_refndate   => :P434_PRVDDT,',
'                           p_updoctyp   => NULL,',
'                           p_upsubtyp   => NULL,',
'                           p_updocnum   => NULL,',
'                           p_updocdte   => NULL,',
'                           p_updocsrl   => NULL,',
'                           p_dwdoctyp   => NULL,',
'                           p_dwsubtyp   => NULL,',
'                           p_dwdocnum   => NULL,',
'                           p_dwdocdte   => NULL,',
'                           p_dwdocsrl   => NULL,',
'                           p_acdoctyp   => NULL,',
'                           p_acsubtyp   => NULL,',
'                           p_acdocnum   => NULL,',
'                           p_acdocdte   => NULL,',
'                           p_acdocsrl   => NULL,',
'                           p_remarkss   => NULL,',
'                           p_costcode   => i.COSTCODE,',
'                           p_warecode   => :P434_DSWHSCDE,',
'                           p_postflag   => ''Y'',',
'                           p_prntflag   => ''N'',',
'                           p_pricflag   => NULL,',
'                           p_statuscd   => :P434_STATUSCD_PR,',
'                           p_oprstamp   => :APP_USER,',
'                           p_itpicdir   => NULL,',
'                           p_itfildir   => NULL,',
'                           p_clsgdate   => NULL,',
'                           p_acctcode   => NULL,',
'                           p_acctcate   => NULL,',
'                           p_budgcode   => NULL,',
'                           p_delydate   => NULL,',
'                           p_ballpqty   => NULL,',
'                           p_payamtfc   => NULL,',
'                           p_payamtlc   => NULL,',
'                           p_luomdesc   => i.LUOMCODE,',
'                           p_itemratp   => NULL,',
'                           p_itrfdate   => NULL,',
'                           p_saleratp   => NULL,',
'                           p_intreqno   => NULL,',
'                           p_costrate   => i.ITEMRATE,',
'                           p_designcd   => NULL,',
'                           p_brand_code => i.COMMCODE',
'                         );',
'',
' end loop;   ',
'',
'       dpr_insert_approval (:COMPCODE,',
'                            :P434_DOCNUMBR_PR,',
'                            ''PR'',',
'                            1);                  ',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PURCHASE_REQUEST'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Purchase Request Successful..... &P434_DOCNUMBR_PR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35107743173854881)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ORDER_ITEMS collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'',
'    declare',
'        --e_20104 exception;',
'        --pragma exception_init(e_20104, -20104);',
'    Begin',
'',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'            p_collection_name =>''ORDER_ITEMS'' , ',
'            p_query => ''select  SERLNUMB,',
'                                COMPCODE,',
'                                DOCTTYPE,',
'                                SUBTTYPE,',
'                                DOCNUMBR,',
'                                DOCTDATE,',
'                                PARTYCDE,',
'                                RAISEDBY,',
'                                APPRVDBY,',
'                                APPRDATE,',
'                                REQDDATE,',
'                                COMMCODE,',
'                                ITEMCODE,',
'                                ITEMTYPE,',
'                                ITEMDESC,',
'                                ITEMLONG,',
'                                ITEMRATE,',
'                                DISCPCNT,',
'                                DISCAMNT,',
'                                SPLDISPC,',
'                                SPLDISNT,',
'                                SALERATE,',
'                                HUOMCODE,',
'                                FACTRVAL,',
'                                LUOMCODE,',
'                                ORGNQNTY,',
'                                APPRQNTY,',
'                                TRNSQNTY,',
'                                MSFCAMNT,',
'                                CURRCODE,',
'                                EXCGRATE,',
'                                MSLCAMNT,',
'                                REFNUMBR,',
'                                REFNDATE,',
'                                REMARKSS,',
'                                COSTCODE,',
'                                WARECODE,',
'                                POSTFLAG,',
'                                PRNTFLAG,',
'                                PRICFLAG,',
'                                STATUSCD,',
'                                BATCHNUM,',
'                                COLORCDE,',
'                                COSTRATE,',
'                                BOM_NO,',
'                                SRCWRECD,',
'                                APPRQNTY- nvl(TRNSQNTY,0) ISSQTY,',
'                                0 BATCH_QTY,',
'                                (SELECT SUM (CLBALQTY) CLBALQTY',
'                                   FROM NMWHIMAS B',
'                                  WHERE COMPCODE = ''''''||:COMPCODE||''''''',
'                                    AND WARECODE = ''''''||:P434_DSWHSCDE||''''''	',
'                                    AND B.ITEMCODE = A.ITEMCODE) STOCK',
'                                from NMSTKREC A',
'                                where compcode = ''''''||:COMPCODE||''''''',
'                                and DOCNUMBR= ''''''||:P434_DOCNUMBR||''''''	',
'								and TRUNC(doctdate)=''''''||:P434_PRVDDT||''''''',
'			                    and docttype = ''''''||:P434_S_PRDTYP||''''''',
'                                and subttype IN (1,2)',
'                                and STATUSCD = ''''APR''''',
'                                and APPRQNTY - nvl(TRNSQNTY,0) > 0''); ',
'								',
'    --exception = ''''''||:P434_S_PRSTYP||''''''',
'       -- when e_20104 then null;',
'    end;       ',
'end if;   ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35108107039854882)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2, WIZ_P4',
'  INTO :P434_PREVPAGE, :P434_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
