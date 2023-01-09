prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Vat Rule Setup Enquery'
,p_page_mode=>'MODAL'
,p_step_title=>'Vat Rule Setup Enquery'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200616150543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61820376609470515)
,p_plug_name=>'New'
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
 p_id=>wwv_flow_api.id(96205489426380207)
,p_plug_name=>'Vat Rule View'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       SERLNUMB,',
'       VATPCODE,',
'       VATPERCT,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       ACCTCODE,',
'       NMSOFCDE,',
'       MODIFYDT,',
'       STARTDTE,',
'       ENDDATE',
'  from NMVATDEC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(96205959883380207)
,p_name=>'Report 1'
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
,p_internal_uid=>96205959883380207
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49017808856301303)
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
 p_id=>wwv_flow_api.id(49018219327301303)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49018614780301303)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49019084705301304)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49019494070301304)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49019862537301304)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49020240502301304)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49020602552301306)
,p_db_column_name=>'VATPCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'VAT Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49021034857301306)
,p_db_column_name=>'VATPERCT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'VAT Percent (%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49021468896301306)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49021871520301306)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49022273434301307)
,p_db_column_name=>'ACCTCODE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Account Group Description'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49022655445301307)
,p_db_column_name=>'NMSOFCDE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Nmsofcde'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49023075098301307)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49023437519301307)
,p_db_column_name=>'STARTDTE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Startdte'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49023819677301309)
,p_db_column_name=>'ENDDATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Enddate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(96213782632381044)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'490242'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCTDATE:ACCTCODE:VATPCODE:VATPERCT:STARTDTE:ENDDATE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61820481891470516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61820376609470515)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'CANCEL'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49024670072301310)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(96205489426380207)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49025023861301310)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(96205489426380207)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49025514199301310)
,p_event_id=>wwv_flow_api.id(49025023861301310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(96205489426380207)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61820515936470517)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(61820481891470516)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61820650504470518)
,p_event_id=>wwv_flow_api.id(61820515936470517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
