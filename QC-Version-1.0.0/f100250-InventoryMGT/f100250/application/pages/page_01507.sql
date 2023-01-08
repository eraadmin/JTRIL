prompt --application/pages/page_01507
begin
--   Manifest
--     PAGE: 01507
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
 p_id=>1507
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Plan Information'
,p_page_mode=>'MODAL'
,p_step_title=>'Plan Information'
,p_autocomplete_on_off=>'OFF'
,p_dialog_height=>'690'
,p_dialog_width=>'100%'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170424112440'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61078940003065611)
,p_plug_name=>'hidden region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(85072885868623825)
,p_plug_name=>'Plan Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT H.PLANNO,',
'       H.TGT_FG_ITEMCODE,',
'       S.SLSOFRNO,   ',
'       s.docnumbr',
'       || ''/''',
'       || s.docttype',
'       || ''/''',
'       || s.subttype',
'       || ''/''',
'       || s.doctdate',
'          Document_Ref,',
'       H.BATCHNOO Batch,      ',
'       D.DESIGNFG_NO,',
'       (SELECT DISTINCT P.PROCESS_NAME',
'          FROM VWPRDGN g, prprocess p',
'         WHERE     G.COMPCODE = :compcode',
'               AND G.COMPCODE = P.COMPCODE',
'               AND G.PROCESS_NO = P.PROCESS_NO',
'               AND G.DESIGNFG_NO = D.DESIGNFG_NO)',
'          Process_name',
'  FROM PRPLAN h, nmslsofr s, prplandtl d',
' WHERE     H.COMPCODE = :compcode',
'       AND H.COMPCODE(+) = s.COMPCODE',
'       and H.COMPCODE = D.COMPCODE',
'       AND H.SLSOFRNO_FK(+) = S.SLSOFRNO',
'       AND H.PLANNO = D.PLAN_NO',
'       AND H.TGT_FG_ITEMCODE = S.ITEMCODE',
'       and nvl(h.STATUSCD,''NEW'') <> ''APR''',
'       and d.DESIGNFG_NO is not null',
'       AND NVL (d.CLOSED_FLAG, 0) = 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column_group(
 p_id=>wwv_flow_api.id(85073716265623833)
,p_heading=>'Reference'
,p_label=>'Reference'
);
wwv_flow_api.create_region_column_group(
 p_id=>wwv_flow_api.id(85074855993623844)
,p_heading=>'Style Information'
,p_label=>'Style'
);
wwv_flow_api.create_region_column_group(
 p_id=>wwv_flow_api.id(85074966616623845)
,p_heading=>'Process Details'
,p_label=>'Process'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(85325056607594910)
,p_name=>'PLANNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
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
 p_id=>wwv_flow_api.id(85325163808594911)
,p_name=>'TGT_FG_ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TGT_FG_ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_api.id(85074966616623845)
,p_use_group_for=>'BOTH'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.ITEMDES1 des, P.TGT_FG_ITEMCODE item',
'from prplan p, nmitemas t',
'where P.COMPCODE = T.COMPCODE',
'and P.TGT_FG_ITEMCODE = T.ITEMCODE'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(85325244977594912)
,p_name=>'SLSOFRNO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SLSOFRNO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Reference No'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(85073716265623833)
,p_use_group_for=>'BOTH'
,p_attribute_03=>'center'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(85325364353594913)
,p_name=>'DOCUMENT_REF'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCUMENT_REF'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Reference Details'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_api.id(85073716265623833)
,p_use_group_for=>'BOTH'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>85
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
 p_id=>wwv_flow_api.id(85325434590594914)
,p_name=>'BATCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BATCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Style'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_group_id=>wwv_flow_api.id(85074855993623844)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(85325480082594915)
,p_name=>'DESIGNFG_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESIGNFG_NO'
,p_data_type=>'NUMBER'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(85325592829594916)
,p_name=>'PROCESS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Process Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_group_id=>wwv_flow_api.id(85074966616623845)
,p_use_group_for=>'BOTH'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(85325750175594917)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(85324892150594909)
,p_internal_uid=>48170025024914415
,p_is_editable=>false
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
'    var $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),',
'        lastToolbarGroup = toolbarData[toolbarData.length - 1],',
'        createButton = {',
'            type: "BUTTON",',
'            hot: true,',
'            action: "create-employee"',
'        };',
'    lastToolbarGroup.controls.push( createButton );',
'    config.toolbarData = toolbarData;',
'    ',
'    // this is how actions are added',
'    config.initActions = function(actions) {',
'        actions.add({',
'            name: "create-employee",',
'            // you could define the label directly as English text',
'            // label: "Create"',
'            // But better to use a message so it can be translated. In shared',
'            // components, text messages create MY_CREATE_BUTTON = Create and ',
'            // set Used in JavaScript: Yes',
'            labelKey: "Create",',
'            // this sets the action to be what the hidden button does when you click it',
'            action: $("#hiddenCreate").prop("onclick")            ',
'        });',
'    }',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(85356277239362888)
,p_interactive_grid_id=>wwv_flow_api.id(85324892150594909)
,p_static_id=>'396061'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(85356445398362888)
,p_report_id=>wwv_flow_api.id(85356277239362888)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85357758355362890)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(85325056607594910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85358258713362890)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(85325163808594911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85358698786362891)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(85325244977594912)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85359197005362893)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(85325364353594913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85359718959362894)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(85325434590594914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85360188694362896)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(85325480082594915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85360705777362898)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(85325592829594916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(85361195087362898)
,p_view_id=>wwv_flow_api.id(85356445398362888)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(85325750175594917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69277327380166030)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61078940003065611)
,p_button_name=>'btn_create'
,p_button_static_id=>'hiddenCreate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1508:&SESSION.::&DEBUG.:RP,1508::'
);
wwv_flow_api.component_end;
end;
/
