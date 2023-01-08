prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Engineer Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Engineer Master'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200518180607'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37877271040751543)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69379055882961701)
,p_plug_name=>'Service Engineer Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       A.COMPCODE,',
'       A.SMANTYPE,',
'       A.SMANTYPE||'' - ''||(Select NMCODDES',
'       From Nmcodmas',
'       Where Compcode= A.COMPCODE',
'       And   MODLCODE=''NM''',
'       And   NMHRDCDE=''TYP''',
'       And   NMSOFCDE=A.SMANTYPE) SMANTYPEDESC, ',
'       SMANCODE,',
'       SMANCODE||'' - ''||SMANNAME SMANNAME,',
'       SUPRCODE,',
'       A.SUPRCODE||'' - ''||(Select WAREDESC',
'       From Nmwhsmas',
'       Where Compcode=A.COMPCODE',
'       And    WARECODE=A.SUPRCODE',
'       And    COSTCODE=A.COSTCODE',
'       )WAREDESC,',
'       HELPRCD1,',
'       HELPRCD2,',
'       TOTSALES,',
'       COMMRATE,',
'       COMMVALU,',
'       STATCODE,',
'       USERNAME,',
'       USERNAME||'' - ''||(Select USERNAME',
'       From Syusrmas ',
'       Where Compcode=A.Compcode',
'       And   USERCODE=A.USERNAME) USERDESC,',
'       CATEGORY,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       COSTCODE,',
'       A.COSTCODE||'' - ''||(Select COSTDESC',
'       From syjobmas',
'       Where Compcode=A.COMPCODE',
'       And   COSTCODE=A.COSTCODE',
'       ) COSTDESC,',
'       LEADPERS,',
'       Decode(A.LEADPERS,''Y'',''Yes'',''N'',''No'','''',''-'') LEADPERSDESC,',
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
'       Decode(A.ACTIVE,''Y'',''Yes'',''N'',''No'','''',''-'') ACTIVEDESC,',
'       CLCTFLAG,',
'       TRGFRMDT',
'  from NMSMNMAS A',
'  where compcode = :compcode',
'  and SMANTYPE = ''RE'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(69379487244961701)
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
,p_internal_uid=>69379487244961701
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34757557329824076)
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
 p_id=>wwv_flow_api.id(34757987251824078)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34758347655824081)
,p_db_column_name=>'SMANTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Engineer Type Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36403577818876413)
,p_db_column_name=>'SMANTYPEDESC'
,p_display_order=>13
,p_column_identifier=>'AF'
,p_column_label=>'Engineer Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34758779770824084)
,p_db_column_name=>'SMANCODE'
,p_display_order=>23
,p_column_identifier=>'D'
,p_column_label=>'Engineer Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34759103521824087)
,p_db_column_name=>'SMANNAME'
,p_display_order=>33
,p_column_identifier=>'E'
,p_column_label=>'Engineer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34759514241824089)
,p_db_column_name=>'SUPRCODE'
,p_display_order=>43
,p_column_identifier=>'F'
,p_column_label=>'Warehouse Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36403637082876414)
,p_db_column_name=>'WAREDESC'
,p_display_order=>53
,p_column_identifier=>'AG'
,p_column_label=>'Warehouse  Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34759898212824092)
,p_db_column_name=>'STATCODE'
,p_display_order=>63
,p_column_identifier=>'G'
,p_column_label=>'Statcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34760263089824095)
,p_db_column_name=>'USERNAME'
,p_display_order=>73
,p_column_identifier=>'H'
,p_column_label=>'UserCode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36403719687876415)
,p_db_column_name=>'USERDESC'
,p_display_order=>83
,p_column_identifier=>'AH'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34760622077824098)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>93
,p_column_identifier=>'I'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34761098530824100)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>103
,p_column_identifier=>'J'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34761451168824103)
,p_db_column_name=>'COSTCODE'
,p_display_order=>113
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34761880441824106)
,p_db_column_name=>'LEADPERS'
,p_display_order=>123
,p_column_identifier=>'L'
,p_column_label=>'Service Advisor Code?'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36403917291876417)
,p_db_column_name=>'LEADPERSDESC'
,p_display_order=>133
,p_column_identifier=>'AJ'
,p_column_label=>'Service Advisor?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34762269847824109)
,p_db_column_name=>'TEAMCODE'
,p_display_order=>143
,p_column_identifier=>'M'
,p_column_label=>'Teamcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34764247413824121)
,p_db_column_name=>'REPORTNG'
,p_display_order=>153
,p_column_identifier=>'R'
,p_column_label=>'Reportng'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34755549833824062)
,p_db_column_name=>'TOTSALES'
,p_display_order=>163
,p_column_identifier=>'AA'
,p_column_label=>'Totsales'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34765858723824134)
,p_db_column_name=>'ACTIVE'
,p_display_order=>173
,p_column_identifier=>'V'
,p_column_label=>'Active Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36404032745876418)
,p_db_column_name=>'ACTIVEDESC'
,p_display_order=>183
,p_column_identifier=>'AK'
,p_column_label=>'Active?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_column_comment=>'<span class="#ACTIVEDESC#" aria-hidden="true"></span>'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34762618908824110)
,p_db_column_name=>'TRGENDDT'
,p_display_order=>193
,p_column_identifier=>'N'
,p_column_label=>'Trgenddt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34763023816824114)
,p_db_column_name=>'TARGTQTY'
,p_display_order=>203
,p_column_identifier=>'O'
,p_column_label=>'Targtqty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34763459685824117)
,p_db_column_name=>'TRGTAMNT'
,p_display_order=>213
,p_column_identifier=>'P'
,p_column_label=>'Trgtamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34763882684824120)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>223
,p_column_identifier=>'Q'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34764691961824125)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>233
,p_column_identifier=>'S'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34765046824824128)
,p_db_column_name=>'STARTDATE'
,p_display_order=>243
,p_column_identifier=>'T'
,p_column_label=>'Startdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34765458937824131)
,p_db_column_name=>'ENDDATE'
,p_display_order=>253
,p_column_identifier=>'U'
,p_column_label=>'Enddate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34766235192824135)
,p_db_column_name=>'CLCTFLAG'
,p_display_order=>263
,p_column_identifier=>'W'
,p_column_label=>'Clctflag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34766637449824139)
,p_db_column_name=>'TRGFRMDT'
,p_display_order=>273
,p_column_identifier=>'X'
,p_column_label=>'Trgfrmdt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34754700449824056)
,p_db_column_name=>'HELPRCD1'
,p_display_order=>283
,p_column_identifier=>'Y'
,p_column_label=>'Helprcd1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34755116852824059)
,p_db_column_name=>'HELPRCD2'
,p_display_order=>293
,p_column_identifier=>'Z'
,p_column_label=>'Helprcd2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34755936005824065)
,p_db_column_name=>'COMMRATE'
,p_display_order=>303
,p_column_identifier=>'AB'
,p_column_label=>'Commrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34756399231824067)
,p_db_column_name=>'COMMVALU'
,p_display_order=>313
,p_column_identifier=>'AC'
,p_column_label=>'Commvalu'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34756768425824070)
,p_db_column_name=>'CATEGORY'
,p_display_order=>323
,p_column_identifier=>'AD'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(34757173613824073)
,p_db_column_name=>'PRODUCT_CATEGORY'
,p_display_order=>333
,p_column_identifier=>'AE'
,p_column_label=>'Product Category'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(36403884357876416)
,p_db_column_name=>'COSTDESC'
,p_display_order=>343
,p_column_identifier=>'AI'
,p_column_label=>'Costdesc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(69390839819970399)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'347670'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SMANTYPEDESC:SMANNAME:WAREDESC:USERDESC:LEADPERSDESC:ACTIVEDESC:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37877339630751544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37877271040751543)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34767427477824145)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(69379055882961701)
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
 p_id=>wwv_flow_api.id(34767871421824145)
,p_name=>'P44_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(69379055882961701)
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34768217177824146)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(69379055882961701)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34768709992824146)
,p_event_id=>wwv_flow_api.id(34768217177824146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69379055882961701)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37877090274751541)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37877113702751542)
,p_event_id=>wwv_flow_api.id(37877090274751541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37877481603751545)
,p_name=>'CancelDialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37877339630751544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37877585708751546)
,p_event_id=>wwv_flow_api.id(37877481603751545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
