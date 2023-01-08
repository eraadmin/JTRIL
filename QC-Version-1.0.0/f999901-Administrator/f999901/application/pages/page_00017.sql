prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report Parameters List'
,p_page_mode=>'MODAL'
,p_step_title=>'Report Parameters List'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_height=>'800'
,p_dialog_width=>'900'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20200527170509'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54338944964173347)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54681848261609501)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SERIAL,',
'       PROGNAME,',
'       PARAMETER_ID,',
'       PARAMETER_NAME,',
'       LOV_QUERY,',
'       SHOW_HIDE,',
'       CREATE_BY,',
'       TIMSTAMP,',
'       MODIFY_BY,',
'       MODIFY_DATE,',
'       (SELECT PROGDESC FROM SYMENMAS WHERE PROGNAME = A.PROGNAME) PROGDESC,',
'       DECODE (SHOW_HIDE, ''Y'', ''Yes'', ''No'') SHOW_OR_HIDE_STATUS',
'  from SY_REPORT_PARAMETER A'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(54682226288609503)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP:P18_SERIAL:\#SERIAL#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'NADIA'
,p_internal_uid=>54682226288609503
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54682399508609503)
,p_db_column_name=>'SERIAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Serial'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54682765693609506)
,p_db_column_name=>'PROGNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Report Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54683128344609507)
,p_db_column_name=>'PARAMETER_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Parameter ID'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54683538765609507)
,p_db_column_name=>'PARAMETER_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Parameter Name'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54683984223609507)
,p_db_column_name=>'LOV_QUERY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'LOV Query'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54684391346609509)
,p_db_column_name=>'SHOW_HIDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Show Hide'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54684711906609509)
,p_db_column_name=>'CREATE_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Create By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54685135444609509)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54685581688609509)
,p_db_column_name=>'MODIFY_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Modify By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54685948540609510)
,p_db_column_name=>'MODIFY_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Modify Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54339028352173348)
,p_db_column_name=>'PROGDESC'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Report Description'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54339102436173349)
,p_db_column_name=>'SHOW_OR_HIDE_STATUS'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Show/Hide Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(54734419800803146)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'547345'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGNAME:PROGDESC:PARAMETER_ID:PARAMETER_NAME:LOV_QUERY:SHOW_OR_HIDE_STATUS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54338378336173341)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(54338944964173347)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54338436829173342)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54338378336173341)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54338592342173343)
,p_event_id=>wwv_flow_api.id(54338436829173342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
