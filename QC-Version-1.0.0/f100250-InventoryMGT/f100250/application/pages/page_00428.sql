prompt --application/pages/page_00428
begin
--   Manifest
--     PAGE: 00428
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
 p_id=>428
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Product Information'
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
,p_last_upd_yyyymmddhh24miss=>'20230101113728'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97342841591254124)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(24685888503784642)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48552652061615846)
,p_plug_name=>'Doc Info'
,p_parent_plug_id=>wwv_flow_api.id(97342841591254124)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48962049611031675)
,p_plug_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(97342841591254124)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48848585002934364)
,p_plug_name=>'Multiple Item Issue'
,p_parent_plug_id=>wwv_flow_api.id(48962049611031675)
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
'       c018 DISCPCNT,',
'       c019 DISCAMNT,',
'       c020 SPLDISPC,',
'       c021 SPLDISNT,',
'       c022 SALERATE,',
'       c023 HUOMCODE,',
'       c024 FACTRVAL,',
'       c025 LUOMCODE,',
'       c026 ORGNQNTY,',
'       c027 DIS_ORGNQNTY,',
'       c028 APPRQNTY,',
'       c029 TRNSQNTY,',
'       c030 POQTY,',
'       c031 RCVQTY,',
'       c032 MSFCAMNT,',
'       c033 CURRCODE,',
'       c034 EXCGRATE,',
'       c035 MSLCAMNT,',
'       c036 REFNUMBR,',
'       c037 REFNDATE,',
'       c038 REMARKSS,',
'       c039 COSTCODE,',
'       c040 WARECODE,',
'       c041 POSTFLAG,',
'       c042 PRNTFLAG,',
'       c043 PRICFLAG,',
'       c044 STATUSCD,',
'       c045 SALEPERC, --COLORCDE,',
'       c046 COSTRATE,',
'       c047 SRCWRECD,',
'       c048 BATCHNUM,',
'       c049 DEFECTQT,',
'       c050 MINSRATE',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24983622075319810)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24983723202319811)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24983805190319812)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24983949860319813)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984039717319814)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984142758319815)
,p_name=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984249876319816)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984357905319817)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984423378319818)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984525066319819)
,p_name=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQDDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984600094319820)
,p_name=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984723399319821)
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
 p_id=>wwv_flow_api.id(24984871618319822)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24984919007319823)
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
 p_id=>wwv_flow_api.id(24985096336319824)
,p_name=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMLONG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985142281319825)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(24985396479319827)
,p_name=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985473645319828)
,p_name=>'SPLDISPC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISPC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985546689319829)
,p_name=>'SPLDISNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPLDISNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985613966319830)
,p_name=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sale Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_api.id(24985753730319831)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985803626319832)
,p_name=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FACTRVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24985910869319833)
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
 p_id=>wwv_flow_api.id(24986169422319835)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>350
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986218387319836)
,p_name=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRNSQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>360
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986340368319837)
,p_name=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSFCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'FC Amount'
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
 p_id=>wwv_flow_api.id(24986495054319838)
,p_name=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986593937319839)
,p_name=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCGRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986672017319840)
,p_name=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MSLCAMNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'LC Amount'
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
 p_id=>wwv_flow_api.id(24986787017319841)
,p_name=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986869585319842)
,p_name=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFNDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24986924034319843)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(24987086426319844)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24987157742319845)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24987260545319846)
,p_name=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24987336103319847)
,p_name=>'PRNTFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRNTFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24987433971319848)
,p_name=>'PRICFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(24987500180319849)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(25091739460712002)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Cost Rate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_api.id(25091992705712004)
,p_name=>'SRCWRECD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRCWRECD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(25092283881712007)
,p_name=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DISCPCNT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(25092304914712008)
,p_name=>'DIS_ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DIS_ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(25092438652712009)
,p_name=>'POQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issue Qty.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(25092568027712010)
,p_name=>'RCVQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RCVQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Rcv. Qty.</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(25093298465712017)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Orgnqnty'
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
 p_id=>wwv_flow_api.id(34589249105925127)
,p_name=>'SALEPERC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALEPERC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Saleperc'
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
 p_id=>wwv_flow_api.id(34589341511925128)
,p_name=>'MINSRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MINSRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Minsrate'
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
 p_id=>wwv_flow_api.id(37371011553784426)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
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
 p_id=>wwv_flow_api.id(48849477245934373)
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48849567974934374)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48961786747031672)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48961835961031673)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51544232553684717)
,p_name=>'DEFECTQT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEFECTQT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Damage Qty.'
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(48849401084934372)
,p_internal_uid=>48849401084934372
,p_is_editable=>true
,p_edit_operations=>'u'
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
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(48947285156998932)
,p_interactive_grid_id=>wwv_flow_api.id(48849401084934372)
,p_static_id=>'395958'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(48947332931998932)
,p_report_id=>wwv_flow_api.id(48947285156998932)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25097660418712190)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(24983622075319810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25098103403712196)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(24983723202319811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25098694136712200)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(24983805190319812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25099192707712200)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(24983949860319813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25099603159712201)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(24984039717319814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25100107795712203)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(24984142758319815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25100608461712203)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(24984249876319816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25101165968712204)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(24984357905319817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25101607722712206)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(24984423378319818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25102169438712207)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(24984525066319819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25102604494712207)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(24984600094319820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25103188119712212)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(24984723399319821)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25103692873712214)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(24984871618319822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25104184834712215)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(24984919007319823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>212
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25104659651712217)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(24985096336319824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25105163707712220)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(24985142281319825)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25106125071712225)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(24985396479319827)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25106660835712226)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(24985473645319828)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25107175094712228)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(24985546689319829)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25107696562712229)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(24985613966319830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25108117713712229)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(24985753730319831)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25108657052712231)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(24985803626319832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25109138984712232)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(24985910869319833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75.6
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25110189236712234)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(24986169422319835)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25110674529712235)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(24986218387319836)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25111171425712237)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(24986340368319837)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25111651817712239)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(24986495054319838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25112150487712239)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(24986593937319839)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25112634516712240)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(24986672017319840)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25113125158712248)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(24986787017319841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25113606685712250)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(24986869585319842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25114113118712251)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(24986924034319843)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>152
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25114634513712253)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(24987086426319844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25115183595712254)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(24987157742319845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25115638189712256)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(24987260545319846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25116145333712256)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(24987336103319847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25116662280712257)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(24987433971319848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25117154810712259)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(24987500180319849)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25118643866712270)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(25091739460712002)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25119699018712276)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(25091992705712004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25122672591805854)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(25092283881712007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25123191830805856)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(25092304914712008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25123678616805857)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(25092438652712009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25124168980805860)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(25092568027712010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(25233234620181435)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(25093298465712017)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37910924540651034)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(34589249105925127)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(37911493921651040)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(34589341511925128)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38022003882855507)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(37371011553784426)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48947815366998940)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(48849477245934373)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>43
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48948373121998945)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(48849567974934374)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(49002769720196545)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(48961786747031672)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52563230489091885)
,p_view_id=>wwv_flow_api.id(48947332931998932)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(51544232553684717)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24729849121793332)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(97342841591254124)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24730262871793334)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(97342841591254124)
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
 p_id=>wwv_flow_api.id(24730606652793334)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(97342841591254124)
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
 p_id=>wwv_flow_api.id(24786338826793448)
,p_branch_name=>'Go To Page 429'
,p_branch_action=>'f?p=&APP_ID.:&P428_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24730262871793334)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24786798468793448)
,p_branch_name=>'Go To Page 427'
,p_branch_action=>'f?p=&APP_ID.:&P428_PREVPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24730606652793334)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24778571672793435)
,p_name=>'P428_PODCNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24779309153793442)
,p_name=>'P428_WHSNME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
,p_prompt=>'Rcv. From'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24779709163793442)
,p_name=>'P428_S_PRDTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
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
 p_id=>wwv_flow_api.id(24780163455793442)
,p_name=>'P428_S_PRSTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
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
 p_id=>wwv_flow_api.id(24780520588793442)
,p_name=>'P428_PREVPAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24780976707793442)
,p_name=>'P428_NEXTPAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(90419137169335907)
,p_name=>'P428_WARECODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(48552652061615846)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47185136017642225)
,p_tabular_form_region_id=>wwv_flow_api.id(48848585002934364)
,p_validation_name=>'rcvqty not null'
,p_validation_sequence=>10
,p_validation=>'RCVQTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have valid value.'
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47185274049642226)
,p_tabular_form_region_id=>wwv_flow_api.id(48848585002934364)
,p_validation_name=>'rcvqty numeric'
,p_validation_sequence=>20
,p_validation=>'RCVQTY'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must have valid value.'
,p_when_button_pressed=>wwv_flow_api.id(24730262871793334)
,p_associated_column=>'RCVQTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51544638352684721)
,p_tabular_form_region_id=>wwv_flow_api.id(48848585002934364)
,p_validation_name=>'damage qty numeric'
,p_validation_sequence=>30
,p_validation=>'DEFECTQT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#LABEL# must have valid value.'
,p_when_button_pressed=>wwv_flow_api.id(24730262871793334)
,p_associated_column=>'DEFECTQT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51544589024684720)
,p_tabular_form_region_id=>wwv_flow_api.id(48848585002934364)
,p_validation_name=>'damage qty'
,p_validation_sequence=>40
,p_validation=>':POQTY >= :RCVQTY + :DEFECTQT'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Rcv. Qty. and Damage Qty. must be less than Issue Qty.'
,p_when_button_pressed=>wwv_flow_api.id(24730262871793334)
,p_associated_column=>'DEFECTQT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24782909123793443)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24729849121793332)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24783998351793445)
,p_event_id=>wwv_flow_api.id(24782909123793443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sute to Cancel!.'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24783464301793443)
,p_event_id=>wwv_flow_api.id(24782909123793443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;   ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;        ',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24784403322793445)
,p_event_id=>wwv_flow_api.id(24782909123793443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24781364362793443)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 PODCNO,',
'          c011 WARECODE,',
'          c011 ||''-''|| c012 warename,',
'          c015 S_PRDTYP,',
'          c016 S_PRSTYP',
'     INTO :P428_PODCNO, :P428_WARECODE, :P428_WHSNME, :P428_S_PRDTYP, :P428_S_PRSTYP',
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
 p_id=>wwv_flow_api.id(24752652546793387)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(48848585002934364)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 31,',
'        p_attr_value => :RCVQTY);  ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 38,',
'        p_attr_value => :REMARKSS);    ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :SL,',
'        p_attr_number => 49,',
'        p_attr_value => :DEFECTQT);            ',
'        ',
'        commit;',
'exception ',
'    when others then',
'    raise_application_error(-20001, ''upd collection ''||sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24730262871793334)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24782565599793443)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    begin',
'        for i in',
'        (   SELECT seq_id SL,',
'                     c030 POQTY,',
'                     c031 RCVQTY',
'              FROM apex_collections',
'             WHERE collection_name = ''ORDER_ITEMS''',
'             ORDER BY sl)',
'        loop',
'            if to_number(i.RCVQTY) is null ',
'              -- OR to_number(i.RCVQTY) = 0',
'               --OR to_number(i.RCVQTY) > to_number(i.POQTY) then',
'                 or :POQTY >= :RCVQTY + :DEFECTQT then',
'                raise_application_error(-20001, ''Rcv. Qty. and Damage Qty. must be less than Issue Qty.'');',
'            end if;',
'        end loop;',
'    end;',
'end if;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24730262871793334)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37669368891079116)
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
,p_process_when_button_id=>wwv_flow_api.id(24730262871793334)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24781705226793443)
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
'                                AVG(ITEMRATE) OVER (PARTITION BY ITEMCODE) AS ITEMRATE,',
'                                DISCPCNT,',
'                                DISCAMNT,',
'                                SPLDISPC,',
'                                SPLDISNT,',
'                                AVG(SALERATE) OVER (PARTITION BY ITEMCODE) AS SALERATE,',
'                                HUOMCODE,',
'                                FACTRVAL,',
'                                LUOMCODE,',
'                                ORGNQNTY,',
'                                ORGNQNTY as DIS_ORGNQNTY,',
'                                APPRQNTY,',
'                                TRNSQNTY,',
'                                ORGNQNTY - NVL(TRNSQNTY,0) POQTY,',
'                                ORGNQNTY - NVL(TRNSQNTY,0) RCVQTY,',
'                                (AVG(COSTRATE) OVER (PARTITION BY ITEMCODE)) * (ORGNQNTY - NVL(TRNSQNTY,0)) MSFCAMNT,',
'                                CURRCODE,',
'                                EXCGRATE,',
'                                (AVG(COSTRATE) OVER (PARTITION BY ITEMCODE)) * (ORGNQNTY - NVL(TRNSQNTY,0)) MSLCAMNT,',
'                                REFNUMBR,',
'                                REFNDATE,                                ',
'                                REMARKSS,',
'                                COSTCODE,',
'                                WARECODE,',
'                                POSTFLAG,',
'                                PRNTFLAG,',
'                                PRICFLAG,',
'                                STATUSCD,',
'                                SALEPERC, --COLORCDE,',
'                                AVG(COSTRATE) OVER (PARTITION BY ITEMCODE) AS COSTRATE,',
'                                SRCWRECD,',
'                                BATCHNUM,',
'                                DEFECTQT,',
'                                MINSRATE',
'                                from nmstkrec ',
'                                Where compcode = ''''''||:COMPCODE||''''''',
'                                and DOCNUMBR = ''''''||:P428_PODCNO||''''''',
'                                and DOCTTYPE = ''''''||:P428_S_PRDTYP||''''''',
'                                and SUBTTYPE = ''''''||:P428_S_PRSTYP||''''''',
'                                and WARECODE = ''''''||:P428_WARECODE||''''''',
'                                and (nvl(apprqnty,0) - nvl(trnsqnty,0)) > 0''',
'                                ); ',
'                                ',
'    --exception',
'       -- when e_20104 then null;',
'    end;       ',
'end if;   ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
 p_id=>wwv_flow_api.id(24782190958793443)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P2, WIZ_P4',
'  INTO :P428_PREVPAGE, :P428_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
null;
wwv_flow_api.component_end;
end;
/
