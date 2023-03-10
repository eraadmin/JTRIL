prompt --application/pages/page_01501
begin
--   Manifest
--     PAGE: 01501
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
 p_id=>1501
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Production Process'
,p_page_mode=>'MODAL'
,p_step_title=>'Production Process'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function changeItem()',
'    {',
'        if(event.keyCode==13){event.keyCode=9; return event.keyCode}',
'      }    ',
'</script>'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function addTotalrow()',
' {',
'var row=6;',
'  for (var i = 0; i < row; i++)',
'  { ',
'      alert(''123'');',
'//apex.region("process").widget().interactiveGrid("getActions").invoke("row-add-row")',
'//apex.region("rights").widget().interactiveGrid("getActions").invoke("row-add-row")',
'  } ',
'  ',
'  ',
' }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.wrap-cell {',
'    max-height: 64px;',
'    white-space: normal;',
'    overflow: hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'690'
,p_dialog_width=>'100%'
,p_dialog_chained=>'N'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170525134805'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(83882789775326425)
,p_plug_name=>'main'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116938403983394800)
,p_plug_name=>'Production Process Setup'
,p_region_name=>'process'
,p_parent_plug_id=>wwv_flow_api.id(83882789775326425)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT p.compcode,',
'       P.DEPT_NO,',
'       P.PROCESS_NO,',
'       P.MODIFYDT,',
'       P.OPRSTAMP,',
'       P.PROCESS_NAME,',
'       P.ROUTE_PURPOSE_ONLY,',
'       P.TIMSTAMP,',
'       P.BOM_ONLY_FLAG',
'  FROM PRPROCESS p',
' WHERE p.compcode = :compcode',
'     '))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="overflow-y:scroll;">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(68431551086352541)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129568524263558861)
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
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':compcode'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129568557590558862)
,p_name=>'DEPT_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO d, P.DEPT_NO o',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'Order By P.DEPT_NAME'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'Select Department'
,p_lov_null_value=>'null'
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
 p_id=>wwv_flow_api.id(129568728526558863)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_PRECESSNO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129568835314558864)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(129568891009558865)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(129568989084558866)
,p_name=>'PROCESS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Process Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_item_width=>50
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129569044160558867)
,p_name=>'ROUTE_PURPOSE_ONLY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROUTE_PURPOSE_ONLY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(129569208372558868)
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
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129569302918558869)
,p_name=>'BOM_ONLY_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOM_ONLY_FLAG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(129569391541558870)
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
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(129568431517558860)
,p_internal_uid=>92413564391878366
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_add_button_label=>'Add'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(129608796835690623)
,p_interactive_grid_id=>wwv_flow_api.id(129568431517558860)
,p_static_id=>'396048'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(129608870521690623)
,p_report_id=>wwv_flow_api.id(129608796835690623)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129611903949690632)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(129568524263558861)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129612371419690634)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(129568557590558862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129612912870690636)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(129568728526558863)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129613350887690636)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(129568835314558864)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129613875561690637)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(129568891009558865)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129614429984690639)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(129568989084558866)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>277
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129614937837690639)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(129569044160558867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129615400670690640)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(129569208372558868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129615931687690642)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(129569302918558869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129622287343747960)
,p_view_id=>wwv_flow_api.id(129608870521690623)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(129569391541558870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129077525758776566)
,p_plug_name=>'Rights Setup'
,p_region_name=>'rights'
,p_parent_plug_id=>wwv_flow_api.id(83882789775326425)
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.COMPCODE,P.COMPLT_SEQ,P.OPRSTAMP,P.PROCESS_NO,',
'P.RIGHTID,P.TIMSTAMP,P.USER_CODE',
'from PRPROCESSRGT p',
'where P.COMPCODE = :compcode'))
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_api.id(116938403983394800)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<div style="overflow-y:scroll;">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(62778474147997534)
,p_name=>'COMPLT_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPLT_SEQ'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'SEQUENCE'
,p_default_expression=>'SEQ_PROCESS_RGT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(62778620330997535)
,p_name=>'RIGHTID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RIGHTID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Order'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.NMCODDES c, S.NMSOFCDE s',
'from nmcodmas s',
'where S.COMPCODE = :compcode',
'and S.NMHRDCDE = ''RGT'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'Select Rights'
,p_lov_null_value=>'0'
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
 p_id=>wwv_flow_api.id(62778711013997536)
,p_name=>'USER_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'User'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.USERNAME c, S.USERCODE s',
'from syusrmas s',
'where S.DIVNCODE = :compcode',
'and nvl(s.VALDFLAG,''E'') = ''A'''))
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
 p_id=>wwv_flow_api.id(68431825835352544)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(83882088292326418)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
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
 p_id=>wwv_flow_api.id(83882270331326419)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(83882349128326420)
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
 p_id=>wwv_flow_api.id(129585796392571929)
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
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':compcode'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(129585995985571931)
,p_name=>'PROCESS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_api.id(129568728526558863)
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(129585657937571928)
,p_internal_uid=>92430790811891434
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
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_add_button_label=>'Add'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(129626084271703697)
,p_interactive_grid_id=>wwv_flow_api.id(129585657937571928)
,p_static_id=>'396049'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(129626171392703697)
,p_report_id=>wwv_flow_api.id(129626084271703697)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(63338079640870103)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(62778474147997534)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(63338636866870105)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(62778620330997535)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>135
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(63339075407870106)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(62778711013997536)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>417
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84002418374663478)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(83882088292326418)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84002893059663478)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(83882270331326419)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(84005806233672706)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(83882349128326420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129627229294703699)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(129585796392571929)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(129628261143703703)
,p_view_id=>wwv_flow_api.id(129626171392703697)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(129585995985571931)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(111835112711424437)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:i-h60:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68430477004352531)
,p_button_sequence=>1660
,p_button_plug_id=>wwv_flow_api.id(111835112711424437)
,p_button_name=>'btn_search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_cattributes=>'style = "width:150px; height:30px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68430724446352533)
,p_button_sequence=>1670
,p_button_plug_id=>wwv_flow_api.id(111835112711424437)
,p_button_name=>'btn_addraw'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_cattributes=>' style = "width:150px; height:30px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61147889522979307)
,p_button_sequence=>1680
,p_button_plug_id=>wwv_flow_api.id(111835112711424437)
,p_button_name=>'BTN_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_cattributes=>'style = "width:150px; height:30px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61142206044979304)
,p_name=>'P_ROWID_ST'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(111835112711424437)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69055698092000333)
,p_name=>'P1501_DEPARTMENT'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(111835112711424437)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style = "width:200px; height:30px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68001103343548908)
,p_name=>'set_value'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(129077525758776566)
,p_triggering_element=>'RIGHTID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'COMPLT_SEQ'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68001286972548910)
,p_event_id=>wwv_flow_api.id(68001103343548908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//Get the link element that was clicked',
'var $te = $(this.triggeringElement);',
' ',
'//Get the ID of the row',
'var rowId = $te.closest(''tr'').data(''id'');',
' ',
'//Identify the particular interactive grid',
'var ig$ = apex.region("r").widget();',
' ',
'//Fetch the model for the interactive grid',
'var model = ig$.interactiveGrid("getViews","grid").model;',
' ',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(rowId);',
'var sal = model.getValue(record,"COMPLT_SEQ");',
'//Set the values for the JOB and SAL cells',
'model.setValue(record,"COMPLT_SEQ",sal+1);',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68430789603352534)
,p_name=>'add_raw'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(68430724446352533)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68430885569352535)
,p_event_id=>wwv_flow_api.id(68430789603352534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("process").widget().interactiveGrid("getActions").invoke("row-add-row");  '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68431666247352542)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(116938403983394800)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Production Process Setup - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69171111824671395)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(129077525758776566)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rights Setup - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
