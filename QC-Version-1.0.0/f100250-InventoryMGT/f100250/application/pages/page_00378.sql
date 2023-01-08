prompt --application/pages/page_00378
begin
--   Manifest
--     PAGE: 00378
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
 p_id=>378
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Payment Entry Report'
,p_step_title=>'Payment Entry Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181113120317'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58197567110468434)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58268025747875400)
,p_plug_name=>'Payment Entry Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  T.COMPCODE,docnumbr',
'From (',
'            Select  COMPCODE, docnumbr,doctdate,docttype,subttype,REFDOCTY, REFDOCNO, REFDOCDT, REFDCSTY,INTDOCTY, INTDOCNO, INTDOCDT, ',
'            INTDCSTY,subledcd,costcode,NVL(sum(jvlcamnt),0)jvlcamnt From actrndtl t',
'            Where t.docttype in (Select DFBILDTY From accompar Where t.doctdate Between FINYEARB And FINYEARE)',
'            And dbcrcode=''C''',
'            --And statcode=''Y''',
'            --And subledcd= NVL(:crq2s_cuscde,subledcd)',
'            And compcode= :compcode',
'            --And costcode = nvl(:crq2S_COSTCODE,costcode)',
'            Group by DOCTDATE,COMPCODE,docnumbr,docttype,subttype,subledcd,REFDOCTY, REFDOCNO, REFDOCDT, REFDCSTY,INTDOCTY, INTDOCNO, INTDOCDT, INTDCSTY,costcode',
'        )T,',
'         (Select pmt.COMPCODE, pmt.REFDOCTY, pmt.REFDOCNO, pmt.REFDOCDT, pmt.REFDCSTY,pmt.subledcd,pmt.costcode,sum(pmt.jvlcamnt)jvlcamnt',
'          From ',
'                (Select COMPCODE, REFDOCTY, REFDOCNO, REFDOCDT, REFDCSTY,subledcd,costcode,sum(jvlcamnt)jvlcamnt From actrndtl t',
'                 Where docttype in (Select DFPMTDTY From accompar Where T.doctdate Between FINYEARB And FINYEARE)',
'                 And dbcrcode=''D''',
'                 --And subledcd= NVL(:crq2s_cuscde,subledcd)',
'                 And compcode=:compcode',
'                 Group by REFDOCDT,COMPCODE,subledcd,REFDOCTY, REFDOCNO,  REFDCSTY,costcode',
'                   Union All',
'                 Select COMPCODE, REFDOCTY, REFDOCNO, REFDOCDT, REFDCSTY,subledcd,costcode,sum(jvlcamnt)jvlcamnt From pre_actrndtl t',
'                 Where docttype in (Select DFPMTDTY From accompar Where T.doctdate Between FINYEARB And FINYEARE)',
'                 And dbcrcode=''D''',
'                 --And subledcd= NVL(:crq2s_cuscde,subledcd)',
'                 And compcode=:compcode',
'                Group by REFDOCDT,COMPCODE,subledcd,REFDOCTY, REFDOCNO,  REFDCSTY,costcode',
'                ) pmt',
'            Group by pmt.COMPCODE, pmt.REFDOCTY, pmt.REFDOCNO, pmt.REFDOCDT, pmt.REFDCSTY,pmt.subledcd,pmt.costcode',
'            )R',
'   Where T.COMPCODE=R.COMPCODE(+)',
'   And NVL(T.jvlcamnt,0)-NVL(R.JVLCAMNT,0) > 0',
'   And NVL(T.SUBLEDCD,''N'')=NVL(R.SUBLEDCD(+),''N'')',
'   And T.DOCNUMBR=R.REFDOCNO(+)'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(49998620950344727)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Compcode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_api.id(49998690491344728)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Docnumbr'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
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
 p_id=>wwv_flow_api.id(58197246088468431)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(58268575425875414)
,p_internal_uid=>22930485388111012
,p_is_editable=>true
,p_edit_operations=>'i:u'
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(58268923321875425)
,p_interactive_grid_id=>wwv_flow_api.id(58268575425875414)
,p_static_id=>'395874'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(58269044231875425)
,p_report_id=>wwv_flow_api.id(58268923321875425)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(50022266157431831)
,p_view_id=>wwv_flow_api.id(58269044231875425)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(49998620950344727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(50022768746431832)
,p_view_id=>wwv_flow_api.id(58269044231875425)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(49998690491344728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(58296754430131840)
,p_view_id=>wwv_flow_api.id(58269044231875425)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(58197246088468431)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46885470867580741)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58197567110468434)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46883965922580737)
,p_name=>'P378_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58268025747875400)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' FDATE DATE;',
'BEGIN',
'SELECT C.FINYEARB',
'INTO FDATE',
'FROM ACCOMPAR C',
'WHERE C.COMPCODE = :COMPCODE',
'AND TO_CHAR(SYSDATE,''YYYY'') = YEARCODE;',
'',
'RETURN FDATE;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46884298448580739)
,p_name=>'P378_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58268025747875400)
,p_item_default=>'TRUNC(SYSDATE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47441017606696336)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46885470867580741)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47441121222696337)
,p_event_id=>wwv_flow_api.id(47441017606696336)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46884769885580739)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(58268025747875400)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Receipt Entry Report - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
