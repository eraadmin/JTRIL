prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'menu master'
,p_step_title=>'menu master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200528195140'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59443102701280289)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SYMENTRE'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(59443518398280289)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP:P111_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>59443518398280289
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59443673143280290)
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
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59444075488280290)
,p_db_column_name=>'MODLCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Modlcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59444452643280290)
,p_db_column_name=>'PARENTNM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Parentnm'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59444808049280290)
,p_db_column_name=>'PROGNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Progname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59445252662280292)
,p_db_column_name=>'PROGDESC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Progdesc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59445686654280292)
,p_db_column_name=>'MENUSLNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Menuslno'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59446033038280292)
,p_db_column_name=>'LEVLCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Levlcode'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59446470375280292)
,p_db_column_name=>'MENULEAF'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Menuleaf'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59446842843280293)
,p_db_column_name=>'HELPTEXT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Helptext'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59447291880280293)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59447605299280293)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59448020140280293)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(59449874099282104)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'594499'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:MODLCODE:PARENTNM:PROGNAME:PROGDESC:MENUSLNO:LEVLCODE:MENULEAF:HELPTEXT:OPRSTAMP:TIMSTAMP:MODIFYDT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59449424317280295)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(59443102701280289)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:111'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59448438770280295)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(59443102701280289)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59448970274280295)
,p_event_id=>wwv_flow_api.id(59448438770280295)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(59443102701280289)
);
wwv_flow_api.component_end;
end;
/
