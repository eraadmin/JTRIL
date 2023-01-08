prompt --application/pages/page_00212
begin
--   Manifest
--     PAGE: 00212
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
 p_id=>212
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Schedule Followup'
,p_page_mode=>'MODAL'
,p_step_title=>'Schedule Followup'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170919160150'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126561683679155523)
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
'       s.fstrmndt, s.sndrmndt, s.trdrmndt,',
'       (CASE S.FURRMTYP when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) sttype,',
'       (CASE S.SNDCTGRY when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) dntype,',
'       (CASE S.TRDCTGRY when ''C'' then ''Call'' when ''S'' then ''SMS'' when ''E'' then ''Email'' else null end) rdtype,',
'       s.NMPRDTYP',
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
'   AND ((FSTRMNDT IS NOT NULL) or (SNDFLWUP IS NOT NULL) OR (TRDFLWUP IS NOT NULL))',
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
'                         and s.compcode = v.compcode)) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P212_SERVICETYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(126562105543155524)
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
,p_internal_uid=>89407238417475030
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126568648801155527)
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
 p_id=>wwv_flow_api.id(126569784237155527)
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
 p_id=>wwv_flow_api.id(126570650702155527)
,p_db_column_name=>'Purchase Date'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Purchase<br>Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'Purchase Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126571067063155527)
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
 p_id=>wwv_flow_api.id(126571455016155529)
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
 p_id=>wwv_flow_api.id(126572185265155529)
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
 p_id=>wwv_flow_api.id(126572574231155529)
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
 p_id=>wwv_flow_api.id(126572988075155529)
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
 p_id=>wwv_flow_api.id(126573456741155529)
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
 p_id=>wwv_flow_api.id(126562584165155524)
,p_db_column_name=>'PHONENUM'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Phone No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(126563037151155524)
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
 p_id=>wwv_flow_api.id(126563420798155524)
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
 p_id=>wwv_flow_api.id(126563845089155524)
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
 p_id=>wwv_flow_api.id(126564987345155524)
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
 p_id=>wwv_flow_api.id(126565431210155524)
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
 p_id=>wwv_flow_api.id(37098137882026534)
,p_db_column_name=>'STTYPE'
,p_display_order=>47
,p_column_identifier=>'AL'
,p_column_label=>'1st Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37098259426026535)
,p_db_column_name=>'DNTYPE'
,p_display_order=>57
,p_column_identifier=>'AM'
,p_column_label=>'2nd Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37098323973026536)
,p_db_column_name=>'RDTYPE'
,p_display_order=>67
,p_column_identifier=>'AN'
,p_column_label=>'3rd Reminder Typ'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37846669652091916)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>77
,p_column_identifier=>'AO'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(126573814343155529)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'894190'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:Vehicle Info:SALESMAN:CUSTOMER:ADDRESS:MOBILENO:FSTRMNDT:STTYPE:SNDRMNDT:DNTYPE:TRDRMNDT:RDTYPE::NMPRDTYP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126575151777155530)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(126579297992163696)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(126574677570155529)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(126561683679155523)
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
 p_id=>wwv_flow_api.id(126575479666155530)
,p_name=>'P212_SERVICETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(126575151777155530)
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
 p_id=>wwv_flow_api.id(126575884792155530)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(126561683679155523)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(126576380994155532)
,p_event_id=>wwv_flow_api.id(126575884792155530)
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
