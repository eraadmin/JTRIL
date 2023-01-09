prompt --application/pages/page_99990_025
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>9999010012
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Source Column'
,p_alias=>'SOURCE-COLUMN'
,p_page_mode=>'MODAL'
,p_step_title=>'BI Report Design'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAMUNA'
,p_last_upd_yyyymmddhh24miss=>'20220714163853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34945276087985362)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(34937098592985354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35947255501327904)
,p_plug_name=>'Report Setting'
,p_parent_plug_id=>wwv_flow_api.id(34945276087985362)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(35004769094173924)
,p_plug_name=>'Source Column grid'
,p_parent_plug_id=>wwv_flow_api.id(35947255501327904)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl,',
'       c001 column_name,',
'       c002 data_type,',
'       c003 data_length,',
'       c004 udcol_name',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS'';'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Source Column grid'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35005657291173933)
,p_name=>'SL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sl#'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006261228173939)
,p_name=>'COLUMN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLUMN_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Column Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006328028173940)
,p_name=>'DATA_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Data Type'
,p_heading_alignment=>'LEFT'
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006484401173941)
,p_name=>'DATA_LENGTH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATA_LENGTH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Data Length'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006517089173942)
,p_name=>'UDCOL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UDCOL_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Define Column Name'
,p_heading_alignment=>'LEFT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006625239173943)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(35006714741173944)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(35005129102173928)
,p_internal_uid=>35005129102173928
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(35086650393408028)
,p_interactive_grid_id=>wwv_flow_api.id(35005129102173928)
,p_static_id=>'350867'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(35086854354408028)
,p_report_id=>wwv_flow_api.id(35086650393408028)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35092799530489563)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(35005657291173933)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.14099999999999
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35093696909489566)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(35006261228173939)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>240.141
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35094571218489570)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(35006328028173940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>224.625
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35095421325489573)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(35006484401173941)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>214.469
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35096393146489576)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(35006517089173942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(35100527056491629)
,p_view_id=>wwv_flow_api.id(35086854354408028)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(35006625239173943)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>53
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34947005878985363)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(34945276087985362)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34947392292985363)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(34945276087985362)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34947298729985363)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(34945276087985362)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34948779073985364)
,p_branch_action=>'f?p=&APP_ID.:9999010013:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34947392292985363)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34948014873985363)
,p_branch_action=>'f?p=&APP_ID.:9999010011:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34947298729985363)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37030528892620050)
,p_name=>'P9999010012_CUR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(35947255501327904)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37117606526783901)
,p_name=>'P9999010012_PREV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(35947255501327904)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37132200598801451)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34947005878985363)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37133168501801452)
,p_event_id=>wwv_flow_api.id(37132200598801451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Exit?'
,p_attribute_06=>'Yes'
,p_attribute_07=>'No'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37119040095783915)
,p_event_id=>wwv_flow_api.id(37132200598801451)
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
 p_id=>wwv_flow_api.id(37132672494801452)
,p_event_id=>wwv_flow_api.id(37132200598801451)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35006884942173945)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(35004769094173924)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Source Column REC - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then null;',
'    when ''U'' then',
'        APEX_COLLECTION.UPDATE_MEMBER_ATTRIBUTE (',
'            p_collection_name => ''ORDER_ITEMS'',',
'            p_seq => :SL,',
'            p_attr_number => 4,',
'            p_attr_value => :UDCOL_NAME);',
'    when ''D'' then null;',
'    end case;',
'end;'))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(35005598358173932)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_curVal  varchar2(4000);',
'v_prevVal varchar2(4000);',
'begin',
'if not apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'       APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'                p_collection_name => ''ORDER_ITEMS'', ',
'                p_query           => ''SELECT column_name, ',
'                                             data_type, ',
'                                             data_length,',
'                                             NULL udcol_name',
'                                        FROM user_tab_cols',
'                                       WHERE table_name = ''''''||:P9999010011_OBJECT||''''''',
'                                         AND column_name in (select column_value',
'                                                               from apex_string.split(''''''||:P9999010011_COLUMNS||'''''', '''':''''))',
'                                    ORDER BY column_id'');',
'end if;',
'/*                                    ',
'elsif apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'    select column_value',
'      into v_curVal',
'      from apex_string.split(:P9999010011_COLUMNS, '':'');',
'',
'    select listagg(c004,'':'') within group ( order by seq_id )',
'      into v_prevVal',
'      from apex_collections',
'     where collection_name = ''ORDER_ITEMS'';',
'',
':P9999010012_CUR := v_curVal;',
':P9999010012_PREV := v_prevVal;',
'',
'-- apex_debug.enable(p_level => apex_debug.c_log_level_info); ',
'-- apex_debug.message(''test''||v_curVal||'' ''||v_prevVal);',
'',
'end if;',
'*/',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
