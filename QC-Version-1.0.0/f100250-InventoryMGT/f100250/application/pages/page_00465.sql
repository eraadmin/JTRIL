prompt --application/pages/page_00465
begin
--   Manifest
--     PAGE: 00465
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
 p_id=>465
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Total Stock Details'
,p_page_mode=>'MODAL'
,p_step_title=>'Total Stock Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210210175455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(284787531016464922)
,p_plug_name=>'Items'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(284787960584464926)
,p_plug_name=>'BUTTONS'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(284796839361523220)
,p_plug_name=>'Total Stock Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WARECODE, ',
'BATCHNUM, ',
'ITEMCODE, ',
'''(''||ITEMCODE||'') - ''||ITEMNAME ITEMNAME, ',
'CLOSING_RATE, ',
'CLOSING_QUANTITY, ',
'CLOSING_VALUE ',
'from VW_NMWHIMAS',
' where COMPCODE =:COMPCODE',
' and WARECODE like nvl(:P465_WARECODE,''%'')',
' and BATCHNUM like nvl(:P465_BATCHNUM,''%'')',
' and ITEMCODE like nvl(:P465_ITEMCODE,''%'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(284796918024523220)
,p_name=>'Total Stock Details'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DHSADM'
,p_internal_uid=>284796918024523220
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123509815462297051)
,p_db_column_name=>'WARECODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123510286864297053)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123510655593297053)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123511063033297053)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123511403118297053)
,p_db_column_name=>'CLOSING_QUANTITY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Closing Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123511889194297054)
,p_db_column_name=>'CLOSING_VALUE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Closing Value'
,p_allow_computations=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123512264487297054)
,p_db_column_name=>'CLOSING_RATE'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Closing Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(284804467819539024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1235126'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WARECODE:BATCHNUM:ITEMCODE:ITEMNAME:CLOSING_QUANTITY:CLOSING_VALUE:CLOSING_RATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123509191623297048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(284787960584464926)
,p_button_name=>'cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123507214100297040)
,p_name=>'P465_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(284787531016464922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123507628541297042)
,p_name=>'P465_WARENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(284787531016464922)
,p_prompt=>'Warehouse : '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123508078311297042)
,p_name=>'P465_BATCHNUM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(284787531016464922)
,p_prompt=>'Batch : '
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123508415870297046)
,p_name=>'P465_ITEMCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(284787531016464922)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123513043587297056)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(123509191623297048)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123513573862297057)
,p_event_id=>wwv_flow_api.id(123513043587297056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
