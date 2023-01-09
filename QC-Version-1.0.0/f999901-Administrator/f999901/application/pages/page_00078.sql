prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Account Group Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Account Group Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220120133403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48975235755089581)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       DECODE(TYPECODE,''CSP'',''Consumption'',''SAL'',''Sales'',''STK'',''Stock'',''STA'',''Stock Adjusment'') TYPECODE,',
'       GRUPCODE,',
'       ACCTCODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       JOBTYPFL,',
'       MODIFYDT,',
'       (  SELECT ACCTCODE||'' - ''||ACCTNAME',
'    FROM SYCHRTAC',
'   WHERE COMPCODE = :COMPCODE ',
'     AND HEADFLAG = ''N''',
'     AND ACCTCODE = A.ACCTCODE) ACCOUNT_NAME',
'  from NMACTGRP A',
'  where COMPCODE=:COMPCODE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'COMPCODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48975680310089581)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_select_columns=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:RP:P79_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMIN'
,p_internal_uid=>48975680310089581
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48975789216089582)
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
 p_id=>wwv_flow_api.id(48976163256089582)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48976500698089582)
,p_db_column_name=>'TYPECODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48976953928089582)
,p_db_column_name=>'GRUPCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Group Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48977366081089584)
,p_db_column_name=>'ACCTCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48977724048089584)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48978157508089584)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48978555065089584)
,p_db_column_name=>'JOBTYPFL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Job Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48978900838089585)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48452699033051249)
,p_db_column_name=>'ACCOUNT_NAME'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Account Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48983393251102957)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'489834'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TYPECODE:GRUPCODE:ACCTCODE:ACCOUNT_NAME:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(98063238681493893)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49094502812404320)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(98063238681493893)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:RP,78::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49092994800404318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(98063238681493893)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48979323173089585)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(48975235755089581)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48979894697089585)
,p_event_id=>wwv_flow_api.id(48979323173089585)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(48975235755089581)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48452310605051246)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49092994800404318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48452468284051247)
,p_event_id=>wwv_flow_api.id(48452310605051246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49107071874468607)
,p_name=>'close X button from dialog page'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49107400436468609)
,p_event_id=>wwv_flow_api.id(49107071874468607)
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
