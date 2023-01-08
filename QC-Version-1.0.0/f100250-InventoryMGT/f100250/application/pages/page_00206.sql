prompt --application/pages/page_00206
begin
--   Manifest
--     PAGE: 00206
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
 p_id=>206
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Todays Reminder  Report'
,p_step_title=>'Todays Reminder  Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101083958197381008)
,p_plug_name=>'Todays total reminder'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.ROWID AS rwid, s.engineno, s.docnumbr || ''/'' || s.doctdate docdetail,',
'       s.docnumbr, customer_code,',
'         customer customer,',
'          address address,',
'          phonenum phonenum,',
'           mobileno mobileno,',
'       s.refndate "Purchase Date",',
'       s.smancode || '' :- '' || a.smanname salesman, s.partycde,',
'          s.itemcode',
'       || '' : ''',
'       || p.itemdes1 "Vehicle Info",',
'       s.chasisno, s.registno,',
'       (SELECT srvtypnm',
'          FROM srvcstyp',
'         WHERE compcode = ''100'' AND svctyppk = s.srvctype) srvctype,',
'       s.fstrmndt, s.sndrmndt, s.trdrmndt,',
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
'   AND TRUNC (SYSDATE) IN (fstrmndt, sndrmndt, trdrmndt, furrmndt, fvermndt);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101084278209381008)
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>63929411083700514
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101084381860381008)
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
 p_id=>wwv_flow_api.id(101084840265381008)
,p_db_column_name=>'ENGINENO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Engine No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ENGINENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101085177517381008)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Document<br>Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101085568046381008)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101086015788381010)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101086451471381011)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101086815741381011)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101087203631381011)
,p_db_column_name=>'PHONENUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Phonen No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101087666198381011)
,p_db_column_name=>'MOBILENO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mobile No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101088029551381011)
,p_db_column_name=>'Purchase Date'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Purchase Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Purchase Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101088396360381011)
,p_db_column_name=>'SALESMAN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salesman'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SALESMAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101088798755381011)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Party Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101089260613381011)
,p_db_column_name=>'Vehicle Info'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Vehicle Info'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Vehicle Info'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101089646058381011)
,p_db_column_name=>'CHASISNO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Chasis No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHASISNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101089975744381013)
,p_db_column_name=>'REGISTNO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Registration No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REGISTNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101090461658381013)
,p_db_column_name=>'SRVCTYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Service<br>Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SRVCTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101090797250381013)
,p_db_column_name=>'FSTRMNDT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'1st Reminder<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'FSTRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101091203785381014)
,p_db_column_name=>'SNDRMNDT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'2nd Reminder<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SNDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101091634166381014)
,p_db_column_name=>'TRDRMNDT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'3rd Reminder<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'TRDRMNDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101092063517381014)
,p_db_column_name=>'Reminder Type'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Reminder Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Reminder Type'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101092369607381014)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'639376'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'RWID:ENGINENO:DOCDETAIL:DOCNUMBR:CUSTOMER_CODE:CUSTOMER:ADDRESS:PHONENUM:MOBILENO:Purchase Date:SALESMAN:PARTYCDE:Vehicle Info:CHASISNO:REGISTNO:SRVCTYPE:FSTRMNDT:SNDRMNDT:TRDRMNDT:Reminder Type'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101092872507381016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101083958197381008)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101093335848381016)
,p_name=>'P206_TODSALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101083958197381008)
,p_source=>'Today''s Total Reminder Report'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101093678583381016)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101094246970381016)
,p_event_id=>wwv_flow_api.id(101093678583381016)
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
