prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Parameter Entry Final'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Parameter Entry Final'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200625172335'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106031320226433203)
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
 p_id=>wwv_flow_api.id(106032499188433215)
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
 p_id=>wwv_flow_api.id(106033235405433223)
,p_plug_name=>'Parameter Entry'
,p_region_name=>'IG_EDIT_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  SEQ_ID, c001 PARAMETER_ID, c002 PARAMETER_NAME, c002 REPORT_PARAMETER_NAME, NULL LOV_QUERY, ''Y'' SHOW_HIDE',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''REPORT_PARAMETER'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(54337904786173337)
,p_name=>'PARAMETER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Parameter Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
 p_id=>wwv_flow_api.id(54338000954173338)
,p_name=>'REPORT_PARAMETER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPORT_PARAMETER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Report Wise Parameter Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106033463464433225)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Seq Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(106811367895161678)
,p_name=>'PARAMETER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARAMETER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Parameter Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_api.id(106811495158161679)
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
,p_max_length=>4000
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
 p_id=>wwv_flow_api.id(106811583146161680)
,p_name=>'SHOW_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SHOW_HIDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Show/Hide'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_is_required=>false
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
 p_id=>wwv_flow_api.id(106811628192161681)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106811816107161682)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(106033340644433224)
,p_internal_uid=>106033340644433224
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(106817181743161836)
,p_interactive_grid_id=>wwv_flow_api.id(106033340644433224)
,p_static_id=>'401414'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(106817225013161836)
,p_report_id=>wwv_flow_api.id(106817181743161836)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54457728856339459)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(54337904786173337)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(54470825114533160)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(54338000954173338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106817732245161838)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(106033463464433225)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106819263925161844)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(106811367895161678)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106819777437161846)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(106811495158161679)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106820238088161847)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(106811583146161680)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106822161834168535)
,p_view_id=>wwv_flow_api.id(106817225013161836)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(106811628192161681)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54446824848197878)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(106032499188433215)
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
 p_id=>wwv_flow_api.id(54447233908197879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106032499188433215)
,p_button_name=>'BACK'
,p_button_static_id=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_BACK_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'&BTN_BACK_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54446478512197876)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(106032499188433215)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:RP,13::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(54338136859173339)
,p_branch_name=>'Go To 15'
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP,15,16::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(54446824848197878)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54451667248197920)
,p_name=>'P16_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(106033235405433223)
,p_item_default=>'P15_PROGNAME'
,p_item_default_type=>'ITEM'
,p_prompt=>'Program Name : '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGDESC',
'  FROM SYMENMAS',
' WHERE PROGNAME = :P15_PROGNAME'))
,p_source_type=>'QUERY'
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
 p_id=>wwv_flow_api.id(54452063147197925)
,p_name=>'P16_INSERT_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(106033235405433223)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54452892770197929)
,p_name=>'Edit IG with single click'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54453347583197931)
,p_event_id=>wwv_flow_api.id(54452892770197929)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("IG_EDIT_ID").widget().interactiveGrid("getActions").set("edit", true);'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54452468373197925)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(106033235405433223)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nInsertCount   NUMBER := 0;',
'BEGIN',
'    BEGIN',
'        INSERT INTO SY_REPORT_PARAMETER (SERIAL,',
'                                         PROGNAME,',
'                                         PARAMETER_ID,',
'                                         PARAMETER_NAME,',
'                                         LOV_QUERY,',
'                                         SHOW_HIDE,',
'                                         CREATE_BY,',
'                                         TIMSTAMP)',
'             VALUES (SY_REPORT_PARAMETER_SEQ.NEXTVAL,',
'                     LOWER ( :P15_PROGNAME),',
'                     :PARAMETER_ID,',
'                     :REPORT_PARAMETER_NAME,',
'                     :LOV_QUERY,',
'                     :SHOW_HIDE,',
'                     :APP_USER,',
'                     SYSDATE);',
'    EXCEPTION',
'        WHEN OTHERS',
'        THEN',
'            RAISE_APPLICATION_ERROR (',
'                -20001,',
'                ''Unable to Insert Data. '' || :P16_PROGNAME || SQLERRM);',
'    END;',
'',
'    APEX_COLLECTION.DELETE_MEMBER (p_collection_name   => ''REPORT_PARAMETER'',',
'                                   p_seq               => :SEQ_ID);',
'',
'    nInsertCount := nInsertCount + 1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54446824848197878)
,p_process_success_message=>'Rows Inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36432331854111025)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(106033235405433223)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 25/06/2020 4:59:36 PM (QP5 v5.354) */',
'BEGIN',
':INSERT_DATE := ''Y'';',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''U''',
'        THEN',
'            BEGIN',
'                INSERT INTO SY_REPORT_PARAMETER (SERIAL,',
'                                                 PROGNAME,',
'                                                 PARAMETER_ID,',
'                                                 PARAMETER_NAME,',
'                                                 LOV_QUERY,',
'                                                 SHOW_HIDE,',
'                                                 CREATE_BY,',
'                                                 TIMSTAMP)',
'                     VALUES (SY_REPORT_PARAMETER_SEQ.NEXTVAL,',
'                             LOWER ( :P15_PROGNAME),',
'                             :PARAMETER_ID,',
'                             :REPORT_PARAMETER_NAME,',
'                             :LOV_QUERY,',
'                             :SHOW_HIDE,',
'                             :APP_USER,',
'                             SYSDATE);',
'            EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    RAISE_APPLICATION_ERROR (',
'                        -20001,',
'                        ''Unable to Insert Data. '' || :P16_PROGNAME || SQLERRM);',
'            END;',
'    END CASE;',
'EXCEPTION',
'    WHEN OTHERS',
'    THEN',
'        RAISE_APPLICATION_ERROR (-20006, ''DML Process Problem'' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54446824848197878)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(36432190755111023)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Duplication Check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    vDataCount   NUMBER := 0;',
'    vName        VARCHAR2 (20);',
'',
'    CURSOR PARAM_LIST IS',
'        SELECT SEQ_ID, c001 PARAMETER_ID, c002 PARAMETER_NAME',
'          FROM APEX_COLLECTIONS',
'         WHERE COLLECTION_NAME = ''REPORT_PARAMETER'';',
'BEGIN',
'    --RAISE_APPLICATION_ERROR (-20001, :P15_PROGNAME);',
'',
'    FOR i IN PARAM_LIST',
'    LOOP',
'        BEGIN',
'            SELECT COUNT (1)',
'              INTO vDataCount',
'              FROM SY_REPORT_PARAMETER',
'             WHERE     LOWER (PROGNAME) = LOWER ( :P15_PROGNAME)',
'                   AND PARAMETER_ID = i.PARAMETER_ID;',
'        EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'                RAISE_APPLICATION_ERROR (-20001,',
'                                         ''Error To Find Data Existance. '');',
'        END;',
'',
'',
'        IF vDataCount <> 0',
'        THEN',
'            BEGIN',
'                SELECT PARAMETER_NAME',
'                  INTO vName',
'                  FROM SY_REPORT_PARAMETER',
'                 WHERE     LOWER (PROGNAME) = LOWER ( :P15_PROGNAME)',
'                       AND PARAMETER_ID = i.PARAMETER_ID;',
'            EXCEPTION',
'                WHEN OTHERS',
'                THEN',
'                    RAISE_APPLICATION_ERROR (',
'                        -20002,',
'                        ''Error To Find Exist Data Name. '');',
'            END;',
'',
'            RAISE_APPLICATION_ERROR (',
'                -20003,',
'                vName || '' Exist '' || ''For Report '' || :P15_PROGNAME);',
'        END IF;',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
