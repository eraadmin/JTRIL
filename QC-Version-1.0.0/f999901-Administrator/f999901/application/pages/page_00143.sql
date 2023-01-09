prompt --application/pages/page_00143
begin
--   Manifest
--     PAGE: 00143
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
 p_id=>143
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Notification Setup'
,p_alias=>'NOTIFICATION-SETUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification Setup'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20221228183145'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225083016524552326)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       RECVUSER ||''-''||(select USERNAME from syusrmas where DIVNCODE=w.COMPCODE and USERCODE = w.RECVUSER) RECVUSER,',
'       SENDUSER ||''-''||(select USERNAME from syusrmas where DIVNCODE=w.COMPCODE and USERCODE = w.SENDUSER) SENDUSER,',
'       CALLPROG ||''-''|| (select PROGDESC from symenmas where progname = w.CALLPROG) CALLPROG,',
'       RQSTPROG ||''-''|| (select PROGDESC from symenmas where progname = w.RQSTPROG) RQSTPROG,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       ACTVSTAT,',
'       REMARKSS,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       MODIFYDT,',
'       ACTIVE_ON,',
'       NOOFTIME,',
'       ACTIVATE_DATE,',
'       GENERATE_BY,',
'       APP_ID,',
'       PAGE_ID',
'  from NMALTFLW w',
'  where compcode = :compcode'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(225083414213552326)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:RP:P145_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'RAZU'
,p_internal_uid=>225083414213552326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38329137513808123)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38329585061808124)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38329948179808124)
,p_db_column_name=>'RECVUSER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Notification Receive User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38330381521808126)
,p_db_column_name=>'SENDUSER'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Notification Send User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38330703488808126)
,p_db_column_name=>'CALLPROG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Calling program'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38331121190808126)
,p_db_column_name=>'RQSTPROG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Request from Program'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38331531862808127)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38331943614808127)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38332374313808127)
,p_db_column_name=>'ACTVSTAT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Active Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38332799251808127)
,p_db_column_name=>'REMARKSS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38333131560808128)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38333530349808128)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Sub type'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38333943101808128)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38334330918808128)
,p_db_column_name=>'ACTIVE_ON'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Active On'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38334760695808129)
,p_db_column_name=>'NOOFTIME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nooftime'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38335168028808129)
,p_db_column_name=>'ACTIVATE_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Activate Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38335555552808130)
,p_db_column_name=>'GENERATE_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Generate By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38335915461808130)
,p_db_column_name=>'APP_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38336349967808131)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(225093351303561574)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1484637'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COMPCODE:RECVUSER:SENDUSER:CALLPROG:RQSTPROG:OPRSTAMP:TIMSTAMP:ACTVSTAT:REMARKSS:DOCTTYPE:SUBTTYPE:MODIFYDT:ACTIVE_ON:NOOFTIME:ACTIVATE_DATE:GENERATE_BY:APP_ID:PAGE_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38337014994808132)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(225083016524552326)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38337405979808132)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(225083016524552326)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38337898437808132)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(225083016524552326)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38338367960808133)
,p_event_id=>wwv_flow_api.id(38337898437808132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(225083016524552326)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38338778650808133)
,p_name=>'Cancel Page'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38337405979808132)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38339259709808133)
,p_event_id=>wwv_flow_api.id(38338778650808133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
