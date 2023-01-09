prompt --application/pages/page_01500
begin
--   Manifest
--     PAGE: 01500
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
 p_id=>1500
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Production Process Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Production Process Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170523181125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69023058581618320)
,p_plug_name=>'hidden region'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106352639242521594)
,p_plug_name=>'Production Process Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'a.compcode ,',
'a.process_no ,',
'a.PROCESS_NAME,',
'a.DEPT_NO,',
'(select distinct DEPT_NAME',
'from prdepartment p ',
'where p.DEPT_NO = a.DEPT_NO) "DEPT NAME",',
'R.RIGHTID,',
'R.USER_CODE,',
'(select distinct u.USERNAME',
'from syusrmas u ',
'where u.USERCODE = r.USER_CODE) "USERNAME"',
'from PRPROCESS a,PRPROCESSRGT r',
'where a.process_no = R.PROCESS_NO(+)',
'and a.compcode = r.compcode(+)',
'and A.COMPCODE = :compcode'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(106353058003521594)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1517:&SESSION.::&DEBUG.:1517:P1517_ROWID_ST:#PROCESS_NO#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>104797219416882373
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37753486761967577)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37753840202967583)
,p_db_column_name=>'DEPT_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dept No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37761626429972269)
,p_db_column_name=>'PROCESS_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Process No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37762304879972274)
,p_db_column_name=>'PROCESS_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Process Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37762948847972275)
,p_db_column_name=>'DEPT NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dept Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37763717516972275)
,p_db_column_name=>'RIGHTID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Rightid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37764371932972275)
,p_db_column_name=>'USER_CODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'User Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37765116569972277)
,p_db_column_name=>'USERNAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(106358904316522139)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'362020'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROCESS_NO:PROCESS_NAME:DEPT NAME:RIGHTID:USER_CODE:USERNAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61133471180957550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(69023058581618320)
,p_button_name=>'CREATE'
,p_button_static_id=>'hiddenCreate'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1501:&SESSION.::&DEBUG.:1501::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37758252314967594)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(106352639242521594)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1501:&SESSION.::&DEBUG.:1501::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61133898160957553)
,p_name=>'P1500_PROCESS_NO'
,p_item_sequence=>10
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.DEPT_NAME',
'from prdepartment p',
'where p.COMPCODE = :COMPCODE',
'and p.DEPT_NO = :DEPT_NO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
