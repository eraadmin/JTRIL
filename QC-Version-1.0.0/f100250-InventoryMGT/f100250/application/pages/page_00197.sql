prompt --application/pages/page_00197
begin
--   Manifest
--     PAGE: 00197
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
 p_id=>197
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Appointment'
,p_page_mode=>'MODAL'
,p_step_title=>'Appointment'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170126132617'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128268590245099741)
,p_plug_name=>'Email '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:80%; margin-left:10%;background-color:rgb(217, 218, 218);"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_api.id(128269816402099744)
,p_plug_name=>'  '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128272230414099747)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128273371238099748)
,p_plug_name=>'Appointment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
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
'       s.srvctype, s.appndate, s.trdapndt, (select distinct wm_concat(distinct APPNDATE||'' (''||to_char(APPNTIME,''HH12:MI:SS'')||'')'') from APPOINTMENT_DETAIL where COMPCODE=s.COMPCODE and DOCNUMBR=s.DOCNUMBR) sndapndt,to_char(s.appntime,'' HH:MIPM'') app'
||'ntime,to_char(s.appntim1,'' HH:MIPM'') appntim1,to_char(s.appntim2,'' HH:MIPM'') appntim2,s.timstamp current_date,',
'          s.fstrmndt',
'       || ''-''',
'       || (SELECT distinct subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.flwctgry',
'              AND subdtlfk = s.flwsubct)',
'       || ''-''',
'       || (SELECT distinct catgrynm d',
'             FROM svctgtyp',
'            WHERE compcode = ''100'' AND catgrypk = s.flwsubct)',
'       || ''-''',
'       || s.remarkss fstrmndt,',
'          s.sndrmndt',
'       || ''-''',
'       || (SELECT distinct subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.sndctgry',
'              AND subdtlfk = s.sndsubct)',
'       || ''-''',
'       || (SELECT distinct catgrynm d',
'             FROM svctgtyp',
'            WHERE compcode = ''100'' AND catgrypk = s.sndsubct)',
'       || ''-''',
'       || s.sndrmrk sndrmndt,',
'          s.trdrmndt',
'       || ''-''',
'       || (SELECT distinct subcatnm d',
'             FROM svctgdtl',
'            WHERE compcode = ''100''',
'              AND subdtlpk = s.trdctgry',
'              AND subdtlfk = s.trdsubct)',
'       || ''-''',
'       || (SELECT distinct catgrynm d',
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
' AND S.PKGNMBER =nvl(:P197_SERVICETYPE,:P197_FREESRVTYP)',
'order by s.timstamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P197_SERVICETYPE,P197_FREESRVTYP'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(128273778258099748)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
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
,p_internal_uid=>91118911132419254
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128278753826099766)
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
 p_id=>wwv_flow_api.id(128279097608099766)
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
 p_id=>wwv_flow_api.id(128279502042099766)
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
 p_id=>wwv_flow_api.id(128279871391099766)
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
 p_id=>wwv_flow_api.id(128280273603099766)
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
 p_id=>wwv_flow_api.id(128280727039099767)
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
 p_id=>wwv_flow_api.id(128281133625099767)
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
 p_id=>wwv_flow_api.id(128281517953099767)
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
 p_id=>wwv_flow_api.id(128281959759099767)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Docdetail'
,p_column_link=>'f?p=&APP_ID.:198:&SESSION.::&DEBUG.::P198_DOCNUMBR,P198_ROWID:#DOCNUMBR#,#RWID#'
,p_column_linktext=>'#DOCDETAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128282358704099767)
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
 p_id=>wwv_flow_api.id(128282726616099767)
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
 p_id=>wwv_flow_api.id(128283084922099767)
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
 p_id=>wwv_flow_api.id(128283499895099767)
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
 p_id=>wwv_flow_api.id(128283873061099767)
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
 p_id=>wwv_flow_api.id(128273948469099753)
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
 p_id=>wwv_flow_api.id(128274267381099758)
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
 p_id=>wwv_flow_api.id(128274755377099758)
,p_db_column_name=>'FSTRMNDT'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'1st Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FSTRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128275135787099758)
,p_db_column_name=>'SNDRMNDT'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'2nd Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SNDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128275479044099758)
,p_db_column_name=>'TRDRMNDT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'3rd Reminder<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TRDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128275925980099758)
,p_db_column_name=>'APPNTIME'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'1st <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128276290817099758)
,p_db_column_name=>'APPNTIM1'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'2nd <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIM1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128276694494099761)
,p_db_column_name=>'APPNTIM2'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'3rd <br>Appointment Time'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'APPNTIM2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128277090556099764)
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
 p_id=>wwv_flow_api.id(128277530124099764)
,p_db_column_name=>'CURRENT_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Service Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128278345847099764)
,p_db_column_name=>'SNDAPNDT'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'2nd<br>Appointment Date'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(128284299268099769)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'911295'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:CUSTOMER:SALESMAN:Vehicle Info:CHASISNO:REGISTNO:APPNDATE:APPNTIME:FSTRMNDT:SNDRMNDT:TRDRMNDT:SENDMAIL:CURRENT_DATE:SNDAPNDT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(128285184220099772)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(128273371238099748)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:197:&SESSION.::&DEBUG.:197::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(128284785221099772)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(128273371238099748)
,p_button_name=>'CreateReminder'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Appointment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:196:&SESSION.::&DEBUG.:196::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(128285593175099772)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(128273371238099748)
,p_button_name=>'SEND'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128269007618099744)
,p_name=>'P197_TO_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(128268590245099741)
,p_prompt=>'<strong>To</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128269434587099744)
,p_name=>'P197_CC_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(128268590245099741)
,p_prompt=>'<strong>Cc</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>110
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128270185659099745)
,p_name=>'P197_FROM_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(128269816402099744)
,p_item_default=>'eramonir4@gmail.com'
,p_prompt=>'From Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128270641230099745)
,p_name=>'P197_SMTP_SERVER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(128269816402099744)
,p_item_default=>'smtp.gmail.com'
,p_prompt=>'Server'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128271031390099747)
,p_name=>'P197_SMTP_PORT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(128269816402099744)
,p_item_default=>'587'
,p_prompt=>' Port'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128271430988099747)
,p_name=>'P197_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(128269816402099744)
,p_item_default=>'Please visit our service center'
,p_prompt=>'<strong>Message</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>73
,p_cMaxlength=>4000
,p_cHeight=>10
,p_cAttributes=>'nowrap'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128271851326099747)
,p_name=>'P197_SUBJECT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(128269816402099744)
,p_item_default=>'Service Information'
,p_prompt=>'<strong>Subject</strong>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128272615420099747)
,p_name=>'P197_SERVICETYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(128272230414099747)
,p_use_cache_before_default=>'NO'
,p_prompt=>'  Service Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Free Service; ,Paid Service;1,Offer Service;7'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128273013805099747)
,p_name=>'P197_FREESRVTYP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(128272230414099747)
,p_use_cache_before_default=>'NO'
,p_item_default=>'6'
,p_prompt=>'Free Service Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Free Service 1st;6,Free Service 2nd;2,Free Service 3rd;3,Free Service 4th;4,Free Service 5th;8,Free Service 6th;9'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'6'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(128286826880099773)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(128273371238099748)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(128287338390099775)
,p_event_id=>wwv_flow_api.id(128286826880099773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(128286037028099772)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEND MAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'declare',
' ',
' s_docnumbr varchar2(20);',
' ',
' CURSOR CUR_MAIL IS',
'select PEMAILID,PRTYNAME from sycompty',
' where PARTYCDE in (select distinct PARTYCDE',
' from nmsrvndr',
' where docnumbr=APEX_APPLICATION.G_F01(i)',
' AND COMPCODE=:COMPCODE);',
'',
'CURSOR cur_appoint IS',
' select ITEMCODE,CHASISNO,PURCDATE,DELVRYDT,APPNDATE,SNDAPNDT,TRDAPNDT from nmsrvndr',
' where PARTYCDE in (select distinct PARTYCDE',
' from nmsrvndr',
' where docnumbr=APEX_APPLICATION.G_F01(i)',
' AND COMPCODE=:COMPCODE);',
'',
' mail_rec CUR_MAIL%rowtype;',
' appoint_rec cur_appoint%rowtype;',
' ',
'v_appointmendate date;',
' begin',
'',
'open CUR_MAIL; fetch CUR_MAIL into mail_rec; close CUR_MAIL;',
'open cur_appoint; fetch cur_appoint into appoint_rec; close cur_appoint;',
'',
'if appoint_rec.appndate is not null and appoint_rec.appndate >trunc(sysdate) then',
'v_appointmendate:=appoint_rec.APPNDATE;',
'elsif appoint_rec.SNDAPNDT is not null and appoint_rec.SNDAPNDT>trunc(sysdate) then',
'v_appointmendate:=appoint_rec.SNDAPNDT;',
'elsif appoint_rec.TRDAPNDT is not null and appoint_rec.TRDAPNDT >trunc(sysdate) then',
'v_appointmendate:=appoint_rec.TRDAPNDT ;',
'end if;',
'',
'',
'dpr_smtp_mail (''eramonir4@gmail.com'',mail_rec.PEMAILID ,:P197_SUBJECT,:P197_MESSAGE,''10.11.201.240'',25,mail_rec.PEMAILID,mail_rec.PRTYNAME,appoint_rec.ITEMCODE,appoint_rec.CHASISNO,v_appointmendate);',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(128285593175099772)
,p_process_success_message=>'Successfully Send Mail'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(128286411335099773)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update mailflag in nmsrvndr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update nmsrvndr',
'set mailflag= ''Y'',',
'maildate=trunc(sysdate ,''dd'')',
'where DOCNUMBR=APEX_APPLICATION.G_F01(i);',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(128285593175099772)
);
wwv_flow_api.component_end;
end;
/
