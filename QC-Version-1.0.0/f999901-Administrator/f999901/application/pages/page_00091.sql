prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Program Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Program Master'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230102112121'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48910475406836024)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56382264933063171)
,p_plug_name=>'program master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ROWID,',
'       a.COMPCODE,',
'       a.PROGNAME,',
'       a.PROGNAME ||'' - ''|| a.PROGDESC PROGDESC,',
'       a.PROGTYPE,',
'       Decode(a.PROGTYPE,''F'',''Form'',''R'',''Report'',''N'',''Report 3(Non Standard)'',''S'',''Report 3(Standard)'',''M'',''Menu'',''L'',''Form 5.0'','''',''-'') form_type,',
'       a.MODLCODE,',
'       (select modlname from symodule where modlcode = a.modlcode) modelname,',
'       a.PATHCODE,',
'       a.HELPTEXT,',
'       Decode(a.VALDFLAG,''Y'',''Yes'',''N'',''No'','''',''-'') VALDFLAG,',
'       a.PASSWORD,',
'       Decode(a.SCRNPASW,''Y'',''Yes'',''N'',''No'','''',''-'') SCRNPASW,',
'       a.STARTIME,',
'       a.STOPTIME,',
'       a.SYSCOUNT,',
'       a.OPRSTAMP,',
'       a.TIMSTAMP',
'  from SYMENMAS a'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(56382612146063171)
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
,p_detail_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:RP:P92_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>56382612146063171
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56382752104063173)
,p_db_column_name=>'ROWID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56383172313063173)
,p_db_column_name=>'COMPCODE'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56383549360063173)
,p_db_column_name=>'PROGNAME'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Progname'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56383965902063173)
,p_db_column_name=>'PROGDESC'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Program Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58302110631772309)
,p_db_column_name=>'FORM_TYPE'
,p_display_order=>70
,p_column_identifier=>'R'
,p_column_label=>'Program Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56384335227063173)
,p_db_column_name=>'PROGTYPE'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Program Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56384748256063175)
,p_db_column_name=>'MODLCODE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Module Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(58302076444772308)
,p_db_column_name=>'MODELNAME'
,p_display_order=>100
,p_column_identifier=>'Q'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56385122907063175)
,p_db_column_name=>'PATHCODE'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Pathcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56385564211063175)
,p_db_column_name=>'HELPTEXT'
,p_display_order=>120
,p_column_identifier=>'H'
,p_column_label=>'Help Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56385968265063175)
,p_db_column_name=>'VALDFLAG'
,p_display_order=>130
,p_column_identifier=>'I'
,p_column_label=>'Password Check?'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56386383503063176)
,p_db_column_name=>'PASSWORD'
,p_display_order=>140
,p_column_identifier=>'J'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56386727099063176)
,p_db_column_name=>'SCRNPASW'
,p_display_order=>150
,p_column_identifier=>'K'
,p_column_label=>'User ID Required?'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56387157199063176)
,p_db_column_name=>'STARTIME'
,p_display_order=>160
,p_column_identifier=>'L'
,p_column_label=>'Start Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56387569017063176)
,p_db_column_name=>'STOPTIME'
,p_display_order=>170
,p_column_identifier=>'M'
,p_column_label=>'Stop Time'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56387971311063176)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>180
,p_column_identifier=>'N'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56388337398063178)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>190
,p_column_identifier=>'O'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48910582589836025)
,p_db_column_name=>'SYSCOUNT'
,p_display_order=>200
,p_column_identifier=>'P'
,p_column_label=>'Syscount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(56396376048074454)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'563964'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGDESC:FORM_TYPE:MODELNAME:VALDFLAG:SCRNPASW:HELPTEXT:STARTIME:STOPTIME:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56389751269063179)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48910475406836024)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48910172533836021)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(48910475406836024)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56388789400063178)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(56382264933063171)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56389234277063179)
,p_event_id=>wwv_flow_api.id(56388789400063178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(56382264933063171)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48910200645836022)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(48910172533836021)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48910364730836023)
,p_event_id=>wwv_flow_api.id(48910200645836022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
