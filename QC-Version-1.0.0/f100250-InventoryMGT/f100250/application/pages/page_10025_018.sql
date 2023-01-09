prompt --application/pages/page_10025_018
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
 p_id=>1002500423
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Receive (Purchase) Department Wise'
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
,p_dialog_height=>'400'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103192442'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(102745962584510414)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(49856637893248098)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(80724966366476656)
,p_plug_name=>'Doc info'
,p_parent_plug_id=>wwv_flow_api.id(102745962584510414)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120960563204780979)
,p_plug_name=>'Stock Receipt '
,p_parent_plug_id=>wwv_flow_api.id(102745962584510414)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="background-color:&BACKGROUND_COLOR.;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70800178735952736)
,p_plug_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(120960563204780979)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
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
'       to_number(c017) ITEMRATE,',
'       c018 DISCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       to_number(c022) SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 DIS_ORGNQNTY,',
'       c028 APPRQNTY,',
'       c029 TRNSQNTY,',
'       to_number(c030) POQTY,',
'       to_number(c031) RCVQTY,',
'       c032 MSFCAMNT,',
'       c033 CURRCODE,',
'       c034 EXCGRATE,',
'       c035 MSLCAMNT,',
'       c036 REFNUMBR,',
'       c037 REFNDATE,',
'       c038 UPDOCTYP,',
'       c039 UPSUBTYP,',
'       c040 UPDOCNUM,',
'       c041 UPDOCDTE,',
'       c042 UPDOCSRL,',
'       c043 REMARKSS,',
'       c044 COSTCODE,',
'       c045 WARECODE,',
'       c046 POSTFLAG,',
'       c047 PRNTFLAG,',
'       c048 PRICFLAG,',
'       c049 STATUSCD,',
'       to_number(c050) COSTRATE ',
'     FROM apex_collections',
'    WHERE collection_name = ''ORDER_ITEMS'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(69648618246595037)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(69648727795595038)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71514017963882708)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Serlnumb'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(71514175573882709)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
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
 p_id=>wwv_flow_api.id(71514207756882710)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docttype'
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
 p_id=>wwv_flow_api.id(71514333625882711)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Subttype'
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
 p_id=>wwv_flow_api.id(71514497072882712)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(71514515561882713)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Doctdate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_api.id(71514609799882714)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Partycde'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(71514728508882715)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Raisedby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(71514851882882716)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprvdby'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(71514962793882717)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprdate'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(71515076329882718)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reqddate'
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
 p_id=>wwv_flow_api.id(71515138734882719)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Commcode'
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
 p_id=>wwv_flow_api.id(71515255481882720)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
 p_id=>wwv_flow_api.id(71515351252882721)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemtype'
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
 p_id=>wwv_flow_api.id(71515401896882722)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
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
 p_id=>wwv_flow_api.id(71515564920882723)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemlong'
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
 p_id=>wwv_flow_api.id(71515622225882724)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
 p_id=>wwv_flow_api.id(71515748706882725)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discpcnt'
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
 p_id=>wwv_flow_api.id(71515831939882726)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Discamnt'
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
 p_id=>wwv_flow_api.id(71515993605882727)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldispc'
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
 p_id=>wwv_flow_api.id(71516058268882728)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Spldisnt'
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
 p_id=>wwv_flow_api.id(71516147085882729)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Sale Rate</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>380
,p_value_alignment=>'RIGHT'
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
,p_readonly_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_readonly_condition=>'OTHERCOST_PAGE'
,p_readonly_condition2=>'1'
,p_readonly_for_each_row=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM nmprocur',
' WHERE docnumbr = :P423_PODCNO',
'   AND TRUNC (doctdate) = :P423_PODCDATE',
'   AND warecode = :P423_WARECODE',
'   AND (ITEMRATP IS NOT NULL OR ITRFDATE IS NOT NULL)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71516275166882730)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
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
 p_id=>wwv_flow_api.id(71516315960882731)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Factrval'
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
 p_id=>wwv_flow_api.id(71516450613882732)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Unit'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_api.id(71516568737882733)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Orgnqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
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
 p_id=>wwv_flow_api.id(71516616358882734)
,p_name=>'DIS_ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIS_ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Dis Orgnqnty'
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
 p_id=>wwv_flow_api.id(71516725732882735)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Apprqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>310
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
 p_id=>wwv_flow_api.id(71516812688882736)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Trnsqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
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
 p_id=>wwv_flow_api.id(71516931353882737)
,p_name=>'POQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'PO Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
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
 p_id=>wwv_flow_api.id(71517007972882738)
,p_name=>'RCVQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCVQTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<font color="red">Rcv. Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>360
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'allow-integer'
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
 p_id=>wwv_flow_api.id(71517186061882739)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'FC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>390
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
 p_id=>wwv_flow_api.id(71517208740882740)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currcode'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71517320995882741)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Excgrate'
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
 p_id=>wwv_flow_api.id(71517490022882742)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'LC Amount'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>420
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
 p_id=>wwv_flow_api.id(71517574772882743)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refnumbr'
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
 p_id=>wwv_flow_api.id(71517612965882744)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Refndate'
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
 p_id=>wwv_flow_api.id(71517710184882745)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updoctyp'
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
 p_id=>wwv_flow_api.id(71517877252882746)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Upsubtyp'
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
 p_id=>wwv_flow_api.id(71517982167882747)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updocnum'
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
 p_id=>wwv_flow_api.id(71518100957882748)
,p_name=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCDTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updocdte'
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
 p_id=>wwv_flow_api.id(71518199622882749)
,p_name=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCSRL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Updocsrl'
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
 p_id=>wwv_flow_api.id(71518232868882750)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(71518371383882751)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costcode'
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
 p_id=>wwv_flow_api.id(71591436907052002)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
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
 p_id=>wwv_flow_api.id(71591505718052003)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Postflag'
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
 p_id=>wwv_flow_api.id(71591641277052004)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prntflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>540
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
 p_id=>wwv_flow_api.id(71591753294052005)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pricflag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>550
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
 p_id=>wwv_flow_api.id(71591805257052006)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Statuscd'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>560
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
 p_id=>wwv_flow_api.id(71591940574052007)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Cost Rate</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
,p_value_alignment=>'RIGHT'
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
,p_readonly_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_readonly_condition=>'OTHERCOST_PAGE'
,p_readonly_condition2=>'1'
,p_readonly_for_each_row=>true
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'  FROM nmprocur',
' WHERE docnumbr = :P423_PODCNO',
'   AND TRUNC (doctdate) = :P423_PODCDATE',
'   AND warecode = :P423_WARECODE',
'   AND (ITEMRATP IS NOT NULL OR ITRFDATE IS NOT NULL)'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(71592046053052008)
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(70800273283952737)
,p_internal_uid=>70800273283952737
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.reportSettingsArea = false;',
'    // may want to disable the highlights feature. Comment out this code to make initial highlight settings',
'    apex.util.getNestedObject(config, "views.grid.features").highlight = false;',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(71008688777078999)
,p_interactive_grid_id=>wwv_flow_api.id(70800273283952737)
,p_static_id=>'396142'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(71008800278079001)
,p_report_id=>wwv_flow_api.id(71008688777078999)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71473054037803240)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(69648618246595037)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71597777274052285)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(71514017963882708)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>172
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71598202022052288)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(71514175573882709)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71598770532052290)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(71514207756882710)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71599298296052291)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(71514333625882711)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71599794494052291)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(71514497072882712)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71600256005052293)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(71514515561882713)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71600714139052294)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(71514609799882714)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71601290411052294)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(71514728508882715)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71601740217052296)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(71514851882882716)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71602225286052297)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(71514962793882717)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71602737609052297)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(71515076329882718)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71603264522052299)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(71515138734882719)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71603727688052301)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(71515255481882720)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71604248306052302)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(71515351252882721)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71604771311052302)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(71515401896882722)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>189
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71605284069052304)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(71515564920882723)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71605716721052305)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(71515622225882724)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71606150038052307)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(71515748706882725)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71606645411052308)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(71515831939882726)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71607143844052308)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(71515993605882727)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71607603499052310)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(71516058268882728)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71608146537052311)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(71516147085882729)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71608622375052313)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(71516275166882730)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71609136749052315)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(71516315960882731)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71609666146052316)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(71516450613882732)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71610139740052318)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(71516568737882733)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71610618263052319)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(71516616358882734)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71611135287052321)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(71516725732882735)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71611642933052322)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(71516812688882736)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71612110182052322)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(71516931353882737)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71612694709052324)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(71517007972882738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71613177862052326)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(71517186061882739)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71613623717052326)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(71517208740882740)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71614150943052327)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(71517320995882741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71614687862052329)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(71517490022882742)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71615108838052330)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(71517574772882743)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71615612255052330)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(71517612965882744)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71616124943052332)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(71517710184882745)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71616630884052333)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(71517877252882746)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71617105988052333)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(71517982167882747)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71617677036052335)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(71518100957882748)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71618194941052336)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(71518199622882749)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71618665929052338)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(71518232868882750)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71619192493052338)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(71518371383882751)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71619646042052340)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(71591436907052002)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71620197692052341)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(71591505718052003)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71620674424052341)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(71591641277052004)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71621112530052343)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(71591753294052005)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71621688433052344)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(71591805257052006)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71622116628052346)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(71591940574052007)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(71625431402058266)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(71592046053052008)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>44
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(49601090729200002)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(71516931353882737)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_api.create_ig_report_aggregate(
 p_id=>wwv_flow_api.id(49601159291203254)
,p_view_id=>wwv_flow_api.id(71008800278079001)
,p_function=>'SUM'
,p_column_id=>wwv_flow_api.id(71517007972882738)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49601652699200006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(102745962584510414)
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
 p_id=>wwv_flow_api.id(49602004899200007)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(102745962584510414)
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
 p_id=>wwv_flow_api.id(49602489231200007)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(102745962584510414)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49635992481200095)
,p_branch_name=>'Go To Page 424'
,p_branch_action=>'f?p=&APP_ID.:&P1002500423_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49602004899200007)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49636381603200096)
,p_branch_name=>'Go To Page 422'
,p_branch_action=>'f?p=&APP_ID.:&P1002500423_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49602489231200007)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49603179536200010)
,p_name=>'P1002500423_PODCNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_prompt=>'PR No.'
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
 p_id=>wwv_flow_api.id(49603550138200014)
,p_name=>'P1002500423_PODCDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49603921743200014)
,p_name=>'P1002500423_WARECODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_grid_column=>3
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
 p_id=>wwv_flow_api.id(49604313471200014)
,p_name=>'P1002500423_SUPPLIERCDE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname, a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode '))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
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
 p_id=>wwv_flow_api.id(49604736731200015)
,p_name=>'P1002500423_PREVPAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49605184261200015)
,p_name=>'P1002500423_NEXTPAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(80724966366476656)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49628077591200081)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'rcvqty not null'
,p_validation_sequence=>10
,p_validation=>'RCVQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a valid value.'
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49630428184200087)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'rcvqty < PO qty'
,p_validation_sequence=>20
,p_validation=>'to_number(:POQTY) >= to_number(:RCVQTY)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a valid value.'
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49628493646200084)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'costrate not null'
,p_validation_sequence=>30
,p_validation=>'COSTRATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a valid value.'
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49628821853200084)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'costrate > itemrate'
,p_validation_sequence=>40
,p_validation=>':COSTRATE >= :ITEMRATE'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a valid value.'
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49629241252200085)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'salerate not null'
,p_validation_sequence=>50
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a valid value.'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49629647733200085)
,p_tabular_form_region_id=>wwv_flow_api.id(70800178735952736)
,p_validation_name=>'greater than costrare'
,p_validation_sequence=>70
,p_validation=>'to_number(:SALERATE) >= to_number(:COSTRATE)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a valid values.'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49633022613200092)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49601652699200006)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49633544096200092)
,p_event_id=>wwv_flow_api.id(49633022613200092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!.'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49634055461200093)
,p_event_id=>wwv_flow_api.id(49633022613200092)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49634564840200093)
,p_event_id=>wwv_flow_api.id(49633022613200092)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49634985393200093)
,p_name=>'FC AMT'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(70800178735952736)
,p_triggering_element=>'RCVQTY,ITEMRATE,COSTRATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49635470895200095)
,p_event_id=>wwv_flow_api.id(49634985393200093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':MSFCAMNT := nvl(:COSTRATE,:ITEMRATE) * :RCVQTY * nvl(:EXCGRATE,1);',
':MSLCAMNT := nvl(:COSTRATE,:ITEMRATE) * :RCVQTY;'))
,p_attribute_02=>'COSTRATE,ITEMRATE,RCVQTY,EXCGRATE'
,p_attribute_03=>'MSFCAMNT,MSLCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49632258962200090)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ORDER_ITEMS collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
'*/',
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'',
'    declare',
'        --e_20104 exception;',
'        --pragma exception_init(e_20104, -20104);',
'    Begin',
'',
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
'                                dfn_salerate(ITEMCODE,WARECODE,COMPCODE) SALERATE,',
'                                --SALERATE,',
'                                HUOMCODE,',
'                                FACTRVAL,',
'                                LUOMCODE,',
'                                ORGNQNTY,',
'                                ORGNQNTY as DIS_ORGNQNTY,',
'                                APPRQNTY,',
'                                TRNSQNTY,',
'                                ORGNQNTY - NVL(TRNSQNTY,0) POQTY,',
'                                ORGNQNTY - NVL(TRNSQNTY,0) RCVQTY,',
'                                nvl(COSTRATE,ITEMRATE) * (ORGNQNTY - NVL(TRNSQNTY,0)) * EXCGRATE MSFCAMNT,',
'                                CURRCODE,',
'                                EXCGRATE,',
'                                nvl(COSTRATE,ITEMRATE) * (ORGNQNTY - NVL(TRNSQNTY,0)) * EXCGRATE MSLCAMNT,',
'                                REFNUMBR,',
'                                REFNDATE,',
'                                UPDOCTYP,',
'                                UPSUBTYP,',
'                                UPDOCNUM,',
'                                UPDOCDTE,',
'                                UPDOCSRL,',
'                                REMARKSS,',
'                                COSTCODE,',
'                                WARECODE,',
'                                POSTFLAG,',
'                                PRNTFLAG,',
'                                PRICFLAG,',
'                                STATUSCD,',
'                                nvl(COSTRATE,ITEMRATE) COSTRATE',
'                                from NMPROCUR ',
'                                where DOCNUMBR = ''''''||:P1002500423_PODCNO||''''''',
'								and TRUNC(DOCTDATE) = ''''''||:P1002500423_PODCDATE||''''''',
'                                and warecode = ''''''||:P1002500423_WARECODE||''''''',
'                                and POSTFLAG = ''''Y''''',
'			                    and (nvl(apprqnty,0) - nvl(trnsqnty,0)) > 0'');',
'    --exception',
'       -- when e_20104 then null;',
'    end;      ',
'end if;   ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49602004899200007)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49630792383200087)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(70800178735952736)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' case :APEX$ROW_STATUS',
'    when ''U'' then',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 31,',
'        p_attr_value => :RCVQTY);',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 50,',
'        p_attr_value => :COSTRATE);',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 22,',
'        p_attr_value => :SALERATE);',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 43,',
'        p_attr_value => :REMARKSS);       ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 17,',
'        p_attr_value => :ITEMRATE);    ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 25,',
'        p_attr_value => :LUOMCODE);  ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 32,',
'        p_attr_value => :MSFCAMNT); ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 35,',
'        p_attr_value => :MSLCAMNT);         ',
'       ',
'        commit;',
'    when ''D'' then',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;        ',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49602004899200007)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49631137847200089)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validateion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                   c030 POQTY,',
'                   c031 RCVQTY,',
'                   c022 SALERATE,',
'                   c050 COSTRATE',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.RCVQTY) is null',
'               or to_number(i.RCVQTY) = 0',
'               or  to_number(i.RCVQTY) > to_number(i.POQTY)',
'               or to_number(i.COSTRATE) is null',
'               or to_number(i.COSTRATE) = 0',
'               or to_number(i.SALERATE) is null',
'               or to_number(i.SALERATE) = 0',
'               or to_number(i.SALERATE) < to_number(i.COSTRATE) then',
'                raise_application_error(-20001, ''Rcv. Qty, Cost Rate and Sale Rate must have valid value!'');',
'            end if;',
'        end loop;  ',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49602004899200007)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49632615740200092)
,p_process_sequence=>30
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
,p_process_when_button_id=>wwv_flow_api.id(49602004899200007)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49631860645200089)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c004 PODCNO,',
'          c005 PODCDATE,',
'          c013 SUPPLIERNAME,',
'          c008 WARECODE',
'     INTO :P1002500423_PODCNO, :P1002500423_PODCDATE, :P1002500423_SUPPLIERCDE, :P1002500423_WARECODE',
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
 p_id=>wwv_flow_api.id(49631427240200089)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :OTHERCOST_PAGE = 0 THEN',
'   BEGIN',
'    SELECT WIZ_P2, WIZ_P4',
'      INTO :P1002500423_PREVPAGE, :P1002500423_NEXTPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'       EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'   END;   ',
'ELSE',
'   BEGIN',
'    SELECT WIZ_P2, WIZ_P5',
'      INTO :P1002500423_PREVPAGE, :P1002500423_NEXTPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'       EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'   END; ',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
