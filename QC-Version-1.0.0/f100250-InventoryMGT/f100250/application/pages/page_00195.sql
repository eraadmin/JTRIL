prompt --application/pages/page_00195
begin
--   Manifest
--     PAGE: 00195
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
 p_id=>195
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Code Parameters'
,p_page_mode=>'MODAL'
,p_step_title=>'Code Parameters'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180503105015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48601789094078570)
,p_plug_name=>'SF. Code Information'
,p_region_template_options=>'#DEFAULT#:i-h300:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133799354822332007)
,p_plug_name=>'SF. Code Information'
,p_parent_plug_id=>wwv_flow_api.id(48601789094078570)
,p_region_template_options=>'#DEFAULT#:i-h300:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"NMHRDCDE",',
'"COMPCODE",',
'"MODLCODE",',
'"NMSOFCDE",',
'"NMCODDES",',
'"PRTYFLAG",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"NMUPCDE"',
'from "#OWNER#"."NMCODMAS"',
'where "NMHRDCDE" = :P195_NMHRDCDE',
'--and NMUPCDE=:P195_NMUPCDE',
'and COMPCODE=:COMPCODE',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P195_NMHRDCDE,P195_NMUPCDE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48600497752078557)
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
 p_id=>wwv_flow_api.id(48600537102078558)
,p_name=>'NMHRDCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMHRDCDE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_api.id(48600672090078559)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48600749442078560)
,p_name=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODLCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_api.id(48600909144078561)
,p_name=>'NMSOFCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMSOFCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Soft Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_api.id(48600942505078562)
,p_name=>'NMCODDES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMCODDES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Code Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_api.id(48601088793078563)
,p_name=>'PRTYFLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRTYFLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Party Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
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
 p_id=>wwv_flow_api.id(48601206975078564)
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
 p_id=>wwv_flow_api.id(48601250461078565)
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
 p_id=>wwv_flow_api.id(48601402664078566)
,p_name=>'NMUPCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMUPCDE'
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
,p_default_type=>'ITEM'
,p_default_expression=>'P195_NMUPCDE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48601453466078567)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(48601589561078568)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(47303534110875006)
,p_internal_uid=>79649917180276350
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
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
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
 p_id=>wwv_flow_api.id(48609873947078847)
,p_interactive_grid_id=>wwv_flow_api.id(47303534110875006)
,p_static_id=>'395611'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(48609932957078847)
,p_report_id=>wwv_flow_api.id(48609873947078847)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48610447491078862)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(48600497752078557)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48610947339078866)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(48600537102078558)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48611459654078867)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(48600672090078559)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48611965934078869)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(48600749442078560)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48612501838078870)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(48600909144078561)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48612924352078872)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(48600942505078562)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48613471338078873)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(48601088793078563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>30
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48613924005078875)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(48601206975078564)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48614451936078875)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(48601250461078565)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48614964744078876)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(48601402664078566)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(48619376442082025)
,p_view_id=>wwv_flow_api.id(48609932957078847)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(48601453466078567)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133779668919331991)
,p_plug_name=>'HD. Code Information'
,p_region_template_options=>'#DEFAULT#:i-h300:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(133870091517532114)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133780333714331991)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P195_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133806473765332009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Checked'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."NMCODMAS"',
'where "NMHRDCDE" = :P195_NMHRDCDE'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133790033231332001)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'GET_PREVIOUS_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Previous'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ROWID'')'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'P195_ROWID_PREV'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133789876941332001)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'GET_NEXT_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ROWID'')'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'P195_ROWID_NEXT'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133780443856331991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133780225341331991)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P195_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(133780127308331991)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(133870091517532114)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P195_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(133789551483332001)
,p_branch_name=>'Go To Page 194'
,p_branch_action=>'f?p=&APP_ID.:194:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39379043598029219)
,p_name=>'P195_NMUPCDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Type'
,p_source=>'NMUPCDE'
,p_source_type=>'DB_COLUMN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39379122251029220)
,p_name=>'P195_MAX_SOFCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(nvl(NMSOFCDE,0))+1  NMSOFCDE',
'from NMCODMAS',
'where NMHRDCDE = :P195_NMHRDCDE',
'and MODLCODE=:P195_MODLCODE',
'and COMPCODE=:COMPCODE'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133782058286331993)
,p_name=>'P195_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133782458577331995)
,p_name=>'P195_COMPCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Compcode'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133782833946331995)
,p_name=>'P195_MODLCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Module Code</strong>'
,p_source=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT modlname,modlcode',
'    FROM symodule',
'--   WHERE modlcode LIKE :1 || ''%''',
'ORDER BY modlcode'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133783190650331995)
,p_name=>'P195_NMHRDCDE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Hard Code</strong>'
,p_source=>'NMHRDCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_read_only_when=>'P195_NMHRDCDE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133783663311331996)
,p_name=>'P195_NMSOFCDE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Soft Code</strong>'
,p_source=>'NMSOFCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_read_only_when=>'P195_NMSOFCDE'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133784035736331996)
,p_name=>'P195_NMCODDES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Code Description</strong>'
,p_source=>'NMCODDES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>2000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133784425824331996)
,p_name=>'P195_PRTYFLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_use_cache_before_default=>'NO'
,p_source=>'PRTYFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133784770447331996)
,p_name=>'P195_OPRSTAMP'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
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
 p_id=>wwv_flow_api.id(133785211348331998)
,p_name=>'P195_TIMSTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
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
 p_id=>wwv_flow_api.id(133793132731332002)
,p_name=>'P195_ROWID_NEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133793562519332002)
,p_name=>'P195_ROWID_PREV'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(133793894349332002)
,p_name=>'P195_ROWID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(133779668919331991)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133788441674332001)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCODMAS'
,p_attribute_02=>'NMCODMAS'
,p_attribute_03=>'P195_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133794952707332002)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'NMCODMAS'
,p_attribute_03=>'P195_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_07=>'NMSOFCDE'
,p_attribute_09=>'P195_ROWID_NEXT'
,p_attribute_10=>'P195_ROWID_PREV'
,p_attribute_13=>'P195_ROWID_COUNT'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133788819617332001)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCODMAS'
,p_attribute_02=>'NMCODMAS'
,p_attribute_03=>'P195_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(133789170505332001)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(133780333714331991)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48601635843078569)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(133799354822332007)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'SF. Code Information - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Chnages Successfully......'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48601900038078571)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(133799354822332007)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre-insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':MODLCODE:=:P195_MODLCODE;',
':NMHRDCDE:=:P195_NMHRDCDE;',
'--:NMSOFCDE:=:P195_NMSOFCDE;',
':NMUPCDE:=:P195_NMUPCDE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/