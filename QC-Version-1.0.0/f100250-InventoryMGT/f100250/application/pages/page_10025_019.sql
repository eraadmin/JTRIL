prompt --application/pages/page_10025_019
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
 p_id=>1002500424
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Receive (Purchase) Department Wise'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103192533'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(155134168993013132)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(49856637893248098)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72651779008045490)
,p_plug_name=>'Other Cost'
,p_parent_plug_id=>wwv_flow_api.id(155134168993013132)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84333432058414279)
,p_plug_name=>'Other Cost'
,p_parent_plug_id=>wwv_flow_api.id(72651779008045490)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   seq_id sl,',
'         c001 TEXTSERL,',
'         c002 TEXTCODE,',
'         c003 TEXTLINE,',
'         to_number(c004) TEXTAMNT,        ',
'         c005 REFDOCNO,',
'         c006 DOCTTYPE,',
'         c007 SUBTTYPE,',
'         c008 DOCNUMBR,',
'         c009 DOCTDATE,',
'         c010 SERLNUMB',
' FROM apex_collections',
'WHERE collection_name = ''OTHER_COST'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(73063469872188955)
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
 p_id=>wwv_flow_api.id(73063561153188956)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84376085358922831)
,p_name=>'TEXTSERL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTSERL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Srl.'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(84376198620922832)
,p_name=>'TEXTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'<font color="red">Cost Head</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nmcoddes, nmsofcde',
'    FROM nmcodmas',
'   WHERE compcode = ''999'' ',
'     AND modlcode = ''NM'' ',
'     AND nmhrdcde = ''TMC''',
'ORDER BY nmsofcde'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
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
 p_id=>wwv_flow_api.id(84376353506922833)
,p_name=>'TEXTAMNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTAMNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Amount</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_api.id(84376697386922837)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84376787127922838)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84377232280922842)
,p_name=>'TEXTLINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEXTLINE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84377991918922850)
,p_name=>'REFDOCNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFDOCNO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P1002500424_PODCNO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84565390059225073)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84565483273225074)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84565622319225075)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(84565707252225076)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(84375982675922830)
,p_internal_uid=>84375982675922830
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_api.id(60507628718248520)
,p_update_authorization_scheme=>wwv_flow_api.id(60508673871256279)
,p_delete_authorization_scheme=>wwv_flow_api.id(60489002166243136)
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
,p_enable_mail_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(84381488911943948)
,p_interactive_grid_id=>wwv_flow_api.id(84375982675922830)
,p_static_id=>'396144'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(84381563451943949)
,p_report_id=>wwv_flow_api.id(84381488911943948)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73079905999557874)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(73063469872188955)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(73082769948587051)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(73063561153188956)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84382150153943954)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(84376085358922831)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84382614789943972)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(84376198620922832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>401
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84383084345943974)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(84376353506922833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>167
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84387713958229450)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(84376697386922837)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84394950899370735)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(84377232280922842)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>368
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84478717528355889)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(84377991918922850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84649767371006480)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(84565390059225073)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84650282274006482)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(84565483273225074)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84650839838006484)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(84565622319225075)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84651336335006486)
,p_view_id=>wwv_flow_api.id(84381563451943949)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(84565707252225076)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(197841353084788051)
,p_plug_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(155134168993013132)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(93075603670453298)
,p_name=>'Stock Receipt'
,p_parent_plug_id=>wwv_flow_api.id(197841353084788051)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'       c050 COSTRATE ',
'     FROM apex_collections',
'    WHERE collection_name = ''ORDER_ITEMS'';'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
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
 p_id=>wwv_flow_api.id(49654278399257214)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49654692344257218)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49655075838257220)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49655482775257220)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49655857845257221)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49656276357257221)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49656601805257221)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49657095811257221)
,p_query_column_id=>8
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49657408747257221)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49657871839257223)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49658265687257223)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49658648359257223)
,p_query_column_id=>12
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49659018217257223)
,p_query_column_id=>13
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49659493519257223)
,p_query_column_id=>14
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49659840368257225)
,p_query_column_id=>15
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49660282214257225)
,p_query_column_id=>16
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>15
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49660676564257225)
,p_query_column_id=>17
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49661045656257225)
,p_query_column_id=>18
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>18
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49661471277257225)
,p_query_column_id=>19
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49661876201257228)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49662247851257228)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49662631878257228)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49663046091257228)
,p_query_column_id=>23
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>22
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49663401530257228)
,p_query_column_id=>24
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49663842605257228)
,p_query_column_id=>25
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49664249755257228)
,p_query_column_id=>26
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>17
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49664654091257228)
,p_query_column_id=>27
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49665094022257228)
,p_query_column_id=>28
,p_column_alias=>'DIS_ORGNQNTY'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49665489853257229)
,p_query_column_id=>29
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49665819983257229)
,p_query_column_id=>30
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49666287577257229)
,p_query_column_id=>31
,p_column_alias=>'POQTY'
,p_column_display_sequence=>19
,p_column_heading=>'PO Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49666624032257229)
,p_query_column_id=>32
,p_column_alias=>'RCVQTY'
,p_column_display_sequence=>20
,p_column_heading=>'Rcv. Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49667058723257229)
,p_query_column_id=>33
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>23
,p_column_heading=>'FC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49667477797257229)
,p_query_column_id=>34
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49667835085257229)
,p_query_column_id=>35
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49668273814257229)
,p_query_column_id=>36
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>24
,p_column_heading=>'LC Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49668605944257229)
,p_query_column_id=>37
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49669011608257229)
,p_query_column_id=>38
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49669478121257231)
,p_query_column_id=>39
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49669800208257231)
,p_query_column_id=>40
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49670218683257231)
,p_query_column_id=>41
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49670639893257231)
,p_query_column_id=>42
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49671012773257231)
,p_query_column_id=>43
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49671492784257231)
,p_query_column_id=>44
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>25
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49671809330257232)
,p_query_column_id=>45
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49672267189257232)
,p_query_column_id=>46
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49672649014257232)
,p_query_column_id=>47
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>49
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49673050355257232)
,p_query_column_id=>48
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49673475362257232)
,p_query_column_id=>49
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>51
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49673895139257234)
,p_query_column_id=>50
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>52
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49674282172257234)
,p_query_column_id=>51
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>21
,p_column_heading=>'Cost Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(201774521805471231)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(155134168993013132)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49644963335257175)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(155134168993013132)
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
 p_id=>wwv_flow_api.id(49645379224257175)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(155134168993013132)
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
 p_id=>wwv_flow_api.id(49645749685257175)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(155134168993013132)
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
 p_id=>wwv_flow_api.id(49684883948257251)
,p_branch_name=>'Go To Page 425'
,p_branch_action=>'f?p=&APP_ID.:&P1002500424_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49645379224257175)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49684421223257251)
,p_branch_name=>'Go To Page 424'
,p_branch_action=>'f?p=&APP_ID.:&P1002500424_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49645749685257175)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49674980147257237)
,p_name=>'P1002500424_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49675302107257237)
,p_name=>'P1002500424_TRNDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
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
 p_id=>wwv_flow_api.id(49675745968257240)
,p_name=>'P1002500424_PODCNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_prompt=>'PR No.'
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
 p_id=>wwv_flow_api.id(49676122831257242)
,p_name=>'P1002500424_PODCDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49676588212257242)
,p_name=>'P1002500424_WARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_prompt=>'Warehouse'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49676976881257242)
,p_name=>'P1002500424_SUPPLIERCDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
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
 p_id=>wwv_flow_api.id(49677371664257242)
,p_name=>'P1002500424_BATCHNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49677710767257242)
,p_name=>'P1002500424_UPDOCNUM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49678129585257242)
,p_name=>'P1002500424_PREVPAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49678594953257243)
,p_name=>'P1002500424_NEXTPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(201774521805471231)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49652599239257200)
,p_tabular_form_region_id=>wwv_flow_api.id(84333432058414279)
,p_validation_name=>'textcode not null'
,p_validation_sequence=>10
,p_validation=>'TEXTCODE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'TEXTCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49652948191257201)
,p_tabular_form_region_id=>wwv_flow_api.id(84333432058414279)
,p_validation_name=>'textamnt not null'
,p_validation_sequence=>20
,p_validation=>'TEXTAMNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'TEXTAMNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49682447023257250)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49644963335257175)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49682925317257250)
,p_event_id=>wwv_flow_api.id(49682447023257250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49683471588257250)
,p_event_id=>wwv_flow_api.id(49682447023257250)
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
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49683982599257251)
,p_event_id=>wwv_flow_api.id(49682447023257250)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49679788505257245)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Other Cost collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'',
'    Begin',
'        APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'            p_collection_name =>''OTHER_COST'' , ',
'            p_query => ''SELECT textserl,',
'                               textcode,',
'                               textline,',
'                               textamnt,',
'                               refdocno,',
'                               docttype,',
'                               subttype,',
'                               docnumbr,',
'                               doctdate,',
'                               oprstamp,',
'                               timstamp,',
'                               serlnumb,',
'                               costcode',
'                          FROM nmtxtprt',
'                         WHERE compcode = ''''''||:P1002500424_COMPCODE||''''''',
'                           AND DOCNUMBR = ''''''||:P1002500424_PODCNO||''''''',
'                           AND REFDCDTE = ''''''||:P1002500424_PODCDATE||''''''',
'            '');',
'    end;   ',
'',
'end if;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49679305489257243)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P5, WIZ_P3',
'  INTO :P1002500424_NEXTPAGE, :P1002500424_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49653218416257201)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(84333432058414279)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DML for other cost collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'       apex_collection.create_or_truncate_collection (''OTHER_COST'');  ',
'end if;           ',
'',
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'    ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''OTHER_COST'',',
'        p_c001            => :TEXTSERL,',
'        p_c002            => :TEXTCODE,',
'        p_c003            => :TEXTLINE,',
'        p_c004            => :TEXTAMNT,        ',
'        p_c005            => :REFDOCNO,',
'        p_c006            => :DOCTTYPE,',
'        p_c007            => :SUBTTYPE,',
'        p_c008            => :DOCNUMBR,',
'        p_c009            => :DOCTDATE,',
'        p_c010            => :SERLNUMB,',
'        p_c011            => :COSTCODE',
'        );',
'        commit;',
'',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''OTHER_COST'',',
'        p_seq             => :SL,',
'        p_c001            => :TEXTSERL,',
'        p_c002            => :TEXTCODE,',
'        p_c003            => :TEXTLINE,',
'        p_c004            => :TEXTAMNT,        ',
'        p_c005            => :REFDOCNO,',
'        p_c006            => :DOCTTYPE,',
'        p_c007            => :SUBTTYPE,',
'        p_c008            => :DOCNUMBR,',
'        p_c009            => :DOCTDATE,',
'        p_c010            => :SERLNUMB,',
'        p_c011            => :COSTCODE',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''OTHER_COST'',',
'        p_seq             => :SL);',
'        commit;',
'    end case;',
'    ',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49645379224257175)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49680168284257245)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove duplicate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'',
'    begin',
'      for r_rec in (',
'        select seq_id, rn from',
'         (select seq_id, row_number() over (partition by c002 order by seq_id) rn',
'          from apex_collections',
'          where collection_name = ''OTHER_COST''',
'        ) where rn != 1',
'      ) loop',
'            APEX_COLLECTION.DELETE_MEMBER',
'              (p_collection_name =>  ''OTHER_COST'',',
'               p_seq             =>  r_rec.seq_id);',
'        end loop;',
'',
'        APEX_COLLECTION.RESEQUENCE_COLLECTION (',
'        p_collection_name =>  ''OTHER_COST''); ',
'',
'    end;',
' ',
'end if;  ',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49678988883257243)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 TRNDATE,',
'          c004 PODCNO,',
'          c005 PODCDATE,',
'          c013 SUPPLIERNAME,',
'          c008 WARECODE,',
'          c010 BATCHNO,',
'          c019 UPDOCNUM',
'     INTO :P1002500424_TRNDATE, :P1002500424_PODCNO, :P1002500424_PODCDATE, :P1002500424_SUPPLIERCDE, :P1002500424_WARECODE, :P1002500424_BATCHNO, :P1002500424_UPDOCNUM',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
