prompt --application/pages/page_00447
begin
--   Manifest
--     PAGE: 00447
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
 p_id=>447
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Adjustment Form'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Adjustment Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_last_updated_by=>'SYSTEM'
,p_last_upd_yyyymmddhh24miss=>'20221025105634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23484707117426235)
,p_plug_name=>'Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25916302112809345)
,p_plug_name=>'Stock Information'
,p_region_name=>'STOCK_INFO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       c001 COMPCODE,',
'       c002 WARECODE,',
'       c003 ITEMCODE,        ',
'       c004 OPBALDTE,',
'       c005 OPBALQTY,',
'       c006 OPBALRTE,',
'       c007 OPBALVAL,',
'       c008 TOTALRCP,',
'       c009 TOTALISS,',
'       c010 CLBALDTE,',
'       c011 CLBALQTY,',
'       c012 CLBALRTE,',
'       c013 CLBALVAL,',
'       c014 BINLOCTN,',
'       c015 LASISSDT,',
'       c016 LASRCPDT,',
'       c017 BCARDQTY,',
'       c018 PHYSCQTY,',
'       c019 VERFRATE,',
'       c020 OPRSTAMP,',
'       c021 TIMSTAMP,',
'       c022 COSTRATE,',
'       c023 BATCHNUM, ',
'       c024 LAST_COSTRATE,',
'       c025 LAST_SALERATE,',
'       c026 LAST_MODIFYDTE,',
'       c027 DEFECTQT,',
'       c028 MODIFYDT,',
'       c029 BINMASPK,',
'       c030 ITEMNAME,',
'       c031 ADJQTY,',
'       c032 EXCESQTY,',
'       c033 SHORTQTY,',
'       c034 POST,',
'       c035 MLINK,',
'       c036 ITEMTYPE,',
'       c037 ITEMRATE,',
'       c038 HUOMCODE,',
'       c039 LUOMCODE,',
'       c040 COSTCODE,',
'       c041 IS_FG,',
'       C042 RC_FG',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
'   AND c002 = nvl(:P447_WARECODE,c002)',
'   AND c023 = nvl(:P447_BATCHNUM,c023) ',
'   AND c003 = nvl(:P447_ITEMCODE,c003);',
'   '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P447_WARECODE,P447_BATCHNUM,P447_ITEMCODE_MODAL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27105303113215631)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'CENTER'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27105560797215633)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_api.id(27106181174215639)
,p_name=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costrate'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158036295262607)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Compcode'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158146171262608)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Warehouse'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>false
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27158248160262609)
,p_name=>'OPBALDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALDTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opbaldte'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158331415262610)
,p_name=>'OPBALQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opbalqty'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158426243262611)
,p_name=>'OPBALRTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALRTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opbalrte'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158555178262612)
,p_name=>'OPBALVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPBALVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Opbalval'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158681882262613)
,p_name=>'TOTALRCP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALRCP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Totalrcp'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158765592262614)
,p_name=>'TOTALISS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTALISS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Totaliss'
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
 p_id=>wwv_flow_api.id(27158861017262615)
,p_name=>'CLBALDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALDTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Closing Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27158952117262616)
,p_name=>'CLBALQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Stock Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_api.id(27159052700262617)
,p_name=>'CLBALRTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALRTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Clbalrte'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159155072262618)
,p_name=>'CLBALVAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLBALVAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Clbalval'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159219019262619)
,p_name=>'BINLOCTN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINLOCTN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Binloctn'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159340822262620)
,p_name=>'LASISSDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LASISSDT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Lasissdt'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159437466262621)
,p_name=>'LASRCPDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LASRCPDT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Lasrcpdt'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159579592262622)
,p_name=>'BCARDQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BCARDQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Bcardqty'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159698652262623)
,p_name=>'PHYSCQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHYSCQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Physcqty'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159731800262624)
,p_name=>'VERFRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERFRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Verfrate'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159824154262625)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Oprstamp'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27159940291262626)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160023528262627)
,p_name=>'LAST_COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_COSTRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Costrate'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160182980262628)
,p_name=>'LAST_SALERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_SALERATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Salerate'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160243000262629)
,p_name=>'LAST_MODIFYDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_MODIFYDTE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Modifydte'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160378260262630)
,p_name=>'DEFECTQT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEFECTQT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Defectqt'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160427861262631)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Modifydt'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160508299262632)
,p_name=>'BINMASPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BINMASPK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Binmaspk'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160627937262633)
,p_name=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCHNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Batch No.'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27160760351262634)
,p_name=>'ITEMNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Item Name'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27162212261262649)
,p_name=>'ADJQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADJQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Adj Qty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
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
 p_id=>wwv_flow_api.id(27162324740262650)
,p_name=>'EXCESQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXCESQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Excess Qty</font>'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27808095248872901)
,p_name=>'SHORTQTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHORTQTY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'<font color="red">Short Qty</font>'
,p_heading_alignment=>'CENTER'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(27808193007872902)
,p_name=>'POST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'<font color="red">Confirm?</font>'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>370
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(27808375606872904)
,p_name=>'MLINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MLINK'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Action'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>450
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'class="t-Button t-Button--hot"'
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'javascript:openModal(''ADJUSTMENT'');$s(''P447_SL'',''&SL.'');$s(''P447_ITEMCODE_MODAL'',''&ITEMCODE.'');$s(''P447_ITEMNAME_MODAL'',''&ITEMNAME.'');$s(''P447_CLBALQTY'',''&CLBALQTY.'');$s(''P447_ADJQTY'',''&ADJQTY.'');$s(''P447_EXCESQTY'',''&EXCESQTY.'');$s(''P447_SHORTQTY'',''&'
||'SHORTQTY.'');$s(''P447_POST'',''&POST.'');apex.item( "P447_ADJQTY" ).setFocus();'
,p_link_text=>'ADJUSTMENT'
,p_link_attributes=>'class="t-Button t-Button--small t-Button--success t-Button--simple"'
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
 p_id=>wwv_flow_api.id(28599493989036309)
,p_name=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemtype'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(28599584831036310)
,p_name=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMRATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemrate'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(28599646335036311)
,p_name=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Huomcode'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(28599724063036312)
,p_name=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUOMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'UOM'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(28599890484036313)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Costcode'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(40178122440610234)
,p_name=>'IS_FG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_FG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Is Fg'
,p_heading_alignment=>'CENTER'
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
 p_id=>wwv_flow_api.id(40178206163610235)
,p_name=>'RC_FG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RC_FG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Rc Fg'
,p_heading_alignment=>'CENTER'
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(25916826989809345)
,p_internal_uid=>25916826989809345
,p_is_editable=>false
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>420
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(25917271114809346)
,p_interactive_grid_id=>wwv_flow_api.id(25916826989809345)
,p_static_id=>'395983'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(25917328026809346)
,p_report_id=>wwv_flow_api.id(25917271114809346)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(4440101090545)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(27160627937262633)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27163438270262790)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(27105303113215631)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27164414534262807)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(27105560797215633)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27167423130262825)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(27106181174215639)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27216593599760268)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(27158036295262607)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27217031007760281)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(27158146171262608)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>192
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27217583832760284)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(27158248160262609)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27218024060760287)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(27158331415262610)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27218506991760290)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(27158426243262611)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27219093923760292)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(27158555178262612)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27219555352760295)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(27158681882262613)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27220081778760298)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(27158765592262614)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27220556500760301)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(27158861017262615)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27221012907760304)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(27158952117262616)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27221513291760307)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(27159052700262617)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27222084165760310)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(27159155072262618)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27222563429760314)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(27159219019262619)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27223010307760315)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(27159340822262620)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27223518016760318)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(27159437466262621)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27224081740760321)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(27159579592262622)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27224515499760325)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(27159698652262623)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27225035282760328)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(27159731800262624)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27225567864760331)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(27159824154262625)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27226031698760332)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(27159940291262626)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27226558343760335)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(27160023528262627)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27227005244760339)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(27160182980262628)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27227543456760342)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(27160243000262629)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27228007557760345)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(27160378260262630)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27228572183760348)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(27160427861262631)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27229011026760350)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(27160508299262632)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27245744204951073)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(27160760351262634)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>215
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27814362387877881)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(27162212261262649)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27814899146877909)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(27162324740262650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27815339406877912)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(27808095248872901)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27815817026877915)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(27808193007872902)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(27816344182877918)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(27808375606872904)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29098233903300125)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(28599493989036309)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29098709938300140)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(28599584831036310)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29099235552300143)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(28599646335036311)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29099786039300146)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(28599724063036312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(29100216308300150)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(28599890484036313)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41968729622325192)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(40178122440610234)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(41969266760325200)
,p_view_id=>wwv_flow_api.id(25917328026809346)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(40178206163610235)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(27808489505872905)
,p_plug_name=>'Stock Adjustment'
,p_region_name=>'ADJUSTMENT'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>40
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65198626294754909)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27161858281262645)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(23484707117426235)
,p_button_name=>'Clear'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(27161507262262642)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(23484707117426235)
,p_button_name=>'SEARCH'
,p_button_static_id=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-check'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(100913407925509222)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(27808489505872905)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''ADJUSTMENT'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65198399344754906)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(65198626294754909)
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
 p_id=>wwv_flow_api.id(27811914354872940)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(27808489505872905)
,p_button_name=>'APPLY_COLL'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Apply'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28598932525036304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(65198626294754909)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select 1',
'      from apex_collections',
'     where collection_name = ''ORDER_ITEMS''',
'       AND c002 = NVL ( :P447_WARECODE, c002)',
'       AND c023 = NVL ( :P447_BATCHNUM, c023)',
'       AND c003 = NVL ( :P447_ITEMCODE, c003)',
'       AND c034 = ''Y'';'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23484673918426234)
,p_name=>'P447_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23484836079426236)
,p_name=>'P447_BATCHNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT batchnum d, batchnum r',
'    FROM nmwhimas',
'   WHERE compcode = :compcode',
'     AND warecode = NVL (:P447_WARECODE, warecode)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-SELECT-'
,p_lov_cascade_parent_items=>'P447_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'300'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23484989714426237)
,p_name=>'P447_ITEMCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ITEM POPUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct dfn_itname(ITEMCODE) ITEMNAME, itemcode',
'  from nmwhimas',
' where compcode = :compcode',
'   and warecode = nvl(:P447_WARECODE, warecode)',
'   and batchnum = nvl(:P447_BATCHNUM, batchnum)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-SELECT-'
,p_lov_cascade_parent_items=>'P447_WARECODE'
,p_ajax_items_to_submit=>'P447_BATCHNUM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'400'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23485004447426238)
,p_name=>'P447_WARECODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST (USERWISE)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-SELECT-'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'500'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27808705012872908)
,p_name=>'P447_SL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27808854466872909)
,p_name=>'P447_ITEMCODE_MODAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27808939600872910)
,p_name=>'P447_ITEMNAME_MODAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27809021813872911)
,p_name=>'P447_CLBALQTY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stock Qty'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27809641851872917)
,p_name=>'P447_ADJQTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adjust Qty'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allow-integer'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27811610279872937)
,p_name=>'P447_POST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Confirm?'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27812669414872947)
,p_name=>'P447_EXCESQTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exces Qty'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(27812729146872948)
,p_name=>'P447_SHORTQTY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Short Qty'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28599348459036308)
,p_name=>'P447_DOCNUMBR_IS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28600372446036318)
,p_name=>'P447_SPINNER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_prompt=>'Spinner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_tag_css_classes=>'u-VisuallyHidden'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>'u-VisuallyHidden'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28600451038036319)
,p_name=>'P447_IS_FG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28600562969036320)
,p_name=>'P447_RC_FG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(27808489505872905)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28601225966036327)
,p_name=>'P447_DOCNUMBR_RC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23484707117426235)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27161671601262643)
,p_name=>'DA Apply'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27161507262262642)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28600171293036316)
,p_event_id=>wwv_flow_api.id(27161671601262643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
'',
'Begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'        p_query => ''SELECT COMPCODE,',
'                           WARECODE,',
'                           ITEMCODE,',
'                           OPBALDTE,',
'                           OPBALQTY,',
'                           OPBALRTE,',
'                           OPBALVAL,',
'                           TOTALRCP,',
'                           TOTALISS,',
'                           CLBALDTE,',
'                           CLBALQTY,',
'                           CLBALRTE,',
'                           CLBALVAL,',
'                           BINLOCTN,',
'                           LASISSDT,',
'                           LASRCPDT,',
'                           BCARDQTY,',
'                           PHYSCQTY,',
'                           VERFRATE,',
'                           OPRSTAMP,',
'                           TIMSTAMP,',
'                           COSTRATE,',
'                           BATCHNUM,',
'                           LAST_COSTRATE,',
'                           LAST_SALERATE,',
'                           LAST_MODIFYDTE,',
'                           DEFECTQT,',
'                           MODIFYDT,',
'                           NULL BINMASPK,',
'                           dfn_itname (ITEMCODE) ITEMNAME,',
'                           NULL ADJQTY,',
'                           NULL EXCESQTY,',
'                           NULL SHORTQTY,',
'                           ''''N'''' POST,',
'                           NULL MLINK,',
'                           (SELECT ITEMTYPE',
'                              FROM nmitemas',
'                             WHERE compcode = ''''''||:COMPCODE||'''''' AND ITEMCODE = a.ITEMCODE)',
'                              ITEMTYPE,',
'                           (SELECT NVL (COSTRATE, SALERATE)',
'                              FROM nmitemas',
'                             WHERE compcode = ''''''||:COMPCODE||'''''' AND ITEMCODE = a.ITEMCODE)',
'                              ITEMRATE,',
'                           (SELECT HUOMCODE',
'                              FROM nmitemas',
'                             WHERE compcode = ''''''||:COMPCODE||'''''' AND ITEMCODE = a.ITEMCODE)',
'                              HUOMCODE,',
'                           (SELECT LUOMCODE',
'                              FROM nmitemas',
'                             WHERE compcode = ''''''||:COMPCODE||'''''' AND ITEMCODE = a.ITEMCODE)',
'                              LUOMCODE,',
'                           (SELECT COSTCODE',
'                              FROM nmitemas',
'                             WHERE compcode = ''''''||:COMPCODE||'''''' AND ITEMCODE = a.ITEMCODE)',
'                              COSTCODE',
'                      FROM NMWHIMAS a',
'                     WHERE COMPCODE = ''''''||:COMPCODE||''''''',
'                       AND WARECODE = nvl(''''''||:P447_WARECODE||'''''',WARECODE)',
'                       AND BATCHNUM = nvl(''''''||:P447_BATCHNUM||'''''',BATCHNUM) ',
'                       AND ITEMCODE = nvl(''''''||:P447_ITEMCODE||'''''',ITEMCODE)'');',
'end;      ',
''))
,p_attribute_02=>'P447_WARECODE,P447_BATCHNUM,P447_ITEMCODE'
,p_attribute_03=>'P447_SPINNER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27161702440262644)
,p_event_id=>wwv_flow_api.id(27161671601262643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25916302112809345)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27161943428262646)
,p_name=>'DA Clear'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(27161858281262645)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27162013552262647)
,p_event_id=>wwv_flow_api.id(27161943428262646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P447_WARECODE,P447_BATCHNUM,P447_ITEMCODE_MODAL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(27162196712262648)
,p_event_id=>wwv_flow_api.id(27161943428262646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25916302112809345)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(27812981797872950)
,p_name=>'excess or short'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P447_ADJQTY'
,p_condition_element=>'P447_ADJQTY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28598605899036301)
,p_event_id=>wwv_flow_api.id(27812981797872950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'	if to_number(nvl(:P447_ADJQTY,0)) > to_number(nvl(:P447_CLBALQTY,0)) then',
'        :P447_EXCESQTY := nvl(:P447_ADJQTY,0) - nvl(:P447_CLBALQTY,0);',
'        :P447_SHORTQTY := null;',
'        :P447_IS_FG := ''N'';',
'        :P447_RC_FG := ''Y'';',
'    end if;',
'',
'    if to_number(nvl(:P447_CLBALQTY,0)) > to_number(nvl(:P447_ADJQTY,0)) then',
'		:P447_SHORTQTY := nvl(:P447_CLBALQTY,0) - nvl(:P447_ADJQTY,0);',
'        :P447_EXCESQTY := null;',
'        :P447_RC_FG := ''N'';',
'        :P447_IS_FG := ''Y'';',
'	end if;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_attribute_02=>'P447_ADJQTY,P447_CLBALQTY'
,p_attribute_03=>'P447_EXCESQTY,P447_SHORTQTY,P447_IS_FG,P447_RC_FG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28598731235036302)
,p_name=>'modal close'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(27808489505872905)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28598899067036303)
,p_event_id=>wwv_flow_api.id(28598731235036302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P447_ADJQTY,P447_EXCESQTY,P447_SHORTQTY'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65198449628754907)
,p_name=>'Cancel Dialog'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65198399344754906)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100913899944509226)
,p_event_id=>wwv_flow_api.id(65198449628754907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100913979634509227)
,p_event_id=>wwv_flow_api.id(65198449628754907)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65198517339754908)
,p_event_id=>wwv_flow_api.id(65198449628754907)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23485270280426240)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ORDER_ITEMS collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF not apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.create_collection(''ORDER_ITEMS'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
'*/'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(27161408489262641)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'   FOR i',
'      IN (  SELECT seq_id SL,',
'                   c001 COMPCODE,',
'                   c002 WARECODE,',
'                   c003 ITEMCODE,',
'                   c004 OPBALDTE,',
'                   c005 OPBALQTY,',
'                   c006 OPBALRTE,',
'                   c007 OPBALVAL,',
'                   c008 TOTALRCP,',
'                   c009 TOTALISS,',
'                   c010 CLBALDTE,',
'                   c011 CLBALQTY,',
'                   c012 CLBALRTE,',
'                   c013 CLBALVAL,',
'                   c014 BINLOCTN,',
'                   c015 LASISSDT,',
'                   c016 LASRCPDT,',
'                   c017 BCARDQTY,',
'                   c018 PHYSCQTY,',
'                   c019 VERFRATE,',
'                   c020 OPRSTAMP,',
'                   c021 TIMSTAMP,',
'                   c022 COSTRATE,',
'                   c023 BATCHNUM,',
'                   c024 LAST_COSTRATE,',
'                   c025 LAST_SALERATE,',
'                   c026 LAST_MODIFYDTE,',
'                   c027 DEFECTQT,',
'                   c028 MODIFYDT,',
'                   c029 BINMASPK,',
'                   c030 ITEMNAME,',
'                   c031 ADJQTY,',
'                   c032 EXCESQTY,',
'                   c033 SHORTQTY,',
'                   c034 POST,',
'                   c035 MLINK,',
'                   c036 ITEMTYPE,',
'                   c037 ITEMRATE,',
'                   c038 HUOMCODE,',
'                   c039 LUOMCODE,',
'                   c040 COSTCODE',
'              FROM apex_collections',
'             WHERE     collection_name = ''ORDER_ITEMS''',
'                   AND c002 = NVL ( :P447_WARECODE, c002)',
'                   AND c023 = NVL ( :P447_BATCHNUM, c023)',
'                   AND c003 = NVL ( :P447_ITEMCODE, c003)',
'                   AND c034 = ''Y''',
'          ORDER BY sl)',
'   LOOP',
'      INSERT INTO NMSTKREC (COMPCODE,',
'                            DOCTTYPE,',
'                            SUBTTYPE,',
'                            DOCNUMBR,',
'                            DOCTDATE,',
'                            SERLNUMB,',
'--                            PARTYCDE,',
'--                            RAISEDBY,',
'--                            APPRVDBY,',
'--                            APPRDATE,',
'--                            REQDDATE,',
'--                            COMMCODE,',
'                            ITEMCODE,',
'                            ITEMTYPE,',
'--                            MCSERIAL,',
'--                            CMSERIAL,',
'                            ITEMDESC,',
'                            ITEMLONG,',
'                            ITEMRATE,',
'--                            DISCPCNT,',
'--                            DISCAMNT,',
'--                            SPLDISPC,',
'--                            SPLDISNT,',
'--                            SALERATE,',
'                            HUOMCODE,',
'--                            FACTRVAL,',
'                            LUOMCODE,',
'                            ORGNQNTY,',
'                            APPRQNTY,',
'--                            TRNSQNTY,',
'--                            TRNSQTY2,',
'--                            MSFCAMNT,',
'                            CURRCODE,',
'                            EXCGRATE,',
'--                            MSLCAMNT,',
'--                            ADJAMTLC,',
'--                            REFNUMBR,',
'--                            REFNDATE,',
'--                            UPDOCTYP,',
'--                            UPSUBTYP,',
'--                            UPDOCNUM,',
'--                            UPDOCDTE,',
'--                            UPDOCSRL,',
'--                            DWDOCTYP,',
'--                            DWSUBTYP,',
'--                            DWDOCNUM,',
'--                            DWDOCDTE,',
'--                            DWDOCSRL,',
'--                            ACDOCTYP,',
'--                            ACSUBTYP,',
'--                            ACDOCNUM,',
'--                            ACDOCDTE,',
'--                            ACDOCSRL,',
'--                            REMARKSS,',
'                            COSTCODE,',
'                            WARECODE,',
'--                            POSTFLAG,',
'--                            PRNTFLAG,',
'--                            PRICFLAG,',
'--                            PRINTCNT,',
'--                            BALNFLAG,',
'--                            RATVFLAG,',
'                            STATUSCD,',
'--                            TCSTPCNT,',
'--                            DIVNCODE,',
'--                            TECHNICN,',
'--                            ENGINEER,',
'--                            AMENDSRL,',
'--                            MATLTYPE,',
'--                            BOQREFER,',
'--                            MFRGDATE,',
'--                            MFRGTIME,',
'--                            PARNTITM,',
'--                            INDTFLAG,',
'                            OPRSTAMP,',
'                            TIMSTAMP,',
'                            BATCHNUM',
'--                            BATCHEXP,',
'--                            BATCHDTE,',
'--                            NORMRATE,',
'--                            SRVCTRCN,',
'--                            DGNITMFK,',
'--                            STKRCFK1,',
'--                            COSTRATE,',
'--                            AVRGRATE,',
'--                            SERIALST,',
'--                            SERIALEN,',
'--                            BOM_NO,',
'--                            COLORCDE,',
'--                            SRCWRECD,',
'--                            SNDPERSN,',
'--                            INVNUMFK,',
'--                            SRCCMPCD',
'                           )',
'           VALUES ( :COMPCODE,',
'                   case when to_number(i.EXCESQTY) > 0 then ''IS''',
'                        when to_number(i.SHORTQTY) > 0 then ''RC'' end,',
'                   30,',
'                   case when to_number(i.EXCESQTY) > 0 then :P447_DOCNUMBR_IS',
'                        when to_number(i.SHORTQTY) > 0 then :P447_DOCNUMBR_RC end,',
'                   SYSDATE,',
'                   i.SL,',
'--                   v_SUPPLIERCDE,',
'--                   :APP_USER,',
'--                   i.APPRVDBY,',
'--                   i.APPRDATE,',
'--                   v_REQDDAT,                                     --:REQDDATE,',
'--                   i.COMMCODE,',
'                   i.ITEMCODE,',
'                   NVL (i.ITEMTYPE, ''S''),',
'--                   NULL,                                         --i.MCSERIAL,',
'--                   NULL,                                         --i.CMSERIAL,',
'                   i.ITEMNAME,',
'                   i.ITEMNAME,',
'                   i.ITEMRATE,',
'--                   i.DISCPCNT,',
'--                   i.DISCAMNT,',
'--                   i.SPLDISPC,',
'--                   i.SPLDISNT,',
'--                   i.SALERATE,',
'                   NVL (i.HUOMCODE,i.LUOMCODE),',
'--                   i.FACTRVAL,',
'                   NVL (i.LUOMCODE,i.HUOMCODE),',
'                   case when to_number(i.EXCESQTY) > 0 then i.EXCESQTY',
'                        when to_number(i.SHORTQTY) > 0 then i.SHORTQTY end,',
'                   case when to_number(i.EXCESQTY) > 0 then i.EXCESQTY',
'                        when to_number(i.SHORTQTY) > 0 then i.SHORTQTY end,',
'--                   NULL,                                           --i.RCVQTY,',
'--                   NULL, --i.TRNSQTY2,                                            --:TRNSQNTY',
'--                   i.MSFCAMNT,',
'                     ''BDT'', --NVL (:CURRCODE, :P106_CURRENCY), ',
'                     1, --NVL (:EXCGRATE, :P106_EXCHANGERATE), i.EXCGRATE,',
'--                   i.MSLCAMNT,',
'--                   NULL,                                         --i.ADJAMTLC,',
'--                   v_REFNUMBR,',
'--                   v_REFNDATE,',
'--                   i.DOCTTYPE,                               --:P425_S_PRDTYP,',
'--                   i.SUBTTYPE,                               --:P425_S_PRSTYP,',
'--                   v_PODCNO,',
'--                   v_PODCDATE,',
'--                   i.SL,',
'--                   NULL,                                          --:DWDOCTYP,',
'--                   NULL,                                          --:DWSUBTYP,',
'--                   NULL,                                          --:DWDOCNUM,',
'--                   NULL,                                           --DWDOCDTE,',
'--                   NULL,                                          --:DWDOCSRL,',
'--                   NULL,                                          --:ACDOCTYP,',
'--                   NULL,                                          --:ACSUBTYP,',
'--                   NULL,                                          --:ACDOCNUM,',
'--                   NULL,                                          --:ACDOCDTE,',
'--                   NULL,                                          --:ACDOCSRL,',
'--                   i.REMARKSS,',
'                   i.COSTCODE,                                   --v_COSTCODE,',
'                   i.WARECODE,                                   --v_WARECODE,',
'--                   i.POSTFLAG,',
'--                   i.PRNTFLAG,',
'--                   i.PRICFLAG,',
'--                   NULL,                                         --i.PRINTCNT,',
'--                   NULL,                                         --i.BALNFLAG,',
'--                   NULL,                                         --i.RATVFLAG,',
'                    ''NEW'', --i.STATUSCD,',
'--                   NULL,                                         --i.TCSTPCNT,',
'--                   NULL,                                         --i.DIVNCODE,',
'--                   NULL,                                         --i.TECHNICN,',
'--                   NULL,                                         --i.ENGINEER,',
'--                   NULL,                                         --i.AMENDSRL,',
'--                   NULL,                                         --i.MATLTYPE,',
'--                   NULL,                                         --i.BOQREFER,',
'--                   NULL,                                         --i.MFRGDATE,',
'--                   NULL,                                         --i.MFRGTIME,',
'--                   NULL,                                         --i.PARNTITM,',
'--                   NULL,                                         --i.INDTFLAG,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   i.BATCHNUM',
'--                   v_BTCHEXPDAT,',
'--                   NVL (v_BATCHDATE, SYSDATE),',
'--                   NULL,                                         --i.NORMRATE,',
'--                   NULL,                                         --i.SRVCTRCN,',
'--                   NULL,                                         --i.DGNITMFK,',
'--                   NULL,                                         --i.NEGITMFK,',
'--                   i.COSTRATE,',
'--                   NULL,                                         --i.AVRGRATE,',
'--                   NULL,                                         --i.SERIALST,',
'--                   NULL,                                         --i.SERIALEN,',
'--                   NULL,                                           --i.BOM_NO,',
'--                   NULL,                                         --i.COLORCDE,',
'--                   NULL,                                         --i.SRCWRECD,',
'--                   NULL,                                         --i.SNDPERSN,',
'--                   NULL,                                         --i.INVNUMFK,',
'--                   i.COMPCODE',
'                  );',
'   END LOOP;',
'',
'   IF apex_collection.collection_exists (p_collection_name => ''ORDER_ITEMS'') = TRUE THEN',
'      apex_collection.delete_collection (p_collection_name => ''ORDER_ITEMS'');',
'      COMMIT;',
'   END IF;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'      raise_application_error (-20001, ''No data found'');',
'   WHEN TOO_MANY_ROWS THEN',
'      raise_application_error (-20001, ''Too many rows found'');',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28598932525036304)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Stock Adjustment Successful...<br>',
'Document No. : &P447_DOCNUMBR_IS. | &P447_DOCNUMBR_RC.'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(100914143237509229)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28598932525036304)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(100913709271509225)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 31,',
'        p_attr_value => :P447_ADJQTY);     ',
'        ',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 32,',
'        p_attr_value => :P447_EXCESQTY); ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 33,',
'        p_attr_value => :P447_SHORTQTY);    ',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 34,',
'        p_attr_value => :P447_POST);',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 41,',
'        p_attr_value => :P447_IS_FG);',
'',
'    APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq => :P447_SL,',
'        p_attr_number => 42,',
'        p_attr_value => :P447_RC_FG);',
'        commit;',
'',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(27811914354872940)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28599263757036307)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'v_is_ig char(1) := 0;',
'v_rc_fg char(1) := 0;',
'begin',
'',
'select count(*)',
'into v_is_ig',
'from apex_collections',
'where collection_name = ''ORDER_ITEMS''',
'and c034 = ''Y''',
'and c041 = ''Y'';',
'',
'select count(*)',
'into v_rc_fg',
'from apex_collections',
'where collection_name = ''ORDER_ITEMS''',
'and c034 = ''Y''',
'and c042 = ''Y'';',
'',
'IF v_is_ig > 0 THEN',
'docnumber_generation(:COMPCODE, ''NM'', ''IS'',',
'                     30, SYSDATE, :P447_WARECODE, --:null',
'                     ''NM'', newno);',
' ',
':P447_DOCNUMBR_IS := newno;  ',
'END IF;',
'',
'IF v_rc_fg > 0 THEN',
'docnumber_generation(:COMPCODE, ''NM'', ''RC'',',
'                     30, SYSDATE, :P447_WARECODE, --null',
'                     ''NM'', docnum);',
' ',
':P447_DOCNUMBR_RC := docnum;  ',
'END IF;',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Docnumber Generation Others Problem '');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(28598932525036304)
);
wwv_flow_api.component_end;
end;
/
