prompt --application/pages/page_00226
begin
--   Manifest
--     PAGE: 00226
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
 p_id=>226
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service Type Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Type Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171012112110'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(134491589835402223)
,p_name=>'Service Type Master'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       SRVTYPNM,',
'       SERLNUMB,',
'       REMARKSS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       SVCTYPPK,',
'       MODIFYDT',
'  from SRVCSTYP'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134492661109402348)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Compcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134493046005402353)
,p_query_column_id=>2
,p_column_alias=>'SRVTYPNM'
,p_column_display_sequence=>2
,p_column_heading=>'Srvtypnm'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134493402505402353)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Serlnumb'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134493774163402353)
,p_query_column_id=>4
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>4
,p_column_heading=>'Remarkss'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134494261805402354)
,p_query_column_id=>5
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>5
,p_column_heading=>'Oprstamp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134494607586402354)
,p_query_column_id=>6
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>6
,p_column_heading=>'Timstamp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134494983567402354)
,p_query_column_id=>7
,p_column_alias=>'SVCTYPPK'
,p_column_display_sequence=>7
,p_column_heading=>'Svctyppk'
,p_column_link=>'f?p=#APP_ID#:227:#APP_SESSION#:::RP:P227_SVCTYPPK:#SVCTYPPK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(134495443337402356)
,p_query_column_id=>8
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>8
,p_column_heading=>'Modifydt'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134538936463406694)
,p_plug_name=>'Service Type Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       SRVTYPNM,',
'       SERLNUMB,',
'       REMARKSS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       SVCTYPPK,',
'       MODIFYDT,',
'       SVCTYPPK as check_typ',
'  from SRVCSTYP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(134539007783406694)
,p_name=>'Service Type Master'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>97384140657726200
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134539365848406700)
,p_db_column_name=>'COMPCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134539748162406700)
,p_db_column_name=>'SRVTYPNM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Service Type Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134540161566406700)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134540469753406700)
,p_db_column_name=>'REMARKSS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134540919011406700)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134541315110406700)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134541759687406700)
,p_db_column_name=>'SVCTYPPK'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::P227_SVCTYPPK:#SVCTYPPK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134542136235406700)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(134624905236559570)
,p_db_column_name=>'CHECK_TYP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Check Typ'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(134556361639419466)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'974015'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SVCTYPPK:SRVTYPNM:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(36782885052033265)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(134538936463406694)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(134498509018402359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(134538936463406694)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.:227::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(134499921626402363)
,p_computation_sequence=>1
,p_computation_item=>'P227_SVCTYPPK'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(134500182783402367)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(134491589835402223)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(134500726915402368)
,p_event_id=>wwv_flow_api.id(134500182783402367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(134491589835402223)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(134498949109402359)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(134498509018402359)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(134499412308402360)
,p_event_id=>wwv_flow_api.id(134498949109402359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(134491589835402223)
);
wwv_flow_api.component_end;
end;
/
