prompt --application/pages/page_00288
begin
--   Manifest
--     PAGE: 00288
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
 p_id=>288
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Schedule Followup'
,p_step_title=>'Schedule Followup'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140748'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101484415379224518)
,p_plug_name=>'Schedule Followup'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct s.ROWID AS rwid, s.engineno, s.docnumbr || ''/'' || s.doctdate docdetail,',
'       s.docnumbr, customer_code,',
'          ''<span style="display:block;width:300px;">''',
'       || customer',
'       || ''</span>'' customer,',
'          ''<span style="display:block;width:400px;font-size: 10px;">''',
'       || address',
'       || ''</span>'' address,',
'          ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || phonenum',
'       || ''</span>'' phonenum,',
'          ''<span style="display:block;width:150px;font-size: 10px;">''',
'       || mobileno',
'       || ''</span>'' mobileno,',
'       s.PURCDATE "Purchase Date",',
'       s.DELVRYDT "Delivery Date",',
'       s.DELVRYDT+90 "1st Service Date",',
'       s.timstamp curren_date,',
'       s.FSTRMTYP "1st Reminder Type",s.SNDRMTYP "2nd Reminder Type",s.TRDRMTYP "3rd Reminder Type",',
'       s.smancode || '' :- '' || a.smanname salesman, s.partycde,',
'       s.itemcode || '' :- '' || p.itemdes1 "Vehicle Info", s.chasisno,',
'       (select REGISTNO from nmitmreg where COMPCODE=s.COMPCODE',
'       and DOCTDATE=s.DELVRYDT',
'       and ITEMCODE=s.ITEMCODE',
'       and CUSTMRID=s.CUSTMRID',
'       and CHASISNO=s.CHASISNO',
'        ) registno, s.srvctype, s.fstrmndt, s.sndrmndt, s.trdrmndt,',
'       TO_CHAR (s.fstflwup, ''DD-Mon-rrrr'') || ''<br>'' || s.remarkss fstflwup,',
'       s.sndflwup, s.trdflwup,',
'       (SELECT sycoddes',
'          FROM sycodmas',
'         WHERE sysofcde = s.rmndtype',
'           AND syhrdcde = ''NDR''',
'           AND compcode = ''100''',
'           AND modlcode = ''NM'') "Reminder Type"',
'  FROM nmsrvndr s,',
'       (SELECT compcode, itemcode, itemdes1',
'          FROM nmitemas a) p,',
'       (SELECT smancode, smanname, compcode',
'          FROM nmsmnmas) a,',
'       (SELECT partycde, compcode, customer_code, customer, address, phonenum,',
'               mobileno',
'          FROM vw_service) b',
' WHERE s.itemcode = p.itemcode(+)',
'   AND s.compcode = p.compcode(+)',
'   AND s.smancode = a.smancode(+)',
'   AND s.compcode = a.compcode(+)',
'   AND s.partycde = b.partycde(+)',
'   AND s.compcode = b.compcode(+)',
'   AND S.PKGNMBER= :P288_SERVICETYPE',
'  /* AND (s.fstflwup IS NULL OR s.sndflwup IS NULL OR s.trdflwup IS NULL)',
'   AND (s.appndate IS NULL AND s.sndapndt IS NULL AND s.trdapndt IS NULL)',
' AND trunc(DELVRYDT+90) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))*/',
'ORDER By s.timstamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P288_SERVICETYPE'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101484769242224518)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
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
,p_internal_uid=>64329902116544024
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101491300457224524)
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
 p_id=>wwv_flow_api.id(101491680708224524)
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
 p_id=>wwv_flow_api.id(101492069489224524)
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
 p_id=>wwv_flow_api.id(101492485147224524)
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
 p_id=>wwv_flow_api.id(101492869651224524)
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
 p_id=>wwv_flow_api.id(101493314259224524)
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
 p_id=>wwv_flow_api.id(101493699466224524)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Document Details'
,p_column_link=>'f?p=&APP_ID.:279:&SESSION.::&DEBUG.:279:P279_DOCNUMBR,P279_ROWID:#DOCNUMBR#,#RWID#'
,p_column_linktext=>'#DOCDETAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101494158552224524)
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
 p_id=>wwv_flow_api.id(101494540742224526)
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
 p_id=>wwv_flow_api.id(101494924585224526)
,p_db_column_name=>'TRDRMNDT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'3rd<br>Reminder Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TRDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101495361147224526)
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
 p_id=>wwv_flow_api.id(101495715155224526)
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
 p_id=>wwv_flow_api.id(101496154898224526)
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
 p_id=>wwv_flow_api.id(101484902760224520)
,p_db_column_name=>'Reminder Type'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Reminder Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Reminder Type'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101485267520224520)
,p_db_column_name=>'PHONENUM'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Phone No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101485707342224521)
,p_db_column_name=>'MOBILENO'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Mobile No'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101486123283224521)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Customer<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101486511451224523)
,p_db_column_name=>'ADDRESS'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101486892732224523)
,p_db_column_name=>'SNDFLWUP'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'2nd Followup Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SNDFLWUP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101487303874224523)
,p_db_column_name=>'TRDFLWUP'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'3rd Followup Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TRDFLWUP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101487689837224523)
,p_db_column_name=>'FSTRMNDT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'1st Reminder Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FSTRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101488150091224523)
,p_db_column_name=>'SNDRMNDT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'2nd Reminder Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SNDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101488496163224523)
,p_db_column_name=>'FSTFLWUP'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'1st Followup'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FSTFLWUP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101488881291224523)
,p_db_column_name=>'Delivery Date'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Delivery Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Delivery Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101489341080224524)
,p_db_column_name=>'1st Reminder Type'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'1st Reminder Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'1st Reminder Type'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101489719818224524)
,p_db_column_name=>'2nd Reminder Type'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'2nd Reminder Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'2nd Reminder Type'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101490148114224524)
,p_db_column_name=>'3rd Reminder Type'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'3rd Reminder Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'3rd Reminder Type'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101490548635224524)
,p_db_column_name=>'CURREN_DATE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Curren Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CURREN_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101490960710224524)
,p_db_column_name=>'1st Service Date'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'1st Service Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'1st Service Date'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101496542588224526)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643417'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:CUSTOMER_CODE:CUSTOMER:ADDRESS:MOBILENO:PHONENUM:CHASISNO:REGISTNO:Purchase Date:Delivery Date:SRVCTYPE:Reminder Type:1st Reminder Type:FSTRMNDT:FSTFLWUP:2nd Reminder Type:SNDRMNDT:SNDFLWUP:3rd Reminder Type:TRDRMNDT:TRDFLWUP:Vehicle Info:S'
||'ALESMAN:CURREN_DATE:1st Service Date'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101497379190224526)
,p_plug_name=>'a'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101524108471058409)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P288_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P288_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101497041992224526)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101484415379224518)
,p_button_name=>'CreateReminder'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Re-Schedule Reminder'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'65'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101497836712224526)
,p_name=>'P288_SERVICETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101497379190224526)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Free Service;5,Paid Service;1'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'REDIRECT_SET_VALUE'
,p_attribute_04=>'HORIZONTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101524393138058409)
,p_name=>'P288_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101524108471058409)
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
 p_id=>wwv_flow_api.id(101524824742058409)
,p_name=>'P288_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101524108471058409)
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
 p_id=>wwv_flow_api.id(101525226315058411)
,p_name=>'P288_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(101524108471058409)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101498208530224526)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(101484415379224518)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101498692037224527)
,p_event_id=>wwv_flow_api.id(101498208530224526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.component_end;
end;
/
