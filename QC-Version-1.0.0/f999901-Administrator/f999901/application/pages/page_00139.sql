prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'workflow definition 2'
,p_alias=>'WORKFLOW-DEFINITION-2'
,p_page_mode=>'MODAL'
,p_step_title=>'workflow definition 2'
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
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221222165558'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(147840373225141760)
,p_plug_name=>'Approval Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_region_attributes=>'style="height:300px;"'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(234937410149590349)
,p_plug_name=>'Rights Setup'
,p_parent_plug_id=>wwv_flow_api.id(147840373225141760)
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
'where "TRDOCTYP" = :P139_TRDOCTYP',
'and "TRSUBTYP"=:P139_TRSUBTYP',
'and "COMPCODE"=:P139_COMPCODE',
'--connect by level>3',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P139_TRDOCTYP,P139_TRSUBTYP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(147840538015141762)
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
 p_id=>wwv_flow_api.id(147840664402141763)
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
 p_id=>wwv_flow_api.id(147840774216141764)
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
,p_default_expression=>':P139_COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(147840857833141765)
,p_name=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USERCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'User Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
'         WHERE a.compcode = :P139_COMPCODE --compcode',
'        UNION',
'        SELECT DISTINCT b.USERCODE, b.GRUPCODE COMPCODE',
'          FROM syusrmas b',
'         WHERE b.DIVNCODE = ''001'') c'))
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
 p_id=>wwv_flow_api.id(147841004751141766)
,p_name=>'AUTHTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTHTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Auth. Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.NMSOFCDE||''-''||s.NMCODDES d,s.NMSOFCDE r',
'  FROM NMCODMAS s',
' WHERE COMPCODE = :P139_COMPCODE --COMPCODE ',
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
 p_id=>wwv_flow_api.id(147841050283141767)
,p_name=>'LOCNCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOCNCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Ware House'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WARECODE||''-''||WAREDESC d,WARECODE r',
'  FROM nmwhsmas',
' WHERE compcode = :P139_COMPCODE --compcode',
' ORDER BY WARECODE'))
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
 p_id=>wwv_flow_api.id(147841131419141768)
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
 p_id=>wwv_flow_api.id(147841226961141769)
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
 p_id=>wwv_flow_api.id(147841338918141770)
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
 p_id=>wwv_flow_api.id(147841431330141771)
,p_name=>'APRLEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APRLEVEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Level'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(147841531365141772)
,p_name=>'USRADDRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRADDRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'ADD'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(147841680806141773)
,p_name=>'USRMODRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRMODRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'MOD'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(147841769476141774)
,p_name=>'USRDELRT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USRDELRT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'DEL'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(147841839656141775)
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
 p_id=>wwv_flow_api.id(147841940321141776)
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
 p_id=>wwv_flow_api.id(147842096922141777)
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
 p_id=>wwv_flow_api.id(147842179769141778)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(147842243491141779)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(147840505308141761)
,p_internal_uid=>147840505308141761
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
 p_id=>wwv_flow_api.id(147888297548538551)
,p_interactive_grid_id=>wwv_flow_api.id(147840505308141761)
,p_static_id=>'401558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(147888333809538551)
,p_report_id=>wwv_flow_api.id(147888297548538551)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147888839391538551)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(147840538015141762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147889361329538552)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(147840664402141763)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147889888179538554)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(147840774216141764)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147890342023538555)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(147840857833141765)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147890906019538555)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(147841004751141766)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147891404853538557)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(147841050283141767)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147891851729538599)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(147841131419141768)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147892346598538605)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(147841226961141769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147892896390538608)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(147841338918141770)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147893365146538611)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(147841431330141771)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147893892274538611)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(147841531365141772)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147894361491538613)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(147841680806141773)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147894887710538614)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(147841769476141774)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>15
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147895384125538616)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(147841839656141775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147895841331538616)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(147841940321141776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147898410826538976)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(147842096922141777)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(147898958437538978)
,p_view_id=>wwv_flow_api.id(147888333809538551)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(147842179769141778)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(234928175254590343)
,p_plug_name=>'Workflow Defination Rights Setup'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_region_attributes=>'style="height:300px;"'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_column=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'style="background-color:&BACKGROUND_COLOR.;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(234947394904590352)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI:t-Form--slimPadding'
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
 p_id=>wwv_flow_api.id(32052087967393443)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(234947394904590352)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32052449574393443)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(234947394904590352)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32052842716393444)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(234947394904590352)
,p_button_name=>'CREATE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P139_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32053262449393444)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(234947394904590352)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32044103079393439)
,p_name=>'P139_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32044585616393439)
,p_name=>'P139_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
 p_id=>wwv_flow_api.id(32044924553393439)
,p_name=>'P139_TRDOCTYP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.TRANTYPE||'' - ''||s.SUBTTYPE||'' - ''||s.NARATION d,s.TRANTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999'''))
,p_cSize=>32
,p_cMaxlength=>2
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32045384924393440)
,p_name=>'P139_TRSUBTYP'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Subtype'
,p_source=>'TRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999'' ',
' AND s.TRANTYPE = :P139_TRDOCTYP'))
,p_lov_cascade_parent_items=>'P139_TRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_api.id(32045781448393440)
,p_name=>'P139_OUTSTATS'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32046156004393440)
,p_name=>'P139_PRDOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32046582247393440)
,p_name=>'P139_PRSUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous SubType'
,p_source=>'PRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE =  :COMPCODE--''999'' ',
' AND s.TRANTYPE = :P139_PRDOCTYP'))
,p_lov_cascade_parent_items=>'P139_PRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32046974320393440)
,p_name=>'P139_INPSTATS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32047350394393441)
,p_name=>'P139_OPRSTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
 p_id=>wwv_flow_api.id(32047732995393441)
,p_name=>'P139_TIMSTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
 p_id=>wwv_flow_api.id(32048194642393441)
,p_name=>'P139_STKUPFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_source=>'STKUPFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32048513623393441)
,p_name=>'P139_SERVFLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_source=>'SERVFLAG'
,p_source_type=>'DB_COLUMN'
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
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32048992865393442)
,p_name=>'P139_APPRNEED'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Approval Required'
,p_source=>'APPRNEED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32049378808393442)
,p_name=>'P139_MODIFYDT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
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
 p_id=>wwv_flow_api.id(32049749346393442)
,p_name=>'P139_ROWID_NEXT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32050128449393442)
,p_name=>'P139_ROWID_PREV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32050537647393442)
,p_name=>'P139_ROWID_NEXT2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32050970711393443)
,p_name=>'P139_ROWID_PREV2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32051362065393443)
,p_name=>'P139_ROWID_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(234928175254590343)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32041523968393437)
,p_tabular_form_region_id=>wwv_flow_api.id(234937410149590349)
,p_validation_name=>'warecode'
,p_validation_sequence=>10
,p_validation=>'LOCNCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32041933038393438)
,p_tabular_form_region_id=>wwv_flow_api.id(234937410149590349)
,p_validation_name=>'usercode'
,p_validation_sequence=>20
,p_validation=>'USERCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32042386588393438)
,p_tabular_form_region_id=>wwv_flow_api.id(234937410149590349)
,p_validation_name=>'Auth type'
,p_validation_sequence=>30
,p_validation=>'AUTHTYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(32042790960393438)
,p_tabular_form_region_id=>wwv_flow_api.id(234937410149590349)
,p_validation_name=>'Approve level'
,p_validation_sequence=>40
,p_validation=>'APRLEVEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32054884080393445)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(32053262449393444)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32055354873393445)
,p_event_id=>wwv_flow_api.id(32054884080393445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32055727803393445)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32056218439393446)
,p_event_id=>wwv_flow_api.id(32055727803393445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32053620610393444)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P139_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32054035990393444)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P139_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32054489661393445)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(32052087967393443)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32043003189393438)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(234937410149590349)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rights Setup - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32043424955393438)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(234937410149590349)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-insert nmusrlev'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':TRSUBTYP:=:P139_TRSUBTYP;',
':TRDOCTYP:=:P139_TRDOCTYP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
