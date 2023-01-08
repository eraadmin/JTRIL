prompt --application/pages/page_00470
begin
--   Manifest
--     PAGE: 00470
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
 p_id=>470
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Campaign Stock Return'
,p_page_mode=>'MODAL'
,p_step_title=>'Campaign Stock Return'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'MASUM'
,p_last_upd_yyyymmddhh24miss=>'20200611184338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145775460768827999)
,p_plug_name=>'Campaign Stock Return'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT WAREDESC || ''('' || WARECODE || '')'' WAREHOUSE,',
'         DOCNUMBR,',
'         DOCTDATE,',
'         PRTYNAME || ''('' || PARTYCDE || '')'' SUPPLIER,',
'         CURRCODE CURRENCY,',
'         EXCGRATE EXCHANGE_RATE,',
'         AMOUNT_FOREIGN,',
'         AMOUNT_LOCAL,',
'         UPDOCNUM REQUISITION_NO',
'    FROM V_PENDING_COST_FINALIZE',
'   WHERE COMPCODE = :COMPCODE',
'     AND DOCTTYPE = NVL ( :DOCTTYPE, ''LP'')',
'     AND SUBTTYPE = NVL ( :SUBTTYPE, 1)',
'     AND WARECODE IN (SELECT WARECODE',
'                        FROM SYCSTACC',
'                       WHERE COMPCODE = :COMPCODE ',
'                         AND GRUPCODE = :APP_USER)',
'ORDER BY DOCNUMBR DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(145775835779827999)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>460
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:458:&SESSION.::&DEBUG.:RP:P458_DOCNUMBR,P458_DOCTDATE,P458_WARECODE,P458_UPDOCNUM,P458_CURRCODE,P458_EXCGRATE,P458_PARTYCDE,P458_FCAMT,P458_LCAMT:#DOCNUMBR#,#DOCTDATE#,#WAREHOUSE#,#REQUISITION_NO#,#CURRENCY#,#EXCHANGE_RATE#,#SUPPLIER#,#A'
||'MOUNT_LOCAL#,#AMOUNT_FOREIGN#'
,p_detail_link_text=>'<span aria-label="Edit" class="u-bold fa fa-edit" aria-hidden="true" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(70911974359438204)
,p_owner=>'MONIR'
,p_internal_uid=>145775835779827999
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75659729665833720)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'PO No.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75660108803833720)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'PO Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75660529997833720)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>16
,p_column_identifier=>'CS'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75660920825833721)
,p_db_column_name=>'SUPPLIER'
,p_display_order=>26
,p_column_identifier=>'CT'
,p_column_label=>'Supplier'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75661342741833721)
,p_db_column_name=>'CURRENCY'
,p_display_order=>36
,p_column_identifier=>'CU'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75661727040833721)
,p_db_column_name=>'EXCHANGE_RATE'
,p_display_order=>46
,p_column_identifier=>'CV'
,p_column_label=>'Exchange Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662182545833721)
,p_db_column_name=>'AMOUNT_FOREIGN'
,p_display_order=>56
,p_column_identifier=>'CW'
,p_column_label=>'Amount Foreign'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662599741833723)
,p_db_column_name=>'AMOUNT_LOCAL'
,p_display_order=>66
,p_column_identifier=>'CX'
,p_column_label=>'Amount Local'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662900317833723)
,p_db_column_name=>'REQUISITION_NO'
,p_display_order=>76
,p_column_identifier=>'CY'
,p_column_label=>'Requisition No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(146568626243228457)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'756633'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:WAREHOUSE:SUPPLIER:CURRENCY:EXCHANGE_RATE:AMOUNT_FOREIGN:AMOUNT_LOCAL:REQUISITION_NO'
,p_sort_column_1=>'DOCNUMBR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCTDATE'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75663765465833725)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(145775460768827999)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75664133691833725)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(145775460768827999)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75664586450833725)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75664133691833725)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75665058387833726)
,p_event_id=>wwv_flow_api.id(75664586450833725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75665419738833726)
,p_name=>'refresh on close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(145775460768827999)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75665998027833728)
,p_event_id=>wwv_flow_api.id(75665419738833726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(145775460768827999)
);
wwv_flow_api.component_end;
end;
/
