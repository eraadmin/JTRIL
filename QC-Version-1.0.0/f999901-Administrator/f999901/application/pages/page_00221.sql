prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Workflow Definition'
,p_page_mode=>'MODAL'
,p_step_title=>'Workflow Definition & Approval Setup'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_last_updated_by=>'ASIF'
,p_last_upd_yyyymmddhh24miss=>'20230103175546'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109278688874272136)
,p_plug_name=>'Approval Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="height:300px;"'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196375725798720725)
,p_plug_name=>'Rights Setup'
,p_parent_plug_id=>wwv_flow_api.id(109278688874272136)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"TRSUBTYP",',
'"TRDOCTYP",',
'"COMPCODE",',
'"USERCODE",',
'"AUTHTYPE",',
'"LOCNCODE",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PROGNAME",',
'"APRLEVEL",',
'"USRADDRT",',
'"USRMODRT",',
'"USRDELRT",',
'"GRUPCODE",',
'"MODIFYDT"',
'from "#OWNER#"."NMUSRLEV"',
'where "TRDOCTYP" = :P221_TRDOCTYP',
'and "TRSUBTYP"=:P221_TRSUBTYP',
'and "COMPCODE"=:P221_COMPCODE',
'--connect by level>3',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P221_TRDOCTYP,P221_TRSUBTYP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109278853664272138)
,p_name=>'TRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRSUBTYP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_api.id(109278980051272139)
,p_name=>'TRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TRDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_api.id(109279089865272140)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P221_COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279173482272141)
,p_name=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'User Code'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'300'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.USERCODE||''-''||',
'       (SELECT USERNAME',
'          FROM syusrmas',
'         WHERE USERCODE = c.USERCODE)',
'          D, c.USERCODE R',
'  FROM (SELECT DISTINCT a.GRUPCODE USERCODE, a.COMPCODE',
'          FROM SYCSTACC a',
'         WHERE a.compcode = :P221_COMPCODE --compcode',
'        UNION',
'        SELECT DISTINCT b.USERCODE, b.GRUPCODE COMPCODE',
'          FROM syusrmas b',
'         WHERE b.DIVNCODE = ''001'') c'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'COMPCODE'
,p_ajax_items_to_submit=>'P221_COMPCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279320400272142)
,p_name=>'AUTHTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Auth. Type'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.NMSOFCDE||''-''||s.NMCODDES d,s.NMSOFCDE r',
'  FROM NMCODMAS s',
' WHERE COMPCODE = :P221_COMPCODE --COMPCODE ',
' AND NMHRDCDE = ''AT'' AND MODLCODE = ''NM'''))
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(109279365932272143)
,p_name=>'LOCNCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCNCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Warehouse'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'300'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WARECODE||''-''||WAREDESC d,WARECODE r',
'  FROM nmwhsmas',
' WHERE compcode = :P221_COMPCODE --compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'COMPCODE'
,p_ajax_items_to_submit=>'P221_COMPCODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279447068272144)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279542610272145)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279654567272146)
,p_name=>'PROGNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROGNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_api.id(109279746979272147)
,p_name=>'APRLEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APRLEVEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Level'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109279847014272148)
,p_name=>'USRADDRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRADDRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'ADD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(109279996455272149)
,p_name=>'USRMODRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRMODRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'MOD'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(109280085125272150)
,p_name=>'USRDELRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRDELRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'DEL'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Yes;Y,No;N'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_api.id(109280155305272151)
,p_name=>'GRUPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GRUPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_api.id(109280255970272152)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_api.id(109280412571272153)
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
 p_id=>wwv_flow_api.id(109280495418272154)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(109280559140272155)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(109278820957272137)
,p_internal_uid=>109278820957272137
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
 p_id=>wwv_flow_api.id(109326613197668927)
,p_interactive_grid_id=>wwv_flow_api.id(109278820957272137)
,p_static_id=>'401561'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(109326649458668927)
,p_report_id=>wwv_flow_api.id(109326613197668927)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109327155040668927)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(109278853664272138)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109327676978668928)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(109278980051272139)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109328203828668930)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(109279089865272140)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109328657672668931)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(109279173482272141)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109329221668668931)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(109279320400272142)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109329720502668933)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(109279365932272143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109330167378668975)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(109279447068272144)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109330662247668981)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(109279542610272145)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109331212039668984)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(109279654567272146)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109331680795668987)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(109279746979272147)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109332207923668987)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(109279847014272148)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109332677140668989)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(109279996455272149)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109333203359668990)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(109280085125272150)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109333699774668992)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(109280155305272151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109334156980668992)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(109280255970272152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109336726475669352)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(109280412571272153)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(109337274086669354)
,p_view_id=>wwv_flow_api.id(109326649458668927)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(109280495418272154)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196366490903720719)
,p_plug_name=>'Workflow Defination Rights Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'style="background-color:&BACKGROUND_COLOR.;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(196385710553720728)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23363512933749359)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(196385710553720728)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(69907654439180345)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23363955841749359)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(196385710553720728)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P221_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23364324531749359)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(196385710553720728)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P221_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23363183263749359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(196385710553720728)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(36402582174876403)
,p_branch_name=>'go to report page'
,p_branch_action=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(40995819448194241)
,p_branch_name=>'Go to success page'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4986891058600105)
,p_name=>'P221_RIGHTS_CHECK'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(196375725798720725)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Count(*)',
'	From Syrights',
'	Where COMPCODE=:compcode',
'	And   USERCODE=:app_user',
'	And   PROGNAME=:progname',
'	And   DELSTATS=''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4987387217600110)
,p_name=>'P221_MESSAGE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(196385710553720728)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color:white;"'
,p_display_when=>'P221_RIGHTS_CHECK'
,p_display_when_type=>'ITEM_IS_NULL_OR_ZERO'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23355222470749348)
,p_name=>'P221_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23355644493749350)
,p_name=>'P221_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
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
 p_id=>wwv_flow_api.id(23356051450749350)
,p_name=>'P221_TRDOCTYP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WORKFLOW_DEFINITION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT TRANTYPE, SUBTTYPE, NARATION',
'    FROM sydocmas',
'   WHERE COMPCODE = :COMPCODE --AND TRANTYPE = ''MI''',
'GROUP BY TRANTYPE, SUBTTYPE, NARATION',
'ORDER BY 1 ASC;'))
,p_cSize=>32
,p_cMaxlength=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23356454114749351)
,p_name=>'P221_TRSUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Subtype'
,p_source=>'TRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999'' ',
' AND s.TRANTYPE = :P221_TRDOCTYP'))
,p_lov_cascade_parent_items=>'P221_TRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23356801899749351)
,p_name=>'P221_OUTSTATS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Output Status Code'
,p_source=>'OUTSTATS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NMSOFCDE||'' - ''||C.NMCODDES d,C.NMSOFCDE r',
'  FROM nmcodmas C',
' WHERE C.NMHRDCDE = ''ST'' AND C.MODLCODE = ''NM'' AND C.COMPCODE = :COMPCODE'))
,p_cSize=>32
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23357235902749353)
,p_name=>'P221_PRDOCTYP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous DocType'
,p_source=>'PRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.TRANTYPE||'' - ''||s.SUBTTYPE||'' - ''||s.NARATION d,s.TRANTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE =  :COMPCODE--''999'''))
,p_cSize=>32
,p_cMaxlength=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23357638042749353)
,p_name=>'P221_PRSUBTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous SubType'
,p_source=>'PRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE =  :COMPCODE--''999'' ',
' AND s.TRANTYPE = :P221_PRDOCTYP'))
,p_lov_cascade_parent_items=>'P221_PRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>6
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23358075657749353)
,p_name=>'P221_INPSTATS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Input Status Code'
,p_source=>'INPSTATS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NMSOFCDE||'' - ''||C.NMCODDES d,C.NMSOFCDE r',
'  FROM nmcodmas C',
' WHERE C.NMHRDCDE = ''ST'' AND C.MODLCODE = ''NM'' AND C.COMPCODE = :COMPCODE'))
,p_cSize=>32
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
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
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23358413850749353)
,p_name=>'P221_OPRSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23358807963749354)
,p_name=>'P221_TIMSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23359289920749354)
,p_name=>'P221_STKUPFLG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_source=>'STKUPFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23359615791749354)
,p_name=>'P221_SERVFLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_source=>'SERVFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23360055353749354)
,p_name=>'P221_APPRNEED'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Approval Required'
,p_source=>'APPRNEED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-lg:margin-right-lg'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23360410690749354)
,p_name=>'P221_MODIFYDT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23360897147749356)
,p_name=>'P221_ROWID_NEXT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23361279646749356)
,p_name=>'P221_ROWID_PREV'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23361621272749357)
,p_name=>'P221_ROWID_NEXT2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23362053119749357)
,p_name=>'P221_ROWID_PREV2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23362497207749357)
,p_name=>'P221_ROWID_COUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(196366490903720719)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23352627923749345)
,p_tabular_form_region_id=>wwv_flow_api.id(196375725798720725)
,p_validation_name=>'warecode'
,p_validation_sequence=>10
,p_validation=>'LOCNCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23353002648749345)
,p_tabular_form_region_id=>wwv_flow_api.id(196375725798720725)
,p_validation_name=>'usercode'
,p_validation_sequence=>20
,p_validation=>'USERCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23353436971749345)
,p_tabular_form_region_id=>wwv_flow_api.id(196375725798720725)
,p_validation_name=>'Auth type'
,p_validation_sequence=>30
,p_validation=>'AUTHTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23353870700749345)
,p_tabular_form_region_id=>wwv_flow_api.id(196375725798720725)
,p_validation_name=>'Approve level'
,p_validation_sequence=>40
,p_validation=>'APRLEVEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(30975221864917241)
,p_tabular_form_region_id=>wwv_flow_api.id(196375725798720725)
,p_validation_name=>'levelValid'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'FOR i IN (SELECT APRLEVEL,LOCNCODE,USERCODE',
'from "#OWNER#"."NMUSRLEV"',
'where "TRDOCTYP" = :P221_TRDOCTYP',
'and "TRSUBTYP"=:P221_TRSUBTYP',
'and "COMPCODE"=:P221_COMPCODE)',
'LOOP',
'IF i.LOCNCODE = :LOCNCODE  or i.USERCODE = :USERCODE THEN',
'IF i.APRLEVEL = :APRLEVEL  THEN',
'RETURN ''Different users but the same level should not be accepted'';',
'ELSE',
'RETURN NULL;',
'END IF;',
'END IF;',
'',
'',
'',
'END LOOP;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APRLEVEL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4986944208600106)
,p_name=>'rights check'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P221_RIGHTS_CHECK'
,p_condition_element=>'P221_RIGHTS_CHECK'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987008289600107)
,p_event_id=>wwv_flow_api.id(4986944208600106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(23363512933749359)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987160926600108)
,p_event_id=>wwv_flow_api.id(4986944208600106)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(23363512933749359)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4987499751600111)
,p_event_id=>wwv_flow_api.id(4986944208600106)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P221_MESSAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'You have no rights to Delete.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48909544692836015)
,p_name=>'Cancel Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(23363183263749359)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48909637261836016)
,p_event_id=>wwv_flow_api.id(48909544692836015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23364751955749360)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P221_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23365175538749360)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P221_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23365576492749360)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23363512933749359)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(30975999371917248)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(196375725798720725)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_Count number;',
'BEGIN',
'    SELECT count(1) into v_Count',
'    from "#OWNER#"."NMUSRLEV"',
'    where "TRDOCTYP" = :P221_TRDOCTYP',
'    and "TRSUBTYP"=:P221_TRSUBTYP',
'    and "COMPCODE"=:P221_COMPCODE',
'    --and APRLEVEL = :APRLEVEL',
'    and LOCNCODE = :LOCNCODE',
'    and USERCODE = :USERCODE',
'    and AUTHTYPE = :AUTHTYPE;',
'',
'    IF v_Count > 0 then',
'        raise_application_error(-20001,''Data already exists. Duplicate data found.'');',
'    END IF;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23363955841749359)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23354135038749345)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(196375725798720725)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rights Setup - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Modified!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23354519610749348)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(196375725798720725)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-insert nmusrlev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':TRSUBTYP:=:P221_TRSUBTYP;',
':TRDOCTYP:=:P221_TRDOCTYP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
