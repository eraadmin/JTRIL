prompt --application/pages/page_00117
begin
--   Manifest
--     PAGE: 00117
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
 p_id=>117
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Discount Rules'
,p_page_mode=>'MODAL'
,p_step_title=>'Discount Rules'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200604225859'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64953269269200617)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ITEMCODE,',
'       DECODE(ACTIVE, ''Y'',''Yes'',''N'',''No'') ACTIVE,',
'       GRPECODE,',
'       COMPCODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       BRANDCDE,',
'       MODLCODE,',
'       STARTDTE,',
'       ENDDATE,',
'       USRIDGRP,',
'       MINDISPCT,',
'       MINDISAMT,',
'       MAXDISPCT,',
'       MAXDISAMT,',
'       (SELECT INITCAP (NMCODDES) ||'' - ''|| NMSOFCDE',
'        FROM NMCODMAS',
'        WHERE COMPCODE = :COMPCODE',
'            AND NMHRDCDE = ''DSG''',
'            AND NMSOFCDE = D.GRPECODE) GROUP_NAME,',
'        (SELECT NMCODDES --||'' - ''|| NMSOFCDE ',
'        FROM NMCODMAS',
'       WHERE COMPCODE = :COMPCODE ',
'           AND MODLCODE = ''NM'' ',
'           AND NMHRDCDE = ''COM''',
'           AND NMSOFCDE = D.BRANDCDE) BRAND_NAME,',
'    ( SELECT NMCODDES       --||'' - ''|| NMSOFCDE',
'      FROM NMCODMAS',
'     WHERE     COMPCODE = :COMPCODE',
'       AND MODLCODE = ''NM''',
'       AND NMHRDCDE = ''MOD''',
'       AND NMSOFCDE = D.MODLCODE) MODEL_NAME,',
'     (SELECT ITEMDES1 ',
'        FROM NMITEMAS',
'        WHERE ITEMCODE = D.ITEMCODE) ITEM_NAME',
'  from NMGRPITM D',
' where COMPCODE = :COMPCODE',
' AND ACTIVE = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(64953696352200617)
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
,p_detail_link=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:RP:P118_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMIN'
,p_internal_uid=>64953696352200617
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64953761187200617)
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
 p_id=>wwv_flow_api.id(64954192379200618)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64954572120200618)
,p_db_column_name=>'ACTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Activity'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64954944508200618)
,p_db_column_name=>'GRPECODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Group Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64955336295200618)
,p_db_column_name=>'COMPCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64955746609200620)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64956100195200620)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64956516137200620)
,p_db_column_name=>'MODLCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Model Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64956974984200620)
,p_db_column_name=>'STARTDTE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64957361761200621)
,p_db_column_name=>'ENDDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Suspend Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64957760581200621)
,p_db_column_name=>'USRIDGRP'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'User'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64958146500200621)
,p_db_column_name=>'MINDISPCT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Min Discount (%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64958505811200621)
,p_db_column_name=>'MINDISAMT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Discount Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64958986321200621)
,p_db_column_name=>'MAXDISPCT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Max Discount (%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64959368262200623)
,p_db_column_name=>'MAXDISAMT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Max Discount Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64821443322864023)
,p_db_column_name=>'BRANDCDE'
,p_display_order=>25
,p_column_identifier=>'Q'
,p_column_label=>'Brand '
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64822135271864030)
,p_db_column_name=>'GROUP_NAME'
,p_display_order=>35
,p_column_identifier=>'R'
,p_column_label=>'Group Name & Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64822274430864031)
,p_db_column_name=>'BRAND_NAME'
,p_display_order=>45
,p_column_identifier=>'S'
,p_column_label=>'Brand Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(64822370313864032)
,p_db_column_name=>'MODEL_NAME'
,p_display_order=>55
,p_column_identifier=>'T'
,p_column_label=>'Model Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67167940911734801)
,p_db_column_name=>'ITEM_NAME'
,p_display_order=>65
,p_column_identifier=>'U'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(64973383140283784)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'649734'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GROUP_NAME:BRAND_NAME:MODEL_NAME:ITEM_NAME:USRIDGRP:ACTIVE:STARTDTE:MINDISPCT:MAXDISPCT:MINDISAMT:MAXDISAMT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130033367426371368)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65085051218170764)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(130033367426371368)
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
 p_id=>wwv_flow_api.id(64960181772200623)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(64953269269200617)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64960652025200623)
,p_event_id=>wwv_flow_api.id(64960181772200623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(64953269269200617)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64821522138864024)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65085051218170764)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64821668211864025)
,p_event_id=>wwv_flow_api.id(64821522138864024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
