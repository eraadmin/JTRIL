prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Menu Master Enquery'
,p_page_mode=>'MODAL'
,p_step_title=>'Menu Master Enquery'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200528205618'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58585530394285113)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59507289278589506)
,p_plug_name=>'Menu Master Enquery'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODLCODE,',
'       PARENTNM,',
'       PROGNAME,',
'       PROGDESC,',
'       MENUSLNO,',
'       LEVLCODE,',
'       MENULEAF,',
'       HELPTEXT,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFYDT',
'  from SYMENTRE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(59507387777589506)
,p_name=>'Menu Master Enquery'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>59507387777589506
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59507710989589507)
,p_db_column_name=>'MODLCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Module Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59508117699589507)
,p_db_column_name=>'PARENTNM'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Parent Program'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59508586826589507)
,p_db_column_name=>'PROGNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59508929905589509)
,p_db_column_name=>'PROGDESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Program Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59509356982589509)
,p_db_column_name=>'MENUSLNO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Serial No'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59509732185589509)
,p_db_column_name=>'LEVLCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Menu Level'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59510103037589509)
,p_db_column_name=>'MENULEAF'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Menu Type'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59510571152589510)
,p_db_column_name=>'HELPTEXT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Helptext'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59510922943589510)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59511370769589510)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59511749662589510)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(59512190883595018)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'595122'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODLCODE:PARENTNM:PROGNAME:PROGDESC:MENUSLNO:LEVLCODE:MENULEAF:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58585605084285114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58585530394285113)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58585766477285115)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(58585605084285114)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58585860900285116)
,p_event_id=>wwv_flow_api.id(58585766477285115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
