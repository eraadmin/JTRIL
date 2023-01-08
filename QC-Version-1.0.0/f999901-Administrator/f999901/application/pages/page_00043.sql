prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Engineer Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Engineer Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200505173958'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69349687428905234)
,p_plug_name=>'Service Engineer Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       SMANTYPE,',
'       SMANCODE,',
'       SMANNAME,',
'       SUPRCODE,',
'       HELPRCD1,',
'       HELPRCD2,',
'       TOTSALES,',
'       COMMRATE,',
'       COMMVALU,',
'       STATCODE,',
'       USERNAME,',
'       CATEGORY,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       COSTCODE,',
'       LEADPERS,',
'       TEAMCODE,',
'       TRGENDDT,',
'       TARGTQTY,',
'       TRGTAMNT,',
'       MODIFYDT,',
'       REPORTNG,',
'       WHSZONFK,',
'       PRODUCT_CATEGORY,',
'       STARTDATE,',
'       ENDDATE,',
'       ACTIVE,',
'       CLCTFLAG,',
'       TRGFRMDT',
'  from NMSMNMAS',
'  where compcode = :compcode',
'  and SMANTYPE = ''RE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69350118790905234)
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
,p_internal_uid=>69350118790905234
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34728078188767610)
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
 p_id=>wwv_flow_api.id(34728464859767614)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34728860259767617)
,p_db_column_name=>'SMANTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Smantype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34729217183767618)
,p_db_column_name=>'SMANCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34729683669767621)
,p_db_column_name=>'SMANNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Smanname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34730022069767625)
,p_db_column_name=>'SUPRCODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Suprcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34730491652767628)
,p_db_column_name=>'STATCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Statcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34730854310767629)
,p_db_column_name=>'USERNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34731242579767632)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34731626704767635)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34732073245767639)
,p_db_column_name=>'COSTCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34732407402767640)
,p_db_column_name=>'LEADPERS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Leadpers'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34732869102767643)
,p_db_column_name=>'TEAMCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Teamcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34733251924767646)
,p_db_column_name=>'TRGENDDT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Trgenddt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34733690875767650)
,p_db_column_name=>'TARGTQTY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Targtqty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34734048960767651)
,p_db_column_name=>'TRGTAMNT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Trgtamnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34734408292767654)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34734824576767657)
,p_db_column_name=>'REPORTNG'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Reportng'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34735207624767660)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34735642197767662)
,p_db_column_name=>'STARTDATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Startdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34736033734767665)
,p_db_column_name=>'ENDDATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Enddate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34736428346767668)
,p_db_column_name=>'ACTIVE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34736882371767670)
,p_db_column_name=>'CLCTFLAG'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Clctflag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34737275009767673)
,p_db_column_name=>'TRGFRMDT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Trgfrmdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34725366208767590)
,p_db_column_name=>'HELPRCD1'
,p_display_order=>34
,p_column_identifier=>'Y'
,p_column_label=>'Helprcd1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34725685072767593)
,p_db_column_name=>'HELPRCD2'
,p_display_order=>44
,p_column_identifier=>'Z'
,p_column_label=>'Helprcd2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34726091581767596)
,p_db_column_name=>'TOTSALES'
,p_display_order=>54
,p_column_identifier=>'AA'
,p_column_label=>'Totsales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34726478266767600)
,p_db_column_name=>'COMMRATE'
,p_display_order=>64
,p_column_identifier=>'AB'
,p_column_label=>'Commrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34726862582767603)
,p_db_column_name=>'COMMVALU'
,p_display_order=>74
,p_column_identifier=>'AC'
,p_column_label=>'Commvalu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34727298636767606)
,p_db_column_name=>'CATEGORY'
,p_display_order=>84
,p_column_identifier=>'AD'
,p_column_label=>'Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34727690322767607)
,p_db_column_name=>'PRODUCT_CATEGORY'
,p_display_order=>94
,p_column_identifier=>'AE'
,p_column_label=>'Product Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69361471365913932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'347376'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:COMPCODE:SMANTYPE:SMANCODE:SMANNAME:SUPRCODE:STATCODE:USERNAME:OPRSTAMP:TIMSTAMP:COSTCODE:LEADPERS:TEAMCODE:TRGENDDT:TARGTQTY:TRGTAMNT:MODIFYDT:REPORTNG:WHSZONFK:STARTDATE:ENDDATE:ACTIVE:CLCTFLAG:TRGFRMDT:HELPRCD1:HELPRCD2:TOTSALES:COMMRATE:COM'
||'MVALU:CATEGORY:PRODUCT_CATEGORY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34738035412767682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69349687428905234)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34738438567767682)
,p_name=>'P43_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69349687428905234)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34738885517767684)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(69349687428905234)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34739341606767684)
,p_event_id=>wwv_flow_api.id(34738885517767684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69349687428905234)
);
wwv_flow_api.component_end;
end;
/
