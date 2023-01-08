prompt --application/pages/page_10025_014
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500418
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Information'
,p_alias=>'PRODUCT-INFORMATION1'
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IG-controlsContainer {',
'    display:none;',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>'auto batch method page no 434'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230105151346'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(281853219247314609)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(35300461927441613)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233063029717676331)
,p_plug_name=>'Doc Info'
,p_parent_plug_id=>wwv_flow_api.id(281853219247314609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233472427267092160)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(281853219247314609)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(233358962658994849)
,p_plug_name=>'Product Info'
,p_parent_plug_id=>wwv_flow_api.id(233472427267092160)
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
'       to_number(c027) APPRQNTY,',
'       to_number(c028) TRNSQNTY,',
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
'       c040 REMAINING_QTY, --PRICFLAG,',
'       c041 STATUSCD,',
'       c042 BATCHNUM,',
'       c043 COLORCDE,',
'       c044 COSTRATE,',
'       c045 BOM_NO,',
'       c046 SRCWRECD,',
'       to_number(c047) ISSQTY,',
'       to_number(c048) BATCH_QTY,',
'       c049 SALEPERC,',
'       c050 MINSRATE,',
'       '''' MULTIBATCH',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38951104675184019)
,p_name=>'REMAINING_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_QTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Remaining Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>550
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(233359854901994858)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(233359945630994859)
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
 p_id=>wwv_flow_api.id(233360048262994860)
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
 p_id=>wwv_flow_api.id(233360108928994861)
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
 p_id=>wwv_flow_api.id(233360231254994862)
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
 p_id=>wwv_flow_api.id(233360331114994863)
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
 p_id=>wwv_flow_api.id(233360445581994864)
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
 p_id=>wwv_flow_api.id(233360540802994865)
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
 p_id=>wwv_flow_api.id(233360621750994866)
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
 p_id=>wwv_flow_api.id(233468134421092117)
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
 p_id=>wwv_flow_api.id(233468204142092118)
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
 p_id=>wwv_flow_api.id(233468311052092119)
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
 p_id=>wwv_flow_api.id(233468451094092120)
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
 p_id=>wwv_flow_api.id(233468565806092121)
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
 p_id=>wwv_flow_api.id(233468615958092122)
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
 p_id=>wwv_flow_api.id(233468746203092123)
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
 p_id=>wwv_flow_api.id(233468878749092124)
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
 p_id=>wwv_flow_api.id(233468902196092125)
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
 p_id=>wwv_flow_api.id(233469000206092126)
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
 p_id=>wwv_flow_api.id(233469095973092127)
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
 p_id=>wwv_flow_api.id(233469238128092128)
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
 p_id=>wwv_flow_api.id(233469339056092129)
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
 p_id=>wwv_flow_api.id(233469487199092130)
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
 p_id=>wwv_flow_api.id(233469586469092131)
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
 p_id=>wwv_flow_api.id(233469661418092132)
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
 p_id=>wwv_flow_api.id(233469699822092133)
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
 p_id=>wwv_flow_api.id(233469822453092134)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Request Qty.'
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
 p_id=>wwv_flow_api.id(233469926828092135)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
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
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(233470088878092136)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Issued Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_api.id(233470158025092137)
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
 p_id=>wwv_flow_api.id(233470207056092138)
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
 p_id=>wwv_flow_api.id(233470290436092139)
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
 p_id=>wwv_flow_api.id(233470414552092140)
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
 p_id=>wwv_flow_api.id(233470524700092141)
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
 p_id=>wwv_flow_api.id(233470651463092142)
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
 p_id=>wwv_flow_api.id(233470704396092143)
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
 p_id=>wwv_flow_api.id(233470830379092144)
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
 p_id=>wwv_flow_api.id(233470916725092145)
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
 p_id=>wwv_flow_api.id(233471086411092146)
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
 p_id=>wwv_flow_api.id(233471111837092147)
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
 p_id=>wwv_flow_api.id(233471347070092149)
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
 p_id=>wwv_flow_api.id(233471436102092150)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.batchnum||'' - ''||a.clbalqty d, a.batchnum r ',
'from nmwhimas a',
'where a.compcode = :P1002500418_COMPCODE ',
'and a.warecode= :P1002500418_SRCWRECD',
'and a.itemcode= :itemcode',
'and a.clbalqty > 0'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'P418_SRCWRECD'
,p_ajax_items_to_submit=>'ITEMCODE,P1002500418_COMPCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.batchnum||'' - ''||a.clbalqty d, a.batchnum r ',
'from nmwhimas a, nmbtrate b',
'where a.compcode = :P418_COMPCODE ',
'and a.itemcode=b.itemcode',
'and a.batchnum=b.batchnum',
'and a.compcode=b.compcode',
'and a.warecode=b.warecode',
'--and a.warecode= :P418_SRWHSCDE',
'and a.warecode= :P418_DSWHSCDE',
'and a.itemcode= :itemcode',
'and a.clbalqty>0'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(233471490971092151)
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
 p_id=>wwv_flow_api.id(233471652017092152)
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
 p_id=>wwv_flow_api.id(233471703869092153)
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
 p_id=>wwv_flow_api.id(233471797563092154)
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
 p_id=>wwv_flow_api.id(233471951379092155)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issue Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(233472089157092156)
,p_name=>'BATCH_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Stock Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CLBALQTY d,  CLBALQTY r',
'           FROM (SELECT   b.batchnum,sum(w.CLBALQTY) CLBALQTY',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :P418_COMPCODE --:COMPCODE',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P418_DSWHSCDE',
'                      AND b.itemcode = :ITEMCODE',
'                      and w.batchnum = :BATCHNUM',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(233472164403092157)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(233472213617092158)
,p_name=>'APEX$ROW_SELECTOR'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(243828572060778940)
,p_name=>'SALEPERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALEPERC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Saleperc'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>520
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
 p_id=>wwv_flow_api.id(243828652219778941)
,p_name=>'MINSRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MINSRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Minsrate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>530
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
 p_id=>wwv_flow_api.id(346373984891731063)
,p_name=>'MULTIBATCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MULTIBATCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>540
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:openModal(''multibatch_modal'');$s(''P1002500418_ITEMCODE'',''&ITEMCODE.'');$s(''P1002500418_ITEM_SL'',''&SL.'');$(''#ui-id-1'').html(''&ITEMCODE.'');'
,p_link_text=>'<i class="fa fa-copy" </i>'
,p_link_attributes=>'title="Batch Distribution" class="t-Button t-Button--noLabel t-Button--icon t-Button--small t-Button--success t-Button--simple u-bold"'
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
,p_escape_on_http_output=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'title="Batch Distribution" class="t-Button t-Button--noLabel t-Button--icon t-Button--small t-Button--success t-Button--simple u-bold"',
'',
'title="Batch Distribution" class="a-Button a-Button--noLabel a-Button-success a-Button--iconTextButton"'))
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(233359778740994857)
,p_internal_uid=>233359778740994857
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
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
 p_id=>wwv_flow_api.id(233457662813059417)
,p_interactive_grid_id=>wwv_flow_api.id(233359778740994857)
,p_static_id=>'395945'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(233457710588059417)
,p_report_id=>wwv_flow_api.id(233457662813059417)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40935378648236822)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(38951104675184019)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209248878110967967)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(346373984891731063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233458193023059425)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(233359854901994858)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>47
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233458750778059430)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(233359945630994859)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233459144627059431)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(233360048262994860)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233459608466059433)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(233360108928994861)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233460179848059433)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(233360231254994862)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233460602407059434)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(233360331114994863)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233461106915059436)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(233360445581994864)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233474174609092201)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(233360540802994865)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233474614834092205)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(233360621750994866)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233475173347092206)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(233468134421092117)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233475650088092208)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(233468204142092118)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233476128737092208)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(233468311052092119)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233476590620092209)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(233468451094092120)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233477123475092211)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(233468565806092121)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233477688455092212)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(233468615958092122)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233478127170092217)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(233468746203092123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>183
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233478688765092217)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(233468878749092124)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233479158757092219)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(233468902196092125)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233479638040092220)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(233469000206092126)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233480145811092220)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(233469095973092127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233480676928092222)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(233469238128092128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233481123229092223)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(233469339056092129)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233481642696092225)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(233469487199092130)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233482104331092226)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(233469586469092131)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233482669697092228)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(233469661418092132)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233483148549092230)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(233469699822092133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233483650509092230)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(233469822453092134)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233484023343092231)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(233469926828092135)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233484545874092233)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(233470088878092136)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233485014854092233)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(233470158025092137)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233485545114092234)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(233470207056092138)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233485991956092236)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(233470290436092139)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233486559571092237)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(233470414552092140)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233487020984092237)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(233470524700092141)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233487502694092239)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(233470651463092142)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233487999168092241)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(233470704396092143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233488575455092242)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(233470830379092144)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233488996891092244)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(233470916725092145)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233489493444092245)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(233471086411092146)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233489994727092245)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(233471111837092147)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233491057065092248)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(233471347070092149)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233491493088092248)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(233471436102092150)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233492002630092250)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(233471490971092151)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233492567552092251)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(233471652017092152)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233493054824092253)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(233471703869092153)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233493574990092253)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(233471797563092154)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233494054600092255)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(233471951379092155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233496915996245833)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(233472089157092156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(233513147376257030)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(233472164403092157)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(247134463075088684)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(243828572060778940)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(247134836431088692)
,p_view_id=>wwv_flow_api.id(233457710588059417)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(243828652219778941)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(346374056228731064)
,p_plug_name=>'Batch Info'
,p_region_name=>'multibatch_modal'
,p_region_css_classes=>'js-dialog-size720*650'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>10
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(348826099063663027)
,p_plug_name=>'Present Stock'
,p_parent_plug_id=>wwv_flow_api.id(346374056228731064)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       WARECODE,',
'       ITEMCODE,',
'       OPBALDTE,',
'       OPBALQTY,',
'       OPBALRTE,',
'       OPBALVAL,',
'       TOTALRCP,',
'       TOTALISS,',
'       CLBALDTE,',
'       CLBALQTY,',
'       CLBALRTE,',
'       CLBALVAL,',
'       BINLOCTN,',
'       LASISSDT,',
'       LASRCPDT,',
'       BCARDQTY,',
'       PHYSCQTY,',
'       VERFRATE,',
'       COSTRATE,',
'       BATCHNUM,',
'       DEFECTQT,',
'       nvl((SELECT SUM(c006) ISSQTY FROM apex_collections WHERE collection_name = ''BATCH_DISTRIBUTION''',
'            AND c002 = :P1002500418_ITEMCODE',
'            AND c004 = BATCHNUM ),0) ISSUEDQTY,',
'       to_number('''') ISSQTY',
'      ',
'  from NMWHIMAS',
' where COMPCODE = :P1002500418_COMPCODE',
' and warecode = nvl(:P1002500418_SRCWRECD,warecode)',
' and ITEMCODE = :P1002500418_ITEMCODE',
' and clbalqty > 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1002500418_ITEMCODE,P1002500418_COMPCODE,P1002500418_SRCWRECD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Present Stock'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
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
 p_id=>wwv_flow_api.id(38949819289184006)
,p_name=>'ISSUEDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUEDQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issued Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826289569663029)
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
,p_is_required=>true
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826481466663030)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>6
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(12737846874143744)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826576692663031)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826649692663032)
,p_name=>'OPBALDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Opbaldte'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826701523663033)
,p_name=>'OPBALQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opbalqty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826813772663034)
,p_name=>'OPBALRTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALRTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opbalrte'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348826902543663035)
,p_name=>'OPBALVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALVAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Opbalval'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827082076663036)
,p_name=>'TOTALRCP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALRCP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Totalrcp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827131336663037)
,p_name=>'TOTALISS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALISS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Totaliss'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827236101663038)
,p_name=>'CLBALDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Rcv. Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827295374663039)
,p_name=>'CLBALQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827414214663040)
,p_name=>'CLBALRTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALRTE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Clbalrte'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827509685663041)
,p_name=>'CLBALVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALVAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Clbalval'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827622671663042)
,p_name=>'BINLOCTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINLOCTN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Binloctn'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827751064663043)
,p_name=>'LASISSDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LASISSDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Lasissdt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827820538663044)
,p_name=>'LASRCPDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LASRCPDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Lasrcpdt'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348827948446663045)
,p_name=>'BCARDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BCARDQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Bcardqty'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348828065504663046)
,p_name=>'PHYSCQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSCQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Physcqty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348828182768663047)
,p_name=>'VERFRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERFRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Verfrate'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348828402992663050)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Costrate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348828490032663051)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Batch No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348828617102663052)
,p_name=>'DEFECTQT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEFECTQT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Defectqt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348829424540663060)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348829711988663063)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issue Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>270
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_item_css_classes=>'allow-integer'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'    options.defaultGridColumnOptions = {',
'        aggregates: ["SUM"]',
'    };',
'    return options;',
'}'))
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348829796712663064)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(348829915502663065)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(348826189711663028)
,p_internal_uid=>348826189711663028
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'Stock not Available!'
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>280
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(348954844916590607)
,p_interactive_grid_id=>wwv_flow_api.id(348826189711663028)
,p_static_id=>'1397153'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(348955002976590607)
,p_report_id=>wwv_flow_api.id(348954844916590607)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10825205000010)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(348829915502663065)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40121492213095654)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(38949819289184006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348955511114590609)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(348826289569663029)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348956441231590613)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(348826481466663030)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>193
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348957364791590615)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(348826576692663031)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348958264297590617)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(348826649692663032)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348959142416590620)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(348826701523663033)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348960040181590622)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(348826813772663034)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348960893921590624)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(348826902543663035)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348961799706590627)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(348827082076663036)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348962711073590629)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(348827131336663037)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348963589375590631)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(348827236101663038)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>127
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348964495911590634)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(348827295374663039)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348965393422590638)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(348827414214663040)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348966306387590642)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(348827509685663041)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348967226552590647)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(348827622671663042)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348968156606590650)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(348827751064663043)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348968991490590653)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(348827820538663044)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348969971867590656)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(348827948446663045)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348970835132590659)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(348828065504663046)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348971769329590661)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(348828182768663047)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348974333018590672)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(348828402992663050)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348975245589590674)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(348828490032663051)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348976169325590676)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(348828617102663052)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(348985078118603396)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(348829424540663060)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(349024964032719665)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(348829711988663063)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(349047639397726837)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(348829796712663064)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>43
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(312456000002)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(38949819289184006)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(385182000001)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(348827295374663039)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(4355201021850)
,p_view_id=>wwv_flow_api.id(348955002976590607)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(348829711988663063)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(349058455791741121)
,p_plug_name=>'Batch Distribution'
,p_parent_plug_id=>wwv_flow_api.id(346374056228731064)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id sl,',
'       c001 ITEM_SL,',
'       c002 ITEMCODE,',
'       c003 WARECODE,',
'       c004 BATCHNUM,',
'       c005 STOCK,',
'       to_number(c006) ISSQTY',
'  FROM apex_collections',
' WHERE collection_name = ''BATCH_DISTRIBUTION''',
'   AND c002 = :P1002500418_ITEMCODE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1002500418_ITEMCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Batch Distribution'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROW_NUMBER() OVER (PARTITION BY ITEMCODE ORDER BY BATCHNUM) SRL,',
'       WARECODE,',
'       ITEMCODE,',
'       BATCHNUM,',
'       sum(ISSQTY) ISSQTY',
'FROM (',
'SELECT seq_id sl,',
'       c001 WARECODE,',
'       c002 ITEMCODE,',
'       c003 BATCHNUM,',
'       c004 ISSQTY',
'  FROM apex_collections',
' WHERE collection_name = ''BATCH_DISTRIBUTION''',
')',
'GROUP BY WARECODE, ITEMCODE, BATCHNUM'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(210007284135881130)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(210007403202881131)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(210007678519881134)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(210007886904881136)
,p_name=>'ITEM_SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_SL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Sl'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(210007978052881137)
,p_name=>'STOCK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STOCK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
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
 p_id=>wwv_flow_api.id(349061727952741154)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(349061880887741155)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(349061984070741156)
,p_name=>'ISSQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issue Qty.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(349062213979741159)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(12737846874143744)
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(349058532488741122)
,p_internal_uid=>349058532488741122
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>290
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(349138687910106544)
,p_interactive_grid_id=>wwv_flow_api.id(349058532488741122)
,p_static_id=>'1398991'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(349138830837106544)
,p_report_id=>wwv_flow_api.id(349138687910106544)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(3960643000004)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(210007403202881131)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(209241970396876009)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(349062213979741159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(211340856337641639)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(210007284135881130)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>65
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(211401585975704239)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(210007678519881134)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>44
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(211434427575914813)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(210007886904881136)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(211435318380914816)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(210007978052881137)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(349143293736106565)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(349061727952741154)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>104
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(349144262839106567)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(349061880887741155)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(349145018565106570)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(349061984070741156)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(68602898936531116)
,p_view_id=>wwv_flow_api.id(349138830837106544)
,p_tooltip=>'Total'
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(349061984070741156)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34675757286955185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(281853219247314609)
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
 p_id=>wwv_flow_api.id(34707692526955216)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(346374056228731064)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''multibatch_modal'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34708000002955216)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(346374056228731064)
,p_button_name=>'BTN_APPLY'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'APPLY'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34682736453955189)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(233472427267092160)
,p_button_name=>'SEND_PURCHASE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Indent Raise'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Send Purchase Request?'',''PURCHASE_REQUEST'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM nmprocur',
' WHERE compcode = :compcode',
'   AND docttype = ''ND''',
'   AND subttype = 1',
'   AND refnumbr = :P1002500418_DOCNUMBR'))
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34676158730955185)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(281853219247314609)
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
 p_id=>wwv_flow_api.id(34676537367955185)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(281853219247314609)
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
 p_id=>wwv_flow_api.id(34734491148955239)
,p_branch_name=>'Go To Page 419'
,p_branch_action=>'f?p=&APP_ID.:&P1002500418_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34676158730955185)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34734824766955239)
,p_branch_name=>'Go To Page 417'
,p_branch_action=>'f?p=&APP_ID.:&P1002500418_PREVPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34676537367955185)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34677291371955186)
,p_name=>'P1002500418_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34677606835955186)
,p_name=>'P1002500418_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_prompt=>'Request From'
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
 p_id=>wwv_flow_api.id(34678096362955187)
,p_name=>'P1002500418_SRCWRECD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_prompt=>'Req. To'
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
 p_id=>wwv_flow_api.id(34678404218955187)
,p_name=>'P1002500418_COMPCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34678844481955187)
,p_name=>'P1002500418_PRVDDT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34679250855955187)
,p_name=>'P1002500418_SRWHSNME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34679617005955187)
,p_name=>'P1002500418_DSWHSNME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34680091530955188)
,p_name=>'P1002500418_S_PRDTYP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
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
 p_id=>wwv_flow_api.id(34680440113955188)
,p_name=>'P1002500418_S_PRSTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
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
 p_id=>wwv_flow_api.id(34680842750955188)
,p_name=>'P1002500418_PREVPAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34681292943955188)
,p_name=>'P1002500418_NEXTPAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34681615142955188)
,p_name=>'P1002500418_DOCNUMBR_PR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34682066228955189)
,p_name=>'P1002500418_STATUSCD_PR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34708499673955216)
,p_name=>'P1002500418_ITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(346374056228731064)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34708894110955217)
,p_name=>'P1002500418_ITEM_SL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(346374056228731064)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38949943140184007)
,p_name=>'P1002500418_REQUEST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(233063029717676331)
,p_item_default=>'NVL(:REQUEST,''X'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(34720742332955226)
,p_tabular_form_region_id=>wwv_flow_api.id(348826099063663027)
,p_validation_name=>'less then stock'
,p_validation_sequence=>50
,p_validation=>'to_number(:CLBALQTY) >= to_number(:ISSQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Issue Qty. must be less than Stock Qty.!'
,p_always_execute=>'Y'
,p_associated_column=>'ISSQTY'
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34729274383955236)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34675757286955185)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34729790567955236)
,p_event_id=>wwv_flow_api.id(34729274383955236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34730251899955237)
,p_event_id=>wwv_flow_api.id(34729274383955236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'if apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   apex_collection.delete_collection(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS_DTL'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS_DTL'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34730753423955237)
,p_event_id=>wwv_flow_api.id(34729274383955236)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34731104417955237)
,p_name=>'set costrate'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(233358962658994849)
,p_triggering_element=>'BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34731692275955237)
,p_event_id=>wwv_flow_api.id(34731104417955237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT salerate, saleperc, minsrate, costrate',
'     INTO :SALERATE, :SALEPERC, :MINSRATE, :COSTRATE',
'     FROM ( SELECT salerate, saleperc, minsrate, costrate',
'             FROM nmbtrate',
'            WHERE compcode = :P1002500418_COMPCODE',
'              AND warecode = :P1002500418_SRCWRECD',
'              AND itemcode = :itemcode',
'              AND batchnum = :batchnum',
'         order by BATCHDTE desc)',
'   WHERE ROWNUM = 1;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN NULL;',
'END;',
'',
'begin',
'  select a.clbalqty',
'    INTO :BATCH_QTY',
'    from nmwhimas a',
'   where a.compcode = :P1002500418_COMPCODE ',
'    and a.warecode = :P1002500418_SRCWRECD',
'    and a.itemcode = :itemcode',
'    and a.batchnum = :BATCHNUM',
'    and a.clbalqty > 0;',
'exception',
'    when others then null;',
'end;    '))
,p_attribute_02=>'P1002500418_COMPCODE,P1002500418_SRCWRECD'
,p_attribute_03=>'SALERATE,SALEPERC,MINSRATE,COSTRATE,BATCH_QTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34732045318955237)
,p_name=>'refresh batch distribution region'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500418_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34732599913955238)
,p_event_id=>wwv_flow_api.id(34732045318955237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(348826099063663027)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34733069127955239)
,p_event_id=>wwv_flow_api.id(34732045318955237)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(349058455791741121)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38954122688184049)
,p_name=>'refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34676158730955185)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38954203021184050)
,p_event_id=>wwv_flow_api.id(38954122688184049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(233358962658994849)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34726422618955232)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 DOCNUMBR,',
'   		  c003 PRVDDT,',
'          --c006 WARECODE, --SRWHSCDE,',
'          c006 ||''-''|| c007 srcwarename, ',
'          --c010 SRWHSCDE, --DSWHSCDE,',
'          c010 ||''-''|| c011 deswarename,',
'          c016 S_PRDTYP,',
'          c017 S_PRSTYP',
'     INTO :P1002500418_DOCNUMBR, :P1002500418_PRVDDT, :P1002500418_SRWHSNME, :P1002500418_DSWHSNME, :P1002500418_S_PRDTYP, :P1002500418_S_PRSTYP',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;',
'',
':P1002500418_WARECODE := :P417_WARECODE;',
':P1002500418_SRCWRECD := :P417_SRCWRECD;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34721072389955226)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(348826099063663027)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Present Stock - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'declare',
'    v_exists number;',
'begin',
'',
'SELECT count(*)',
'  INTO v_exists',
'  FROM apex_collections',
' WHERE collection_name = ''BATCH_DISTRIBUTION''',
'   AND c002 = :P1002500418_ITEMCODE',
'   AND c004 = :BATCHNUM;',
'',
'IF v_exists = 0 AND NVL(to_number(:ISSQTY),0) > 0 AND NVL(to_number(:CLBALQTY),0) >= NVL(to_number(:ISSQTY),0) THEN',
'--AND NVL(:ISSUEDQTY,0) = 0 ',
'    apex_collection.add_member (',
'        p_collection_name => ''BATCH_DISTRIBUTION'',',
'        p_c001            => :P1002500418_ITEM_SL,',
'        p_c002            => :P1002500418_ITEMCODE,',
'        p_c003            => :P1002500418_SRCWRECD,',
'        p_c004            => :BATCHNUM,',
'        p_c005            => :CLBALQTY,',
'        P_c006            => :ISSQTY',
'    );',
'--raise_application_error(-20200,:APEX$ROW_STATUS||NVL(:ISSUEDQTY,0)|| NVL(:ISSQTY,0) || NVL(:CLBALQTY,0)) ;',
'',
'ELSIF v_exists > 0 AND NVL(to_number(:CLBALQTY),0) >= NVL(to_number(:ISSQTY),0) THEN',
'    for i in (',
'    SELECT seq_id sl,',
'            --c001 ITEM_SL,',
'            c002 ITEMCODE,',
'            --c003 WARECODE,',
'            c004 BATCHNUM',
'            --c005 STOCK,',
'            --sum(c006) ISSQTY',
'     FROM apex_collections',
'    WHERE collection_name = ''BATCH_DISTRIBUTION''',
'      AND c002 = :P1002500418_ITEMCODE',
'      AND c004 = :BATCHNUM',
'',
'    ) loop',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''BATCH_DISTRIBUTION'',',
'        p_seq => i.sl,',
'        p_attr_number => 6,',
'        p_attr_value => :ISSQTY);',
'    end loop;',
'--raise_application_error(-20300,:APEX$ROW_STATUS||NVL(:ISSUEDQTY,0)|| NVL(:ISSQTY,0)) ; ',
'END IF;',
'commit;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34708000002955216)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   APEX_COLLECTION.CREATE_COLLECTION(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'IF NVL(:ISSUEDQTY,0) = 0 AND NVL(to_number(:ISSQTY),0) > 0 AND NVL(:CLBALQTY,0) >= NVL(to_number(:ISSQTY),0) THEN',
'    apex_collection.add_member (',
'        p_collection_name => ''BATCH_DISTRIBUTION'',',
'        p_c001            => :P1002500418_ITEM_SL,',
'        p_c002            => :P1002500418_ITEMCODE,',
'        p_c003            => :P1002500418_SRCWRECD,',
'        p_c004            => :BATCHNUM,',
'        p_c005            => :CLBALQTY,',
'        P_c006            => :ISSQTY',
'    );',
'--raise_application_error(-20200,:APEX$ROW_STATUS||NVL(:ISSUEDQTY,0)|| NVL(:ISSQTY,0) || NVL(:CLBALQTY,0)) ;',
'ELSIF NVL(:ISSUEDQTY,0) > 0 AND NVL(to_number(:ISSQTY),0) > 0 THEN',
'    for i in (',
'    SELECT seq_id sl,',
'            --c001 ITEM_SL,',
'            c002 ITEMCODE,',
'            --c003 WARECODE,',
'            c004 BATCHNUM',
'            --c005 STOCK,',
'            --sum(c006) ISSQTY',
'     FROM apex_collections',
'    WHERE collection_name = ''BATCH_DISTRIBUTION''',
'      AND c004 = :BATCHNUM',
'    --GROUP BY c001, c002',
'    ) loop',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''BATCH_DISTRIBUTION'',',
'        p_seq => i.sl,',
'        p_attr_number => 6,',
'        p_attr_value => :ISSQTY);',
'    end loop;',
'--raise_application_error(-20300,:APEX$ROW_STATUS||NVL(:ISSUEDQTY,0)|| NVL(:ISSQTY,0)) ;    ',
'END IF;',
'commit;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34726098447955231)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(349058455791741121)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Batch Distribution - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' case :APEX$ROW_STATUS',
'    when ''C'' then',
'        NULL;',
'    when ''U'' then',
'        NULL;',
'    when ''D'' then',
'    APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''BATCH_DISTRIBUTION'',',
'        p_seq             => :SL);',
'    commit;',
'end case;        ',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34708000002955216)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34728406886955235)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update total issue qty in product information'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--update total issue qty in order_item',
'BEGIN',
'for i in (',
'SELECT --seq_id sl,',
'       c001 ITEM_SL,',
'       c002 ITEMCODE,',
'       --c003 WARECODE,',
'       --c004 BATCHNUM,',
'       --c005 STOCK,',
'       sum(c006) ISSQTY',
'  FROM apex_collections',
' WHERE collection_name = ''BATCH_DISTRIBUTION''',
'GROUP BY c001, c002',
') loop',
'APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'    p_collection_name => ''ORDER_ITEMS'',',
'    p_seq => i.ITEM_SL,',
'    p_attr_number => 47,',
'    p_attr_value => i.ISSQTY);',
'end loop;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34708000002955216)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34706939883955214)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(233358962658994849)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' case :APEX$ROW_STATUS',
'    when ''C'' then',
'        NULL;',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 35,',
'            p_attr_value => :REMARKSS);  ',
'/*',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 22,',
'            p_attr_value => :SALERATE);  ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 42,',
'            p_attr_value => :BATCHNUM);  ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 44,',
'            p_attr_value => :COSTRATE);  ',
'',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 47,',
'            p_attr_value => :ISSQTY);',
'            ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 48,',
'            p_attr_value => :BATCH_QTY);',
'            ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 49,',
'            p_attr_value => :SALEPERC);',
'            ',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 50,',
'            p_attr_value => :MINSRATE);',
'*/',
'            commit;',
'',
'    when ''D'' then',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'',
'    commit;',
'end case;        ',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''DML for collection ''||sqlcode||'' ''||sqlerrm);',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34676158730955185)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34728082014955234)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Purchase Requisition'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_exist   NUMBER;',
'   docnum    VARCHAR2 (500);',
'BEGIN',
'   SELECT COUNT (*)',
'     INTO v_exist',
'     FROM apex_collections',
'    WHERE     collection_name = ''ORDER_ITEMS''',
'          AND   TO_NUMBER (c027)',
'              - NVL (TO_NUMBER (c028), 0)',
'              - NVL (TO_NUMBER (c048), 0) > 0;',
'',
'   IF v_exist > 0',
'   THEN',
'      docnumber_generation ( :COMPCODE,',
'                            ''NM'',',
'                            ''ND'',',
'                            1,',
'                            SYSDATE,',
'                            :P1002500418_SRCWRECD,',
'                            ''NM'',',
'                            docnum);',
'      :P1002500418_DOCNUMBR_PR := docnum;',
'   ELSE',
'      raise_application_error (-20001, ''Request not done. Stock Available!'');',
'   END IF;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      raise_application_error (-20001, ''No data found'');',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      raise_application_error (-20001, ''Too many rows found'');',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;',
'',
'BEGIN',
'   PKG_APPROVAL.PRC_CHK_APPRNEED ( :COMPCODE,',
'                                  ''ND'',',
'                                  1,',
'                                  :P1002500418_STATUSCD_PR);',
'END;',
'',
'',
'BEGIN',
'   FOR i',
'      IN (  SELECT seq_id sl,',
'                   c001 SERLNUMB,',
'                   c002 COMPCODE,',
'                   c003 DOCTTYPE,',
'                   c004 SUBTTYPE,',
'                   c005 DOCNUMBR,',
'                   c006 DOCTDATE,',
'                   c007 PARTYCDE,',
'                   c008 RAISEDBY,',
'                   c009 APPRVDBY,',
'                   c010 APPRDATE,',
'                   c011 REQDDATE,',
'                   c012 COMMCODE,',
'                   c013 ITEMCODE,',
'                   c014 ITEMTYPE,',
'                   c015 ITEMDESC,',
'                   c016 ITEMLONG,',
'                   c017 ITEMRATE,',
'                   c018 SCPCNT,',
'                   c019 DISCAMNT,',
'                   c020 SPLDISPC,',
'                   c021 SPLDISNT,',
'                   c022 SALERATE,',
'                   c023 HUOMCODE,',
'                   c024 FACTRVAL,',
'                   c025 LUOMCODE,',
'                   TO_NUMBER (c026) ORGNQNTY,',
'                   TO_NUMBER (c027) APPRQNTY,',
'                   c028 TRNSQNTY,',
'                   c029 MSFCAMNT,',
'                   c030 CURRCODE,',
'                   c031 EXCGRATE,',
'                   c032 MSLCAMNT,',
'                   c033 REFNUMBR,',
'                   c034 REFNDATE,',
'                   c035 REMARKSS,',
'                   c036 COSTCODE,',
'                   c037 WARECODE,',
'                   c038 POSTFLAG,',
'                   c039 PRNTFLAG,',
'                   c040 REMAINING_QTY, --PRICFLAG,',
'                   c041 STATUSCD,',
'                   c042 BATCHNUM,',
'                   c043 COLORCDE,',
'                   c044 COSTRATE,',
'                   c045 BOM_NO,',
'                   c046 SRCWRECD,',
'                   TO_NUMBER (c047) ISSQTY,',
'                   TO_NUMBER (c048) BATCH_QTY,',
'                   c049 SPCLRATE,',
'                   c050 MINSRATE',
'              FROM apex_collections',
'             WHERE     collection_name = ''ORDER_ITEMS''',
'                   --AND to_number(c047) > to_number(c048)',
'                   AND   TO_NUMBER (c027)',
'                       - NVL (TO_NUMBER (c028), 0)',
'                       - NVL (TO_NUMBER (c048), 0) > 0',
'          ORDER BY sl)',
'   LOOP',
'      dpr_insert_nmprocur (',
'         p_compcode     => :COMPCODE,',
'         p_docttype     => ''ND'',',
'         p_subttype     => 1,',
'         p_docnumbr     => :P1002500418_DOCNUMBR_PR,',
'         p_doctdate     => TRUNC (SYSDATE),',
'         p_serlnumb     => i.sl,',
'         p_partycde     => NULL,',
'         p_smancode     => NULL,',
'         p_raisedby     => :app_user,',
'         p_apprvdby     => NULL,',
'         p_apprdate     => NULL,',
'         p_reqddate     => NULL,',
'         p_commcode     => i.COMMCODE,',
'         p_itemcode     => i.ITEMCODE,',
'         p_itemtype     => i.ITEMTYPE,',
'         p_itemdesc     => i.ITEMDESC,',
'         p_itemlong     => i.ITEMDESC,',
'         p_itemrate     => i.ITEMRATE,',
'         p_markpcnt     => NULL,',
'         p_discpcnt     => NULL,',
'         p_discamnt     => NULL,',
'         p_spldispc     => NULL,',
'         p_spldisnt     => NULL,',
'         p_salerate     => NULL,',
'         p_huomcode     => i.HUOMCODE,',
'         p_factrval     => NULL,',
'         p_luomcode     => i.LUOMCODE,',
'         p_orgnqnty     =>   TO_NUMBER (i.APPRQNTY)',
'                           - NVL (TO_NUMBER (i.TRNSQNTY), 0)',
'                           - NVL (TO_NUMBER (i.BATCH_QTY), 0), --i.ISSQTY - i.BATCH_QTY,',
'         p_apprqnty     =>   TO_NUMBER (i.APPRQNTY)',
'                           - NVL (TO_NUMBER (i.TRNSQNTY), 0)',
'                           - NVL (TO_NUMBER (i.BATCH_QTY), 0), --i.ISSQTY - i.BATCH_QTY,',
'         p_trnsqnty     => NULL,',
'         p_msfcamnt     =>   (  TO_NUMBER (i.APPRQNTY)',
'                              - NVL (TO_NUMBER (i.TRNSQNTY), 0)',
'                              - NVL (TO_NUMBER (i.BATCH_QTY), 0))',
'                           * i.ITEMRATE',
'                           * NVL (i.EXCGRATE, 1),',
'         p_currcode     => i.currcode,',
'         p_excgrate     => i.EXCGRATE,',
'         p_mslcamnt     =>   (  TO_NUMBER (i.APPRQNTY)',
'                              - NVL (TO_NUMBER (i.TRNSQNTY), 0)',
'                              - NVL (TO_NUMBER (i.BATCH_QTY), 0))',
'                           * i.ITEMRATE,',
'         p_refnumbr     => :P1002500418_DOCNUMBR,',
'         p_refndate     => :P1002500418_PRVDDT,',
'         p_updoctyp     => NULL,',
'         p_upsubtyp     => NULL,',
'         p_updocnum     => NULL,',
'         p_updocdte     => NULL,',
'         p_updocsrl     => NULL,',
'         p_dwdoctyp     => NULL,',
'         p_dwsubtyp     => NULL,',
'         p_dwdocnum     => NULL,',
'         p_dwdocdte     => NULL,',
'         p_dwdocsrl     => NULL,',
'         p_acdoctyp     => NULL,',
'         p_acsubtyp     => NULL,',
'         p_acdocnum     => NULL,',
'         p_acdocdte     => NULL,',
'         p_acdocsrl     => NULL,',
'         p_remarkss     => NULL,',
'         p_costcode     => i.COSTCODE,',
'         p_warecode     => :P1002500418_SRCWRECD,',
'         p_postflag     => ''Y'',',
'         p_prntflag     => ''N'',',
'         p_pricflag     => NULL,',
'         p_statuscd     => :P1002500418_STATUSCD_PR,',
'         p_oprstamp     => :APP_USER,',
'         p_itpicdir     => NULL,',
'         p_itfildir     => NULL,',
'         p_clsgdate     => NULL,',
'         p_acctcode     => NULL,',
'         p_acctcate     => NULL,',
'         p_budgcode     => NULL,',
'         p_delydate     => NULL,',
'         p_ballpqty     => NULL,',
'         p_payamtfc     => NULL,',
'         p_payamtlc     => NULL,',
'         p_luomdesc     => i.LUOMCODE,',
'         p_itemratp     => NULL,',
'         p_itrfdate     => NULL,',
'         p_saleratp     => NULL,',
'         p_intreqno     => NULL,',
'         p_costrate     => i.ITEMRATE,',
'         p_designcd     => NULL,',
'         p_brand_code   => i.COMMCODE);',
'   END LOOP;',
'',
'',
'   BEGIN',
'      DPR_INSERT_APPROVAL (P_COMPCODE   => :COMPCODE,',
'                           P_DOCTTYPE   => :DOCTTYPE,',
'                           P_SUBTTYPE   => :SUBTTYPE,',
'                           P_DOCNUMBR   => :P1002500418_DOCNUMBR_PR,                           ',
'                           P_WARECODE   => :P1002500418_SRCWRECD,',
'                           P_DOCTDATE   => TRUNC (SYSDATE));',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Approval Error- '' || SQLERRM);',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PURCHASE_REQUEST'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Indent Generate successfully. <br> Document No. &P1002500418_DOCNUMBR_PR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34727632895955234)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'      ',
'    for i in',
'    (   SELECT seq_id SL,',
'                 c013 ITEMCODE,',
'                 c027 APPRQNTY,',
'                 c028 TRNSQNTY,',
'                 c040 REMAINING_QTY,',
'                 c042 BATCHNUM,',
'                 c048 BATCH_QTY,     ',
'                 c047 ISSQTY     ',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'    loop',
'    IF to_number(i.ISSQTY) > 0 THEN',
'        if ',
'        --to_number(i.ISSQTY) is null ',
'           --or to_number(i.ISSQTY) = 0            ',
'           to_number(i.ISSQTY) > to_number(nvl(i.REMAINING_QTY,0))',
'           or to_number(i.ISSQTY) > to_number(nvl(i.BATCH_QTY,0))',
'           --or i.BATCHNUM is null ',
'           --or i.BATCH_QTY is null ',
'           then',
'            raise_application_error(-20001, ''Issue Qty. must be less than Stock Qty. or Remaining Qty. for Product Code ''||i.ITEMCODE);',
'        end if;',
'    END IF;        ',
'    end loop;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34676158730955185)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34728856971955235)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'create collection order_item_dtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(p_collection_name => ''ORDER_ITEMS_DTL'');',
'',
'BEGIN',
'for i in ',
'    (SELECT ',
'     seq_id  sl,',
'       c001  SERLNUMB,',
'       c002  COMPCODE,',
'       c003  DOCTTYPE,',
'       c004  SUBTTYPE,',
'       c005  DOCNUMBR,',
'       c006  DOCTDATE,',
'       c007  PARTYCDE,',
'       c008  RAISEDBY,',
'       c009  APPRVDBY,',
'       c010  APPRDATE,',
'       c011  REQDDATE,',
'       c012  COMMCODE,',
'       c013  ITEMCODE,',
'       c014  ITEMTYPE,',
'       c015  ITEMDESC,',
'       c016  ITEMLONG,',
'       c017  ITEMRATE,',
'       c018  SCPCNT,',
'       c019  DISCAMNT,',
'       c020  SPLDISPC,',
'       c021  SPLDISNT,',
'       c022  SALERATE,',
'       c023  HUOMCODE,',
'       c024  FACTRVAL,',
'       c025  LUOMCODE,',
'       c026  ORGNQNTY,',
'       c027  APPRQNTY,',
'       c028  TRNSQNTY,',
'       c029  MSFCAMNT,',
'       c030  CURRCODE,',
'       c031  EXCGRATE,',
'       c032  MSLCAMNT,',
'       c033  REFNUMBR,',
'       c034  REFNDATE,',
'       c035  REMARKSS,',
'       c036  COSTCODE,',
'       c037  WARECODE,',
'       c038  POSTFLAG,',
'       c039  PRNTFLAG,',
'       c040  PRICFLAG,',
'       c041  STATUSCD,',
'       c042  BATCHNUM,',
'       c043  COLORCDE,',
'       c044  COSTRATE,',
'       c045  BOM_NO,',
'       c046  SRCWRECD,',
'       c047  ISSQTY,',
'       c048  BATCH_QTY,',
'       c049  STOCK',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
'   AND c048 > 0',
'   )',
'loop ',
'for j in (',
'SELECT seq_id sl,',
'       c001 ITEM_SL,',
'       c002 ITEMCODE,',
'       c003 WARECODE,',
'       c004 BATCHNUM,',
'       c005 STOCK,',
'       c006 ISSQTY',
'  FROM apex_collections',
' WHERE collection_name = ''BATCH_DISTRIBUTION''',
'   AND c001 = i.SL',
'   AND c002 = i.ITEMCODE )',
' loop',
'apex_collection.add_member(',
'    p_collection_name => ''ORDER_ITEMS_DTL'',',
'    p_c001 => i.SERLNUMB,',
'    p_c002 => i.COMPCODE,',
'    p_c003 => i.DOCTTYPE,',
'    p_c004 => i.SUBTTYPE,',
'    p_c005 => i.DOCNUMBR,',
'    p_c006 => i.DOCTDATE,',
'    p_c007 => i.PARTYCDE,',
'    p_c008 => i.RAISEDBY,',
'    p_c009 => i.APPRVDBY,',
'    p_c010 => i.APPRDATE,',
'    p_c011 => i.REQDDATE,',
'    p_c012 => i.COMMCODE,',
'    p_c013 => j.ITEMCODE,',
'    p_c014 => i.ITEMTYPE,',
'    p_c015 => i.ITEMDESC,',
'    p_c016 => i.ITEMLONG,',
'    p_c017 => i.ITEMRATE,',
'    p_c018 => i.SCPCNT,',
'    p_c019 => i.DISCAMNT,',
'    p_c020 => i.SPLDISPC,',
'    p_c021 => i.SPLDISNT,',
'    p_c022 => i.SALERATE,',
'    p_c023 => i.HUOMCODE,',
'    p_c024 => i.FACTRVAL,',
'    p_c025 => i.LUOMCODE,',
'    p_c026 => i.ORGNQNTY,',
'    p_c027 => i.APPRQNTY,',
'    p_c028 => i.TRNSQNTY,',
'    p_c029 => i.MSFCAMNT,',
'    p_c030 => i.CURRCODE,',
'    p_c031 => i.EXCGRATE,',
'    p_c032 => i.MSLCAMNT,',
'    p_c033 => i.REFNUMBR,',
'    p_c034 => i.REFNDATE,',
'    p_c035 => i.REMARKSS,',
'    p_c036 => i.COSTCODE,',
'    p_c037 => j.WARECODE,',
'    p_c038 => i.POSTFLAG,',
'    p_c039 => i.PRNTFLAG,',
'    p_c040 => i.PRICFLAG,',
'    p_c041 => i.STATUSCD,',
'    p_c042 => j.BATCHNUM,',
'    p_c043 => i.COLORCDE,',
'    p_c044 => i.COSTRATE,',
'    p_c045 => i.BOM_NO,',
'    p_c046 => i.SRCWRECD,',
'    p_c047 => j.ISSQTY,',
'    p_c048 => i.BATCH_QTY,',
'    p_c049 => i.STOCK',
');',
'end loop;',
' ',
'end loop;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34676158730955185)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42893624697354301)
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
'    where collection_name = ''ORDER_ITEMS_DTL'';',
'',
'    if v_count < 1 then',
'       raise_application_error(-20100, ''No Item(s) selected for Stock Issue!'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34676158730955185)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34726818203955232)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ORDER_ITEMS collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1002500418_REQUEST = ''NEW_ORDER'' THEN',
'    IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'       apex_collection.delete_collection(''ORDER_ITEMS'');',
'    END IF;',
'END IF;    ',
'',
':P1002500418_REQUEST := '''';',
'',
'if not apex_collection.collection_exists(''ORDER_ITEMS'') then',
'    Begin',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
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
'                                '''''''' REMARKSS,',
'                                COSTCODE,',
'                                WARECODE,',
'                                POSTFLAG,',
'                                PRNTFLAG,',
'                                APPRQNTY- nvl(TRNSQNTY,0) REMAINING_QTY, --PRICFLAG,',
'                                STATUSCD,',
'                                '''''''' BATCHNUM,',
'                                COLORCDE,',
'                                COSTRATE,',
'                                BOM_NO,',
'                                SRCWRECD,',
'                                --APPRQNTY- nvl(TRNSQNTY,0) ISSQTY,',
'                                0 ISSQTY,',
'                                (SELECT NVL (SUM (b.clbalqty), 0)',
'                                       FROM nmwhimas b, nmwhsmas w',
'                                      WHERE b.compcode = ''''''||:COMPCODE||''''''',
'                                        AND b.compcode = w.compcode',
'                                        AND b.warecode = w.warecode',
'                                        AND NVL (w.srvcwflg, ''''N'''') = ''''N''''',
'                                        AND NVL (b.warecode, ''''0'''') = NVL(''''''||:P417_SRCWRECD||'''''',b.warecode)',
'                                        AND NVL (b.itemcode, ''''0'''') = a.itemcode) BATCH_QTY,',
'                                SALEPERC,',
'                                MINSRATE',
'                                from NMSTKREC A',
'                                where compcode = ''''''||:COMPCODE||''''''',
'                                and DOCNUMBR= ''''''||:P417_DOCNUMBR||''''''	',
'								and TRUNC(doctdate)=''''''||:P417_PRVDDT||''''''',
'			                    and docttype = ''''''||:P417_S_PRDTYP||''''''',
'                                and subttype = ''''''||:P417_S_PRSTYP||''''''',
'                                and warecode = ''''''||:P417_WARECODE||''''''',
'                                and STATUSCD = ''''APR''''',
'                                and postflag = ''''Y''''',
'                                and APPRQNTY - nvl(TRNSQNTY,0) > 0',
'            '');						',
'    end;       ',
'end if;   ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''ORDER_ITEMS'') then',
'    Begin',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
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
'                                '''''''' REMARKSS,',
'                                COSTCODE,',
'                                WARECODE,',
'                                POSTFLAG,',
'                                PRNTFLAG,',
'                                PRICFLAG,',
'                                STATUSCD,',
'                                '''''''' BATCHNUM,',
'                                COLORCDE,',
'                                COSTRATE,',
'                                BOM_NO,',
'                                SRCWRECD,',
'                                --APPRQNTY- nvl(TRNSQNTY,0) ISSQTY,',
'                                0 ISSQTY,',
'                                (SELECT NVL (SUM (b.clbalqty), 0)',
'                                       FROM nmwhimas b, nmwhsmas w',
'                                      WHERE b.compcode = ''''''||:COMPCODE||''''''',
'                                        AND b.compcode = w.compcode',
'                                        AND b.warecode = w.warecode',
'                                        AND NVL (w.srvcwflg, ''''N'''') = ''''N''''',
'                                        AND NVL (b.warecode, ''''0'''') = NVL(''''''||:P417_SRCWRECD||'''''',b.warecode)',
'                                        AND NVL (b.itemcode, ''''0'''') = a.itemcode) BATCH_QTY,',
'                                SALEPERC,',
'                                MINSRATE',
'                                from NMSTKREC A',
'                                where compcode = ''''''||:COMPCODE||''''''',
'                                and DOCNUMBR= ''''''||:P417_DOCNUMBR||''''''	',
'								and TRUNC(doctdate)=''''''||:P417_PRVDDT||''''''',
'			                    and docttype = ''''''||:P417_S_PRDTYP||''''''',
'                                and subttype = ''''''||:P417_S_PRSTYP||''''''',
'                                and warecode = ''''''||:P417_WARECODE||''''''',
'                                and STATUSCD = ''''APR''''',
'                                and postflag = ''''Y''''',
'                                and APPRQNTY - nvl(TRNSQNTY,0) > 0',
'            '');						',
'    end;       ',
'end if;   ',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34727286176955233)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2, WIZ_P4',
'  INTO :P1002500418_PREVPAGE, :P1002500418_NEXTPAGE',
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
