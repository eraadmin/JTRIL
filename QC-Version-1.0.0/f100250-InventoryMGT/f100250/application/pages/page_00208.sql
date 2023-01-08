prompt --application/pages/page_00208
begin
--   Manifest
--     PAGE: 00208
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
 p_id=>208
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Today''s Followup Waiting'
,p_page_mode=>'MODAL'
,p_step_title=>'Today''s Followup Waiting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170919155947'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101097218731386233)
,p_plug_name=>'Today''s Followup Waiting'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.ROWID AS rwid, s.docnumbr || ''/'' || s.doctdate docdetail,',
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
'       s.fstrmndt, s.sndrmndt, s.trdrmndt,      ',
'       (CASE S.FURRMTYP when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) sttype,',
'       (CASE S.SNDCTGRY when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) dntype,',
'       (CASE S.TRDCTGRY when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) rdtype,',
'       s.NMPRDTYP',
'      /* (SELECT sycoddes',
'          FROM sycodmas',
'         WHERE sysofcde = s.rmndtype',
'           AND syhrdcde = ''NDR''',
'           AND compcode = ''100''',
'           AND modlcode = ''NM'') "Reminder Type"*/',
'  FROM NM_MRK_SCH_FOLLOWUP s,',
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
'   AND ((TO_DATE (SYSDATE, ''DD-MON-RRRR'')=FSTRMNDT )',
'       OR (TO_DATE (SYSDATE, ''DD-MON-RRRR'')=SNDFLWUP) ',
'       OR (TO_DATE (SYSDATE, ''DD-MON-RRRR'')=TRDFLWUP))',
'   AND (s.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :app_user)',
'   or s.SMANCODE in (select v.smancode',
'                         from VW_SMAN_PRODUCT v ',
'                        where s.smancode like V.SMANCODE_TREE||''%''',
'                         and v.REPORTNG = :APP_USER',
'                         and to_date(s.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') ',
'                                                               and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                         and V.PRODUCT_TYPE = s.NMPRDTYP',
'                         and s.compcode = v.compcode))',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101097648617386233)
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>63942781491705739
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101097680979386233)
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
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'RWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101098505208386234)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Document Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101098914032386234)
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
 p_id=>wwv_flow_api.id(101099356269386234)
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
 p_id=>wwv_flow_api.id(101099681662386239)
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
 p_id=>wwv_flow_api.id(101100166156386240)
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
 p_id=>wwv_flow_api.id(101100541683386240)
,p_db_column_name=>'PHONENUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Phone No.'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101100939516386240)
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
 p_id=>wwv_flow_api.id(101101297133386240)
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
 p_id=>wwv_flow_api.id(101101739138386240)
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
 p_id=>wwv_flow_api.id(101102119973386242)
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
 p_id=>wwv_flow_api.id(101102509161386242)
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
 p_id=>wwv_flow_api.id(101104131107386244)
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
 p_id=>wwv_flow_api.id(101104496994386244)
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
 p_id=>wwv_flow_api.id(101104887074386244)
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
 p_id=>wwv_flow_api.id(37097805728026531)
,p_db_column_name=>'STTYPE'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'1st Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37097961907026532)
,p_db_column_name=>'DNTYPE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'2nd Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37098047678026533)
,p_db_column_name=>'RDTYPE'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'3rd Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846531092091915)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101105668765386245)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'639509'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:DOCNUMBR:Vehicle Info:SALESMAN:CUSTOMER_CODE:CUSTOMER:ADDRESS:MOBILENO:FSTRMNDT:STTYPE:SNDRMNDT:DNTYPE:TRDRMNDT:RDTYPE::NMPRDTYP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126588377457244839)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101106611178386245)
,p_name=>'P208_TODSALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101097218731386233)
,p_source=>'Today''s Followup Report'
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
 p_id=>wwv_flow_api.id(101107011392386247)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101107535071386247)
,p_event_id=>wwv_flow_api.id(101107011392386247)
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
