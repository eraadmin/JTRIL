prompt --application/pages/page_00193
begin
--   Manifest
--     PAGE: 00193
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
 p_id=>193
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Item Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Item Master'
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
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20191016203854'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(257237154992283539)
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
 p_id=>wwv_flow_api.id(39388219001682519)
,p_plug_name=>'Product Size Define'
,p_parent_plug_id=>wwv_flow_api.id(257237154992283539)
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
'where ITEMCODE=:P193_ITEMCODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P193_ITEMCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(39388478714682521)
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
 p_id=>wwv_flow_api.id(39388507911682522)
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
,p_default_expression=>'P193_ITEMCODE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(39388648287682523)
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
 p_id=>wwv_flow_api.id(39388721670682524)
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
 p_id=>wwv_flow_api.id(39388835292682525)
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
 p_id=>wwv_flow_api.id(39388971302682526)
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
 p_id=>wwv_flow_api.id(39389063831682527)
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
 p_id=>wwv_flow_api.id(39389122146682528)
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
 p_id=>wwv_flow_api.id(39389225486682529)
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
 p_id=>wwv_flow_api.id(39389309023682530)
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
 p_id=>wwv_flow_api.id(39389426440682531)
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
 p_id=>wwv_flow_api.id(39389529975682532)
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
 p_id=>wwv_flow_api.id(39389594667682533)
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
 p_id=>wwv_flow_api.id(39389779403682534)
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
 p_id=>wwv_flow_api.id(39389874424682535)
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
 p_id=>wwv_flow_api.id(39389922666682536)
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
 p_id=>wwv_flow_api.id(39390078810682537)
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
 p_id=>wwv_flow_api.id(39390148382682538)
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
 p_id=>wwv_flow_api.id(39390227851682539)
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
 p_id=>wwv_flow_api.id(39390323588682540)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(39390462703682541)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(39388332737682520)
,p_internal_uid=>4050242699918118
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
 p_id=>wwv_flow_api.id(39692100651516831)
,p_interactive_grid_id=>wwv_flow_api.id(39388332737682520)
,p_static_id=>'395608'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(39692238104516831)
,p_report_id=>wwv_flow_api.id(39692100651516831)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39692742672516833)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(39388478714682521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39693192606516835)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(39388507911682522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39693703045516836)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(39388648287682523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39694281665516836)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(39388721670682524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39694782706516837)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(39388835292682525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39695197732516839)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(39388971302682526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39695735758516840)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(39389063831682527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39696266989516841)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(39389122146682528)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39696758459516842)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(39389225486682529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39697191557516843)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(39389309023682530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39697789341516843)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(39389426440682531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39698251412516844)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(39389529975682532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39698754027516845)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(39389594667682533)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39699202337516846)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(39389779403682534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39699761890516847)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(39389874424682535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39700206679516848)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(39389922666682536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39700756689516848)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(39390078810682537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39701270561516849)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(39390148382682538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39702194254517966)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(39390227851682539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39702737776517967)
,p_view_id=>wwv_flow_api.id(39692238104516831)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(39390323588682540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39579387220380366)
,p_plug_name=>'Item Category'
,p_parent_plug_id=>wwv_flow_api.id(257237154992283539)
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
'       case when LEAFNODE is not null then'' javascript:$s(''''P193_PARENTCODE'''',''''''||PARNTCDE||''''''),$s(''''P193_PARENTCODE_1'''',''''''||LEVLCODE||'''''')'' else',
'       '' javascript:$s(''''P193_ITEMCODE'''',''''''||CHILDCDE||'''''')'' end as link ',
'from "#OWNER#"."SYCDEDTL"',
'start with "PARNTCDE" IS  NULL',
'connect by prior to_char(LEVLCODE) = "PARNTCDE"',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_03=>'P193_PARENTCODE'
,p_attribute_04=>'N'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(257207676403277565)
,p_plug_name=>'Item Information'
,p_parent_plug_id=>wwv_flow_api.id(257237154992283539)
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
 p_id=>wwv_flow_api.id(257818479532612367)
,p_plug_name=>'Stock Information'
,p_parent_plug_id=>wwv_flow_api.id(257237154992283539)
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
 p_id=>wwv_flow_api.id(43789346162693101)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(44120997183800858)
,p_plug_name=>'Item Image'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(120922772154823962)
,p_plug_name=>'Image'
,p_parent_plug_id=>wwv_flow_api.id(44120997183800858)
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
 p_id=>wwv_flow_api.id(209615694238989469)
,p_plug_name=>'image'
,p_parent_plug_id=>wwv_flow_api.id(44120997183800858)
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
 p_id=>wwv_flow_api.id(257397303948902029)
,p_plug_name=>'Stock Manitenance'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(257397485032902030)
,p_plug_name=>'Default Rate'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(257397584644902031)
,p_plug_name=>'Account Information'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(257397641727902032)
,p_plug_name=>'Groups'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(257398027798902036)
,p_plug_name=>'Model Information'
,p_parent_plug_id=>wwv_flow_api.id(257818479532612367)
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
 p_id=>wwv_flow_api.id(321407555687776634)
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
 p_id=>wwv_flow_api.id(42619765633040573)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(321407555687776634)
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
 p_id=>wwv_flow_api.id(42620166059040576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(321407555687776634)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:193::'
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
 p_id=>wwv_flow_api.id(42620499326040576)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(321407555687776634)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42620885057040576)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(321407555687776634)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39579646829380367)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39579387220380366)
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
 p_id=>wwv_flow_api.id(39580904243380375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39579387220380366)
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
 p_id=>wwv_flow_api.id(42626180542040587)
,p_branch_name=>'Go To Page 193'
,p_branch_action=>'f?p=&APP_ID.:193:&SESSION.::&DEBUG.:193::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39387988419682516)
,p_name=>'P193_PARENTCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39388176605682518)
,p_name=>'P193_SUBCATEGORY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_prompt=>'Sub-Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' ',
' AND nmhrdcde = :P193_CATEGORY',
' and compcode=:COMPCODE',
'order by 1 '))
,p_lov_cascade_parent_items=>'P193_CATEGORY'
,p_ajax_items_to_submit=>'P193_CATEGORY'
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
 p_id=>wwv_flow_api.id(39390592922682543)
,p_name=>'P193_PARENTCODE_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39799739802738513)
,p_name=>'P193_LEVLCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39799833390738514)
,p_name=>'P193_CATEGORY_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39799955988738515)
,p_name=>'P193_ITEMMODL_1'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41477364941533530)
,p_name=>'P193_ITEM_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42580609481040507)
,p_name=>'P193_ROWID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42581000129040535)
,p_name=>'P193_COMPCODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42581388656040535)
,p_name=>'P193_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Itemcode</font>'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
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
 p_id=>wwv_flow_api.id(42581779949040537)
,p_name=>'P193_INMFGREF'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42582168661040542)
,p_name=>'P193_USERCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42582597084040543)
,p_name=>'P193_ITEMDES1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42582947948040545)
,p_name=>'P193_ITEMTYPE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_item_default=>'S'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42583378870040548)
,p_name=>'P193_ITEMCLAS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CLS'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42583749009040551)
,p_name=>'P193_ITMSUBCL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_api.id(42584121414040552)
,p_name=>'P193_USERDEF1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42584535005040556)
,p_name=>'P193_DRAWNGNO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42584946516040557)
,p_name=>'P193_HUOMCODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42585360720040557)
,p_name=>'P193_STATUSCD'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITEMSTATUS2'
,p_lov=>'.'||wwv_flow_api.id(42629658653040606)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42585747140040557)
,p_name=>'P193_FINISHGD'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42586117787040557)
,p_name=>'P193_LOCALPRT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_item_default=>'N'
,p_prompt=>'Local Parts?'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y OR N2'
,p_lov=>'.'||wwv_flow_api.id(42635018188040612)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42586531733040559)
,p_name=>'P193_SEMFINGD'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42586971377040559)
,p_name=>'P193_CATEGORY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
 p_id=>wwv_flow_api.id(42587358143040559)
,p_name=>'P193_LUOMCODE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42587801576040559)
,p_name=>'P193_ITEMDES2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42588187322040560)
,p_name=>'P193_COMMGRUP'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42588615743040560)
,p_name=>'P193_ITEMMODL'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
 p_id=>wwv_flow_api.id(42588936054040560)
,p_name=>'P193_COLORCDE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42589322997040560)
,p_name=>'P193_DESIGNCD'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42589766987040560)
,p_name=>'P193_BINLOCAT'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42590203422040560)
,p_name=>'P193_CREADATE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42590539873040560)
,p_name=>'P193_ABCCLSFN'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(43789346162693101)
,p_item_default=>'H'
,p_prompt=>'Consumption'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:High;H,Medium;M,Low;L'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42590988524040560)
,p_name=>'P193_FSNCLSFN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(43789346162693101)
,p_item_default=>'F'
,p_prompt=>'Movement'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Fast;F,Slow;S,Nill;N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42591353820040560)
,p_name=>'P193_XYZCLSFN'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42591795167040562)
,p_name=>'P193_ACCTCODE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42592181177040562)
,p_name=>'P193_DBACCTCD'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42592616085040562)
,p_name=>'P193_AREAFORM'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42592961857040562)
,p_name=>'P193_FORMFLAG'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42593382170040562)
,p_name=>'P193_AREAVALU'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42593763918040563)
,p_name=>'P193_USERDEF2'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42594146335040563)
,p_name=>'P193_USERDEF3'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42594555885040563)
,p_name=>'P193_USERDEF4'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42594917873040563)
,p_name=>'P193_USERFLG1'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42595320486040563)
,p_name=>'P193_USERFLG2'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42595741920040563)
,p_name=>'P193_OPRSTAMP'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42596142174040563)
,p_name=>'P193_TIMSTAMP'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42596608769040563)
,p_name=>'P193_ITEMLENG'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42597011857040563)
,p_name=>'P193_LENGUNIT'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42597344487040563)
,p_name=>'P193_ITEMWIDT'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42597801160040563)
,p_name=>'P193_WIDTUNIT'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42598135791040563)
,p_name=>'P193_ITEMHEIT'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42598554029040563)
,p_name=>'P193_HEITUNIT'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42599007044040567)
,p_name=>'P193_UNITVOLM'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42599402395040567)
,p_name=>'P193_UNITWEIT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42599748146040567)
,p_name=>'P193_RTMODPCT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42600153565040567)
,p_name=>'P193_PACKWGHT'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42600567901040567)
,p_name=>'P193_GENRLFLG'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42600960830040567)
,p_name=>'P193_MFRSYEAR'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_prompt=>'Manufacture Year'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42601388081040567)
,p_name=>'P193_SALEPERC'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42601743910040568)
,p_name=>'P193_ITEMDES3'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42602215827040568)
,p_name=>'P193_MFRSCNTR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_prompt=>'Manufactures'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42602551945040568)
,p_name=>'P193_RMNDRFLG'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42602960444040568)
,p_name=>'P193_CHASISNO'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42603404808040568)
,p_name=>'P193_ENGINENO'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42603783806040568)
,p_name=>'P193_WARECODE'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42604123215040568)
,p_name=>'P193_SALESFLG'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42605183950040568)
,p_name=>'P193_ECOORDER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>'E.O.Q.'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42605616174040568)
,p_name=>'P193_IREORDER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>' &nbsp;R.  O.  L. &nbsp;'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42605974440040568)
,p_name=>'P193_MAXLEVEL'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>'Max Stock'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42606322261040568)
,p_name=>'P193_MINLEVEL'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>'Min stock'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42606792021040570)
,p_name=>'P193_RESRDQTY'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42607147619040570)
,p_name=>'P193_LEADTIME'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>' &nbsp;Lead time &nbsp;'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42607563998040570)
,p_name=>'P193_COSTMTOD'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(257397303948902029)
,p_prompt=>'Cost Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COSTMETHOD2'
,p_lov=>'.'||wwv_flow_api.id(42631080906040609)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42608313966040570)
,p_name=>'P193_ISSUMTHD'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'Issue Method'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ISSMETHOD2'
,p_lov=>'.'||wwv_flow_api.id(42633251515040610)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(42608662972040570)
,p_name=>'P193_COSTTYPE'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'Cost Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42609042681040570)
,p_name=>'P193_SALERATE'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'<font color="red">Sale Rate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_tag_attributes=>'style="width: 95%;"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42609500871040570)
,p_name=>'P193_COSTRATE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'<font color="red">Cost Rate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_tag_attributes=>'style="width: 95%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42609893180040570)
,p_name=>'P193_STNDRATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'<font color="red">Standerate</font>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42610286273040570)
,p_name=>'P193_FACTRVAL'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_prompt=>'Sale(%)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42610624075040570)
,p_name=>'P193_AVRGRATE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(257397485032902030)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42611415344040571)
,p_name=>'P193_CNSMPGRP'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42611759790040571)
,p_name=>'P193_SALESGRP'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42612193989040571)
,p_name=>'P193_STOCKGRP'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42612601913040571)
,p_name=>'P193_COSTCODE'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42613217846040571)
,p_name=>'P193_ITDISGRP'
,p_item_sequence=>860
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
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
 p_id=>wwv_flow_api.id(42613705996040571)
,p_name=>'P193_TCSTGRUP'
,p_item_sequence=>870
,p_item_plug_id=>wwv_flow_api.id(257397641727902032)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42614107301040571)
,p_name=>'P193_LEVYGRUP'
,p_item_sequence=>880
,p_item_plug_id=>wwv_flow_api.id(257397641727902032)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42614449667040571)
,p_name=>'P193_CMSNGRUP'
,p_item_sequence=>890
,p_item_plug_id=>wwv_flow_api.id(257397584644902031)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42614820780040571)
,p_name=>'P193_VERFGRUP'
,p_item_sequence=>900
,p_item_plug_id=>wwv_flow_api.id(257397641727902032)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42615288042040571)
,p_name=>'P193_VERFFREQ'
,p_item_sequence=>910
,p_item_plug_id=>wwv_flow_api.id(257397641727902032)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42615998984040573)
,p_name=>'P193_MODLCODE'
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42616347921040573)
,p_name=>'P193_ITEMSIZE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(257207676403277565)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42616768131040573)
,p_name=>'P193_MODLGROP'
,p_item_sequence=>940
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42617212159040573)
,p_name=>'P193_ITMGRADE'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42617546125040573)
,p_name=>'P193_SRVCEGRP'
,p_item_sequence=>960
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42617988877040573)
,p_name=>'P193_VHCLCODE'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42618416105040573)
,p_name=>'P193_FXASTFLG'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(257398027798902036)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44087472777418229)
,p_name=>'P193_DISPLAY_IMAGES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(209615694238989469)
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
'and ITEMCODE=nvl(:P193_ITEMCODE,''A'')'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44325500679992137)
,p_name=>'P193_ROWID_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44325870927992151)
,p_name=>'P193_COMPCODE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
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
 p_id=>wwv_flow_api.id(44326196260992152)
,p_name=>'P193_ITEMCODE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_item_default=>'5874239'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44326616039992152)
,p_name=>'P193_ITMIMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
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
 p_id=>wwv_flow_api.id(44327009115992152)
,p_name=>'P193_DATASIZE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'DATASIZE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44327323345992156)
,p_name=>'P193_DATATYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'DATATYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44327807704992156)
,p_name=>'P193_MIMETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44328151221992156)
,p_name=>'P193_FILENAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44328554165992156)
,p_name=>'P193_MODIFYDT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(120922772154823962)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42621325631040582)
,p_validation_name=>'P193_SALERATE'
,p_validation_sequence=>10
,p_validation=>'P193_SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(42609042681040570)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42621792942040582)
,p_validation_name=>'P193_COSTRATE'
,p_validation_sequence=>20
,p_validation=>'P193_COSTRATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(42609500871040570)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42622155651040582)
,p_validation_name=>'P193_STNDRATE'
,p_validation_sequence=>30
,p_validation=>'P193_STNDRATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(42609893180040570)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52580056117352189)
,p_validation_name=>'P193_COMMGRUP'
,p_validation_sequence=>80
,p_validation=>'P193_COMMGRUP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(42588187322040560)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39580074959380374)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39579646829380367)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39580490047380375)
,p_event_id=>wwv_flow_api.id(39580074959380374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39579387220380366)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39581295925380375)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39580904243380375)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39581845557380375)
,p_event_id=>wwv_flow_api.id(39581295925380375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(39579387220380366)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39799556555738511)
,p_name=>'Parent code change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_PARENTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39799605842738512)
,p_event_id=>wwv_flow_api.id(39799556555738511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_itemcode varchar2(100);',
'v_itemcode1 varchar2(100);',
'begin',
'select CHILDCDE into  :P193_CATEGORY_1  from SYCDEDTL where LEVLCODE=:P193_PARENTCODE;',
'',
'select SUBCATEGORY into :P193_ITEMMODL_1 from SYCDEDTL where LEVLCODE=:P193_PARENTCODE_1;',
'',
'/*select   lpad(max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'5)))+1,6,''0'') b into v_itemcode from SYCDEDTL where PARNTCDE=:P193_PARENTCODE_1;',
'lpad(trim(leading ''0'' from max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'6)))+1 ),5,''0'')*/',
'select  distinct  TRIM(LEADING 0 FROM ACTLCODE) a  into v_itemcode1  ',
'from SYCDEDTL where LEVLCODE=:P193_PARENTCODE_1; ',
'',
'select    max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'6)))+1  a  into v_itemcode from SYCDEDTL where PARNTCDE=:P193_PARENTCODE_1;',
'',
'',
'',
'/*lpad(max(to_number(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1,',
'INSTR(SUBSTR(CHILDCDE, INSTR(CHILDCDE,''-'', 2,2)+1),''-'', 1,1)-1)))+1,5,''0'')*/',
'',
'',
':P193_ITEMCODE:=:P193_ITEMMODL_1||''-0''||v_itemcode1||''-''||nvl(v_itemcode,''1''); --:P193_CATEGORY_1||''-''||',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P193_PARENTCODE,P193_PARENTCODE_1'
,p_attribute_03=>'P193_ITEMCODE,P193_CATEGORY,P193_ITEMMODL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41477164396533528)
,p_name=>'Itemcode Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P193_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41477260919533529)
,p_event_id=>wwv_flow_api.id(41477164396533528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   if :P193_ITEMCODE is not null  then',
'select  ITEMTYPE, ITEMCLAS, STATUSCD, CREADATE, USERCODE,  ITEMDES2, HUOMCODE, ITEMDES1,  SALERATE, STNDRATE, COSTRATE, COMMGRUP, COSTCODE,',
' ITEMMODL,FINISHGD, COSTMTOD,LOCALPRT,SEMFINGD,WARECODE',
' into :P193_ITEMTYPE,:P193_ITEMCLAS,:P193_STATUSCD,:P193_CREADATE,:P193_USERCODE,:P193_ITEMDES2,:P193_HUOMCODE,:P193_ITEMDES1,:P193_SALERATE,:P193_STNDRATE,:P193_COSTRATE,',
' :P193_COMMGRUP,:P193_COSTCODE,:P193_ITEMMODL,:P193_FINISHGD,:P193_COSTMTOD,:P193_LOCALPRT,:P193_SEMFINGD,:P193_WARECODE',
'   FROM nmitemas',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P193_ITEMCODE;',
' select count(itemcode)  ',
' into  :P193_ITEM_COUNT',
' FROM nmitemas',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P193_ITEMCODE;',
' end if;',
' exception',
' when no_data_found then',
' :P193_ITEM_COUNT:=0;',
':P193_ITEMTYPE:=''S'';',
':P193_ITEMCLAS:=''N'';',
':P193_STATUSCD:=''ACT'';',
' :P193_CREADATE:=sysdate;',
' :P193_USERCODE:=:APP_USER;',
' :P193_ITEMDES2:=NULL;',
' :P193_HUOMCODE:=null;',
' :P193_ITEMDES1:=null;',
' :P193_SALERATE:=null;',
' :P193_STNDRATE:=null;',
' :P193_COSTRATE:=null;',
' :P193_COMMGRUP:=null;',
' :P193_COSTCODE:=null;',
' :P193_ITEMMODL:=null;',
' :P193_FINISHGD:=null;',
' :P193_COSTMTOD:=null;',
' :P193_LOCALPRT:=null;',
' :P193_SEMFINGD:=null;',
' :P193_WARECODE:=null;',
' when too_many_rows then',
' null;',
' when others then',
' null;',
' ',
' end;'))
,p_attribute_02=>'COMPCODE,P193_ITEMCODE'
,p_attribute_03=>'P193_ITEM_COUNT,P193_ITEMTYPE,P193_ITEMCLAS,P193_STATUSCD,P193_CREADATE,P193_USERCODE,P193_ITEMDES2,P193_HUOMCODE,P193_SALERATE,P193_STNDRATE,P193_COSTRATE,P193_COMMGRUP,P193_COSTCODE,P193_ITEMMODL,P193_FINISHGD,P193_COSTMTOD,P193_LOCALPRT,P193_SEMFI'
||'NGD,P193_WARECODE,P193_ITEMDES1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42624064237040584)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P193_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43789505512693102)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Into nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P193_ITEM_COUNT = 0 then',
'insert into nmitemas(COMPCODE, ITEMTYPE, ITEMCLAS, ITEMCODE, STATUSCD, CREADATE, USERCODE, ITEMDES1, ITEMDES2, LUOMCODE, OPRSTAMP, TIMSTAMP, ',
'                               INMFGREF, HUOMCODE, FACTRVAL, SALERATE, STNDRATE, COSTRATE, AVRGRATE, COSTTYPE, ITDISGRP, TCSTGRUP, ABCCLSFN, FSNCLSFN, ',
'                               XYZCLSFN, LEADTIME, MINLEVEL, MAXLEVEL, ECOORDER, IREORDER, RESRDQTY, COMMGRUP, ACCTCODE, DBACCTCD, COSTCODE, AREAFORM, ',
'                               FORMFLAG, AREAVALU, LEVYGRUP, ITEMMODL, CMSNGRUP, USERDEF1, USERDEF2, USERDEF3, USERDEF4, USERFLG1, USERFLG2, ITEMLENG, ',
'                               LENGUNIT, ITEMWIDT, WIDTUNIT, ITEMHEIT, HEITUNIT, UNITVOLM, UNITWEIT, RTMODPCT, CNSMPGRP, SALESGRP, STOCKGRP, ITMSUBCL, ',
'                               PACKWGHT, VERFFREQ, VERFGRUP, DRAWNGNO, FINISHGD, COSTMTOD, GENRLFLG, MFRSYEAR, MODLCODE, MODLGROP, SRVCEGRP, LOCALPRT, ',
'                               ISSUMTHD, SALEPERC, ITEMDES3, MFRSCNTR, RMNDRFLG, DESIGNCD, COLORCDE, VHCLCODE, CHASISNO, ENGINENO, BINLOCAT, SEMFINGD, ',
'                               ITEMSIZE, ITMGRADE, WARECODE, FXASTFLG, SALESFLG, CATEGORY, PAINTFLG, MODIFYDT, NMHSSCDE, VESLFLAG, LSTPURDT, LSTPURRT, ',
'                               STPCODE, RCQTYCNG, EXCISRCV, STORABLE,  DLR_COMMISSION, BRO_COMMISSION, AGN_COMMISSION, HS_CODE, USE_LOCATION, PACKSETP)',
'   VALUES(:COMPCODE, :P193_ITEMTYPE, :P193_ITEMCLAS, :P193_ITEMCODE, :P193_STATUSCD, :P193_CREADATE, :P193_USERCODE, :P193_ITEMDES1, :P193_ITEMDES2, ',
'          :P193_HUOMCODE, :APP_USER, SYSDATE, :P193_INMFGREF, :P193_HUOMCODE, :P193_FACTRVAL, :P193_SALERATE, :P193_STNDRATE, :P193_COSTRATE, :P193_AVRGRATE, ',
'          :P193_COSTTYPE, :P193_ITDISGRP, :P193_TCSTGRUP, :P193_ABCCLSFN, :P193_FSNCLSFN, :P193_XYZCLSFN, :P193_LEADTIME, :P193_MINLEVEL, :P193_MAXLEVEL, :P193_ECOORDER, ',
'          :P193_IREORDER, :P193_RESRDQTY, :P193_COMMGRUP, :P193_ACCTCODE, :P193_DBACCTCD, :P193_COSTCODE, :P193_AREAFORM, :P193_FORMFLAG, :P193_AREAVALU, :P193_LEVYGRUP, ',
'          :P193_ITEMMODL, :P193_CMSNGRUP, :P193_USERDEF1, :P193_USERDEF2, :P193_USERDEF3, :P193_USERDEF4, :P193_USERFLG1, :P193_USERFLG2, :P193_ITEMLENG, :P193_LENGUNIT, ',
'          :P193_ITEMWIDT, :P193_WIDTUNIT, :P193_ITEMHEIT, :P193_HEITUNIT, :P193_UNITVOLM, :P193_UNITWEIT, :P193_RTMODPCT, :P193_CNSMPGRP, :P193_SALESGRP, :P193_STOCKGRP, ',
'          :P193_ITMSUBCL, :P193_PACKWGHT, :P193_VERFFREQ, :P193_VERFGRUP, :P193_DRAWNGNO, :P193_FINISHGD, :P193_COSTMTOD, :P193_GENRLFLG, :P193_MFRSYEAR, :P193_MODLCODE, ',
'          :P193_MODLGROP, :P193_SRVCEGRP, :P193_LOCALPRT, :P193_ISSUMTHD, :P193_SALEPERC, :P193_ITEMDES3, :P193_MFRSCNTR, :P193_RMNDRFLG, :P193_DESIGNCD, :P193_COLORCDE, ',
'          :P193_VHCLCODE, :P193_CHASISNO, :P193_ENGINENO, :P193_BINLOCAT, :P193_SEMFINGD, :P193_ITEMSIZE, :P193_ITMGRADE, :P193_WARECODE, :P193_FXASTFLG, :P193_SALESFLG, ',
'          :P193_CATEGORY, :P193_PAINTFLG, :P193_MODIFYDT, :P193_NMHSSCDE, :P193_VESLFLAG, :P193_LSTPURDT, :P193_LSTPURRT, :P193_STPCODE, :P193_RCQTYCNG, :P193_EXCISRCV, ',
'          :P193_STORABLE,  :P193_DLR_COMMISSION, :P193_BRO_COMMISSION, :P193_AGN_COMMISSION, :P193_HS_CODE, :P193_USE_LOCATION, :P193_PACKSETP);',
'else',
'update nmitemas ',
'SET ITEMTYPE=:P193_ITEMTYPE, ITEMCLAS =:P193_ITEMCLAS, ITEMCODE =:P193_ITEMCODE, STATUSCD =:P193_STATUSCD, ',
'CREADATE =:P193_CREADATE, USERCODE =:P193_USERCODE,ITEMDES1=:P193_ITEMDES1,ITEMDES2 =:P193_ITEMDES2, LUOMCODE=:P193_HUOMCODE, ',
'OPRSTAMP =:APP_USER, TIMSTAMP=:P193_TIMSTAMP, INMFGREF=:P193_INMFGREF, HUOMCODE=:P193_HUOMCODE, FACTRVAL=:P193_FACTRVAL, ',
'SALERATE=:P193_SALERATE, STNDRATE=:P193_STNDRATE, COSTRATE=:P193_COSTRATE, AVRGRATE=:P193_AVRGRATE, COSTTYPE=:P193_COSTTYPE, ',
'ITDISGRP=:P193_ITDISGRP, TCSTGRUP=:P193_TCSTGRUP, ABCCLSFN=:P193_ABCCLSFN, FSNCLSFN=:P193_FSNCLSFN,  XYZCLSFN=:P193_XYZCLSFN,',
' LEADTIME=:P193_LEADTIME,  MINLEVEL=:P193_MINLEVEL,  MAXLEVEL=:P193_MAXLEVEL,  ECOORDER=:P193_ECOORDER,  IREORDER=:P193_IREORDER, ',
' RESRDQTY=:P193_RESRDQTY,  COMMGRUP=:P193_COMMGRUP,  ACCTCODE=:P193_ACCTCODE,  DBACCTCD=:P193_DBACCTCD,  COSTCODE=:P193_COSTCODE, ',
' AREAFORM=:P193_AREAFORM, FORMFLAG=:P193_FORMFLAG, AREAVALU=:P193_AREAVALU, LEVYGRUP=:P193_LEVYGRUP, ITEMMODL=:P193_ITEMMODL, ',
' CMSNGRUP=:P193_CMSNGRUP, USERDEF1=:P193_USERDEF1, USERDEF2=:P193_USERDEF2, USERDEF3=:P193_USERDEF3, USERDEF4=:P193_USERDEF4, ',
' USERFLG1=:P193_USERFLG1, USERFLG2=:P193_USERFLG2, ITEMLENG=:P193_ITEMLENG, LENGUNIT=:P193_LENGUNIT, ITEMWIDT=:P193_ITEMWIDT, WIDTUNIT=:P193_WIDTUNIT, ',
' ITEMHEIT=:P193_ITEMHEIT, HEITUNIT=:P193_HEITUNIT, UNITVOLM=:P193_UNITVOLM, UNITWEIT=:P193_UNITWEIT, RTMODPCT=:P193_RTMODPCT, CNSMPGRP=:P193_CNSMPGRP, ',
' SALESGRP=:P193_SALESGRP, STOCKGRP=:P193_STOCKGRP, ITMSUBCL=:P193_ITMSUBCL, PACKWGHT=:P193_PACKWGHT, VERFFREQ=:P193_VERFFREQ, VERFGRUP=:P193_VERFGRUP, ',
' DRAWNGNO=:P193_DRAWNGNO, FINISHGD=:P193_FINISHGD, COSTMTOD=:P193_COSTMTOD, GENRLFLG=:P193_GENRLFLG, MFRSYEAR=:P193_MFRSYEAR, MODLCODE=:P193_MODLCODE, ',
' MODLGROP=:P193_MODLGROP, SRVCEGRP=:P193_SRVCEGRP, LOCALPRT=:P193_LOCALPRT, ISSUMTHD=:P193_ISSUMTHD, SALEPERC=:P193_SALEPERC, ITEMDES3=:P193_ITEMDES3, ',
' MFRSCNTR=:P193_MFRSCNTR, RMNDRFLG=:P193_RMNDRFLG, DESIGNCD=:P193_DESIGNCD, COLORCDE=:P193_COLORCDE, VHCLCODE=:P193_VHCLCODE, CHASISNO=:P193_CHASISNO, ',
' ENGINENO=:P193_ENGINENO, BINLOCAT=:P193_BINLOCAT, SEMFINGD=:P193_SEMFINGD, ITEMSIZE=:P193_ITEMSIZE, ITMGRADE=:P193_ITMGRADE, WARECODE=:P193_WARECODE, FXASTFLG=:P193_FXASTFLG,',
' SALESFLG=:P193_SALESFLG, CATEGORY=:P193_CATEGORY, PAINTFLG=:P193_PAINTFLG, MODIFYDT=:P193_MODIFYDT, NMHSSCDE=:P193_NMHSSCDE, VESLFLAG=:P193_VESLFLAG,',
'  LSTPURDT=:P193_LSTPURDT, LSTPURRT=:P193_LSTPURRT, STPCODE=:P193_STPCODE, RCQTYCNG=:P193_RCQTYCNG, EXCISRCV=:P193_EXCISRCV, STORABLE=:P193_STORABLE,',
'  DLR_COMMISSION=:P193_DLR_COMMISSION, BRO_COMMISSION=:P193_BRO_COMMISSION, AGN_COMMISSION=:P193_AGN_COMMISSION,',
'  HS_CODE=:P193_HS_CODE, USE_LOCATION=:P193_USE_LOCATION, PACKSETP=:P193_PACKSETP',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P193_ITEMCODE;',
'end if;',
'',
'',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
,p_process_success_message=>'insert Successfully.......'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44341634467060236)
,p_process_sequence=>45
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of ITMIMAGE'
,p_attribute_02=>'ITMIMAGE'
,p_attribute_03=>'P193_ITEMCODE'
,p_attribute_04=>'ITEMCODE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44400599424821316)
,p_process_sequence=>46
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update nmitemas ',
'SET ITEMTYPE=:P193_ITEMTYPE, ITEMCLAS =:P193_ITEMCLAS, ITEMCODE =:P193_ITEMCODE, STATUSCD =:P193_STATUSCD, ',
'CREADATE =:P193_CREADATE, USERCODE =:P193_USERCODE,ITEMDES1=:P193_ITEMDES1,ITEMDES2 =:P193_ITEMDES2, LUOMCODE=:P193_LUOMCODE, ',
'OPRSTAMP =:P193_OPRSTAMP, TIMSTAMP=:P193_TIMSTAMP, INMFGREF=:P193_INMFGREF, HUOMCODE=:P193_HUOMCODE, FACTRVAL=:P193_FACTRVAL, ',
'SALERATE=:P193_SALERATE, STNDRATE=:P193_STNDRATE, COSTRATE=:P193_COSTRATE, AVRGRATE=:P193_AVRGRATE, COSTTYPE=:P193_COSTTYPE, ',
'ITDISGRP=:P193_ITDISGRP, TCSTGRUP=:P193_TCSTGRUP, ABCCLSFN=:P193_ABCCLSFN, FSNCLSFN=:P193_FSNCLSFN,  XYZCLSFN=:P193_XYZCLSFN,',
' LEADTIME=:P193_LEADTIME,  MINLEVEL=:P193_MINLEVEL,  MAXLEVEL=:P193_MAXLEVEL,  ECOORDER=:P193_ECOORDER,  IREORDER=:P193_IREORDER, ',
' RESRDQTY=:P193_RESRDQTY,  COMMGRUP=:P193_COMMGRUP,  ACCTCODE=:P193_ACCTCODE,  DBACCTCD=:P193_DBACCTCD,  COSTCODE=:P193_COSTCODE, ',
' AREAFORM=:P193_AREAFORM, FORMFLAG=:P193_FORMFLAG, AREAVALU=:P193_AREAVALU, LEVYGRUP=:P193_LEVYGRUP, ITEMMODL=:P193_ITEMMODL, ',
' CMSNGRUP=:P193_CMSNGRUP, USERDEF1=:P193_USERDEF1, USERDEF2=:P193_USERDEF2, USERDEF3=:P193_USERDEF3, USERDEF4=:P193_USERDEF4, ',
' USERFLG1=:P193_USERFLG1, USERFLG2=:P193_USERFLG2, ITEMLENG=:P193_ITEMLENG, LENGUNIT=:P193_LENGUNIT, ITEMWIDT=:P193_ITEMWIDT, WIDTUNIT=:P193_WIDTUNIT, ',
' ITEMHEIT=:P193_ITEMHEIT, HEITUNIT=:P193_HEITUNIT, UNITVOLM=:P193_UNITVOLM, UNITWEIT=:P193_UNITWEIT, RTMODPCT=:P193_RTMODPCT, CNSMPGRP=:P193_CNSMPGRP, ',
' SALESGRP=:P193_SALESGRP, STOCKGRP=:P193_STOCKGRP, ITMSUBCL=:P193_ITMSUBCL, PACKWGHT=:P193_PACKWGHT, VERFFREQ=:P193_VERFFREQ, VERFGRUP=:P193_VERFGRUP, ',
' DRAWNGNO=:P193_DRAWNGNO, FINISHGD=:P193_FINISHGD, COSTMTOD=:P193_COSTMTOD, GENRLFLG=:P193_GENRLFLG, MFRSYEAR=:P193_MFRSYEAR, MODLCODE=:P193_MODLCODE, ',
' MODLGROP=:P193_MODLGROP, SRVCEGRP=:P193_SRVCEGRP, LOCALPRT=:P193_LOCALPRT, ISSUMTHD=:P193_ISSUMTHD, SALEPERC=:P193_SALEPERC, ITEMDES3=:P193_ITEMDES3, ',
' MFRSCNTR=:P193_MFRSCNTR, RMNDRFLG=:P193_RMNDRFLG, DESIGNCD=:P193_DESIGNCD, COLORCDE=:P193_COLORCDE, VHCLCODE=:P193_VHCLCODE, CHASISNO=:P193_CHASISNO, ',
' ENGINENO=:P193_ENGINENO, BINLOCAT=:P193_BINLOCAT, SEMFINGD=:P193_SEMFINGD, ITEMSIZE=:P193_ITEMSIZE, ITMGRADE=:P193_ITMGRADE, WARECODE=:P193_WARECODE, FXASTFLG=:P193_FXASTFLG,',
' SALESFLG=:P193_SALESFLG, CATEGORY=:P193_CATEGORY, PAINTFLG=:P193_PAINTFLG, MODIFYDT=:P193_MODIFYDT, NMHSSCDE=:P193_NMHSSCDE, VESLFLAG=:P193_VESLFLAG,',
'  LSTPURDT=:P193_LSTPURDT, LSTPURRT=:P193_LSTPURRT, STPCODE=:P193_STPCODE, RCQTYCNG=:P193_RCQTYCNG, EXCISRCV=:P193_EXCISRCV, STORABLE=:P193_STORABLE,',
'  DLR_COMMISSION=:P193_DLR_COMMISSION, BRO_COMMISSION=:P193_BRO_COMMISSION, AGN_COMMISSION=:P193_AGN_COMMISSION,',
'  HS_CODE=:P193_HS_CODE, USE_LOCATION=:P193_USE_LOCATION, PACKSETP=:P193_PACKSETP',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P193_ITEMCODE;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620499326040576)
,p_process_success_message=>'update successfully.......'
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
 p_id=>wwv_flow_api.id(42625642764040585)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into itmimage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'insert into itmimage(COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE, MIMETYPE, FILENAME)',
'values(:P193_COMPCODE,:P193_ITEMCODE,:P193_ITMIMAGE,null,null,null,null);',
'end;*/',
'/* Formatted on 2015/06/13 11:41 (Formatter Plus v4.8.8) */',
'--P193_DISPLAY_IMAGES',
'DECLARE',
'   v_length   NUMBER;',
'   v_id       NUMBER;',
'BEGIN',
'INSERT INTO itmimage (COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE)',
'values  (:COMPCODE, :P193_ITEMCODE, :P193_ITEM_IMAGE,100,null);',
' /*  SELECT doc_size',
'     INTO v_length',
'     FROM wwv_flow_files',
'    WHERE NAME = :p_file_browse;',
'',
' --  IF v_length <= 1000000',
' --  THEN',
'      INSERT INTO itmimage',
'                  (COMPCODE, ITEMCODE, ITMIMAGE, DATASIZE, DATATYPE, MIMETYPE, FILENAME)',
'         SELECT :p90_partycde, :P193_ITEMCODE, :P193_ITEM_IMAGE,doc_size,content_type,mime_type,filename',
'           FROM wwv_flow_files',
'          WHERE NAME = upper(:P193_ITEM_IMAGE);',
'/*',
'      DELETE FROM wwv_flow_files',
'            WHERE upper(NAME) = upper(:P193_ITEM_IMAGE);',
'   ELSE',
'      DELETE FROM wwv_flow_files',
'            WHERE upper(NAME) = upper(:P193_ITEM_IMAGE);',
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
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42624511095040585)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P193_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Insert Successfully...................'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39388061250682517)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into SYCDEDTL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT NVL(MAX(LEVLCODE),0)+1',
'	INTO :P193_LEVLCODE',
'	FROM SYCDEDTL',
'	WHERE COMPCODE = :compcode;',
'if :P193_ITEM_COUNT = 0 then',
'insert into SYCDEDTL(COMPCODE, MODLCODE, TKEYCODE, LEVLNUMB, CHILDCDE, OPRSTAMP, TIMSTAMP, PARNTCDE, SERIALNO, LEVLCODE, LEAFNODE, CODEDESC)',
'values(:COMPCODE, ''NM'', ''ITEMCODE'', 1, :P193_ITEMCODE, :APP_USER, SYSDATE, :P193_PARENTCODE_1, NULL, :P193_LEVLCODE, NULL, :P193_ITEMDES2);',
'else',
'null;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42624888712040585)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42619765633040573)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39390533552682542)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39388219001682519)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Product Size Define - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44398883181602160)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P193_ITEMCODE is not null then',
'select  ITEMTYPE, ITEMCLAS, STATUSCD, CREADATE, USERCODE, ITEMDES1, ITEMDES2, LUOMCODE, OPRSTAMP, TIMSTAMP,INMFGREF, HUOMCODE, FACTRVAL, SALERATE, STNDRATE, COSTRATE, AVRGRATE, COSTTYPE, ITDISGRP, TCSTGRUP, ABCCLSFN, ',
'FSNCLSFN, XYZCLSFN, LEADTIME, MINLEVEL, MAXLEVEL, ECOORDER, IREORDER, RESRDQTY, COMMGRUP, ACCTCODE, DBACCTCD, COSTCODE, AREAFORM, ',
' FORMFLAG, AREAVALU, LEVYGRUP, ITEMMODL, CMSNGRUP, USERDEF1, USERDEF2, USERDEF3, USERDEF4, USERFLG1, USERFLG2, ITEMLENG,LENGUNIT, ITEMWIDT, WIDTUNIT, ITEMHEIT, HEITUNIT, UNITVOLM, UNITWEIT, RTMODPCT, CNSMPGRP, SALESGRP, ',
' STOCKGRP, ITMSUBCL, PACKWGHT, VERFFREQ, VERFGRUP, DRAWNGNO, FINISHGD, COSTMTOD, GENRLFLG, MFRSYEAR, MODLCODE, MODLGROP, SRVCEGRP, LOCALPRT,ISSUMTHD, SALEPERC, ITEMDES3, MFRSCNTR, RMNDRFLG, DESIGNCD, COLORCDE, VHCLCODE, ',
' CHASISNO, ENGINENO, BINLOCAT, SEMFINGD, ITEMSIZE, ITMGRADE, WARECODE, FXASTFLG, SALESFLG, CATEGORY,  MODIFYDT, NMHSSCDE, VESLFLAG,   STPCODE, RCQTYCNG, EXCISRCV, STORABLE,  ',
' DLR_COMMISSION, BRO_COMMISSION, AGN_COMMISSION, HS_CODE, USE_LOCATION, PACKSETP',
'  into :P193_ITEMTYPE, :P193_ITEMCLAS , :P193_STATUSCD, :P193_CREADATE, :P193_USERCODE, :P193_ITEMDES1, :P193_ITEMDES2, :P193_LUOMCODE, :P193_OPRSTAMP, :P193_TIMSTAMP, :P193_INMFGREF, :P193_HUOMCODE, :P193_FACTRVAL, ',
'  :P193_SALERATE, :P193_STNDRATE, :P193_COSTRATE, :P193_AVRGRATE,:P193_COSTTYPE, :P193_ITDISGRP, :P193_TCSTGRUP, :P193_ABCCLSFN, :P193_FSNCLSFN, :P193_XYZCLSFN, :P193_LEADTIME, :P193_MINLEVEL, :P193_MAXLEVEL, ',
'  :P193_ECOORDER, :P193_IREORDER, :P193_RESRDQTY, :P193_COMMGRUP, :P193_ACCTCODE, :P193_DBACCTCD, :P193_COSTCODE, :P193_AREAFORM, ',
' :P193_FORMFLAG, :P193_AREAVALU, :P193_LEVYGRUP, :P193_ITEMMODL, :P193_CMSNGRUP, :P193_USERDEF1, :P193_USERDEF2, :P193_USERDEF3, :P193_USERDEF4, :P193_USERFLG1, :P193_USERFLG2, :P193_ITEMLENG, :P193_LENGUNIT, ',
' :P193_ITEMWIDT, :P193_WIDTUNIT, :P193_ITEMHEIT, :P193_HEITUNIT, :P193_UNITVOLM, :P193_UNITWEIT, :P193_RTMODPCT, :P193_CNSMPGRP, :P193_SALESGRP, :P193_STOCKGRP, :P193_ITMSUBCL, :P193_PACKWGHT, :P193_VERFFREQ, ',
' :P193_VERFGRUP, :P193_DRAWNGNO, :P193_FINISHGD, :P193_COSTMTOD, :P193_GENRLFLG, :P193_MFRSYEAR, :P193_MODLCODE, :P193_MODLGROP, :P193_SRVCEGRP, :P193_LOCALPRT, :P193_ISSUMTHD, :P193_SALEPERC, :P193_ITEMDES3, ',
' :P193_MFRSCNTR, :P193_RMNDRFLG, :P193_DESIGNCD, :P193_COLORCDE, :P193_VHCLCODE, :P193_CHASISNO, :P193_ENGINENO, :P193_BINLOCAT, :P193_SEMFINGD, :P193_ITEMSIZE, :P193_ITMGRADE, :P193_WARECODE, :P193_FXASTFLG, ',
' :P193_SALESFLG, :P193_CATEGORY, :P193_MODIFYDT, :P193_NMHSSCDE, :P193_VESLFLAG,   :P193_STPCODE, :P193_RCQTYCNG, :P193_EXCISRCV, :P193_STORABLE,  ',
' :P193_DLR_COMMISSION, :P193_BRO_COMMISSION, :P193_AGN_COMMISSION, :P193_HS_CODE,:P193_USE_LOCATION, :P193_PACKSETP',
'  FROM nmitemas',
'   where COMPCODE=:COMPCODE',
'   and ITEMCODE=:P193_ITEMCODE;',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42625296046040585)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert for nmitemas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'v_itemcode2 varchar2(10);',
'begin',
'select  distinct  ACTLCODE a  into :P193_ITEMMODL ',
'from SYCDEDTL where LEVLCODE=:P193_PARENTCODE_1;',
':P193_COMPCODE:=:COMPCODE;',
':P193_OPRSTAMP:=:APP_USER;',
':P193_TIMSTAMP:=sysdate;',
':P193_CREADATE:=sysdate;',
'--:P193_ITEMCODE:=nvl(:P193_ITEMCODE,substr(:P193_CATEGORY,1,3)||lpad(SEQ_ITEM_CODE.nextval,5,''0''));',
':P193_USERCODE:=:APP_USER;',
':P193_ITEMDES1:=:P193_ITEMCODE;',
':P193_ITEMDES2:=:P193_ITEMDES1;',
':P193_LUOMCODE:=:P193_LUOMCODE;',
':P193_ITEMTYPE:=''S'';',
':P193_ITEMCLAS:=''N'';',
':P193_STATUSCD:=''ACT'';',
'--:P193_CATEGORY:=:P193_PARENTCODE;',
'',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42620885057040576)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39800073716738516)
,p_process_sequence=>100
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(39388219001682519)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre-Insert into nmitemas_detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  select ITEM_WEIGHT_SIZE_SEQ.nextval into :NMITMPK from dual;',
'  :ITEMCODE:=:P193_ITEMCODE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
