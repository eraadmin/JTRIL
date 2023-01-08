prompt --application/pages/page_00258
begin
--   Manifest
--     PAGE: 00258
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
 p_id=>258
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'FollowUp'
,p_step_title=>'FollowUp'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170919155813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132009889750253063)
,p_plug_name=>'Schedule Followup'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
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
'       s.FOLLOWDT,',
'       s.NMPRDTYP',
'       /*s.fstrmndt, s.sndrmndt, s.trdrmndt,',
'       (SELECT sycoddes',
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
'   AND TRUNC (SYSDATE)=FOLLOWDT',
'   AND nvl(COMPLETE,''N'') = ''N''',
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
'                         and s.compcode = v.compcode)) ',
'  -- AND ((TRUNC (SYSDATE)=FSTFLWUP ) or (TRUNC (SYSDATE)=SNDFLWUP) OR (TRUNC (SYSDATE)=TRDFLWUP));'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P258_SERVICETYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(132010311614253064)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
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
,p_internal_uid=>100135818210840461
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37326222004510150)
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
 p_id=>wwv_flow_api.id(37326648242510151)
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
 p_id=>wwv_flow_api.id(37327065913510151)
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
 p_id=>wwv_flow_api.id(37327404800510152)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Document Details'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'DOCDETAIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37327846014510152)
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
 p_id=>wwv_flow_api.id(37328611199510153)
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
 p_id=>wwv_flow_api.id(37329012064510154)
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
 p_id=>wwv_flow_api.id(37329397805510154)
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
 p_id=>wwv_flow_api.id(37323810524510148)
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
 p_id=>wwv_flow_api.id(37324292493510148)
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
 p_id=>wwv_flow_api.id(37324670301510149)
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
 p_id=>wwv_flow_api.id(37324995109510149)
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
 p_id=>wwv_flow_api.id(37097771179026530)
,p_db_column_name=>'FOLLOWDT'
,p_display_order=>41
,p_column_identifier=>'AL'
,p_column_label=>'Followdt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846443659091914)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>51
,p_column_identifier=>'AM'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(132022020414253069)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'54553'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:Vehicle Info:SALESMAN:CUSTOMER:ADDRESS:MOBILENO:Purchase Date::NMPRDTYP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132023357848253070)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37330677576510157)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(132009889750253063)
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
 p_id=>wwv_flow_api.id(37331351396510158)
,p_name=>'P258_SERVICETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(132023357848253070)
,p_use_cache_before_default=>'NO'
,p_item_default=>'5'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Free Service;5,Paid Service;1,Offer Service;7'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37332372012510162)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(132009889750253063)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37332848043510163)
,p_event_id=>wwv_flow_api.id(37332372012510162)
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
