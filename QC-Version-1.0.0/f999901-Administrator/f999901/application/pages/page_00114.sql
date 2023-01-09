prompt --application/pages/page_00114
begin
--   Manifest
--     PAGE: 00114
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
 p_id=>114
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'User Rights Master Report'
,p_page_mode=>'MODAL'
,p_step_title=>'User Rights Master Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200930131226'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(119019126549359832)
,p_plug_name=>'User Rights Master Modify'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       USERCODE,',
'       PARENTNM,',
'       PROGNAME,',
'       PROGDESC,',
'       MODLCODE,',
'       LEVLCODE,',
'       MENUSLNO,',
'       MENULEAF,',
'       GRUPCODE,',
'       ADDSTATS,',
'       MODSTATS,',
'       DELSTATS,',
'       ENQSTATS,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT',
'  from SYRIGHTS',
' where COMPCODE = :COMPCODE',
'   and MENULEAF <> ''M'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(119019208936359832)
,p_name=>'User Rights Master Modify'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>460
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>119019208936359832
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59532630002889195)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'R'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59533046305889195)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59533471274889195)
,p_db_column_name=>'USERCODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(59250527215654095)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59533847293889196)
,p_db_column_name=>'PARENTNM'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Parentnm'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59534273126889196)
,p_db_column_name=>'PROGNAME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Progname'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59534662889889196)
,p_db_column_name=>'PROGDESC'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59535014211889198)
,p_db_column_name=>'MODLCODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Module Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59535409854889198)
,p_db_column_name=>'LEVLCODE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Levlcode'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59535825450889198)
,p_db_column_name=>'MENUSLNO'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Menuslno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59536232731889198)
,p_db_column_name=>'MENULEAF'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Menu Leaf'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59536692459889200)
,p_db_column_name=>'GRUPCODE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Grupcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59537034592889200)
,p_db_column_name=>'ADDSTATS'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Add Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(2727342503733911814)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59537444274889200)
,p_db_column_name=>'MODSTATS'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Modify Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(2727342503733911814)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59537852795889200)
,p_db_column_name=>'DELSTATS'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Delete Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(2727342503733911814)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59538213578889201)
,p_db_column_name=>'ENQSTATS'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Enquiry Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(2727342503733911814)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59538655024889201)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59539072217889201)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59539472786889201)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(119026630865366354)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'595398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERCODE:PROGDESC:MODLCODE:ADDSTATS:MODSTATS:DELSTATS:ENQSTATS:'
,p_sort_column_1=>'USERCODE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59540695233889204)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(119019126549359832)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59540213804889204)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(119019126549359832)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59541067161889206)
,p_name=>'cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59540213804889204)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59541587330889206)
,p_event_id=>wwv_flow_api.id(59541067161889206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
