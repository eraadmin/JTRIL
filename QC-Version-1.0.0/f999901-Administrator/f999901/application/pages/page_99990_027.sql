prompt --application/pages/page_99990_027
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>9999010100
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Recent Activity Log'
,p_alias=>'RECENT-ACTIVITY-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Recent Activity Log'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220620170015'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39508847702878556)
,p_plug_name=>'Recent Activity Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from APEX_WORKSPACE_ACTIVITY_LOG'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Recent Activity Log'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(39508968022878556)
,p_name=>'Recent Activity Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MUKUL'
,p_internal_uid=>39508968022878556
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39509344073878558)
,p_db_column_name=>'WORKSPACE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workspace'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39509724845878559)
,p_db_column_name=>'WORKSPACE_DISPLAY_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Workspace Display Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39510119246878559)
,p_db_column_name=>'APEX_USER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apex User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39510526097878559)
,p_db_column_name=>'APPLICATION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39510983797878560)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Application Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39511318542878560)
,p_db_column_name=>'APPLICATION_SCHEMA_OWNER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Application Schema Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39511769420878560)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39512141691878561)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39512526499878561)
,p_db_column_name=>'VIEW_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'View Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39512924018878561)
,p_db_column_name=>'THINK_TIME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Think Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39513347822878561)
,p_db_column_name=>'SECONDS_AGO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Seconds Ago'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39513781903878562)
,p_db_column_name=>'LOG_CONTEXT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Log Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39514100145878562)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Elapsed Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39514546227878562)
,p_db_column_name=>'ROWS_QUERIED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rows Queried'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39514985110878562)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39515317936878563)
,p_db_column_name=>'AGENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39515770722878563)
,p_db_column_name=>'APEX_SESSION_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Apex Session Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39516192622878563)
,p_db_column_name=>'APPLICATION_TENANT_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Application Tenant Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39516501879878564)
,p_db_column_name=>'ERROR_MESSAGE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Error Message'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39516994262878564)
,p_db_column_name=>'ERROR_ON_COMPONENT_TYPE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Error On Component Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39517312934878564)
,p_db_column_name=>'ERROR_ON_COMPONENT_NAME'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Error On Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39517764886878564)
,p_db_column_name=>'PAGE_VIEW_MODE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Page View Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39518130093878565)
,p_db_column_name=>'APPLICATION_INFO'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Application Info'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39518529184878565)
,p_db_column_name=>'INTERACTIVE_REPORT_ID'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Interactive Report Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39518983352878565)
,p_db_column_name=>'IR_SAVED_REPORT_ID'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Ir Saved Report Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39519329394878566)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Ir Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39519781922878566)
,p_db_column_name=>'WS_APPLICATION_ID'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Ws Application Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39520132340878566)
,p_db_column_name=>'WS_PAGE_ID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Ws Page Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39520564035878566)
,p_db_column_name=>'WS_DATAGRID_ID'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Ws Datagrid Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39520917339878567)
,p_db_column_name=>'CONTENT_LENGTH'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Content Length'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39521396433878567)
,p_db_column_name=>'REGIONS_FROM_CACHE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Regions From Cache'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39521709078878567)
,p_db_column_name=>'WORKSPACE_ID'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Workspace Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39522181383878568)
,p_db_column_name=>'PAGE_VIEW_TYPE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Page View Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39522594965878568)
,p_db_column_name=>'REQUEST_VALUE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Request Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39522972435878568)
,p_db_column_name=>'DEBUG_PAGE_VIEW_ID'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Debug Page View Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39523351886878569)
,p_db_column_name=>'VIEW_TIMESTAMP'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'View Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39523704317878569)
,p_db_column_name=>'ECID'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Ecid'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.component_end;
end;
/
