prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Package Setup Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Package Setup Modify'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200930130922'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47590395295660126)
,p_plug_name=>'Service Package'
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
'       SRVPKGPK,',
'       VHCLCODE,',
'       PKGTITLE,',
'       RAISEDBY,',
'       APPRVDBY,',
'       APPRDATE,',
'       EFFCTDTE,',
'       RESCHDTLE,',
'       REAMOUNT,',
'       TIMSTAMP,',
'       PKGMILAG,',
'       SVCTYPFK,',
'       decode(nvl(FRESVFLG,''N''),''Y'', ''Yes'',''No'') FRESVFLG,',
'       FSTFRETY,',
'       FSTFREDY,',
'       SNDFRETY,',
'       SNDFREDY,',
'       TRDFRETY,',
'       TRDFREDY,',
'       REMINDER,',
'       DISMARKS,',
'       decode(nvl(PARTYFLG,''N''),''Y'', ''Yes'',''No'') PARTYFLG,',
'       MODIFYDT',
'  from NMSRVPKG',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47590776389660126)
,p_name=>'Report 1'
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
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:RP:P70_SRVPKGPK:\#SRVPKGPK#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>47590776389660126
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47482026346443523)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'AD'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47590858122660126)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47591248882660126)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47591691198660128)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47592005318660128)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47592401886660128)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47592875793660128)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47593259451660129)
,p_db_column_name=>'SRVPKGPK'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Srvpkgpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47594092968660129)
,p_db_column_name=>'PKGTITLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Service Job Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47597621685660132)
,p_db_column_name=>'SVCTYPFK'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Service Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(14717586533212876)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47593648628660129)
,p_db_column_name=>'VHCLCODE'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Vehicle Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47594474856660129)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>120
,p_column_identifier=>'J'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47594895173660129)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47595253422660131)
,p_db_column_name=>'APPRDATE'
,p_display_order=>140
,p_column_identifier=>'L'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47595623962660131)
,p_db_column_name=>'EFFCTDTE'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>'Effect. Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47596013742660131)
,p_db_column_name=>'RESCHDTLE'
,p_display_order=>160
,p_column_identifier=>'N'
,p_column_label=>'Re-schedule (Month)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47597286801660132)
,p_db_column_name=>'PKGMILAG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Mileage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47596827988660132)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>190
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47598099284660132)
,p_db_column_name=>'FRESVFLG'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Srv. Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47601621688660135)
,p_db_column_name=>'PARTYFLG'
,p_display_order=>210
,p_column_identifier=>'AB'
,p_column_label=>'Party Flag'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47598475487660132)
,p_db_column_name=>'FSTFRETY'
,p_display_order=>220
,p_column_identifier=>'T'
,p_column_label=>'1st Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47598844043660134)
,p_db_column_name=>'FSTFREDY'
,p_display_order=>230
,p_column_identifier=>'U'
,p_column_label=>'1st Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47599281901660134)
,p_db_column_name=>'SNDFRETY'
,p_display_order=>240
,p_column_identifier=>'V'
,p_column_label=>'2nd Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47599640087660134)
,p_db_column_name=>'SNDFREDY'
,p_display_order=>250
,p_column_identifier=>'W'
,p_column_label=>'2nd Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47600062849660134)
,p_db_column_name=>'TRDFRETY'
,p_display_order=>260
,p_column_identifier=>'X'
,p_column_label=>'3rd Remtype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47600462182660135)
,p_db_column_name=>'TRDFREDY'
,p_display_order=>270
,p_column_identifier=>'Y'
,p_column_label=>'3rd Remdays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47596431151660131)
,p_db_column_name=>'REAMOUNT'
,p_display_order=>280
,p_column_identifier=>'O'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47600892888660135)
,p_db_column_name=>'REMINDER'
,p_display_order=>290
,p_column_identifier=>'Z'
,p_column_label=>'Reminder'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47601282867660135)
,p_db_column_name=>'DISMARKS'
,p_display_order=>300
,p_column_identifier=>'AA'
,p_column_label=>'Dismarks'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47602081716660137)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>310
,p_column_identifier=>'AC'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47603969218663015)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'476040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PKGTITLE:SVCTYPFK:VHCLCODE:EFFCTDTE:RESCHDTLE:PKGMILAG:FRESVFLG:PARTYFLG:FSTFRETY:FSTFREDY:SNDFRETY:SNDFREDY:TRDFRETY:TRDFREDY:REAMOUNT:'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47603473391660137)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(47590395295660126)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70'
,p_required_patch=>wwv_flow_api.id(15392507445824940)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47483488518443537)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(47590395295660126)
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
 p_id=>wwv_flow_api.id(47482648898443529)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(47590395295660126)
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
 p_id=>wwv_flow_api.id(47602473786660137)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(47590395295660126)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47602950687660137)
,p_event_id=>wwv_flow_api.id(47602473786660137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(47590395295660126)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47482714702443530)
,p_name=>'close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47482648898443529)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47482891575443531)
,p_event_id=>wwv_flow_api.id(47482714702443530)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47482901851443532)
,p_name=>'closeX'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47483056885443533)
,p_event_id=>wwv_flow_api.id(47482901851443532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.component_end;
end;
/
