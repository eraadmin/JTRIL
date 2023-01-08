prompt --application/pages/page_00457
begin
--   Manifest
--     PAGE: 00457
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
 p_id=>457
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Cost Finalization (PO) Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Cost Finalization (PO) Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230102151318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70116336744994282)
,p_plug_name=>'Cost Finalization (PO) Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT WARECODE,',
'         WAREDESC || ''('' || WARECODE || '')'' WAREHOUSE,',
'         DOCNUMBR,',
'         DOCTTYPE,',
'         SUBTTYPE,',
'         DOCTDATE,',
'         PRTYNAME || ''('' || PARTYCDE || '')'' SUPPLIER,',
'         CURRCODE CURRENCY,',
'         EXCGRATE EXCHANGE_RATE,',
'         AMOUNT_FOREIGN,',
'         AMOUNT_LOCAL,',
'         UPDOCNUM REQUISITION_NO,',
'         ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'     || APEX_UTIL.prepare_url (',
'              ''f?p=&APP_ID.:''',
'           || 49',
'           || '':''',
'           || :app_session',
'           || '':ADD:NO:''',
'           || 49',
'           || '':P''',
'           || 49',
'           || ''_PROGNAME,P''',
'           || 49',
'           || ''_DOCNUMBR,P''',
'           || 49',
'           || ''_DOCTTYPE,P''',
'           || 49',
'           || ''_SUBTTYPE:''',
'           || ''nmlpoprt,''',
'           || docnumbr',
'           || '',''',
'           || docttype',
'           || '',''',
'           || subttype',
'           || '':'')',
'     || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'font-size: 1.0em;',
'font-weight: bold;',
'text-transform: Initcap;',
'padding: 3px 13px;',
'margin: 1px auto;',
'color: #ccc;',
'background-color: #555;',
'background: -webkit-linear-gradient(#888, #555);',
'background: linear-gradient(#888, #555);',
'border: 0 none;',
'border-radius: 3px;',
'text-shadow: 0 -1px 0 #000;',
'box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'cursor: pointer;',
'-webkit-transition: all 150ms ease;',
'transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>''',
'        print_column',
'    FROM V_PENDING_COST_FINALIZE',
'   WHERE COMPCODE = :COMPCODE',
'     AND DOCTTYPE = NVL ( :DOCTTYPE, ''LP'')',
'     AND SUBTTYPE in (1,2) --= NVL ( :SUBTTYPE, 1)',
'     AND POSTFLAG = ''Y''',
'     AND statuscd = ''APR''',
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
 p_id=>wwv_flow_api.id(70116711755994282)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100'
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
,p_detail_link=>'f?p=&APP_ID.:458:&SESSION.::&DEBUG.:RP:P458_DOCNUMBR,P458_DOCTDATE,P458_WARECODE,P458_UPDOCNUM,P458_CURRCODE,P458_EXCGRATE,P458_PARTYCDE,P458_FCAMT,P458_LCAMT,P458_WAREHOUSE,P458_SUBTTYPE:#DOCNUMBR#,#DOCTDATE#,#WARECODE#,#REQUISITION_NO#,#CURRENCY#,#'
||'EXCHANGE_RATE#,#SUPPLIER#,#AMOUNT_LOCAL#,#AMOUNT_FOREIGN#,#WAREHOUSE#,#SUBTTYPE#'
,p_detail_link_text=>'<center><span aria-label="Edit" class="u-bold fa fa-edit" aria-hidden="true" title="Edit"></span></center>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(70911974359438204)
,p_owner=>'MONIR'
,p_internal_uid=>70116711755994282
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118408099994285)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'PO No.'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(70118863567994285)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'PO Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71197175867697547)
,p_db_column_name=>'WAREHOUSE'
,p_display_order=>16
,p_column_identifier=>'CS'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71197222744697548)
,p_db_column_name=>'SUPPLIER'
,p_display_order=>26
,p_column_identifier=>'CT'
,p_column_label=>'Supplier'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71197373941697549)
,p_db_column_name=>'CURRENCY'
,p_display_order=>36
,p_column_identifier=>'CU'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71197473141697550)
,p_db_column_name=>'EXCHANGE_RATE'
,p_display_order=>46
,p_column_identifier=>'CV'
,p_column_label=>'Exchange Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71477481505648201)
,p_db_column_name=>'AMOUNT_FOREIGN'
,p_display_order=>56
,p_column_identifier=>'CW'
,p_column_label=>'Amount Foreign'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71477580805648202)
,p_db_column_name=>'AMOUNT_LOCAL'
,p_display_order=>66
,p_column_identifier=>'CX'
,p_column_label=>'Amount Local'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(71477608136648203)
,p_db_column_name=>'REQUISITION_NO'
,p_display_order=>76
,p_column_identifier=>'CY'
,p_column_label=>'Requisition No'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(97570341358904201)
,p_db_column_name=>'WARECODE'
,p_display_order=>86
,p_column_identifier=>'CZ'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4098327059111640)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>96
,p_column_identifier=>'DA'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4098436379111641)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>106
,p_column_identifier=>'DB'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14513497848512218)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>116
,p_column_identifier=>'DC'
,p_column_label=>'Print Column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(70909502219394740)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'709096'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:WAREHOUSE:SUPPLIER:CURRENCY:EXCHANGE_RATE:AMOUNT_FOREIGN:AMOUNT_LOCAL:REQUISITION_NO:'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCNUMBR'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69985067306338902)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(70116336744994282)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(69985167010338903)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(70116336744994282)
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
 p_id=>wwv_flow_api.id(69985229330338904)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(69985167010338903)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69985309689338905)
,p_event_id=>wwv_flow_api.id(69985229330338904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(71479858169648225)
,p_name=>'refresh on close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(70116336744994282)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(71479933824648226)
,p_event_id=>wwv_flow_api.id(71479858169648225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70116336744994282)
);
wwv_flow_api.component_end;
end;
/
