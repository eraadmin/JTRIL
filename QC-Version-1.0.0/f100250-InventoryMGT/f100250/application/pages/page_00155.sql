prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
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
 p_id=>155
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Appointment Report'
,p_alias=>'NMAPPMET'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171226131032'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82835278759937639)
,p_plug_name=>'button_region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126649099479514266)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P155_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P155_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126650699580514272)
,p_plug_name=>'Appointment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.ROWID AS rwid, s.engineno, s.docnumbr || ''/'' || s.doctdate docdetail,',
'       s.docnumbr, s.refndate "Purchase Date",',
'       s.smancode || '' :- '' || a.smanname salesman, s.partycde,',
'       s.itemcode || '' :- '' || p.itemdes1 "Vehicle Info", s.chasisno,',
'       s.registno,',
'          ''<span style="display:block;width:300px;font-size: 10px;">''',
'       || s.custmrid',
'       || '':-''',
'       || b.custname',
'       || ''</span>'' customer,',
'          ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || b.custphon',
'       || ''</span>'' custphon,',
'          ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || b.custmobl',
'       || ''</span>'' custmobl,',
'       s.srvctype, s.appndate, s.trdapndt, s.sndapndt,to_char(s.appntime,'' HH:MIPM'') appntime,to_char(s.appntim1,'' HH:MIPM'') appntim1,to_char(s.appntim2,'' HH:MIPM'') appntim2,s.timstamp current_date,',
'          s.fstrmndt',
'       || ''-''',
'       || (SELECT subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.flwctgry',
'              AND subdtlfk = s.flwsubct)',
'       || ''-''',
'       || (SELECT catgrynm d',
'             FROM svctgtyp',
'            WHERE compcode = ''100'' AND catgrypk = s.flwsubct)',
'       || ''-''',
'       || s.remarkss fstrmndt,',
'          s.sndrmndt',
'       || ''-''',
'       || (SELECT subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.sndctgry',
'              AND subdtlfk = s.sndsubct)',
'       || ''-''',
'       || (SELECT catgrynm d',
'             FROM svctgtyp',
'            WHERE compcode = ''100'' AND catgrypk = s.sndsubct)',
'       || ''-''',
'       || s.sndrmrk sndrmndt,',
'          s.trdrmndt',
'       || ''-''',
'       || (SELECT subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.trdctgry',
'              AND subdtlfk = s.trdsubct)',
'       || ''-''',
'       || (SELECT catgrynm d',
'             FROM svctgtyp',
'            WHERE compcode = ''100'' AND catgrypk = s.sndsubct)',
'       || ''-''',
'       || s.trdrmrk trdrmndt,',
'       CASE',
'                           WHEN (appndate is not null and appndate >trunc(sysdate)) or (SNDAPNDT is not null and SNDAPNDT>trunc(sysdate))',
'or (TRDAPNDT is not null and TRDAPNDT >trunc(sysdate))',
'                              THEN apex_item.checkbox2 (1, DOCNUMBR)',
'                           ELSE NULL',
'                        END Sendmail',
'  FROM nmsrvndr s,',
'       (SELECT itemcode, itemdes1',
'          FROM nmitemas a) p,',
'       (SELECT smancode, smanname, compcode',
'          FROM nmsmnmas) a,',
'       (SELECT custmrid, custname, compcode, custmobl, custphon',
'          FROM nmcusmas) b',
' WHERE s.itemcode = p.itemcode(+)',
'   AND s.smancode = a.smancode(+)',
'   AND s.compcode = a.compcode(+)',
'   AND s.custmrid = b.custmrid(+)',
'   AND s.compcode = b.compcode(+)',
'   AND (   s.appndate IS NOT NULL',
'        OR s.sndapndt IS NOT NULL',
'        OR s.trdapndt IS NOT NULL',
'       )',
'order by s.timstamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(126651089751514274)
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
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>89496222625833780
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126655648531514278)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Partycde'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126656033678514280)
,p_db_column_name=>'CHASISNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Chasis<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHASISNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126656427519514280)
,p_db_column_name=>'REGISTNO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Registration<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REGISTNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126656862681514281)
,p_db_column_name=>'RWID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Rwid'
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
,p_static_id=>'RWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126657255483514281)
,p_db_column_name=>'ENGINENO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Frame No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ENGINENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126657645006514281)
,p_db_column_name=>'Purchase Date'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Purchase<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Purchase Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126658053359514281)
,p_db_column_name=>'CUSTMOBL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Telephone No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTMOBL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126658441540514281)
,p_db_column_name=>'CUSTPHON'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Mobile No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTPHON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126658848324514281)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Docdetail'
,p_column_link=>'f?p=&APP_ID.:289:&SESSION.::&DEBUG.::P289_DOCNUMBR,P289_ROWID:#DOCNUMBR#,#RWID#'
,p_column_linktext=>'#DOCDETAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126659227953514281)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Docnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126659650393514281)
,p_db_column_name=>'SRVCTYPE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Service<br>Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SRVCTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126659988508514281)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126660383020514283)
,p_db_column_name=>'SALESMAN'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Salesman'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SALESMAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126660778983514283)
,p_db_column_name=>'Vehicle Info'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Vehicle Info'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Vehicle Info'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126651187382514275)
,p_db_column_name=>'TRDAPNDT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'3rd<br>Appointment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TRDAPNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126651601290514278)
,p_db_column_name=>'SNDAPNDT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'2nd<br>Appointment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SNDAPNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126652058516514278)
,p_db_column_name=>'APPNDATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'1st<br>Appointment Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APPNDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126652450242514278)
,p_db_column_name=>'FSTRMNDT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'1st Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FSTRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126652820713514278)
,p_db_column_name=>'SNDRMNDT'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'2nd Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SNDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126653226714514278)
,p_db_column_name=>'TRDRMNDT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'3rd Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126653605515514278)
,p_db_column_name=>'APPNTIME'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'1st <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126654063405514278)
,p_db_column_name=>'APPNTIM1'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'2nd <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIM1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126654429293514278)
,p_db_column_name=>'APPNTIM2'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'3rd <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIM2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126654863322514278)
,p_db_column_name=>'SENDMAIL'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Send Mail'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SENDMAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126655257963514278)
,p_db_column_name=>'CURRENT_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Current Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(126661198129514283)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'895064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:CHASISNO:REGISTNO:CUSTOMER:CUSTMOBL:CUSTPHON:Purchase Date:SRVCTYPE:APPNDATE:APPNTIME:SNDAPNDT:APPNTIM1:TRDAPNDT:APPNTIM2:SALESMAN:Vehicle Info:FSTRMNDT:SNDRMNDT:TRDRMNDT:SENDMAIL:CURRENT_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126661717198514283)
,p_plug_name=>'Appointment Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct s.ROWID AS rwid,  s.docnumbr || ''/'' || to_char(s.doctdate,''dd/mm/rrrr'') docdetail,',
'       s.docnumbr, s.refndate "Purchase Date",',
'       s.smancode || '' :- '' || a.smanname salesman, s.partycde,',
'       s.itemcode || '' :- '' || p.itemdes1 "Vehicle Info", ',
'       ',
'          ''<span style="display:block;width:200px;font-size: 10px;">''',
'       || s.custmrid',
'       || '':-''',
'       || b.custname',
'       || ''</span>'' customer,',
'          ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || b.custphon',
'       || ''</span>'' custphon,',
'          ''<span style="display:block;width:80px;font-size: 10px;">''',
'       || b.custmobl',
'       || ''</span>'' custmobl,',
'        ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || p.itemdes1',
'       || ''</span>'' itemdes1,',
'       ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || to_char(s.STARTDATE,''dd/mm/rrrr'')',
'       || ''</span>'' STARTDATE,',
'       ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || to_char(s.STARTTIME,''ss:mm:hh am'')',
'       || ''</span>'' STARTTIME,',
'       ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || to_char(s.ENDDDATE,''dd/mm/rrrr'')',
'       || ''</span>'' ENDDDATE,',
'       ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || to_char(s.ENDTIME,''ss:mm:hh am'')',
'       || ''</span>'' ENDTIME,',
'         ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || s.REMARKSS',
'       || ''</span>'' REMARKSS,',
'       s.TIMSTAMP',
'       ',
'  FROM NM_MRK_APPOINT s,',
'       (SELECT itemcode, itemdes1',
'          FROM nmitemas a) p,',
'       (SELECT smancode, smanname, compcode',
'          FROM nmsmnmas) a,',
'       (SELECT custmrid, custname, compcode, custmobl, custphon',
'          FROM nmmrkcus) b',
' WHERE s.itemcode = p.itemcode(+)',
'   AND s.smancode = a.smancode(+)',
'   AND s.compcode = a.compcode(+)',
'   AND s.custmrid = b.custmrid(+)',
'   AND s.compcode = b.compcode(+)',
'   order by TIMSTAMP DESC',
'',
'   ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
 p_id=>wwv_flow_api.id(126662113237514283)
,p_name=>'Todays total reminder'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>89507246111833789
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126662183921514283)
,p_db_column_name=>'RWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rwid'
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
,p_static_id=>'RWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126662635633514283)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Document Details'
,p_column_link=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.::P154_ROWID:#RWID#'
,p_column_linktext=>'#DOCDETAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126663041397514283)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126663386775514288)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126663768860514288)
,p_db_column_name=>'Purchase Date'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'Purchase Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126664266537514288)
,p_db_column_name=>'SALESMAN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Sales Executuve'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'SALESMAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126664598725514288)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126664993612514288)
,p_db_column_name=>'Vehicle Info'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Vehicle Info'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'Vehicle Info'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126665422242514288)
,p_db_column_name=>'CUSTPHON'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Phone No.'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTPHON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126665795291514288)
,p_db_column_name=>'CUSTMOBL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_static_id=>'CUSTMOBL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37232543690413955)
,p_db_column_name=>'ITEMDES1'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'Product Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37232596007413956)
,p_db_column_name=>'STARTDATE'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Start Date'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37232714082413957)
,p_db_column_name=>'STARTTIME'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Start Time'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37232853934413958)
,p_db_column_name=>'ENDDDATE'
,p_display_order=>58
,p_column_identifier=>'V'
,p_column_label=>'End Date'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37232947701413959)
,p_db_column_name=>'ENDTIME'
,p_display_order=>68
,p_column_identifier=>'W'
,p_column_label=>'End Time'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37233034679413960)
,p_db_column_name=>'REMARKSS'
,p_display_order=>78
,p_column_identifier=>'X'
,p_column_label=>'Remark'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50953635195389699)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>88
,p_column_identifier=>'Y'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(126666251012514288)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'895114'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:CUSTOMER:SALESMAN:Purchase Date:Vehicle Info:CUSTPHON:CUSTMOBL:ITEMDES1:STARTDATE:STARTTIME:ENDDDATE:ENDTIME:REMARKSS:TIMSTAMP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126667107192514294)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(126661717198514283)
,p_button_name=>'CREATE_APPOINTMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Appointment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:154::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126666735845514288)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(126661717198514283)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P155_RANDOMNO.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38146474597122115)
,p_name=>'P155_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126661717198514283)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126649542718514266)
,p_name=>'P155_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126649099479514266)
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
 p_id=>wwv_flow_api.id(126649920374514267)
,p_name=>'P155_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(126649099479514266)
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
 p_id=>wwv_flow_api.id(126650299584514272)
,p_name=>'P155_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(126649099479514266)
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
 p_id=>wwv_flow_api.id(126667520785514295)
,p_name=>'P155_TODSALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126661717198514283)
,p_source=>'Appointment Report'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(126668567301514319)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(126669037376514322)
,p_event_id=>wwv_flow_api.id(126668567301514319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.component_end;
end;
/
