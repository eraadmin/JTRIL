prompt --application/pages/page_10023
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
 p_id=>10023502
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'BANK BOOK VIEW'
,p_page_mode=>'MODAL'
,p_step_title=>'BANK BOOK VIEW'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'button.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-icon-only.ui-dialog-titlebar-close { ',
' visibility: hidden !important; ',
'    display:none;',
'}',
'',
'',
'body .ui-dialog .ui-dialog-titlebar-close {',
'    border-radius: 100%;',
'    display: none;',
'    color:white;',
'}'))
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_dialog_chained=>'N'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20190929151014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2913667717351054)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94327954515618071)
,p_name=>'BANK BOOK VIEW'
,p_template=>wwv_flow_api.id(1582245671854857847)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ROWID EDIT,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       NARATION PARTICULAR,',
'       DBCRCODE,',
'       sum(JVFCAMNT) DAmount,',
'       sum(JVLCAMNT) CAmount,',
'       REFDOCNO',
'       from ACTRNDTL',
'       where DOCTTYPE = ''J1''',
'group by ',
'       ROWID,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       NARATION,',
'       DBCRCODE,',
'       REFDOCNO',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2027579294955453)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:10023503:&SESSION.::&DEBUG.:RP:P10023503_ROW_ID,P10023503_VOUCHER_NO,P10023503_DBCRCODE,P10023503_DOCTYPE,P10023503_SUBTYPE,P10023503_PARTICULAR,P10023503_AMOUNT:#EDIT#,#DOCNUMBR#,#DBCRCODE#,#DOCTTYPE#,#SUBTTYPE#,#PARTICULAR#,#DAMOUNT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2027947637955453)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2028389159955453)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2028764300955453)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2029203713955454)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2029605189955454)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2030000762955454)
,p_query_column_id=>7
,p_column_alias=>'PARTICULAR'
,p_column_display_sequence=>8
,p_column_heading=>'Particular'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2030409730955454)
,p_query_column_id=>8
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2030843716955454)
,p_query_column_id=>9
,p_column_alias=>'DAMOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Damount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2031217584955454)
,p_query_column_id=>10
,p_column_alias=>'CAMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'Camount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2031641378955454)
,p_query_column_id=>11
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94574967464716022)
,p_plug_name=>'BANK BOOK LISTAGG'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.COMPCODE , A.DOCTTYPE, A.SUBTTYPE,A.DOCTTYPE||'' - ''||A.SUBTTYPE TRN_TYPE, A.DOCNUMBR, A.DOCTDATE ,',
'        (SELECT COSTCODE',
'        FROM ACTRNDTL ',
'        WHERE COMPCODE = A.COMPCODE',
'        AND DOCTTYPE = A.DOCTTYPE',
'        AND SUBTTYPE = A.SUBTTYPE',
'        AND DOCNUMBR = A.DOCNUMBR',
'        AND DOCTDATE = A.DOCTDATE',
'        AND SERLNUMB = 1)  MASTER_COSTCD,',
'        (SELECT DBCRCODE',
'        FROM ACTRNDTL ',
'        WHERE COMPCODE = A.COMPCODE',
'        AND DOCTTYPE = A.DOCTTYPE',
'        AND SUBTTYPE = A.SUBTTYPE',
'        AND DOCNUMBR = A.DOCNUMBR',
'        AND DOCTDATE = A.DOCTDATE',
'        AND SERLNUMB = 1)  MASTER_DBCR,',
'        (SELECT ACCTCODE',
'        FROM ACTRNDTL ',
'        WHERE COMPCODE = A.COMPCODE',
'        AND DOCTTYPE = A.DOCTTYPE',
'        AND SUBTTYPE = A.SUBTTYPE',
'        AND DOCNUMBR = A.DOCNUMBR',
'        AND DOCTDATE = A.DOCTDATE',
'        AND SERLNUMB = 1)  MASTER_ACCTCODE,',
'        (SELECT SUBLEDCD',
'        FROM ACTRNDTL ',
'        WHERE COMPCODE = A.COMPCODE',
'        AND DOCTTYPE = A.DOCTTYPE',
'        AND SUBTTYPE = A.SUBTTYPE',
'        AND DOCNUMBR = A.DOCNUMBR',
'        AND DOCTDATE = A.DOCTDATE',
'        AND SERLNUMB = 1)  MASTER_SUBLEDCD,',
'       LISTAGG(C.ACCTNAME || ''(''|| A.ACCTCODE || '') '' || DECODE(A.DBCRCODE,''D'',''Dr. '',''C'',''Cr. '') || A.JVLCAMNT ,CHR(10)) WITHIN GROUP (ORDER BY A.COMPCODE , A.DOCTTYPE, A.SUBTTYPE, A.DOCNUMBR, A.DOCTDATE) AS TRANSACTION_INFO,',
'       LISTAGG(A.NARATION,'','') WITHIN GROUP (ORDER BY A.COMPCODE , A.DOCTTYPE, A.SUBTTYPE, A.DOCNUMBR, A.DOCTDATE) AS NARATION,',
'       SUM(A.JVLCAMNT)/2 AMOUNT',
'FROM ACTRNDTL A,',
'     SYCHRTAC C',
'WHERE A.COMPCODE = :P10023502_COMPCODE',
'AND A.DOCTTYPE = SUBSTR(:P10023502_TRANTYPE, 0,INSTR(:P10023502_TRANTYPE,''-'')-2 )',
'AND A.SUBTTYPE = SUBSTR(:P10023502_TRANTYPE, INSTR(:P10023502_TRANTYPE,''-'')+2,INSTR(:P10023502_TRANTYPE,''-'')+4 )',
'AND A.STATCODE = ''N''',
'AND A.COMPCODE = C.COMPCODE',
'AND A.ACCTCODE = C.ACCTCODE',
'GROUP BY A.COMPCODE , A.DOCTTYPE, A.SUBTTYPE, A.DOCNUMBR, A.DOCTDATE',
'',
'',
'',
'',
'',
'/*SELECT  AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR,   AC.DOCTDATE,',
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
'and ac.docttype=SUBSTR(:P10023502_TRANTYPE, 0,INSTR(:P10023502_TRANTYPE,''-'')-2 ) ',
'and ac.subttype = SUBSTR(:P10023502_TRANTYPE, INSTR(:P10023502_TRANTYPE,''-'')+2,INSTR(:P10023502_TRANTYPE,''-'')+4 )',
'group by AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE, --AC.COSTCODE, AC.SUBLEDCD, ',
'AC.CURRCODE, AC.EXCGRATE,  AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'',
'',
'select ROWID EDIT, DOCTTYPE,SUBTTYPE,DOCTTYPE||'' - ''||SUBTTYPE trn_type,',
'       DOCNUMBR,DOCTDATE,REFDOCNO,',
'       listagg(NARATION, '','') within group (order by NARATION) as NARATION,',
'       sum(JVFCAMNT) D_Amount,',
'       sum(JVLCAMNT) C_Amount',
'        from ACTRNDTL',
'       where docttype=SUBSTR(:P10023502_TRANTYPE, 0,INSTR(:P10023502_TRANTYPE,''-'')-2 ) ',
'       and subttype = SUBSTR(:P10023502_TRANTYPE, INSTR(:P10023502_TRANTYPE,''-'')+2,INSTR(:P10023502_TRANTYPE,''-'')+4 )',
'GROUP BY ROWID,DOCTTYPE,SUBTTYPE,DOCNUMBR,DOCTDATE,REFDOCNO',
'',
'SELECT  AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE,',
' listagg(AC.ACCTCODE, '','') within group (order by AC.ACCTCODE) as ACCTCODE,',
'AC.COSTCODE, AC.SUBLEDCD, ',
'listagg(AC.NARATION, '','') within group (order by AC.NARATION) as NARATION,  ',
'listagg(AC.DBCRCODE, '','') within group (order by AC.DBCRCODE) as DBCRCODE,',
' AC.CURRCODE, AC.EXCGRATE, ',
' SUM(NVL(AC.JVFCAMNT,0)) JVFCAMNT, SUM(NVL(AC.JVLCAMNT,0)) JVLCAMNT, ',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'FROM ACTRNDTL AC, SYCHRTAC RTAC',
'WHERE AC.ACCTCODE=RTAC.ACCTCODE ',
'and ac.docttype=SUBSTR(:P10023502_TRANTYPE, 0,INSTR(:P10023502_TRANTYPE,''-'')-2 ) ',
'and ac.subttype = SUBSTR(:P10023502_TRANTYPE, INSTR(:P10023502_TRANTYPE,''-'')+2,INSTR(:P10023502_TRANTYPE,''-'')+4 )',
'group by AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE, AC.COSTCODE, AC.SUBLEDCD, ',
' AC.CURRCODE, AC.EXCGRATE,  AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP */'))
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
 p_id=>wwv_flow_api.id(4197513534710328)
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
,p_detail_link=>'f?p=&APP_ID.:10023503:&SESSION.::&DEBUG.:RP,10023503:P10023503_DOCTYPE,P10023503_TRANTYPE,P10023503_VOUCHER_NO,P10023503_SUBTYPE,P10023503_SUBTTYPE,P10023503_ACCTCODE,P10023503_AMOUNT,P10023503_DBCRCODE,P10023503_PARTY,P10023503_VOUCHER_DATE,P1002350'
||'3_COSTCODE,P10023503_PARTICULAR:#DOCTTYPE#,#TRN_TYPE#,#DOCNUMBR#,#SUBTTYPE#,#SUBTTYPE#,#MASTER_ACCTCODE#,#AMOUNT#,#MASTER_DBCR#,#MASTER_SUBLEDCD#,#DOCTDATE#,#MASTER_COSTCD#,#NARATION#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'MUKUL'
,p_internal_uid=>60204466035433706
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197576656710329)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197660757710330)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197897059710332)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58749110327694543)
,p_db_column_name=>'TRN_TYPE'
,p_display_order=>50
,p_column_identifier=>'AW'
,p_column_label=>'Trn Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198046089710333)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4198155084710335)
,p_db_column_name=>'NARATION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4664031777832670)
,p_db_column_name=>'COMPCODE'
,p_display_order=>80
,p_column_identifier=>'AD'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58750251251694554)
,p_db_column_name=>'MASTER_DBCR'
,p_display_order=>90
,p_column_identifier=>'AR'
,p_column_label=>'Master Dbcr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58750080204694553)
,p_db_column_name=>'MASTER_ACCTCODE'
,p_display_order=>100
,p_column_identifier=>'AS'
,p_column_label=>'Master Acctcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58750039009694552)
,p_db_column_name=>'MASTER_SUBLEDCD'
,p_display_order=>110
,p_column_identifier=>'AT'
,p_column_label=>'Master Subledcd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58749907867694551)
,p_db_column_name=>'TRANSACTION_INFO'
,p_display_order=>120
,p_column_identifier=>'AU'
,p_column_label=>'Transaction Info'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58749791992694550)
,p_db_column_name=>'AMOUNT'
,p_display_order=>130
,p_column_identifier=>'AV'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58748866426694541)
,p_db_column_name=>'MASTER_COSTCD'
,p_display_order=>140
,p_column_identifier=>'AX'
,p_column_label=>'Master Costcd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4220065672740029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'602271'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:NARATION:MASTER_DBCR:MASTER_ACCTCODE:MASTER_SUBLEDCD:TRANSACTION_INFO:AMOUNT:'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2911348455351031)
,p_name=>'P10023502_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2913667717351054)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2911499130351032)
,p_name=>'P10023502_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2913667717351054)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2912628024351043)
,p_name=>'P10023502_TRN_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2913667717351054)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2914493398351062)
,p_name=>'P10023502_VOUCHER_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2913667717351054)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58749242945694544)
,p_name=>'P10023502_COMPCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2913667717351054)
,p_item_default=>'100'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2913836503351055)
,p_name=>'HIDE REGION E'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023502_TRN_MODE'
,p_condition_element=>'P10023502_TRN_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'M'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2914056536351058)
,p_name=>'HIDE REGION E_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023502_TRN_MODE'
,p_condition_element=>'P10023502_TRN_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'E'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2914240826351059)
,p_event_id=>wwv_flow_api.id(2914056536351058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94574967464716022)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2914259291351060)
,p_event_id=>wwv_flow_api.id(2914056536351058)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94574967464716022)
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
