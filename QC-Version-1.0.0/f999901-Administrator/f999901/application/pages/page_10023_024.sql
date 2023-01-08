prompt --application/pages/page_10023_024
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
 p_id=>10023525
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Receipt Entry Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Receipt Entry Modify'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190918145802'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(181353755051265056)
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
 p_id=>wwv_flow_api.id(279462877472387719)
,p_plug_name=>'Cash Book View'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct  AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE, --AC.SERLNUMB, AC.ACCTCODE, ',
'AC.COSTCODE, AC.SUBLEDCD, AC.NARATION,  --AC.DBCRCODE,',
' AC.CURRCODE, AC.EXCGRATE, AC.JVFCAMNT, AC.JVLCAMNT, AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'FROM ACTRNDTL AC, SYCHRTAC RTAC',
'WHERE AC.ACCTCODE=RTAC.ACCTCODE ',
'and RTAC.CASHBANK=''C''',
'--and ac.compcode=''100''',
'--AND   DOCNUMBR=''JV200136'''))
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
 p_id=>wwv_flow_api.id(122421576826076031)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MUKUL'
,p_internal_uid=>178428529326799409
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3513823156847845)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3514203055847847)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3514609307847847)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3515015199847847)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3515411743847847)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3515803855847847)
,p_db_column_name=>'COSTCODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3516226295847848)
,p_db_column_name=>'SUBLEDCD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Subledcd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3516558794847848)
,p_db_column_name=>'NARATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3516960533847848)
,p_db_column_name=>'CURRCODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3517434269847848)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3517785113847848)
,p_db_column_name=>'JVFCAMNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Jvfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3518217042847850)
,p_db_column_name=>'JVLCAMNT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Jvlcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3518599671847850)
,p_db_column_name=>'REFDOCNO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Refdocno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3518957968847850)
,p_db_column_name=>'REFDOCDT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Refdocdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3519444175847850)
,p_db_column_name=>'REFDOCTY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Refdocty'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3519834581847850)
,p_db_column_name=>'REFDCSTY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Refdcsty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3520229531847850)
,p_db_column_name=>'STATCODE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Statcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3520637280847850)
,p_db_column_name=>'BANKNAME'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Bankname'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3521046034847850)
,p_db_column_name=>'BANKBRCH'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Bankbrch'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3521378798847850)
,p_db_column_name=>'BANKCODE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Bankcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3521794843847851)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3522237481847851)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(122459035603205600)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'595295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:COSTCODE:SUBLEDCD:NARATION:CURRCODE:JVFCAMNT:JVLCAMNT:STATCODE:BANKNAME:BANKBRCH:BANKCODE:TIMSTAMP:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3522959096847853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(279462877472387719)
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
 p_id=>wwv_flow_api.id(3523710605847853)
,p_name=>'P10023525_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(181353755051265056)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3524106853847854)
,p_name=>'P10023525_TRN_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(181353755051265056)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3524475219847854)
,p_name=>'P10023525_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(181353755051265056)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3524893321847854)
,p_name=>'Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3522959096847853)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3525443424847854)
,p_event_id=>wwv_flow_api.id(3524893321847854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/