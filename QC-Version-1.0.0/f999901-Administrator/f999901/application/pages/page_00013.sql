prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'xParameter Query'
,p_page_mode=>'MODAL'
,p_step_title=>'Parameter Query'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'700'
,p_dialog_width=>'900'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200226194432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51585798383235327)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51586977345235339)
,p_plug_name=>'Report Parameter List'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_api.id(52348139428895354)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51587713562235347)
,p_plug_name=>'Parameter Entry'
,p_region_name=>'IG_EDIT_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID, c001 ID, c002 NAME, NULL PARAMETER_NAME, NULL LOV_QUERY, NULL SHOW_HIDE',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''REPORT_ID'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(51587941621235349)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Seq Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(51588046729235350)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52365758802963801)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52365846051963802)
,p_name=>'PARAMETER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Parameter Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52365973314963803)
,p_name=>'LOV_QUERY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOV_QUERY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Lov Query'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52366061302963804)
,p_name=>'SHOW_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOW_HIDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Show/Hide'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(2727342503733911814)
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52366106348963805)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(52366294263963806)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(51587818801235348)
,p_internal_uid=>51587818801235348
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_api.id(52371659899963960)
,p_interactive_grid_id=>wwv_flow_api.id(51587818801235348)
,p_static_id=>'401410'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(52371703169963960)
,p_report_id=>wwv_flow_api.id(52371659899963960)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52372210401963962)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(51587941621235349)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52372770536963965)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(51588046729235350)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52373241861963967)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(52365758802963801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52373742081963968)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(52365846051963802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52374255593963970)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(52365973314963803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52374716244963971)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(52366061302963804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(52376639990970659)
,p_view_id=>wwv_flow_api.id(52371703169963960)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(52366106348963805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51586654929235336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51586977345235339)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51585874128235328)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51586977345235339)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52366847052963812)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51586977345235339)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52366922886963813)
,p_name=>'P13_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51587713562235347)
,p_item_default=>'P12_PROGNAME'
,p_item_default_type=>'ITEM'
,p_prompt=>'Program Name : '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52367380965963817)
,p_name=>'P13_INSERT_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51587713562235347)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51586466005235334)
,p_name=>'Edit IG with single click'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51586525975235335)
,p_event_id=>wwv_flow_api.id(51586466005235334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("IG_EDIT_ID").widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52367648729963820)
,p_name=>'Disable'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(51587713562235347)
,p_triggering_element=>'ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52367723226963821)
,p_event_id=>wwv_flow_api.id(52367648729963820)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'LOV_QUERY'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52366684793963810)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51587713562235347)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 19-Feb-20 6:57:39 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vDataCount     NUMBER := 0;',
'   vName          VARCHAR2 (20);',
'   nInsertCount   NUMBER := 0;',
'BEGIN',
'   BEGIN',
'      SELECT COUNT (ID)',
'        INTO vDataCount',
'        FROM SY_REPORT_PARAMETER',
'       WHERE PROGNAME = LOWER (:P12_PROGNAME) AND ID = :ID;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Error To Find Data Existance. '');',
'   END;',
'',
'',
'   IF vDataCount <> 0',
'   THEN',
'      BEGIN',
'         SELECT NAME',
'           INTO vName',
'           FROM SY_REPORT_PARAMETER',
'          WHERE PROGNAME = LOWER (:P12_PROGNAME) AND ID = :ID;',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20002,',
'                                     ''Error To Find Exist Data Name. '');',
'      END;',
'',
'      RAISE_APPLICATION_ERROR (',
'         -20003,',
'         vName || '' Exist '' || ''For Report '' || :P12_PROGNAME);',
'   ELSE',
'      BEGIN',
'         --RAISE_APPLICATION_ERROR (-20001, :P12_PROGNAME);',
'',
'         INSERT INTO SY_REPORT_PARAMETER (ID,',
'                                          NAME,',
'                                          LOV_QUERY,',
'                                          PROGNAME,',
'                                          SHOW_HIDE,',
'                                          SERIAL,',
'                                          CREATE_BY)',
'              VALUES (:ID,',
'                      :PARAMETER_NAME,',
'                      :LOV_QUERY,',
'                      LOWER (:P12_PROGNAME),',
'                      :SHOW_HIDE,',
'                      SY_REPORT_PARAMETER_SEQ.NEXTVAL,',
'                      :APP_USER);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (',
'               -20001,',
'               ''Unable to Insert Data. '' || :P12_PROGNAME);',
'      END;',
'',
'      APEX_COLLECTION.DELETE_MEMBER (p_collection_name   => ''REPORT_ID'',',
'                                     p_seq               => :SEQ_ID);',
'                                     ',
'      nInsertCount := nInsertCount + 1;',
'   END IF;',
'',
'   :P13_INSERT_COUNT := nInsertCount;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51586654929235336)
,p_process_success_message=>'Rows Inserted.'
);
wwv_flow_api.component_end;
end;
/
