prompt --application/pages/page_10023_003
begin
--   Manifest
--     PAGE: 10023
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
 p_id=>10023504
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'cash book view'
,p_page_mode=>'MODAL'
,p_step_title=>'cash book view'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190929102459'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2914864036351066)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101023986457473729)
,p_plug_name=>'Cash Book View modify'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR,   AC.DOCTDATE,',
'listagg(AC.ACCTCODE, '','') within group (order by AC.ACCTCODE) as ACCTCODE,',
'listagg(AC.COSTCODE, '','') within group (order by AC.COSTCODE) as COSTCODE, ',
'LISTAGG(AC.SUBLEDCD, '','') within group (order by AC.SUBLEDCD) as SUBLEDCD,',
'listagg(AC.NARATION, '','') within group (order by AC.NARATION) as NARATION,  ',
'listagg(AC.DBCRCODE, '','') within group (order by AC.DBCRCODE) as DBCRCODE,',
'        AC.CURRCODE, AC.EXCGRATE, ',
'SUM(NVL(AC.JVFCAMNT,0)) JVFCAMNT, SUM(NVL(AC.JVLCAMNT,0)) JVLCAMNT, ',
'        AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'FROM ACTRNDTL AC, SYCHRTAC RTAC',
'WHERE AC.ACCTCODE=RTAC.ACCTCODE ',
'and ac.docttype=SUBSTR(:P10023503_TRANTYPE, 0,INSTR(:P10023503_TRANTYPE,''-'')-2 ) ',
'and ac.subttype = SUBSTR(:P10023503_TRANTYPE, INSTR(:P10023503_TRANTYPE,''-'')+2,INSTR(:P10023503_TRANTYPE,''-'')+4 )',
'group by AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE, --AC.COSTCODE, AC.SUBLEDCD, ',
'AC.CURRCODE, AC.EXCGRATE,  AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'',
'',
'/*SELECT distinct ac.rowid edit,  AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, DOCTTYPE||'' - ''||SUBTTYPE trn_type,',
'AC.DOCNUMBR, AC.DOCTDATE, --AC.SERLNUMB, AC.ACCTCODE, ',
'AC.COSTCODE, AC.SUBLEDCD, AC.NARATION,  --AC.DBCRCODE,',
' AC.CURRCODE, AC.EXCGRATE, AC.JVFCAMNT, AC.JVLCAMNT, AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'FROM ACTRNDTL AC, SYCHRTAC RTAC',
'WHERE AC.ACCTCODE=RTAC.ACCTCODE ',
'and RTAC.CASHBANK=''C''',
'and ac.docttype=SUBSTR(:P10023504_TRANTYPE, 0,INSTR(:P10023504_TRANTYPE,''-'')-2 ) ',
'and ac.subttype = SUBSTR(:P10023504_TRANTYPE, INSTR(:P10023504_TRANTYPE,''-'')+2,INSTR(:P10023504_TRANTYPE,''-'')+4 )',
'--and ac.compcode=''100''',
'--AND   DOCNUMBR=''JV200136''*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(4198518135710338)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10023505:&SESSION.::&DEBUG.:RP:P10023505_VOUCHER_NO,P10023505_DOCTYPE,P10023505_SUBTTYPE,P10023505_BANKNAME,P10023505_AMOUNT,P10023505_BANKBRANCH,P10023505_BANKCODE:#DOCNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#BANKNAME#,#JVFCAMNT#,#BANKBRCH#,#BANKC'
||'ODE##EDIT#,#DOCNUMBR#,#DOCTTYPE#,#SUBTTYPE#,#BANKNAME#,#JVFCAMNT#,#TRN_TYPE#,#BANKNAME#,#BANKBRCH#,#BANKCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'MUKUL'
,p_internal_uid=>60205470636433716
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198642275710339)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198686915710340)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198823987710341)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198891158710342)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_link=>'f?p=&APP_ID.:10023505:&SESSION.::&DEBUG.:RP:P10023505_VOUCHER_NO:#DOCNUMBR#'
,p_column_linktext=>'#DOCNUMBR#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198992729710343)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199108408710344)
,p_db_column_name=>'COSTCODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199239299710345)
,p_db_column_name=>'SUBLEDCD'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Subledcd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199273442710346)
,p_db_column_name=>'NARATION'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199437714710347)
,p_db_column_name=>'CURRCODE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199511583710348)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199592734710349)
,p_db_column_name=>'JVFCAMNT'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Jvfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4199686024710350)
,p_db_column_name=>'JVLCAMNT'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Jvlcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4200341825710356)
,p_db_column_name=>'BANKNAME'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Bankname'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4200425969710357)
,p_db_column_name=>'BANKBRCH'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Bankbrch'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4200538506710358)
,p_db_column_name=>'BANKCODE'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Bankcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4200572589710359)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4200713899710360)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58750458017694556)
,p_db_column_name=>'ACCTCODE'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Acctcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58750332252694555)
,p_db_column_name=>'DBCRCODE'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Dbcrcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4238373089296943)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'602454'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:COSTCODE:SUBLEDCD:NARATION:CURRCODE:EXCGRATE:JVFCAMNT:JVLCAMNT:BANKNAME:BANKBRCH:BANKCODE:TIMSTAMP::ACCTCODE:DBCRCODE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2082754749959173)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101023986457473729)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2911804810351035)
,p_name=>'P10023504_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2914864036351066)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2911943668351036)
,p_name=>'P10023504_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2914864036351066)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2915004293351067)
,p_name=>'P10023504_TRN_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2914864036351066)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2083219976959173)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2082754749959173)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2083684959959173)
,p_event_id=>wwv_flow_api.id(2083219976959173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
