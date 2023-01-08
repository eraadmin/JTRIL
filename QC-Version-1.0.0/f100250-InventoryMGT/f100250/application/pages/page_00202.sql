prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
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
 p_id=>202
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Monthly  Sales Report'
,p_step_title=>'Monthly  Sales Report'
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
 p_id=>wwv_flow_api.id(100995622314353345)
,p_plug_name=>'Monthly Sales Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT docnumbr, doctdate,',
'       (SELECT prtyname',
'          FROM sycompty',
'         WHERE partycde = s.partycde AND compcode = s.compcode) partycde,',
'       (SELECT smanname',
'          FROM nmsmnmas',
'         WHERE smancode = s.smancode AND compcode = s.compcode) smancode,',
'       itemcode || '' : '' || itemdesc "Item_description", salerate, apprqnty,',
'       updocnum,',
'       (SELECT costdesc',
'          FROM syjobmas',
'         WHERE costcode = s.costcode AND compcode = s.compcode) costcode,',
'       (SELECT waredesc',
'          FROM nmwhsmas',
'         WHERE warecode = s.warecode AND compcode = s.compcode) warecode,',
'       batchnum,',
'       (SELECT nmcoddes',
'          FROM nmcodmas',
'         WHERE nmsofcde = s.colorcde',
'           AND compcode = s.compcode',
'           AND modlcode = ''NM''',
'           AND nmhrdcde = ''CLR'') colorcde,',
'       pamtmode',
'  FROM nmsalrec s',
'  where doctdate BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         );'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(100995968583353346)
,p_name=>'Todays Sales Report'
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
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>63841101457672852
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100996133334353346)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sales<br>Docnumber'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100996509589353346)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Sales<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100996945577353346)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100997274341353346)
,p_db_column_name=>'SMANCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Salesman'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'SMANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100997717532353348)
,p_db_column_name=>'Item_description'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Item Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'Item_description'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100998129674353348)
,p_db_column_name=>'SALERATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sale Rate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SALERATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100998468308353348)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Quantity'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100998960605353348)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Booking No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'UPDOCNUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100999366855353348)
,p_db_column_name=>'COSTCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cost Center'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COSTCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100999751587353348)
,p_db_column_name=>'WARECODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Warehousr'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101000089130353349)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Batch No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'BATCHNUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101000556781353349)
,p_db_column_name=>'COLORCDE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Color Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'COLORCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101000913154353349)
,p_db_column_name=>'PAMTMODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Payment Mode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PAMTMODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101001364012353349)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'638465'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCNUMBR:DOCTDATE:PARTYCDE:SMANCODE:Item_description:SALERATE:APPRQNTY:UPDOCNUM:COSTCODE:WARECODE:BATCHNUM:COLORCDE:PAMTMODE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101001819733353351)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(100995622314353345)
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
 p_id=>wwv_flow_api.id(101002263110353351)
,p_name=>'P202_TODSALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(100995622314353345)
,p_source=>'Monthly Sales Report'
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
 p_id=>wwv_flow_api.id(101002655896353351)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101003107272353351)
,p_event_id=>wwv_flow_api.id(101002655896353351)
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
