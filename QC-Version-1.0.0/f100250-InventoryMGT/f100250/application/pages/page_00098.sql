prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>98
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service Job Receipt Report'
,p_alias=>'NMJOBRCP'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Job Receipt'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList--circular .t-BadgeList-label {',
'    color: #1F68A7;',
'}',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.t-BadgeList--circular.t-BadgeList--small .t-BadgeList-label {',
'    font-size: 11px;',
'    padding: 54px 1px 1px 1px;',
'}'))
,p_dialog_chained=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170719145240'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(59171803480797905)
,p_plug_name=>'Service job receipt report'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.SRVCNOPK,b.DOCNUMBR service_no,',
'       b.DOCTDATE Service_date,',
'       a.CUSTOMER_CODE,',
'          ''<div style="width: 200px; text-align: left;font-size: 10px;">''',
'       || a.CUSTOMER',
'       || ''</div>''',
'          AS CUSTOMER,',
'      a.CRETDATE,',
'          ''<div style="width: 200px; text-align: left;font-size: 10px;">''',
'       || a.CATEGORY',
'       || ''</div>''',
'          AS CATEGORY,',
'          ''<div style="width: 300px; text-align: left;font-size: 10px;">''',
'       || a.ADDRESS',
'       || ''</div>''',
'          AS ADDRESS,',
'       a.PHONENUM,',
'       a.MOBILENO,',
'       a.EMAIL_ID,',
'          ''<b><div style="width: 300px; text-align: left;font-size: 10px;">''',
'       || a.last_purchase',
'       || ''</div></b>''',
'          AS LAST_PURCHASE,',
'       a.LAST_PURCHASE_DATE,',
'       a.TOTAL_SERVICE_TAKEN,',
'       a.TAKEN_FOR,',
'       a.LAST_SERVICE_DATE',
'  FROM (SELECT distinct COMPCODE,',
'               CUSTOMER_CODE,',
'               ''<div style="width: 200px; text-align: left;font-size: 10px;">''',
'               || CUSTOMER',
'               || ''</div>''',
'                  AS CUSTOMER,',
'               CRETDATE,',
'               ''<div style="width: 200px; text-align: left;font-size: 10px;">''',
'               || CATEGORY',
'               || ''</div>''',
'                  AS CATEGORY,',
'               ''<div style="width: 300px; text-align: left;font-size: 10px;">''',
'               || ADDRESS',
'               || ''</div>''',
'                  AS ADDRESS,',
'               PHONENUM,',
'               MOBILENO,',
'               EMAIL_ID,',
'               ''<b><div style="width: 300px; text-align: left;font-size: 10px;">''',
'               ||WM_CONCAT(last_purchase)',
'               || ''</div></b>''',
'                  AS LAST_PURCHASE,',
'             MAX(LAST_PURCHASE_DATE) LAST_PURCHASE_DATE,',
'               SUM(TOTAL_SERVICE_TAKEN) TOTAL_SERVICE_TAKEN,',
'               TAKEN_FOR,',
'               MAX(LAST_SERVICE_DATE) LAST_SERVICE_DATE',
'          FROM VW_SERVICE',
'         where COMPCODE=:COMPCODE ',
'        group by COMPCODE,CUSTOMER_CODE,CRETDATE,CUSTOMER,CATEGORY,ADDRESS,PHONENUM,MOBILENO,EMAIL_ID,TAKEN_FOR ) a,',
'       nmservce b',
' WHERE a.CUSTOMER_CODE = b.PARTYCDE AND a.COMPCODE = b.COMPCODE',
'and warecode in (select warecode from sycstacc where ',
'compcode=:compcode and grupcode=:APP_USER)',
'order by b.DOCTDATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(59171875232797905)
,p_name=>'Service job receipt report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>22017008107117411
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59172537856797926)
,p_db_column_name=>'SERVICE_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Service No'
,p_column_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::P99_DOCNUMBR,P99_ROWID:#SERVICE_NO#,#SRVCNOPK#'
,p_column_linktext=>'#SERVICE_NO#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59172915810797927)
,p_db_column_name=>'SERVICE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Service Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59173341513797927)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Customer Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59173737524797927)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59174071719797927)
,p_db_column_name=>'CRETDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cretdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59174544051797927)
,p_db_column_name=>'CATEGORY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59174946603797929)
,p_db_column_name=>'ADDRESS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59175302325797929)
,p_db_column_name=>'PHONENUM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Phone No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59175710131797929)
,p_db_column_name=>'MOBILENO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59176096080797929)
,p_db_column_name=>'EMAIL_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Email Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59176533901797930)
,p_db_column_name=>'LAST_PURCHASE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Purchase'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59176894944797930)
,p_db_column_name=>'LAST_PURCHASE_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Purchase Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59177325406797930)
,p_db_column_name=>'TOTAL_SERVICE_TAKEN'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Total Service Taken'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59177766598797935)
,p_db_column_name=>'TAKEN_FOR'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Taken For'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59178115080797935)
,p_db_column_name=>'LAST_SERVICE_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Service Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(59180586270805988)
,p_db_column_name=>'SRVCNOPK'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Srvcnopk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(59178529603798960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'220237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SERVICE_NO:SERVICE_DATE:CUSTOMER:CATEGORY:ADDRESS:PHONENUM:MOBILENO:EMAIL_ID:LAST_PURCHASE:LAST_PURCHASE_DATE:TOTAL_SERVICE_TAKEN:TAKEN_FOR:LAST_SERVICE_DATE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70118190528194457)
,p_plug_name=>'Service Job Receipt Reports'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  s.rowid, s.docnumbr, s.registno, s.chasisno, s.docttype, s.subttype,',
'                s.doctdate, s.partycde,(select distinct PRTYNAME from sycompty where partycde= s.partycde  and compcode=s.compcode ) PRTYNAME, s.refnumbr, r.ogcntper',
'           FROM nmservce s, nmitmreg r',
'          WHERE s.compcode = :compcode',
'            AND s.compcode = r.compcode(+)',
'            AND s.custmrid = r.custmrid(+)',
'            AND s.docttype = ''SV''',
'            AND s.subttype = 1',
'            AND s.registno = r.registno(+)',
'            AND s.statuscd <> ''CAN''',
'            AND NVL (s.COMPLETE, ''N'') = ''N''',
'            ',
'            AND s.costcode IN (SELECT cabasecc',
'                                 FROM sycstacc',
'                                WHERE compcode = :compcode AND grupcode = :APP_USER)',
'       ORDER BY s.docnumbr DESC, s.doctdate DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(70118375472194458)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>32963508346513964
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118467213194458)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118572740194458)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Docnumbr'
,p_column_link=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::P99_DOCNUMBR,P99_ROWID:#DOCNUMBR#,#ROWID#'
,p_column_linktext=>'#DOCNUMBR#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118672187194458)
,p_db_column_name=>'REGISTNO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Registration No.'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REGISTNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118769209194458)
,p_db_column_name=>'CHASISNO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Chasis No.'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHASISNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118896341194458)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Docttype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118971379194458)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Subttype'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70119076940194458)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70119183769194458)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Party Code'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70119290228194458)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Refnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REFNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70119383408194458)
,p_db_column_name=>'OGCNTPER'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ogcntper'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'OGCNTPER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70259895366642896)
,p_db_column_name=>'PRTYNAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Customer Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PRTYNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70119488572194458)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'329647'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCNUMBR:DOCTDATE:REGISTNO:CHASISNO:PRTYNAME:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70179088960258392)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70179294155259860)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P98_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P98_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70181491300277933)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70119683840194458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(59171803480797905)
,p_button_name=>'SERVICE_JOB_RECEIPT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Service Job Receipt'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70179493734259862)
,p_name=>'P98_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(70179294155259860)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70179674731259863)
,p_name=>'P98_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(70179294155259860)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(70179871272259863)
,p_name=>'P98_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(70179294155259860)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(70178885151257260)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
