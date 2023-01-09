prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Document Master Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Master Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200930125659'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94696410520076348)
,p_plug_name=>'Document Master Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       MODLCODE,',
'       TRANTYPE,',
'       SUBTTYPE,',
'       LOCNCODE,',
'       STRTPERD,',
'       ENDPERD,',
'       DOCPREFX,',
'       DOCNUMBR,',
'       DOCTNLEN,',
'       decode(nvl(AUTOFLAG,''N''),''Y'',''YES'',''NO'') AUTOFLAG,',
'       NARATION,',
'       decode(nvl(POSTFLAG,''N''),''Y'',''YES'',''NO'') POSTFLAG,',
'       decode(nvl(VALDFLAG,''N''),''Y'',''YES'',''NO'') VALDFLAG,',
'       decode(FREQFLAG,''M'',''Monthly'',''W'',''Quarterly'',''S'',''Semi Annually'',''A'',''Annually'') FREQFLAG,',
'       DFLTACCT,',
'       decode(DFLTDBCR,''D'',''Debit'',''C'',''Credit'') DFLTDBCR,',
'       decode(DFLTDTYP,''M'',''Manual'',''A'',''Automatic'') DFLTDTYP,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       TEST_FIELD,',
'       MNYRFRMT,',
'       MNYRPRFX,',
'       MODIFYDT',
'  from SYDOCMAS',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94696443080076348)
,p_name=>'Transaction Type Modify'
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
,p_internal_uid=>94696443080076348
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47418425388373456)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'Y'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47408899389373445)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47409277962373446)
,p_db_column_name=>'MODLCODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Module Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47409675989373446)
,p_db_column_name=>'TRANTYPE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47410069589373446)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Sub Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47410480549373448)
,p_db_column_name=>'LOCNCODE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Location Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47413292720373450)
,p_db_column_name=>'NARATION'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Narration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47414458155373451)
,p_db_column_name=>'FREQFLAG'
,p_display_order=>80
,p_column_identifier=>'O'
,p_column_label=>'Frequency Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47410895784373448)
,p_db_column_name=>'STRTPERD'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Starting Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47411294268373448)
,p_db_column_name=>'ENDPERD'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47412893716373450)
,p_db_column_name=>'AUTOFLAG'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Auto Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47411695480373448)
,p_db_column_name=>'DOCPREFX'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Document No Prefix'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47412446323373450)
,p_db_column_name=>'DOCTNLEN'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'Document No Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47412019694373450)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>140
,p_column_identifier=>'I'
,p_column_label=>'Document No to Seed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47413620383373451)
,p_db_column_name=>'POSTFLAG'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Post Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47414019118373451)
,p_db_column_name=>'VALDFLAG'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Validation Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47414890436373451)
,p_db_column_name=>'DFLTACCT'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Default Account Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47415211691373453)
,p_db_column_name=>'DFLTDBCR'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Default Debit/Credit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47415625521373453)
,p_db_column_name=>'DFLTDTYP'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Type Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47416012834373453)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47416406830373453)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47416809158373454)
,p_db_column_name=>'TEST_FIELD'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Test Field'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47417201359373454)
,p_db_column_name=>'MNYRFRMT'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Mnyrfrmt'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47417642167373454)
,p_db_column_name=>'MNYRPRFX'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Mnyrprfx'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47418084637373454)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94707466245090715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'474188'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MODLCODE:TRANTYPE:SUBTTYPE:LOCNCODE:STRTPERD:ENDPERD:DOCPREFX:AUTOFLAG:NARATION:POSTFLAG:VALDFLAG:FREQFLAG:DFLTDBCR:DFLTDTYP:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47483228767443535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94696410520076348)
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
 p_id=>wwv_flow_api.id(47419200289373460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(94696410520076348)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47419663429373460)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47419200289373460)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47420106942373462)
,p_event_id=>wwv_flow_api.id(47419663429373460)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47306581000836909)
,p_name=>'closeX'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47306644193836910)
,p_event_id=>wwv_flow_api.id(47306581000836909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.component_end;
end;
/
