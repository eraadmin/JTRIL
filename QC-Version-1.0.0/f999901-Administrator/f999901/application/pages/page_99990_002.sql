prompt --application/pages/page_99990_002
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>99990102
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Page Template View'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Template View'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20191119171323'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7850449726575743)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       TMPLT_ID,',
'       CAGRPCDE,',
'       CACMPCDE,',
'       BROWLOGO,',
'       PARTYFLG,',
'       PG_BCKGRND_CLR,',
'       RGN_HEADR_CLR,',
'       RGN_BCKGRND_CLR,',
'       RPT_BORDER_COLOR,',
'       RPT_TDBORDER_COLOR,',
'       LOGONAME,',
'       DATE_FRMT_MASK,',
'       CURRENCY_FRMT_MASK,',
'       BTN_HGHT,',
'       BTN_WDTH,',
'       BTN_SUBMITCLR,',
'       BTN_SAVCLR,',
'       BTN_BCKCLR,',
'       BTN_DELCLR,',
'       BTN_RFRSHCLR,',
'       BTN_PRINTCLR,',
'       BTN_SUBMITLBL,',
'       BTN_SAVLBL,',
'       BTN_BCKLBL,',
'       BTN_DELLBL,',
'       BTN_RFRSHLBL,',
'       BTN_PRINTLBL,',
'       BTN_SUBMITICON,',
'       BTN_SAVICON,',
'       BTN_BCKICON,',
'       BTN_DELICON,',
'       BTN_RFRSHICON,',
'       BTN_PRINTICON,',
'       BTN_FNT_SIZE,',
'       ITEM_FONT_CLR,',
'       ITEM_FONT_SIZE,',
'       ITEM_BCKGRND_CLR,',
'       ITEM_FONT_WEIGHT,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       MODIFIED_BY,',
'       MODIFIED_DATE',
'  from SYPGTMPLT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(7850808819575745)
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
,p_detail_link=>'f?p=&APP_ID.:99990103:&SESSION.::&DEBUG.:RP:P99990103_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'NADIA'
,p_internal_uid=>7850808819575745
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7851318379575776)
,p_db_column_name=>'CAGRPCDE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cagrpcde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7851752905575776)
,p_db_column_name=>'CACMPCDE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cacmpcde'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7852119305575776)
,p_db_column_name=>'BROWLOGO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Browlogo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7852551041575778)
,p_db_column_name=>'PARTYFLG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Partyflg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7852935002575778)
,p_db_column_name=>'PG_BCKGRND_CLR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pg Bckgrnd Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7853389374575778)
,p_db_column_name=>'RGN_HEADR_CLR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Rgn Headr Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7853727010575779)
,p_db_column_name=>'RGN_BCKGRND_CLR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Rgn Bckgrnd Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7854101824575779)
,p_db_column_name=>'RPT_BORDER_COLOR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Rpt Border Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7854598379575781)
,p_db_column_name=>'RPT_TDBORDER_COLOR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Rpt Tdborder Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7854951454575781)
,p_db_column_name=>'LOGONAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Logoname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7855313959575781)
,p_db_column_name=>'DATE_FRMT_MASK'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Frmt Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7855713423575781)
,p_db_column_name=>'CURRENCY_FRMT_MASK'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Currency Frmt Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7856107854575781)
,p_db_column_name=>'BTN_HGHT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Btn Hght'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7856512680575781)
,p_db_column_name=>'BTN_WDTH'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Btn Wdth'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7856913477575781)
,p_db_column_name=>'BTN_SUBMITCLR'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Btn Submitclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7857341926575781)
,p_db_column_name=>'BTN_SAVCLR'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Btn Savclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7857795565575782)
,p_db_column_name=>'BTN_BCKCLR'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Btn Bckclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7858153537575782)
,p_db_column_name=>'BTN_DELCLR'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Btn Delclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7858576987575782)
,p_db_column_name=>'BTN_RFRSHCLR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Btn Rfrshclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7858943839575782)
,p_db_column_name=>'BTN_PRINTCLR'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Btn Printclr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7859388162575782)
,p_db_column_name=>'BTN_SUBMITLBL'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Btn Submitlbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7859716678575782)
,p_db_column_name=>'BTN_SAVLBL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Btn Savlbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7860113628575782)
,p_db_column_name=>'BTN_BCKLBL'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Btn Bcklbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7860556573575784)
,p_db_column_name=>'BTN_DELLBL'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Btn Dellbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7860929701575784)
,p_db_column_name=>'BTN_RFRSHLBL'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Btn Rfrshlbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7861349373575785)
,p_db_column_name=>'BTN_PRINTLBL'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Btn Printlbl'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7861763823575785)
,p_db_column_name=>'BTN_SUBMITICON'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Btn Submiticon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7862122837575785)
,p_db_column_name=>'BTN_SAVICON'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Btn Savicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7862512125575785)
,p_db_column_name=>'BTN_BCKICON'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Btn Bckicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7862914120575785)
,p_db_column_name=>'BTN_DELICON'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Btn Delicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7863323578575785)
,p_db_column_name=>'BTN_RFRSHICON'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Btn Rfrshicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7863714476575785)
,p_db_column_name=>'BTN_PRINTICON'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Btn Printicon'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864158413575785)
,p_db_column_name=>'BTN_FNT_SIZE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Btn Fnt Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864593683575785)
,p_db_column_name=>'ITEM_FONT_CLR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Item Font Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864966356575785)
,p_db_column_name=>'ITEM_FONT_SIZE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Item Font Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7865338894575787)
,p_db_column_name=>'ITEM_BCKGRND_CLR'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Item Bckgrnd Clr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7865770107575787)
,p_db_column_name=>'ITEM_FONT_WEIGHT'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Item Font Weight'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7866128670575787)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7866501948575787)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7866908603575787)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7867300199575789)
,p_db_column_name=>'MODIFIED_DATE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Modified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6403991435797723)
,p_db_column_name=>'TMPLT_ID'
,p_display_order=>52
,p_column_identifier=>'AQ'
,p_column_label=>'Tmplt Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6404235623797726)
,p_db_column_name=>'ROWID'
,p_display_order=>62
,p_column_identifier=>'AR'
,p_column_label=>'Rowid'
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
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7870429545604421)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'78705'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CAGRPCDE:CACMPCDE:BROWLOGO:PARTYFLG:PG_BCKGRND_CLR:RGN_HEADR_CLR:RGN_BCKGRND_CLR:RPT_BORDER_COLOR:RPT_TDBORDER_COLOR:LOGONAME:DATE_FRMT_MASK:CURRENCY_FRMT_MASK:BTN_HGHT:BTN_WDTH:BTN_SUBMITCLR:BTN_SAVCLR:BTN_BCKCLR:BTN_DELCLR:BTN_RFRSHCLR:BTN_PRINTCLR'
||':BTN_SUBMITLBL:BTN_SAVLBL:BTN_BCKLBL:BTN_DELLBL:BTN_RFRSHLBL:BTN_PRINTLBL:BTN_SUBMITICON:BTN_SAVICON:BTN_BCKICON:BTN_DELICON:BTN_RFRSHICON:BTN_PRINTICON:BTN_FNT_SIZE:ITEM_FONT_CLR:ITEM_FONT_SIZE:ITEM_BCKGRND_CLR:ITEM_FONT_WEIGHT:OPRSTAMP:TIMSTAMP:MOD'
||'IFIED_BY:MODIFIED_DATE:TMPLT_ID:ROWID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7868746227575790)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7850449726575743)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:99990103:&SESSION.::&DEBUG.:99990103'
,p_button_cattributes=>'style="color:&BTN_SUBMITCLR.;background-color:&BTN_RFRSHCLR.;"'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7867735165575789)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7850449726575743)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7868208909575790)
,p_event_id=>wwv_flow_api.id(7867735165575789)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7850449726575743)
);
wwv_flow_api.component_end;
end;
/
