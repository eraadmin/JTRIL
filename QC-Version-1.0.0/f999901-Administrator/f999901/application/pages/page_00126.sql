prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
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
 p_id=>126
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'STANDARD SELLING PRICE'
,p_alias=>'STANDARD-SELLING-PRICE'
,p_page_mode=>'MODAL'
,p_step_title=>'STANDARD SELLING PRICE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210310105436'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48970715222293544)
,p_plug_name=>'BUTTON REGION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49620937361225673)
,p_plug_name=>'STANDARD SELLING PRICE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COMPCODE, ITEMCODE, ITEMTYPE, ITEMDESC, ITEMLONG, DISCPCNT, DISCAMNT, SALERATE, SPCLRATE, EFFICTIVE_DATE, EXPIRY_DATE, ACTIVE_FLAG, CURRCODE, EXCGRATE, REMARKSS, OPRSTAMP, TIMSTAMP, MODIFYDT',
'FROM NMSLRATE',
'WHERE COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'STANDARD SELLING PRICE'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(49621062931225673)
,p_name=>'STANDARD SELLING PRICE'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>49621062931225673
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49621467360225681)
,p_db_column_name=>'COMPCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Company Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49621830555225689)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49622257231225690)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49622661137225690)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49623077501225690)
,p_db_column_name=>'ITEMLONG'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Itemlong'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49623434716225692)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49623839348225692)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49624215755225692)
,p_db_column_name=>'SALERATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49624664184225693)
,p_db_column_name=>'SPCLRATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Spclrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49625003974225693)
,p_db_column_name=>'EFFICTIVE_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Effictive Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49625413275225693)
,p_db_column_name=>'EXPIRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Expiry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49625851977225693)
,p_db_column_name=>'ACTIVE_FLAG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Active Flag'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49626208215225695)
,p_db_column_name=>'CURRCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49626621728225695)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49627060592225695)
,p_db_column_name=>'REMARKSS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49627458614225695)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49627867199225695)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49628275559225696)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49628666507232920)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'496287'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:ITEMDESC:ITEMTYPE:SALERATE:EFFICTIVE_DATE:EXPIRY_DATE:REMARKSS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48970844072293545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(48970715222293544)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'BACK'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48970926710293546)
,p_name=>'CANCEL DIALOG'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(48970844072293545)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48971022839293547)
,p_event_id=>wwv_flow_api.id(48970926710293546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/