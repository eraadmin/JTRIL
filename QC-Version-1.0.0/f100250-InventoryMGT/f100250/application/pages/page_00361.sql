prompt --application/pages/page_00361
begin
--   Manifest
--     PAGE: 00361
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
 p_id=>361
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Item master test-08052018'
,p_page_mode=>'MODAL'
,p_step_title=>'Item master test-08052018'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'',
'function getImage(event) {',
'    var output2 = document.getElementById(''output2'');',
'    output2.style.width = "150px";',
'    output2.style.height = "100px";',
'    output2.title="Item Image";',
'    output2.src = URL.createObjectURL(event.target.files[0]);',
'}',
'</script>',
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> ',
'',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'document.getElementById(''P59_INMFGREF'').value=',
'    document.getElementById(''P59_ITEMCODE'').value;',
'document.getElementById(''P59_ITEMDES2'').value=',
'    document.getElementById(''P59_ITEMDES1'').value;',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180515112029'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263430952836805129)
,p_plug_name=>'<font color=white>.</font>'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45582016846204109)
,p_plug_name=>'Product Size Define'
,p_parent_plug_id=>wwv_flow_api.id(263430952836805129)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NMITMPK, ITEMCODE, ITEMDESC, CATEGORY, FLEX_01, FLEX_02, ',
'FLEX_03, FLEX_04, FLEX_05, FLEX_06, FLEX_07, FLEX_08, FLEX_09, ',
'FLEX_10, FLEX_11, FLEX_12, FLEX_13, FLEX_14',
'from NMITEMAS_DETAIL',
'where ITEMCODE=:P361_ITEMCODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P361_ITEMCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(45582276559204111)
,p_name=>'NMITMPK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMITMPK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_is_primary_key=>false
,p_default_type=>'SEQUENCE'
,p_default_expression=>'ITEM_WEIGHT_SIZE_SEQ'
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(45582305756204112)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Itemcode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
,p_default_type=>'ITEM'
,p_default_expression=>'P361_ITEMCODE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(45582446132204113)
,p_name=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMDESC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(45582519515204114)
,p_name=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(45582633137204115)
,p_name=>'FLEX_01'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_01'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_01.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45582769147204116)
,p_name=>'FLEX_02'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_02'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_02.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45582861676204117)
,p_name=>'FLEX_03'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_03'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_03.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45582919991204118)
,p_name=>'FLEX_04'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_04'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_04.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583023331204119)
,p_name=>'FLEX_05'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_05'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_05.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583106868204120)
,p_name=>'FLEX_06'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_06'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_06.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583224285204121)
,p_name=>'FLEX_07'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_07'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_07.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583327820204122)
,p_name=>'FLEX_08'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_08'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_08.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583392512204123)
,p_name=>'FLEX_09'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_09'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_09.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583577248204124)
,p_name=>'FLEX_10'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_10'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'&FLEX_10.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(45583672269204125)
,p_name=>'FLEX_11'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_11'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(45583720511204126)
,p_name=>'FLEX_12'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_12'
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
 p_id=>wwv_flow_api.id(45583876655204127)
,p_name=>'FLEX_13'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_13'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(45583946227204128)
,p_name=>'FLEX_14'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLEX_14'
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
 p_id=>wwv_flow_api.id(45584025696204129)
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
 p_id=>wwv_flow_api.id(45584121433204130)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(45584260548204131)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(45582130582204110)
,p_internal_uid=>10244040544439708
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
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
'    config.toolbarData = [',
'        ',
'    ];',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(45885898496038421)
,p_interactive_grid_id=>wwv_flow_api.id(45582130582204110)
,p_static_id=>'395842'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(45886035949038421)
,p_report_id=>wwv_flow_api.id(45885898496038421)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45886540517038423)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(45582276559204111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45886990451038425)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(45582305756204112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45887500890038426)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(45582446132204113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45888079510038426)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(45582519515204114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45888580551038427)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(45582633137204115)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45888995577038429)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(45582769147204116)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45889533603038430)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(45582861676204117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45890064834038431)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(45582919991204118)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45890556304038432)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(45583023331204119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45890989402038433)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(45583106868204120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45891587186038433)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(45583224285204121)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45892049257038434)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(45583327820204122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45892551872038435)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(45583392512204123)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45893000182038436)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(45583577248204124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45893559735038437)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(45583672269204125)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45894004524038438)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(45583720511204126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45894554534038438)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(45583876655204127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45895068406038439)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(45583946227204128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45895992099039556)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(45584025696204129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(45896535621039557)
,p_view_id=>wwv_flow_api.id(45886035949038421)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(45584121433204130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45773185064901956)
,p_plug_name=>'Item Category'
,p_parent_plug_id=>wwv_flow_api.id(263430952836805129)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>15
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "CODEDESC" as title, ',
'       null as icon, ',
'       "PARNTCDE" as value, ',
'       null as tooltip, ',
'       '' javascript:$s(''''P361_PARENTCODE'''',''''''||PARNTCDE||''''''),$s(''''P361_PARENTCODE_1'''',''''''||LEVLCODE||'''''')'' as link ',
'from "#OWNER#"."SYCDEDTL"',
'start with "PARNTCDE" IS  NULL',
'connect by prior "LEVLCODE" = "PARNTCDE"',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_03=>'P361_PARENTCODE'
,p_attribute_04=>'N'
,p_attribute_07=>'APEX_TREE'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263401474247799155)
,p_plug_name=>'Item Information'
,p_parent_plug_id=>wwv_flow_api.id(263430952836805129)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264012277377133957)
,p_plug_name=>'Stock Information'
,p_parent_plug_id=>wwv_flow_api.id(263430952836805129)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49983144007214691)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50314795028322448)
,p_plug_name=>'Item Image'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127116569999345552)
,p_plug_name=>'Image'
,p_parent_plug_id=>wwv_flow_api.id(50314795028322448)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(215809492083511059)
,p_plug_name=>'image'
,p_parent_plug_id=>wwv_flow_api.id(50314795028322448)
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>9
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263591101793423619)
,p_plug_name=>'Stock Manitenance'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263591282877423620)
,p_plug_name=>'Default Rate'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263591382489423621)
,p_plug_name=>'Account Information'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263591439572423622)
,p_plug_name=>'Groups'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(263591825643423626)
,p_plug_name=>'Model Information'
,p_parent_plug_id=>wwv_flow_api.id(264012277377133957)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(327601353532298224)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>41
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41590102562286011)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(327601353532298224)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41590501145286011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(327601353532298224)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:361::'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41590964117286011)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(327601353532298224)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P361_ITEMCODE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41591290617286011)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(327601353532298224)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P361_ITEMCODE'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41578948531286007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45773185064901956)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Collapse All'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41579359770286007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(45773185064901956)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'RIGHT_OF_TITLE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41600184315286013)
,p_branch_name=>'Go To Page 193'
,p_branch_action=>'f?p=&APP_ID.:361:&SESSION.::&DEBUG.:361::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41532843459285994)
,p_name=>'P361_LEVLCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41533220605285996)
,p_name=>'P361_ROWID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41533670183285996)
,p_name=>'P361_COMPCODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41534057063285996)
,p_name=>'P361_PARENTCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'parent code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41534403365285996)
,p_name=>'P361_PARENTCODE_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'parent 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41534882782285996)
,p_name=>'P361_CATEGORY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CTG''',
' and compcode=:COMPCODE',
'order by 1 '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CTG''',
' and compcode=:COMPCODE',
'order by 1 '))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41535191221285996)
,p_name=>'P361_CATEGORY_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41535595599285996)
,p_name=>'P361_SUBCATEGORY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Sub-Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' ',
' AND nmhrdcde = :P361_CATEGORY',
' and compcode=:COMPCODE',
'order by 1 '))
,p_lov_cascade_parent_items=>'P361_CATEGORY'
,p_ajax_items_to_submit=>'P361_CATEGORY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>150
,p_cattributes_element=>'onmouseover="toolTip_enable(event,this,''Category add to code paramters form(Hardcode-DMN) '')"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41536045040285997)
,p_name=>'P361_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Itemcode</font>'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41536467705285997)
,p_name=>'P361_INMFGREF'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41536798351285997)
,p_name=>'P361_USERCODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41537216429285997)
,p_name=>'P361_ITEMDES1'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'<font color="red">Short Desc.</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_tag_attributes=>'onchange="calculateTotal2(this);"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41537593298285997)
,p_name=>'P361_ITEMDES2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'<font color="red">Long Desc</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41538013358285997)
,p_name=>'P361_ITEMTYPE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'S'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41538431560285997)
,p_name=>'P361_ITEMCLAS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CLS'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41538796783285998)
,p_name=>'P361_ITMSUBCL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  nmcoddes d, nmsofcde r',
'           FROM nmcodmas',
'          WHERE compcode = :compcode ',
'            AND modlcode = :modlcode ',
'            AND nmhrdcde IN (',
'                      SELECT DISTINCT nmsofcde',
'                                 FROM nmcodmas',
'                                WHERE compcode = :compcode ',
'                                  AND modlcode = :modlcode ',
'                                  AND nmhrdcde = ''DUT'')'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41539262415285998)
,p_name=>'P361_USERDEF1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41539669765285998)
,p_name=>'P361_DRAWNGNO'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41539994877285998)
,p_name=>'P361_HUOMCODE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'<font color="red">Unit of Measurement</font>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   iuomdesc d, iuomcode r',
'    FROM nmuommas',
'   WHERE compcode = :compcode  ',
'ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41540463771285998)
,p_name=>'P361_ITEMMODL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Product Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41540859870285998)
,p_name=>'P361_ITEMMODL_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41541219183285998)
,p_name=>'P361_COLORCDE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Color'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde ',
'  FROM nmcodmas',
' WHERE compcode = :COMPCODE AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'onmouseover="toolTip_enable(event,this,''Color add to code paramters form(Hardcode-CLR) '')"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41541686107285998)
,p_name=>'P361_DESIGNCD'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Style'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''STY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cattributes_element=>'onmouseover="toolTip_enable(event,this,''Style add to code paramters form(Hardcode-STY) '')"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41542035855285998)
,p_name=>'P361_COMMGRUP'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'003'
,p_prompt=>'<font color="red">Brand</font>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD''  and MODLCODE = ''NM'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cattributes_element=>'onmouseover="toolTip_enable(event,this,''Brand add to code paramters form(Hardcode-MOD) '')"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41542456310285998)
,p_name=>'P361_MFRSCNTR'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Manufactures'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41542884534285998)
,p_name=>'P361_MFRSYEAR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Manufacture Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41543228915285999)
,p_name=>'P361_ITEMSIZE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Itemsize'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''SIZ'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41543673844285999)
,p_name=>'P361_STATUSCD'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITEMSTATUS2'
,p_lov=>'.'||wwv_flow_api.id(42629658653040606)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41544063749285999)
,p_name=>'P361_FINISHGD'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'N'
,p_prompt=>'Finished Goods ?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y OR N2'
,p_lov=>'.'||wwv_flow_api.id(42635018188040612)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41544452582285999)
,p_name=>'P361_LOCALPRT'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'N'
,p_prompt=>'Local Parts?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y OR N2'
,p_lov=>'.'||wwv_flow_api.id(42635018188040612)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41544868496285999)
,p_name=>'P361_SEMFINGD'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_item_default=>'N'
,p_prompt=>'Semi Finished goods?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y OR N2'
,p_lov=>'.'||wwv_flow_api.id(42635018188040612)||'.'
,p_cHeight=>1
,p_tag_attributes2=>'style="width: 40%;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41545208817285999)
,p_name=>'P361_LUOMCODE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41545673492285999)
,p_name=>'P361_BINLOCAT'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41546006374285999)
,p_name=>'P361_CREADATE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41546444801285999)
,p_name=>'P361_XYZCLSFN'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41546850524285999)
,p_name=>'P361_ACCTCODE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41547258813285999)
,p_name=>'P361_DBACCTCD'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41547639145285999)
,p_name=>'P361_AREAFORM'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41548061947286000)
,p_name=>'P361_FORMFLAG'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41548475284286000)
,p_name=>'P361_AREAVALU'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41548798571286000)
,p_name=>'P361_USERDEF2'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41549195865286000)
,p_name=>'P361_USERDEF3'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41549604052286000)
,p_name=>'P361_USERDEF4'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41550064507286000)
,p_name=>'P361_USERFLG1'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41550447727286000)
,p_name=>'P361_USERFLG2'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41550823470286000)
,p_name=>'P361_OPRSTAMP'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41551279109286000)
,p_name=>'P361_TIMSTAMP'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41551590953286000)
,p_name=>'P361_ITEMLENG'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41552060051286000)
,p_name=>'P361_LENGUNIT'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41552433389286000)
,p_name=>'P361_ITEMWIDT'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41552830203286000)
,p_name=>'P361_WIDTUNIT'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41553260232286001)
,p_name=>'P361_ITEMHEIT'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41553652631286001)
,p_name=>'P361_HEITUNIT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41554021642286001)
,p_name=>'P361_UNITVOLM'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41554487097286001)
,p_name=>'P361_UNITWEIT'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41554797965286001)
,p_name=>'P361_RTMODPCT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41555231808286001)
,p_name=>'P361_PACKWGHT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41555654666286001)
,p_name=>'P361_GENRLFLG'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41556082905286001)
,p_name=>'P361_SALEPERC'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41556475843286001)
,p_name=>'P361_ITEMDES3'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41556859349286001)
,p_name=>'P361_RMNDRFLG'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41557192051286001)
,p_name=>'P361_CHASISNO'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41557683501286001)
,p_name=>'P361_ENGINENO'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41558007870286001)
,p_name=>'P361_WARECODE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41558437730286002)
,p_name=>'P361_SALESFLG'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(263401474247799155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41559390154286002)
,p_name=>'P361_ABCCLSFN'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(49983144007214691)
,p_item_default=>'H'
,p_prompt=>'Consumption'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:High;H,Medium;M,Low;L'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41559831449286002)
,p_name=>'P361_FSNCLSFN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(49983144007214691)
,p_item_default=>'F'
,p_prompt=>'Movement'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Fast;F,Slow;S,Nill;N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41560808091286002)
,p_name=>'P361_ROWID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41561227631286002)
,p_name=>'P361_COMPCODE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41561653330286003)
,p_name=>'P361_ITEMCODE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_item_default=>'5874239'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41562022756286003)
,p_name=>'P361_ITMIMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Image'
,p_source=>'ITMIMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_tag_attributes=>'onchange="getImage(event);"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41562457953286003)
,p_name=>'P361_DATASIZE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'DATASIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41562814140286003)
,p_name=>'P361_DATATYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'DATATYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41563222467286003)
,p_name=>'P361_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41563684246286003)
,p_name=>'P361_FILENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41564052137286003)
,p_name=>'P361_MODIFYDT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(127116569999345552)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41564760354286003)
,p_name=>'P361_DISPLAY_IMAGES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(215809492083511059)
,p_pre_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="select-img">',
'<img id="output2"/>'))
,p_post_element_text=>'</div>'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'height="100px;" width="250px;" '
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITMIMAGE from ITMIMAGE',
'where COMPCODE=:COMPCODE',
'and ITEMCODE=nvl(:P361_ITEMCODE,''A'')'))
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
 p_id=>wwv_flow_api.id(41565413549286004)
,p_name=>'P361_ECOORDER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>'E.O.Q.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41565838101286004)
,p_name=>'P361_IREORDER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>' &nbsp;R.  O.  L. &nbsp;'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41566274970286004)
,p_name=>'P361_MAXLEVEL'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>'Max Stock'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41566609362286004)
,p_name=>'P361_MINLEVEL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>'Min stock'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41567038132286004)
,p_name=>'P361_RESRDQTY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41567459097286004)
,p_name=>'P361_LEADTIME'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>' &nbsp;Lead time &nbsp;'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41567790094286004)
,p_name=>'P361_COSTMTOD'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(263591101793423619)
,p_prompt=>'Cost Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COSTMETHOD2'
,p_lov=>'.'||wwv_flow_api.id(42631080906040609)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41568563514286004)
,p_name=>'P361_ISSUMTHD'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'Issue Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSMETHOD2'
,p_lov=>'.'||wwv_flow_api.id(42633251515040610)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41568915035286004)
,p_name=>'P361_COSTTYPE'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'Cost Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41569367282286005)
,p_name=>'P361_SALERATE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'<font color="red">Sale Rate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_tag_attributes=>'style="width: 95%;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41569742199286005)
,p_name=>'P361_COSTRATE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'<font color="red">Cost Rate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41570137654286005)
,p_name=>'P361_STNDRATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'<font color="red">Standerate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41570527367286005)
,p_name=>'P361_FACTRVAL'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_prompt=>'Sale(%)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41570920481286005)
,p_name=>'P361_AVRGRATE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(263591282877423620)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41571667010286005)
,p_name=>'P361_CNSMPGRP'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_prompt=>'Consumption Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   acctcode d, grupcode r',
'    FROM nmactgrp',
'   WHERE compcode = :compcode  AND typecode = ''CSP'' ',
'ORDER BY grupcode'))
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41571990057286005)
,p_name=>'P361_SALESGRP'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_prompt=>'Sales Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   acctcode d, grupcode r',
'    FROM nmactgrp',
'   WHERE compcode = :compcode  AND typecode = ''SAL'' ',
'ORDER BY 2'))
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41572423325286005)
,p_name=>'P361_STOCKGRP'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_prompt=>'Stock Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   acctcode d, grupcode r',
'    FROM nmactgrp',
'   WHERE compcode = :compcode  AND typecode = ''STK'' ',
'ORDER BY 2'))
,p_cSize=>32
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41572845568286005)
,p_name=>'P361_COSTCODE'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_prompt=>'Sale. Cost Center'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   costdesc d, costcode r',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'ORDER BY 2'))
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41573237624286005)
,p_name=>'P361_ITDISGRP'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT itdisgrp, discpcnt',
'    FROM nmdiscnt',
'   WHERE compcode = :COMPCODE',
'   --AND itdisgrp LIKE :2 || ''%''',
'ORDER BY itdisgrp'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41573640626286005)
,p_name=>'P361_CMSNGRUP'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(263591382489423621)
,p_prompt=>'Commission Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMSOFCDE, NMCODDES',
'    FROM NMCODMAS',
'   WHERE     COMPCODE = :COMPCODE',
'         AND MODLCODE = ''NM''',
'         AND NMHRDCDE = ''CMG''',
'      --   AND nmsofcde LIKE :2 || ''%''',
'ORDER BY nmsofcde'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41574383890286006)
,p_name=>'P361_TCSTGRUP'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(263591439572423622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41574727836286006)
,p_name=>'P361_LEVYGRUP'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(263591439572423622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41575110131286006)
,p_name=>'P361_VERFGRUP'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(263591439572423622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41575567616286006)
,p_name=>'P361_VERFFREQ'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(263591439572423622)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41576246856286006)
,p_name=>'P361_MODLCODE'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41576592887286006)
,p_name=>'P361_MODLGROP'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41577041833286006)
,p_name=>'P361_ITMGRADE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41577474448286006)
,p_name=>'P361_SRVCEGRP'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41577859069286006)
,p_name=>'P361_VHCLCODE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41578276385286007)
,p_name=>'P361_FXASTFLG'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(263591825643423626)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41591818893286011)
,p_validation_name=>'P361_SALERATE'
,p_validation_sequence=>10
,p_validation=>'P361_SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(41569367282286005)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41592194393286011)
,p_validation_name=>'P361_COSTRATE'
,p_validation_sequence=>20
,p_validation=>'P361_COSTRATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(41569742199286005)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41592654617286011)
,p_validation_name=>'P361_STNDRATE'
,p_validation_sequence=>30
,p_validation=>'P361_STNDRATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(41570137654286005)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(41593015971286011)
,p_validation_name=>'P361_COMMGRUP'
,p_validation_sequence=>80
,p_validation=>'P361_COMMGRUP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(41542035855285998)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41597341263286012)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39579646829380367)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41597881984286012)
,p_event_id=>wwv_flow_api.id(41597341263286012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45773185064901956)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41598238574286013)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39580904243380375)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41598743984286013)
,p_event_id=>wwv_flow_api.id(41598238574286013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(45773185064901956)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41599175692286013)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_PARENTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41599656921286013)
,p_event_id=>wwv_flow_api.id(41599175692286013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_itemcode varchar2(100);',
'v_itemcode1 varchar2(100);',
'begin',
'select CHILDCDE into  :P361_CATEGORY_1  from SYCDEDTL where LEVLCODE=:P361_PARENTCODE;',
'',
'select SUBCATEGORY into :P361_ITEMMODL_1 from SYCDEDTL where LEVLCODE=:P361_PARENTCODE_1;',
'',
'/*select   lpad(max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'5)))+1,6,''0'') b into v_itemcode from SYCDEDTL where PARNTCDE=:P361_PARENTCODE_1;*/',
'select  distinct  ACTLCODE a  into v_itemcode1  ',
'from SYCDEDTL where LEVLCODE=:P361_PARENTCODE_1; ',
'',
'select    lpad(trim(leading ''0'' from max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'6)))+1 ),5,''0'')  a  into v_itemcode from SYCDEDTL where PARNTCDE=:P361_PARENTCODE_1;',
'',
'',
'',
'/*lpad(max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'INSTR(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1),''-'', 1,1)-1)))+1,5,''0'')*/',
'',
'',
':P361_ITEMCODE:=:P361_ITEMMODL_1||''-''||v_itemcode1||''-''||nvl(v_itemcode,''00001''); --:P361_CATEGORY_1||''-''||',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P361_PARENTCODE,P361_PARENTCODE_1'
,p_attribute_03=>'P361_ITEMCODE,P361_CATEGORY,P361_ITEMMODL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41475953026533516)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P361_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41476059630533517)
,p_event_id=>wwv_flow_api.id(41475953026533516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P361_ITEMCODE is not null then',
'select  ITEMTYPE, ITEMCLAS, STATUSCD, CREADATE, USERCODE,  ITEMDES2, HUOMCODE, ITEMDES1,  SALERATE, STNDRATE, COSTRATE, COMMGRUP, COSTCODE,',
' ITEMMODL,FINISHGD, COSTMTOD,LOCALPRT,SEMFINGD,WARECODE',
' into :P361_ITEMTYPE,:P361_ITEMCLAS,:P361_STATUSCD,:P361_CREADATE,:P361_USERCODE,:P361_ITEMDES2,:P361_HUOMCODE,:P361_ITEMDES1,:P361_SALERATE,:P361_STNDRATE,:P361_COSTRATE,',
' :P361_COMMGRUP,:P361_COSTCODE,:P361_ITEMMODL,:P361_FINISHGD,:P361_COSTMTOD,:P361_LOCALPRT,:P361_SEMFINGD,:P361_WARECODE',
'   FROM nmitemas',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P361_ITEMCODE;',
' end if;',
' exception',
' when no_data_found then',
' null;',
' when too_many_rows then',
' null;',
' when others then',
' null;',
' ',
' end;'))
,p_attribute_02=>'COMPCODE,P361_ITEMCODE'
,p_attribute_03=>'P361_ITEMTYPE,P361_ITEMCLAS,P361_STATUSCD,P361_CREADATE,P361_USERCODE,P361_ITEMDES2,P361_HUOMCODE,P361_SALERATE,P361_STNDRATE,P361_COSTRATE,P361_COMMGRUP,P361_COSTCODE,P361_ITEMMODL,P361_FINISHGD,P361_COSTMTOD,P361_LOCALPRT,P361_SEMFINGD,P361_WARECOD'
||'E,P361_ITEMDES1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41593739499286011)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P361_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41595780007286012)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Into nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into nmitemas(COMPCODE, ITEMTYPE, ITEMCLAS, ITEMCODE, STATUSCD, CREADATE, USERCODE, ITEMDES1, ITEMDES2, LUOMCODE, OPRSTAMP, TIMSTAMP, ',
'                               INMFGREF, HUOMCODE, FACTRVAL, SALERATE, STNDRATE, COSTRATE, AVRGRATE, COSTTYPE, ITDISGRP, TCSTGRUP, ABCCLSFN, FSNCLSFN, ',
'                               XYZCLSFN, LEADTIME, MINLEVEL, MAXLEVEL, ECOORDER, IREORDER, RESRDQTY, COMMGRUP, ACCTCODE, DBACCTCD, COSTCODE, AREAFORM, ',
'                               FORMFLAG, AREAVALU, LEVYGRUP, ITEMMODL, CMSNGRUP, USERDEF1, USERDEF2, USERDEF3, USERDEF4, USERFLG1, USERFLG2, ITEMLENG, ',
'                               LENGUNIT, ITEMWIDT, WIDTUNIT, ITEMHEIT, HEITUNIT, UNITVOLM, UNITWEIT, RTMODPCT, CNSMPGRP, SALESGRP, STOCKGRP, ITMSUBCL, ',
'                               PACKWGHT, VERFFREQ, VERFGRUP, DRAWNGNO, FINISHGD, COSTMTOD, GENRLFLG, MFRSYEAR, MODLCODE, MODLGROP, SRVCEGRP, LOCALPRT, ',
'                               ISSUMTHD, SALEPERC, ITEMDES3, MFRSCNTR, RMNDRFLG, DESIGNCD, COLORCDE, VHCLCODE, CHASISNO, ENGINENO, BINLOCAT, SEMFINGD, ',
'                               ITEMSIZE, ITMGRADE, WARECODE, FXASTFLG, SALESFLG, CATEGORY, PAINTFLG, MODIFYDT, NMHSSCDE, VESLFLAG, LSTPURDT, LSTPURRT, ',
'                               STPCODE, RCQTYCNG, EXCISRCV, STORABLE,  DLR_COMMISSION, BRO_COMMISSION, AGN_COMMISSION, HS_CODE, USE_LOCATION, PACKSETP)',
'   VALUES(:COMPCODE, :P361_ITEMTYPE, :P361_ITEMCLAS, :P361_ITEMCODE, :P361_STATUSCD, :P361_CREADATE, :P361_USERCODE, :P361_ITEMDES1, :P361_ITEMDES2, ',
'          :P361_LUOMCODE, :P361_OPRSTAMP, SYSDATE, :P361_INMFGREF, :P361_HUOMCODE, :P361_FACTRVAL, :P361_SALERATE, :P361_STNDRATE, :P361_COSTRATE, :P361_AVRGRATE, ',
'          :P361_COSTTYPE, :P361_ITDISGRP, :P361_TCSTGRUP, :P361_ABCCLSFN, :P361_FSNCLSFN, :P361_XYZCLSFN, :P361_LEADTIME, :P361_MINLEVEL, :P361_MAXLEVEL, :P361_ECOORDER, ',
'          :P361_IREORDER, :P361_RESRDQTY, :P361_COMMGRUP, :P361_ACCTCODE, :P361_DBACCTCD, :P361_COSTCODE, :P361_AREAFORM, :P361_FORMFLAG, :P361_AREAVALU, :P361_LEVYGRUP, ',
'          :P361_ITEMMODL, :P361_CMSNGRUP, :P361_USERDEF1, :P361_USERDEF2, :P361_USERDEF3, :P361_USERDEF4, :P361_USERFLG1, :P361_USERFLG2, :P361_ITEMLENG, :P361_LENGUNIT, ',
'          :P361_ITEMWIDT, :P361_WIDTUNIT, :P361_ITEMHEIT, :P361_HEITUNIT, :P361_UNITVOLM, :P361_UNITWEIT, :P361_RTMODPCT, :P361_CNSMPGRP, :P361_SALESGRP, :P361_STOCKGRP, ',
'          :P361_ITMSUBCL, :P361_PACKWGHT, :P361_VERFFREQ, :P361_VERFGRUP, :P361_DRAWNGNO, :P361_FINISHGD, :P361_COSTMTOD, :P361_GENRLFLG, :P361_MFRSYEAR, :P361_MODLCODE, ',
'          :P361_MODLGROP, :P361_SRVCEGRP, :P361_LOCALPRT, :P361_ISSUMTHD, :P361_SALEPERC, :P361_ITEMDES3, :P361_MFRSCNTR, :P361_RMNDRFLG, :P361_DESIGNCD, :P361_COLORCDE, ',
'          :P361_VHCLCODE, :P361_CHASISNO, :P361_ENGINENO, :P361_BINLOCAT, :P361_SEMFINGD, :P361_ITEMSIZE, :P361_ITMGRADE, :P361_WARECODE, :P361_FXASTFLG, :P361_SALESFLG, ',
'          :P361_CATEGORY, :P361_PAINTFLG, :P361_MODIFYDT, :P361_NMHSSCDE, :P361_VESLFLAG, :P361_LSTPURDT, :P361_LSTPURRT, :P361_STPCODE, :P361_RCQTYCNG, :P361_EXCISRCV, ',
'          :P361_STORABLE,  :P361_DLR_COMMISSION, :P361_BRO_COMMISSION, :P361_AGN_COMMISSION, :P361_HS_CODE, :P361_USE_LOCATION, :P361_PACKSETP);',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
,p_process_success_message=>'insert Successfully.......'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41596106853286012)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of ITMIMAGE'
,p_attribute_02=>'ITMIMAGE'
,p_attribute_03=>'P361_ITEMCODE'
,p_attribute_04=>'ITEMCODE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41596951640286012)
,p_process_sequence=>46
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update nmitemas ',
'SET ITEMTYPE=:P361_ITEMTYPE, ITEMCLAS =:P361_ITEMCLAS, ITEMCODE =:P361_ITEMCODE, STATUSCD =:P361_STATUSCD, ',
'CREADATE =:P361_CREADATE, USERCODE =:P361_USERCODE,ITEMDES1=:P361_ITEMDES1,ITEMDES2 =:P361_ITEMDES2, LUOMCODE=:P361_LUOMCODE, ',
'OPRSTAMP =:P361_OPRSTAMP, TIMSTAMP=:P361_TIMSTAMP, INMFGREF=:P361_INMFGREF, HUOMCODE=:P361_HUOMCODE, FACTRVAL=:P361_FACTRVAL, ',
'SALERATE=:P361_SALERATE, STNDRATE=:P361_STNDRATE, COSTRATE=:P361_COSTRATE, AVRGRATE=:P361_AVRGRATE, COSTTYPE=:P361_COSTTYPE, ',
'ITDISGRP=:P361_ITDISGRP, TCSTGRUP=:P361_TCSTGRUP, ABCCLSFN=:P361_ABCCLSFN, FSNCLSFN=:P361_FSNCLSFN,  XYZCLSFN=:P361_XYZCLSFN,',
' LEADTIME=:P361_LEADTIME,  MINLEVEL=:P361_MINLEVEL,  MAXLEVEL=:P361_MAXLEVEL,  ECOORDER=:P361_ECOORDER,  IREORDER=:P361_IREORDER, ',
' RESRDQTY=:P361_RESRDQTY,  COMMGRUP=:P361_COMMGRUP,  ACCTCODE=:P361_ACCTCODE,  DBACCTCD=:P361_DBACCTCD,  COSTCODE=:P361_COSTCODE, ',
' AREAFORM=:P361_AREAFORM, FORMFLAG=:P361_FORMFLAG, AREAVALU=:P361_AREAVALU, LEVYGRUP=:P361_LEVYGRUP, ITEMMODL=:P361_ITEMMODL, ',
' CMSNGRUP=:P361_CMSNGRUP, USERDEF1=:P361_USERDEF1, USERDEF2=:P361_USERDEF2, USERDEF3=:P361_USERDEF3, USERDEF4=:P361_USERDEF4, ',
' USERFLG1=:P361_USERFLG1, USERFLG2=:P361_USERFLG2, ITEMLENG=:P361_ITEMLENG, LENGUNIT=:P361_LENGUNIT, ITEMWIDT=:P361_ITEMWIDT, WIDTUNIT=:P361_WIDTUNIT, ',
' ITEMHEIT=:P361_ITEMHEIT, HEITUNIT=:P361_HEITUNIT, UNITVOLM=:P361_UNITVOLM, UNITWEIT=:P361_UNITWEIT, RTMODPCT=:P361_RTMODPCT, CNSMPGRP=:P361_CNSMPGRP, ',
' SALESGRP=:P361_SALESGRP, STOCKGRP=:P361_STOCKGRP, ITMSUBCL=:P361_ITMSUBCL, PACKWGHT=:P361_PACKWGHT, VERFFREQ=:P361_VERFFREQ, VERFGRUP=:P361_VERFGRUP, ',
' DRAWNGNO=:P361_DRAWNGNO, FINISHGD=:P361_FINISHGD, COSTMTOD=:P361_COSTMTOD, GENRLFLG=:P361_GENRLFLG, MFRSYEAR=:P361_MFRSYEAR, MODLCODE=:P361_MODLCODE, ',
' MODLGROP=:P361_MODLGROP, SRVCEGRP=:P361_SRVCEGRP, LOCALPRT=:P361_LOCALPRT, ISSUMTHD=:P361_ISSUMTHD, SALEPERC=:P361_SALEPERC, ITEMDES3=:P361_ITEMDES3, ',
' MFRSCNTR=:P361_MFRSCNTR, RMNDRFLG=:P361_RMNDRFLG, DESIGNCD=:P361_DESIGNCD, COLORCDE=:P361_COLORCDE, VHCLCODE=:P361_VHCLCODE, CHASISNO=:P361_CHASISNO, ',
' ENGINENO=:P361_ENGINENO, BINLOCAT=:P361_BINLOCAT, SEMFINGD=:P361_SEMFINGD, ITEMSIZE=:P361_ITEMSIZE, ITMGRADE=:P361_ITMGRADE, WARECODE=:P361_WARECODE, FXASTFLG=:P361_FXASTFLG,',
' SALESFLG=:P361_SALESFLG, CATEGORY=:P361_CATEGORY, PAINTFLG=:P361_PAINTFLG, MODIFYDT=:P361_MODIFYDT, NMHSSCDE=:P361_NMHSSCDE, VESLFLAG=:P361_VESLFLAG,',
'  LSTPURDT=:P361_LSTPURDT, LSTPURRT=:P361_LSTPURRT, STPCODE=:P361_STPCODE, RCQTYCNG=:P361_RCQTYCNG, EXCISRCV=:P361_EXCISRCV, STORABLE=:P361_STORABLE,',
'  DLR_COMMISSION=:P361_DLR_COMMISSION, BRO_COMMISSION=:P361_BRO_COMMISSION, AGN_COMMISSION=:P361_AGN_COMMISSION,',
'  HS_CODE=:P361_HS_CODE, USE_LOCATION=:P361_USE_LOCATION, PACKSETP=:P361_PACKSETP',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P361_ITEMCODE;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41590964117286011)
,p_process_success_message=>'update successfully.......'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41595346059286012)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into itmimage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'insert into itmimage(COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE, MIMETYPE, FILENAME)',
'values(:P361_COMPCODE,:P361_ITEMCODE,:P361_ITMIMAGE,null,null,null,null);',
'end;*/',
'/* Formatted on 2015/06/13 11:41 (Formatter Plus v4.8.8) */',
'--P361_DISPLAY_IMAGES',
'DECLARE',
'   v_length   NUMBER;',
'   v_id       NUMBER;',
'BEGIN',
'INSERT INTO itmimage (COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE)',
'values  (:COMPCODE, :P361_ITEMCODE, :P361_ITEM_IMAGE,100,null);',
' /*  SELECT doc_size',
'     INTO v_length',
'     FROM wwv_flow_files',
'    WHERE NAME = :p_file_browse;',
'',
' --  IF v_length <= 1000000',
' --  THEN',
'      INSERT INTO itmimage',
'                  (COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE, MIMETYPE, FILENAME)',
'         SELECT :p90_partycde, :P361_ITEMCODE, :P361_ITEM_IMAGE,doc_size,content_type,mime_type,filename',
'           FROM wwv_flow_files',
'          WHERE NAME = upper(:P361_ITEM_IMAGE);',
'/*',
'      DELETE FROM wwv_flow_files',
'            WHERE upper(NAME) = upper(:P361_ITEM_IMAGE);',
'   ELSE',
'      DELETE FROM wwv_flow_files',
'            WHERE upper(NAME) = upper(:P361_ITEM_IMAGE);',
'',
'      COMMIT;',
'      raise_application_error (-20001,',
'                               ''Cannot upload pictures bigger than 1 MB!''',
'                              );*/',
' --  END IF;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41594090914286011)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P361_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Insert Successfully...................'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41593326422286011)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into SYCDEDTL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT NVL(MAX(LEVLCODE),0)+1',
'	INTO :P361_LEVLCODE',
'	FROM SYCDEDTL',
'	WHERE COMPCODE = :compcode;',
'',
'insert into SYCDEDTL(COMPCODE, MODLCODE, TKEYCODE, LEVLNUMB, CHILDCDE, OPRSTAMP, TIMSTAMP, PARNTCDE, SERIALNO, LEVLCODE, LEAFNODE, CODEDESC)',
'values(:COMPCODE, ''NM'', ''ITEMCODE'', 1, :P361_ITEMCODE, :APP_USER, SYSDATE, :P361_PARENTCODE_1, NULL, :P361_LEVLCODE, NULL, :P361_ITEMDES2);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41594579263286012)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41590102562286011)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41589085358286010)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(45582016846204109)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Product Size Define - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41596498150286012)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P361_ITEMCODE is not null then',
'select  ITEMTYPE, ITEMCLAS, STATUSCD, CREADATE, USERCODE, ITEMDES1, ITEMDES2, LUOMCODE, OPRSTAMP, TIMSTAMP,INMFGREF, HUOMCODE, FACTRVAL, SALERATE, STNDRATE, COSTRATE, AVRGRATE, COSTTYPE, ITDISGRP, TCSTGRUP, ABCCLSFN, ',
'FSNCLSFN, XYZCLSFN, LEADTIME, MINLEVEL, MAXLEVEL, ECOORDER, IREORDER, RESRDQTY, COMMGRUP, ACCTCODE, DBACCTCD, COSTCODE, AREAFORM, ',
' FORMFLAG, AREAVALU, LEVYGRUP, ITEMMODL, CMSNGRUP, USERDEF1, USERDEF2, USERDEF3, USERDEF4, USERFLG1, USERFLG2, ITEMLENG,LENGUNIT, ITEMWIDT, WIDTUNIT, ITEMHEIT, HEITUNIT, UNITVOLM, UNITWEIT, RTMODPCT, CNSMPGRP, SALESGRP, ',
' STOCKGRP, ITMSUBCL, PACKWGHT, VERFFREQ, VERFGRUP, DRAWNGNO, FINISHGD, COSTMTOD, GENRLFLG, MFRSYEAR, MODLCODE, MODLGROP, SRVCEGRP, LOCALPRT,ISSUMTHD, SALEPERC, ITEMDES3, MFRSCNTR, RMNDRFLG, DESIGNCD, COLORCDE, VHCLCODE, ',
' CHASISNO, ENGINENO, BINLOCAT, SEMFINGD, ITEMSIZE, ITMGRADE, WARECODE, FXASTFLG, SALESFLG, CATEGORY,  MODIFYDT, NMHSSCDE, VESLFLAG,   STPCODE, RCQTYCNG, EXCISRCV, STORABLE,  ',
' DLR_COMMISSION, BRO_COMMISSION, AGN_COMMISSION, HS_CODE, USE_LOCATION, PACKSETP',
'  into :P361_ITEMTYPE, :P361_ITEMCLAS , :P361_STATUSCD, :P361_CREADATE, :P361_USERCODE, :P361_ITEMDES1, :P361_ITEMDES2, :P361_LUOMCODE, :P361_OPRSTAMP, :P361_TIMSTAMP, :P361_INMFGREF, :P361_HUOMCODE, :P361_FACTRVAL, ',
'  :P361_SALERATE, :P361_STNDRATE, :P361_COSTRATE, :P361_AVRGRATE,:P361_COSTTYPE, :P361_ITDISGRP, :P361_TCSTGRUP, :P361_ABCCLSFN, :P361_FSNCLSFN, :P361_XYZCLSFN, :P361_LEADTIME, :P361_MINLEVEL, :P361_MAXLEVEL, ',
'  :P361_ECOORDER, :P361_IREORDER, :P361_RESRDQTY, :P361_COMMGRUP, :P361_ACCTCODE, :P361_DBACCTCD, :P361_COSTCODE, :P361_AREAFORM, ',
' :P361_FORMFLAG, :P361_AREAVALU, :P361_LEVYGRUP, :P361_ITEMMODL, :P361_CMSNGRUP, :P361_USERDEF1, :P361_USERDEF2, :P361_USERDEF3, :P361_USERDEF4, :P361_USERFLG1, :P361_USERFLG2, :P361_ITEMLENG, :P361_LENGUNIT, ',
' :P361_ITEMWIDT, :P361_WIDTUNIT, :P361_ITEMHEIT, :P361_HEITUNIT, :P361_UNITVOLM, :P361_UNITWEIT, :P361_RTMODPCT, :P361_CNSMPGRP, :P361_SALESGRP, :P361_STOCKGRP, :P361_ITMSUBCL, :P361_PACKWGHT, :P361_VERFFREQ, ',
' :P361_VERFGRUP, :P361_DRAWNGNO, :P361_FINISHGD, :P361_COSTMTOD, :P361_GENRLFLG, :P361_MFRSYEAR, :P361_MODLCODE, :P361_MODLGROP, :P361_SRVCEGRP, :P361_LOCALPRT, :P361_ISSUMTHD, :P361_SALEPERC, :P361_ITEMDES3, ',
' :P361_MFRSCNTR, :P361_RMNDRFLG, :P361_DESIGNCD, :P361_COLORCDE, :P361_VHCLCODE, :P361_CHASISNO, :P361_ENGINENO, :P361_BINLOCAT, :P361_SEMFINGD, :P361_ITEMSIZE, :P361_ITMGRADE, :P361_WARECODE, :P361_FXASTFLG, ',
' :P361_SALESFLG, :P361_CATEGORY, :P361_MODIFYDT, :P361_NMHSSCDE, :P361_VESLFLAG,   :P361_STPCODE, :P361_RCQTYCNG, :P361_EXCISRCV, :P361_STORABLE,  ',
' :P361_DLR_COMMISSION, :P361_BRO_COMMISSION, :P361_AGN_COMMISSION, :P361_HS_CODE,:P361_USE_LOCATION, :P361_PACKSETP',
'  FROM nmitemas',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P361_ITEMCODE;',
' end if;',
' exception',
' when no_data_found then',
' null;',
' when too_many_rows then',
' null;',
' when others then',
' null;',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
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
 p_id=>wwv_flow_api.id(41594983059286012)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert for nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P361_COMPCODE:=:COMPCODE;',
':P361_OPRSTAMP:=:APP_USER;',
':P361_TIMSTAMP:=sysdate;',
':P361_CREADATE:=sysdate;',
'--:P361_ITEMCODE:=nvl(:P361_ITEMCODE,substr(:P361_CATEGORY,1,3)||lpad(SEQ_ITEM_CODE.nextval,5,''0''));',
':P361_USERCODE:=:P361_ITEMCODE;',
':P361_ITEMDES2:=:P361_ITEMDES1;',
':P361_LUOMCODE:=:P361_HUOMCODE;',
'--:P361_CATEGORY:=:P361_PARENTCODE;',
'',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(41591290617286011)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41589434233286010)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(45582016846204109)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre-Insert into nmitemas_detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select ITEM_WEIGHT_SIZE_SEQ.nextval into :NMITMPK from dual;',
'  :ITEMCODE:=:P361_ITEMCODE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
