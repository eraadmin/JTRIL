prompt --application/pages/page_00135
begin
--   Manifest
--     PAGE: 00135
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
 p_id=>135
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Cost Center Access Entry 2'
,p_alias=>'COST-CENTER-ACCESS-ENTRY-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Cost Center Access Entry 2'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ig_cost button[data-action="selection-add-row"], div[data-action="edit"] {',
'    display: none !important;',
'}'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221220173236'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87067854744337804)
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
 p_id=>wwv_flow_api.id(87069519415337821)
,p_plug_name=>'Cost Center Access'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154469114608441039)
,p_plug_name=>'Cost Center Access Grid'
,p_region_name=>'ig_cost'
,p_parent_plug_id=>wwv_flow_api.id(87069519415337821)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       GRUPCODE,',
'       CABASECC,',
'       WARECODE,',
'       dfn_warename(warecode,compcode) WAREHOUSE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT',
'  from SYCSTACC',
' where COMPCODE = :P135_COMPCODE',
'   and GRUPCODE = :P135_USERCODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P135_COMPCODE,P135_USERCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(44222006258910114)
,p_name=>'WAREHOUSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WAREHOUSE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warehouse'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154469358675441041)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(154469445875441042)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_api.id(154469531479441043)
,p_name=>'GRUPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRUPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(154469668552441044)
,p_name=>'CABASECC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CABASECC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Cost Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(57331622931070728)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'-Select-'
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
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT costcode||'' - ''||costdesc d, costcode r',
'    FROM SYJOBMAS s',
'   WHERE compcode = :COMPCODE',
'     AND NVL (Validity, ''N'') = ''N''',
'ORDER BY LENGTH (costcode), costcode'))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155510217561404995)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Warecode'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>4
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
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155510296108404996)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_api.id(155510417031404997)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_api.id(155510555231404998)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(155510641434404999)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(155510764811405000)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(154469186553441040)
,p_internal_uid=>154469186553441040
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>380
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(155516110538409283)
,p_interactive_grid_id=>wwv_flow_api.id(154469186553441040)
,p_static_id=>'401529'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(155516214072409284)
,p_report_id=>wwv_flow_api.id(155516110538409283)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(42841585856952636)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(44222006258910114)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155516691533409286)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(154469358675441041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155517173033409290)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(154469445875441042)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155517760846409292)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(154469531479441043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155518224952409294)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(154469668552441044)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155518702141409297)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(155510217561404995)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155519200172409300)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(155510296108404996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155519741983409301)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(155510417031404997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155520245097409303)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(155510555231404998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(155520692475409304)
,p_view_id=>wwv_flow_api.id(155516214072409284)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(155510641434404999)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(91453144079452596)
,p_name=>'Available Cost Center'
,p_template=>wwv_flow_api.id(1582248828871857852)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM sl,',
'       a.COSTCODE,',
'       b.WARECODE,',
'       (SELECT ZONLCODE',
'          FROM nmwhsmas c',
'         WHERE COMPCODE = :P135_COMPCODE AND c.costcode = a.costcode AND c.warecode = b.warecode AND NVL (b.SRVCWFLG, ''Y'') = ''N'') ZONLCODE,',
'       APEX_ITEM.CHECKBOX (1, a.COSTCODE, ''CHECKED'') "select"',
'  FROM syjobmas a, nmwhsmas b',
' WHERE a.compcode = :P135_COMPCODE',
'   AND a.compcode = b.COMPCODE',
'   AND a.costcode = b.costcode',
'   AND NVL (a.validity, ''N'') = ''Y''',
'   AND NVL (srvcwflg, ''N'') = ''N''',
'   AND a.costcode NOT IN (SELECT c003',
'                          FROM apex_collections',
'                         WHERE collection_name = ''ORDER_ITEMS'')'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_COMPCODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Data Found!'
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ROWNUM sl,',
'               a.COSTCODE,',
'               (SELECT WARECODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') WARECODE,',
'               (SELECT ZONLCODE FROM nmwhsmas b WHERE b.costcode = a.costcode AND nvl(b.SRVCWFLG,''Y'') = ''N'') ZONLCODE,',
'               APEX_ITEM.CHECKBOX(1,a.COSTCODE,''CHECKED'') "select"',
'          FROM syjobmas a',
'         WHERE compcode = :COMPCODE',
'           AND NVL (validity, ''N'') = ''Y''',
'           AND costcode NOT IN (SELECT c003',
'                                  FROM apex_collections',
'                                 WHERE collection_name = ''ORDER_ITEMS'')'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30329838551333206)
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
 p_id=>wwv_flow_api.id(30330223008333207)
,p_query_column_id=>2
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Cost Code'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(57331622931070728)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30330642364333207)
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
 p_id=>wwv_flow_api.id(30331050529333207)
,p_query_column_id=>4
,p_column_alias=>'ZONLCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Zonlcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(30331451823333207)
,p_query_column_id=>5
,p_column_alias=>'select'
,p_column_display_sequence=>5
,p_column_heading=>'<input type="checkbox" checked title="Select or Deselect All" onclick="$f_CheckFirstColumn(this)">'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30331880148333208)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(91453144079452596)
,p_button_name=>'BACK'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30321757488333197)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(87069519415337821)
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
 p_id=>wwv_flow_api.id(30332286564333208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(91453144079452596)
,p_button_name=>'APPLY'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Add All'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30322147000333197)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87069519415337821)
,p_button_name=>'ACCESS_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Access All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(30322523279333197)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(87069519415337821)
,p_button_name=>'REMOVE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Remove All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_api.id(69907654439180345)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30320265580333196)
,p_name=>'P135_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(87067854744337804)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(30320692109333196)
,p_name=>'P135_USERCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(87067854744337804)
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
 p_id=>wwv_flow_api.id(30321017227333196)
,p_name=>'P135_COMPCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(87067854744337804)
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
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30328407585333203)
,p_tabular_form_region_id=>wwv_flow_api.id(154469114608441039)
,p_validation_name=>'Duplicate Checking'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_sycstacc number;',
'begin',
'    select count(GRUPCODE) into v_sycstacc',
'        from sycstacc ',
'        where COMPCODE = :P135_COMPCODE',
'        and CABASECC = :CABASECC',
'        and GRUPCODE = :P135_USERCODE',
'        and WARECODE = :WARECODE',
'        and OPRSTAMP = :app_user;',
'    ',
'    if v_sycstacc > 0 then',
'        return ''Duplicate rows found. ''||:CABASECC;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30333020975333209)
,p_name=>'cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30321757488333197)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30333551764333209)
,p_event_id=>wwv_flow_api.id(30333020975333209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30334056729333209)
,p_event_id=>wwv_flow_api.id(30333020975333209)
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
 p_id=>wwv_flow_api.id(30334537773333210)
,p_event_id=>wwv_flow_api.id(30333020975333209)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30334924519333210)
,p_name=>'refresh grid'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P135_USERCODE,P135_COMPCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30335494568333210)
,p_event_id=>wwv_flow_api.id(30334924519333210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
' ',
'begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'                  p_query => ''  SELECT COMPCODE,',
'                                       GRUPCODE,',
'                                       CABASECC,',
'                                       WARECODE',
'                                  FROM SYCSTACC',
'                                 WHERE GRUPCODE = ''''''||:P135_USERCODE||''''''',
'                                   AND COMPCODE = ''''''||:P135_COMPCODE||''''''',
'                            '');',
'end;'))
,p_attribute_02=>'P135_USERCODE,P135_COMPCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30335934194333210)
,p_event_id=>wwv_flow_api.id(30334924519333210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154469114608441039)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30336320939333210)
,p_name=>'remove all'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30322523279333197)
,p_condition_element=>'P135_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30336812281333211)
,p_event_id=>wwv_flow_api.id(30336320939333210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Remove All &PROGDESE.?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30337342455333211)
,p_event_id=>wwv_flow_api.id(30336320939333210)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    DELETE FROM SYCSTACC',
'     WHERE COMPCODE = :P135_COMPCODE',
'       AND GRUPCODE = :P135_USERCODE;',
'exception ',
'    when others then',
'    raise_application_error(-20001,sqlcode||''-''||sqlerrm);',
'end;'))
,p_attribute_02=>'P135_COMPCODE,P135_USERCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30337892237333211)
,p_event_id=>wwv_flow_api.id(30336320939333210)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(154469114608441039)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30338396555333211)
,p_event_id=>wwv_flow_api.id(30336320939333210)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Remove Successfull.....'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30338796683333211)
,p_name=>'Access All'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30322147000333197)
,p_condition_element=>'P135_USERCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30339208486333212)
,p_event_id=>wwv_flow_api.id(30338796683333211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF apex_collection.collection_exists(''ORDER_ITEMS'') THEN',
'   apex_collection.delete_collection(''ORDER_ITEMS'');',
'   commit;',
'END IF;',
' ',
'begin',
'    APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'        p_collection_name =>''ORDER_ITEMS'', ',
'                  p_query => ''  SELECT COMPCODE,',
'                                       GRUPCODE,',
'                                       CABASECC,',
'                                       WARECODE',
'                                  FROM SYCSTACC',
'                                 WHERE GRUPCODE = ''''''||:P135_USERCODE||''''''',
'                                   AND COMPCODE = ''''''||:P135_COMPCODE||''''''',
'                            '');',
'end;'))
,p_attribute_02=>'P135_USERCODE,P135_COMPCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30339772396333212)
,p_event_id=>wwv_flow_api.id(30338796683333211)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(91453144079452596)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30340219154333212)
,p_event_id=>wwv_flow_api.id(30338796683333211)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(91453144079452596)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30340620281333212)
,p_name=>'close region'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(30331880148333208)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30341168566333213)
,p_event_id=>wwv_flow_api.id(30340620281333212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(91453144079452596)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(30341556934333213)
,p_name=>'set warehouse'
,p_event_sequence=>130
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(154469114608441039)
,p_triggering_element=>'CABASECC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(30342028195333213)
,p_event_id=>wwv_flow_api.id(30341556934333213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT warecode, dfn_warename(warecode,compcode) WAREHOUSE--, zonlcode, ''I''',
'  INTO :WARECODE, :WAREHOUSE--, :ZONLCODE, :INS_STATUS',
'  FROM nmwhsmas',
' WHERE compcode = :P135_COMPCODE',
'   AND costcode = :CABASECC',
'   AND nvl(SRVCWFLG,''N'') = ''N'';',
'EXCEPTION',
'   WHEN NO_DATA_FOUND THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''No Warehouse Found!'');',
'   WHEN TOO_MANY_ROWS THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''Multiple Warehouse Found!'');',
'   WHEN OTHERS THEN',
'      RAISE_APPLICATION_ERROR (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_attribute_02=>'P135_COMPCODE,CABASECC'
,p_attribute_03=>'WARECODE,WAREHOUSE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30329105513333204)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154469114608441039)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':COMPCODE := :P135_COMPCODE;',
':GRUPCODE := :P135_USERCODE;',
':OPRSTAMP := :APP_USER;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30328714874333204)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(154469114608441039)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Cost Center Access Grid - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
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
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30332604161333208)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'access all insert SYCSTACC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 20/Jan/22 1:23:25 PM (QP5 v5.287) */',
'DECLARE',
'   v_COSTCODE   VARCHAR2 (100);',
'   v_WARECODE   VARCHAR2 (100);',
'   v_sycstacc   number;',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.G_F01.COUNT',
'   LOOP',
'      SELECT a.COSTCODE, b.WARECODE',
'        INTO v_COSTCODE, v_WARECODE',
'        FROM syjobmas a, nmwhsmas b',
'       WHERE     a.compcode = :COMPCODE',
'             AND a.compcode = b.COMPCODE',
'             AND a.costcode = b.costcode',
'             AND NVL (a.validity, ''N'') = ''Y''',
'             AND NVL (srvcwflg, ''N'') = ''N''',
'             AND a.costcode NOT IN (SELECT c003',
'                                      FROM apex_collections',
'                                     WHERE collection_name = ''ORDER_ITEMS'')',
'             AND a.COSTCODE = APEX_APPLICATION.G_F01 (i);',
'',
'        select count(GRUPCODE) into v_sycstacc',
'        from sycstacc ',
'        where COMPCODE = :COMPCODE',
'        and CABASECC = v_COSTCODE',
'        and GRUPCODE = :P135_USERCODE',
'        and WARECODE = v_WARECODE',
'        and OPRSTAMP = :app_user;',
'',
'      BEGIN',
'        if v_sycstacc = 0 then',
'            DPR_INSERT_SYCSTACC (P_COMPCODE   => :P135_COMPCODE,',
'                              P_GRUPCODE   => :P135_USERCODE,',
'                              P_CABASECC   => v_COSTCODE,',
'                              P_WARECODE   => v_WARECODE,',
'                              P_OPRSTAMP   => :app_user);',
'        end if;',
'         --RAISE_APPLICATION_ERROR (-20001, ''Process Error to Insert. ''|| SQLERRM);',
'         ',
'      END;',
'   END LOOP;',
'--    EXCEPTION',
'--             WHEN NO_DATA_FOUND THEN',
'--                 raise_application_error(-20001, ''No costcode found'');',
'--             WHEN TOO_MANY_ROWS THEN',
'--                 raise_application_error(-20001, ''Multiple Costcode Found'');',
'--             WHEN OTHERS THEN',
'--                 raise_application_error(-20001, ''Unable to add costcode'');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(30332286564333208)
,p_process_success_message=>'Insert All Successfully.....'
);
null;
wwv_flow_api.component_end;
end;
/
