prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Charge Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Charge Master'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200520155352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46321192790028245)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48665048510257196)
,p_plug_name=>'Service Charge Master'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n.ROWID,',
'       n.SRVCNOPK,',
'       n.COMPCODE,',
'       n.SRVCCODE,',
'      n.SRVCCODE ||''-''|| n.SRVCNAME SRVCNAME,',
'       n.SRVMASCD,',
'       n.VHLMASCD,',
'       (select distinct(SRVSECNM) from NMSVCHRG where COMPCODE = 100 and SRVMASCD=n.SRVMASCD) SRVSECNM,',
'       n.GRPMASCD,',
'       n.SJOBRATE,',
'       n.SREQTIME,',
'       n.RATEDATE,',
'       n.RAISEDBY,',
'       n.APPRVDBY,',
'       n.APPRDATE,',
'       n.REMARKSS,',
'       n.TIMSTAMP,',
'       n.LBORCHRG,',
'       n.SREQDAYS,',
'       n.MODELCDE,',
'       --ACTIVFLG,',
'       Decode(n.ACTIVFLG,''Y'',''Yes'',''N'',''No'','''',''-'') ACTIVFLG,',
'       n.MODCRGAM,',
'       n.MODDISAM,',
'       n.CRGPRCNT,',
'       n.COMMGRUP,',
'       n.LABORGRP,',
'       n.MODIFYDT',
'  from NMCRGMAS n'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48665439764257196)
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
,p_detail_link=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP:P73_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>48665439764257196
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48665519307257196)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48665909296257198)
,p_db_column_name=>'SRVCNOPK'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Srvcnopk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48666334306257198)
,p_db_column_name=>'COMPCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48666717323257198)
,p_db_column_name=>'SRVCCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Srvccode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48667125576257198)
,p_db_column_name=>'SRVCNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Service Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48667581694257200)
,p_db_column_name=>'SRVMASCD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Service System'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48909811290836018)
,p_db_column_name=>'SRVSECNM'
,p_display_order=>16
,p_column_identifier=>'AA'
,p_column_label=>'Service System'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48667964552257200)
,p_db_column_name=>'VHLMASCD'
,p_display_order=>26
,p_column_identifier=>'G'
,p_column_label=>'Vhlmascd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48668315641257200)
,p_db_column_name=>'GRPMASCD'
,p_display_order=>36
,p_column_identifier=>'H'
,p_column_label=>'Grpmascd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48668703670257200)
,p_db_column_name=>'SJOBRATE'
,p_display_order=>46
,p_column_identifier=>'I'
,p_column_label=>'Sjobrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48669159297257200)
,p_db_column_name=>'SREQTIME'
,p_display_order=>56
,p_column_identifier=>'J'
,p_column_label=>'Sreqtime'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48669567235257201)
,p_db_column_name=>'RATEDATE'
,p_display_order=>66
,p_column_identifier=>'K'
,p_column_label=>'Ratedate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48669936776257201)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>76
,p_column_identifier=>'L'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48670306346257201)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>86
,p_column_identifier=>'M'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48670787563257201)
,p_db_column_name=>'APPRDATE'
,p_display_order=>96
,p_column_identifier=>'N'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48671121621257203)
,p_db_column_name=>'REMARKSS'
,p_display_order=>106
,p_column_identifier=>'O'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48671536576257203)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>116
,p_column_identifier=>'P'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48671977174257203)
,p_db_column_name=>'LBORCHRG'
,p_display_order=>126
,p_column_identifier=>'Q'
,p_column_label=>'Lborchrg'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48672301673257203)
,p_db_column_name=>'SREQDAYS'
,p_display_order=>136
,p_column_identifier=>'R'
,p_column_label=>'Sreqdays'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48672723379257204)
,p_db_column_name=>'MODELCDE'
,p_display_order=>146
,p_column_identifier=>'S'
,p_column_label=>'Modelcde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48673150014257204)
,p_db_column_name=>'ACTIVFLG'
,p_display_order=>156
,p_column_identifier=>'T'
,p_column_label=>'Active Flag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48673527562257204)
,p_db_column_name=>'MODCRGAM'
,p_display_order=>166
,p_column_identifier=>'U'
,p_column_label=>'Modcrgam'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48673980986257204)
,p_db_column_name=>'MODDISAM'
,p_display_order=>176
,p_column_identifier=>'V'
,p_column_label=>'Moddisam'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48674346648257206)
,p_db_column_name=>'CRGPRCNT'
,p_display_order=>186
,p_column_identifier=>'W'
,p_column_label=>'Crgprcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48674726494257206)
,p_db_column_name=>'COMMGRUP'
,p_display_order=>196
,p_column_identifier=>'X'
,p_column_label=>'Commgrup'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48675175337257206)
,p_db_column_name=>'LABORGRP'
,p_display_order=>206
,p_column_identifier=>'Y'
,p_column_label=>'Laborgrp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48675555232257206)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>216
,p_column_identifier=>'Z'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48677755695262825)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'486778'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SRVCNAME:SRVSECNM:REMARKSS:ACTIVFLG:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46321291013028246)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46321192790028245)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48676940290257207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(48665048510257196)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48675925239257207)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48665048510257196)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48676474722257207)
,p_event_id=>wwv_flow_api.id(48675925239257207)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48665048510257196)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46321316746028247)
,p_name=>'close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46321291013028246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46321451521028248)
,p_event_id=>wwv_flow_api.id(46321316746028247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48908319809836003)
,p_name=>'Remove Cross Sign'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48908469198836004)
,p_event_id=>wwv_flow_api.id(48908319809836003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.component_end;
end;
/
