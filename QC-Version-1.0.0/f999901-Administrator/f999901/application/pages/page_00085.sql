prompt --application/pages/page_00085
begin
--   Manifest
--     PAGE: 00085
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
 p_id=>85
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Cost Center Access Entry backup'
,p_page_mode=>'MODAL'
,p_step_title=>'Cost Center Access Entry backup'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201007190319'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(181894685660943964)
,p_plug_name=>'User'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(181896350331943981)
,p_plug_name=>'Cost Center Access'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182304947328610239)
,p_plug_name=>'Cost Center Access Grid'
,p_region_name=>'cost_grid'
,p_parent_plug_id=>wwv_flow_api.id(181896350331943981)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       c001 COMPCODE,',
'       c002 GRUPCODE,',
'       c003 CABASECC,',
'       c004 COSTCENTER,',
'       c005 WARECODE,',
'       c006 WAREHOUSE,',
'       c007 ZONLCODE,',
'       c008 INS_STATUS',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181895122001943969)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'compcode'
,p_heading_alignment=>'CENTER'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P85_COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181895267209943970)
,p_name=>'GRUPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRUPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Code'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P85_USERCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181895357810943971)
,p_name=>'CABASECC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CABASECC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Cost Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
'SELECT DISTINCT costcode||'' - ''||costdesc d, costcode r',
'    FROM SYJOBMAS',
'   WHERE compcode = :compcode ',
'     AND NVL (Validity, ''N'') = ''Y''',
'     AND costcode NOT IN (SELECT c003',
'                            FROM apex_collections',
'                           WHERE collection_name = ''ORDER_ITEMS'')',
'ORDER BY LENGTH (costcode), costcode'))
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
 p_id=>wwv_flow_api.id(181895498498943972)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ware Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181896091395943978)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181896160947943979)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181896685825943984)
,p_name=>'Delete'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>'Delete'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" title="Delete" aria-label="Delete" class="t-Button t-Button--noLabel t-Button--icon t-Button--small t-Button--danger t-Button--simple js-actionButton" data-action="row-delete">',
'<span aria-hidden="true" class="t-Icon fa fa-trash-o"></span>',
'</button>'))
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(181896983103943987)
,p_name=>'ZONLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ZONLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Zone'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(186280590839058762)
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
 p_id=>wwv_flow_api.id(186280626469058763)
,p_name=>'WAREHOUSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WAREHOUSE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(42825033080929592)
,p_lov_display_extra=>false
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(186280784857058764)
,p_name=>'COSTCENTER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCENTER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Cost Center'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>4000
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(57331622931070728)
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(186281244521058769)
,p_name=>'INS_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INS_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ins Status'
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(181895001498943967)
,p_internal_uid=>181895001498943967
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>360
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(182426835811865029)
,p_interactive_grid_id=>wwv_flow_api.id(181895001498943967)
,p_static_id=>'401509'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(182426967402865029)
,p_report_id=>wwv_flow_api.id(182426835811865029)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(125161928126240270)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(186281244521058769)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182427954032865035)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(181895122001943969)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182428476893865038)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(181895267209943970)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182428954596865039)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(181895357810943971)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182429473344865043)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(181895498498943972)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83.4
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182446803189918949)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(181896091395943978)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182519211339258896)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(181896685825943984)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>55.8
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(182529191999380574)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(181896983103943987)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(186982624606242496)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(186280590839058762)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(186983171294242500)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(186280626469058763)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(186999286262616718)
,p_view_id=>wwv_flow_api.id(182426967402865029)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(186280784857058764)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>144.6
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(186279974996058756)
,p_name=>'Available Cost Center'
,p_region_name=>'cost_collection'
,p_template=>wwv_flow_api.id(1582248828871857852)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE,',
'               APEX_ITEM.CHECKBOX(1,a.COSTCODE,''CHECKED'') "select"',
'          FROM syjobmas a',
'         WHERE compcode = :P85_COMPCODE',
'           AND NVL (validity, ''N'') = ''Y''',
'           AND costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125157361826939550)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125157715342939557)
,p_query_column_id=>2
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Cost Center'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57331622931070728)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125158190073939557)
,p_query_column_id=>3
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>3
,p_column_heading=>'Warehouse'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(42825033080929592)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125158542690939557)
,p_query_column_id=>4
,p_column_alias=>'ZONLCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Zone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125158937944939560)
,p_query_column_id=>5
,p_column_alias=>'select'
,p_column_display_sequence=>5
,p_column_heading=>'<input type="checkbox" checked onclick="javascript:$f_CheckAll(this, this.checked, $(''[name=f01]''));">'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125159322528939560)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(186279974996058756)
,p_button_name=>'BACK'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125148590066939473)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125148955377939484)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P85_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125159774853939562)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(186279974996058756)
,p_button_name=>'APPLY'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125149348166939484)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
,p_button_condition=>'P85_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125149748039939484)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P85_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125150103631939484)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'ACCESS_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Access All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125150521641939484)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(181896350331943981)
,p_button_name=>'REMOVE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Remove All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(125173021135939625)
,p_branch_name=>'Go To Page &APP_PAGE_ID.'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.:APPLY:&DEBUG.::P85_USERCODE,P85_COMPCODE:&P85_USERCODE.,&P85_COMPCODE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(125159774853939562)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125147168973939445)
,p_name=>'P85_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(181894685660943964)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125147540408939464)
,p_name=>'P85_USERCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(181894685660943964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT usercode||'' - ''||username d, usercode r',
'    FROM (SELECT b.usercode, b.username',
'            FROM syusrmas b',
'           WHERE b.DIVNCODE = :COMPCODE',
'          UNION',
'          SELECT DISTINCT A.USERCODE,',
'                          (SELECT username',
'                             FROM syusrmas',
'                            WHERE usercode = A.USERCODE) username',
'            FROM syrights a',
'           WHERE A.COMPCODE = :COMPCODE)',
'ORDER BY usercode ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125147822863939467)
,p_name=>'P85_COMPCODE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(181894685660943964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'GROUPWISE COMPANY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT cacmpcde||'' - ''||cacmpnam d, cacmpcde r',
'  FROM SYPARMAS',
' WHERE cagrpcde = ''001'' ',
'   AND CACMPCDE = :COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125161696620939600)
,p_name=>'cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(57164428772670892)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125162171462939607)
,p_event_id=>wwv_flow_api.id(125161696620939600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125162655418939614)
,p_event_id=>wwv_flow_api.id(125161696620939600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125163180351939615)
,p_event_id=>wwv_flow_api.id(125161696620939600)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125163587324939615)
,p_name=>'refresh grid'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P85_USERCODE,P85_COMPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125164096944939615)
,p_event_id=>wwv_flow_api.id(125163587324939615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
'/*',
'begin',
'    APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(',
'        p_collection_name => (''ORDER_ITEMS''));',
'end;        ',
'*/        ',
'begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'                  p_query => ''SELECT COMPCODE,',
'                                   GRUPCODE,',
'                                   CABASECC,',
'                                   CABASECC COSTCENTER,',
'                                   WARECODE,',
'                                   DFN_WARENAME (WARECODE, COMPCODE) WAREHOUSE,',
'                                   NULL ZONLCODE,',
'                                   ''''E'''' INS_STATUS',
'                              FROM SYCSTACC',
'                             WHERE GRUPCODE = ''''''||:P85_USERCODE||''''''',
'                               AND COMPCODE = ''''''||:P85_COMPCODE||''''''',
'                            '');',
'end;                       '))
,p_attribute_02=>'P85_USERCODE,P85_COMPCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125164531448939615)
,p_event_id=>wwv_flow_api.id(125163587324939615)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182304947328610239)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125164948569939617)
,p_name=>'remove all'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(125150521641939484)
,p_condition_element=>'P85_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125165469202939617)
,p_event_id=>wwv_flow_api.id(125164948569939617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Remove All &PROGDESE.?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125165970228939617)
,p_event_id=>wwv_flow_api.id(125164948569939617)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    DELETE FROM SYCSTACC',
'     WHERE COMPCODE = :P85_COMPCODE',
'       AND GRUPCODE = :P85_USERCODE;',
'exception ',
'    when others then',
'    raise_application_error(-20001,sqlcode||''-''||sqlerrm);',
'end;',
'',
'BEGIN',
'    APEX_COLLECTION.TRUNCATE_COLLECTION(',
'        p_collection_name => ''ORDER_ITEMS'');',
'END;'))
,p_attribute_02=>'P85_COMPCODE,P85_USERCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125166472429939617)
,p_event_id=>wwv_flow_api.id(125164948569939617)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182304947328610239)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125166945664939618)
,p_event_id=>wwv_flow_api.id(125164948569939617)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Remove Successfull.....'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125167320238939618)
,p_name=>'Access All'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(125150103631939484)
,p_condition_element=>'P85_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125167864702939618)
,p_event_id=>wwv_flow_api.id(125167320238939618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(186279974996058756)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125168342980939618)
,p_event_id=>wwv_flow_api.id(125167320238939618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(186279974996058756)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125168704281939618)
,p_name=>'set warehouse1'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(182304947328610239)
,p_triggering_element=>'CABASECC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125169288530939618)
,p_event_id=>wwv_flow_api.id(125168704281939618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT warecode, dfn_warename(warecode,compcode) WAREHOUSE, zonlcode, ''I''',
'  INTO :WARECODE, :WAREHOUSE, :ZONLCODE, :INS_STATUS',
'  FROM nmwhsmas',
' WHERE compcode = :P85_COMPCODE',
'   AND costcode = :CABASECC',
'   AND nvl(SRVCWFLG,''Y'') = ''N'';',
'exception',
' when others then',
'  --raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'  null;',
'end;'))
,p_attribute_02=>'CABASECC,P85_COMPCODE'
,p_attribute_03=>'WARECODE,WAREHOUSE,ZONLCODE,INS_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125169655371939621)
,p_name=>'add to collection'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(125159774853939562)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125170140978939621)
,p_event_id=>wwv_flow_api.id(125169655371939621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_SL number;',
' v_COSTCODE syjobmas.COSTCODE%type;',
' v_COSTCENTER varchar2(200);',
' v_WARECODE nmwhsmas.WARECODE%type;',
' v_ZONLCODE nmwhsmas.ZONLCODE%type;',
'Begin',
'',
' FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'',
'        SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               a.COSTCODE||'' - ''||COSTDESC COSTCENTER,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE',
'          INTO v_SL, v_COSTCODE, v_COSTCENTER, v_WARECODE, v_ZONLCODE',
'          FROM syjobmas a',
'         WHERE a.compcode = :P85_COMPCODE',
'           AND NVL (a.validity, ''N'') = ''Y''',
'           AND a.costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')',
'           AND a.COSTCODE = APEX_APPLICATION.G_F01(i);                                 ',
' ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => :P85_COMPCODE, --:COMPCODE,',
'        p_c002            => :P85_USERCODE, --:GRUPCODE,',
'        p_c003            => v_COSTCODE,',
'        p_c004            => v_COSTCENTER,        ',
'        p_c005            => v_WARECODE,',
'        --p_c006            => :WAREHOUSE,',
'        p_c007            => v_ZONLCODE,',
'        p_c008            => ''I''',
'        );',
'        commit;',
' END LOOP;                         ',
'End;',
'',
'',
'     '))
,p_attribute_02=>'P85_COMPCODE,P85_USERCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125170665223939621)
,p_event_id=>wwv_flow_api.id(125169655371939621)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182304947328610239)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125171156354939621)
,p_event_id=>wwv_flow_api.id(125169655371939621)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(186279974996058756)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125171512178939623)
,p_name=>'close region'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(125159322528939560)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125172045867939623)
,p_event_id=>wwv_flow_api.id(125171512178939623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(186279974996058756)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125172501210939623)
,p_event_id=>wwv_flow_api.id(125171512178939623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182304947328610239)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125156601361939528)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(182304947328610239)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Cost Center Access - Save Interactive Grid Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'    ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => :P85_COMPCODE, --:COMPCODE,',
'        p_c002            => :P85_USERCODE, --:GRUPCODE,',
'        p_c003            => :CABASECC,',
'        p_c004            => :COSTCENTER,        ',
'        p_c005            => :WARECODE,',
'        p_c006            => :WAREHOUSE,',
'        p_c007            => :ZONLCODE,',
'        p_c008            => :INS_STATUS',
'        );',
'        commit;',
'               ',
'    when ''U'' then',
'',
'        APEX_COLLECTION.UPDATE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL,',
'        p_c001            => :COMPCODE,',
'        p_c002            => :GRUPCODE,',
'        p_c003            => :CABASECC,',
'        p_c004            => :COSTCENTER,        ',
'        p_c005            => :WARECODE,',
'        p_c006            => :WAREHOUSE,',
'        p_c007            => :ZONLCODE,',
'        p_c008            => :INS_STATUS  ',
'        );',
'        commit;',
'',
'    when ''D'' then',
'    ',
'        APEX_COLLECTION.DELETE_MEMBER (',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_seq             => :SL);',
'        commit;',
'',
'    end case;',
'    ',
'exception ',
'    when others then',
'    raise_application_error(-20001, sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125149748039939484)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125161293774939593)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert SYCSTACC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'   FOR i IN (  SELECT seq_id SL,',
'                      c001 COMPCODE,',
'                      c002 GRUPCODE,',
'                      c003 CABASECC,',
'                      c004 COSTCENTER,',
'                      c005 WARECODE,',
'                      c006 WAREHOUSE,',
'                      c007 ZONLCODE,',
'                      c008 INS_STATUS',
'                 FROM apex_collections',
'                WHERE collection_name = ''ORDER_ITEMS'' AND c008 = ''I''',
'             ORDER BY sl)',
'   LOOP',
'      BEGIN',
'         DPR_INSERT_SYCSTACC (P_COMPCODE   => i.COMPCODE,',
'                              P_GRUPCODE   => i.GRUPCODE,',
'                              P_CABASECC   => i.CABASECC,',
'                              P_WARECODE   => i.WARECODE,',
'                              P_OPRSTAMP   => :app_user);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''Unable to Call Process of Cost Center Access. '');',
'      END;',
'   END LOOP;',
'',
'',
'   IF apex_collection.collection_exists (p_collection_name => ''ORDER_ITEMS'') =',
'         TRUE',
'   THEN',
'      apex_collection.truncate_collection (p_collection_name => ''ORDER_ITEMS'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125149748039939484)
,p_process_success_message=>'Inserted Successfully.....'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125160838202939593)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125160168580939593)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_NOT_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125160483185939593)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'upd collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_SL number;',
' v_COSTCODE syjobmas.COSTCODE%type;',
' v_WARECODE nmwhsmas.WARECODE%type;',
' v_ZONLCODE nmwhsmas.ZONLCODE%type;',
'Begin',
'',
' FOR i in 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'',
'        SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE',
'          INTO v_SL, v_COSTCODE, v_WARECODE, v_ZONLCODE',
'          FROM syjobmas a',
'         WHERE a.compcode = :P85_COMPCODE',
'           AND NVL (a.validity, ''N'') = ''Y''',
'           AND a.costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')',
'           AND a.COSTCODE = APEX_APPLICATION.G_F01(i);                                 ',
' ',
'        APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => ''ORDER_ITEMS'',',
'        p_c001            => :P85_COMPCODE, --:COMPCODE,',
'        p_c002            => :P85_USERCODE, --:GRUPCODE,',
'        p_c003            => v_COSTCODE,',
'        --p_c004            => :COSTCENTER,        ',
'        p_c005            => v_WARECODE,',
'        --p_c006            => :WAREHOUSE,',
'        p_c007            => v_ZONLCODE,',
'        p_c008            => ''I''',
'        );',
'        commit;',
' END LOOP;                         ',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(125159774853939562)
,p_process_success_message=>'Successfully Added...'
);
wwv_flow_api.component_end;
end;
/
