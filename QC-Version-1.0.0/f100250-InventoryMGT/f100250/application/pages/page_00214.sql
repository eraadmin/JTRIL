prompt --application/pages/page_00214
begin
--   Manifest
--     PAGE: 00214
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
 p_id=>214
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Monthly Customer''s  Report'
,p_step_title=>'Monthly Customer''s  Report'
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
 p_id=>wwv_flow_api.id(100928181184310778)
,p_plug_name=>'Monthly Customer''s Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRTYNAME,PARTYAD1||'':''||PARTYAD2,PHONENUM,MOBILENO,CUSTTYPE from sycompty',
'WHERE partytyp IN (''CU'', ''CV'')',
'AND timstamp BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(100928581525310778)
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
,p_internal_uid=>63773714399630284
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100928671641310778)
,p_db_column_name=>'PRTYNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Customer Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PRTYNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100929105241310778)
,p_db_column_name=>'PARTYAD1||'':''||PARTYAD2'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYAD1||'':''||PARTYAD2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100929496090310778)
,p_db_column_name=>'PHONENUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Phone No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100929917353310780)
,p_db_column_name=>'MOBILENO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Mobile No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100930363518310780)
,p_db_column_name=>'CUSTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Customer Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTTYPE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(100930667864310780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'637759'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PRTYNAME:PHONENUM:MOBILENO:CUSTTYPE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(100931223054310781)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(100928181184310778)
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
 p_id=>wwv_flow_api.id(100931633304310781)
,p_name=>'P214_TODSALE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(100928181184310778)
,p_source=>'Monthly Customer''s Report'
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
 p_id=>wwv_flow_api.id(100931998176310781)
,p_name=>'Freeze Column'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(100932475192310783)
,p_event_id=>wwv_flow_api.id(100931998176310781)
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
