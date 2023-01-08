prompt --application/pages/page_00446
begin
--   Manifest
--     PAGE: 00446
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
 p_id=>446
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Reconciliation Details'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'th#MIGRATED_OPENING,',
'td[headers=MIGRATED_OPENING]',
'{',
'  width:40px;',
'}',
'',
'th#OPENING_BALANCE,',
'td[headers=OPENING_BALANCE]',
'{',
'  width:40px;',
'}',
'',
'th#CLOSING_BALANCE,',
'td[headers=CLOSING_BALANCE]',
'{',
'  width:40px;',
'}',
''))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_page_comment=>'without wizard page no 76'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200916191849'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160986605261587348)
,p_plug_name=>'Doc Info'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(249764449951543891)
,p_plug_name=>'Stock Ledger Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM SL,',
'       COMPCODE,',
'       WARECODE,',
'       DOCTDATE,',
'       ITEMCODE,',
'       BATCHNUM,',
'       OPENING_BALANCE,',
'       MIGRATED_OPENING,',
'       TOTAL_PURCHASE,',
'       TRANSFER_RECEIPT,',
'       TOTAL_ISSUE,',
'       TOTAL_ISSUE_RETURN,',
'       TOTAL_PURCHASE_RETURN,',
'       TOTAL_SALES,',
'       SALES_RETURN,',
'       CLOSING_BALANCE,',
'       CLOSING_RATE,',
'       CLOSING_VALUE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       SERIALST,',
'       SERIALEN,',
'       UPDATE_TIMESTAMP,',
'       SERVICE_ISSUE,',
'       OPENING_TRANSIT,',
'       TRANSIT_RECEIPT,',
'       TRANSIT_QTY,',
'       TRANSIT_ISSUE,',
'       CLOSING_TRANSIT',
'  FROM NMSTOCK_LEDGER     ',
' WHERE ITEMCODE = NVL ( :P446_ITEMCODE, itemcode)',
'   AND BATCHNUM = NVL ( :P446_BATCHNUM, batchnum)',
'   AND COMPCODE = :COMPCODE',
'   AND WARECODE = NVL ( :P446_WARECODE, warecode)       '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P446_WARECODE,P446_ITEMCODE,P446_BATCHNUM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(249764853208543892)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>249764853208543892
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536908595103822)
,p_db_column_name=>'SL'
,p_display_order=>10
,p_column_identifier=>'CA'
,p_column_label=>'SL'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54519049082096278)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54518671657096276)
,p_db_column_name=>'WARECODE'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54509088039096257)
,p_db_column_name=>'COMPCODE'
,p_display_order=>40
,p_column_identifier=>'AB'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54517032636096276)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>50
,p_column_identifier=>'AV'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54516232743096275)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>60
,p_column_identifier=>'AT'
,p_column_label=>'Date Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy hh:mi:ss AM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54515890047096275)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>70
,p_column_identifier=>'AS'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54233910269726546)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>80
,p_column_identifier=>'BE'
,p_column_label=>'Doc Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54234017410726547)
,p_db_column_name=>'OPENING_BALANCE'
,p_display_order=>90
,p_column_identifier=>'BF'
,p_column_label=>'Opening Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
,p_static_id=>'OPENING_BALANCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54234155719726548)
,p_db_column_name=>'MIGRATED_OPENING'
,p_display_order=>100
,p_column_identifier=>'BG'
,p_column_label=>'Migrated Opening'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
,p_static_id=>'MIGRATED_OPENING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54234234394726549)
,p_db_column_name=>'TOTAL_PURCHASE'
,p_display_order=>110
,p_column_identifier=>'BH'
,p_column_label=>'Total Purchase'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54234322759726550)
,p_db_column_name=>'TRANSFER_RECEIPT'
,p_display_order=>120
,p_column_identifier=>'BI'
,p_column_label=>'Transfer Receipt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54534835246103801)
,p_db_column_name=>'TOTAL_ISSUE'
,p_display_order=>130
,p_column_identifier=>'BJ'
,p_column_label=>'Total Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54534924948103802)
,p_db_column_name=>'TOTAL_ISSUE_RETURN'
,p_display_order=>140
,p_column_identifier=>'BK'
,p_column_label=>'Issue Return'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535073260103803)
,p_db_column_name=>'TOTAL_PURCHASE_RETURN'
,p_display_order=>150
,p_column_identifier=>'BL'
,p_column_label=>'Total Purchase Return'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535135799103804)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>160
,p_column_identifier=>'BM'
,p_column_label=>'Total Sales'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535225977103805)
,p_db_column_name=>'SALES_RETURN'
,p_display_order=>170
,p_column_identifier=>'BN'
,p_column_label=>'Sales Return'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535342353103806)
,p_db_column_name=>'CLOSING_BALANCE'
,p_display_order=>180
,p_column_identifier=>'BO'
,p_column_label=>'Closing Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
,p_static_id=>'CLOSING_BALANCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535404747103807)
,p_db_column_name=>'CLOSING_RATE'
,p_display_order=>190
,p_column_identifier=>'BP'
,p_column_label=>'Closing Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535580769103808)
,p_db_column_name=>'CLOSING_VALUE'
,p_display_order=>200
,p_column_identifier=>'BQ'
,p_column_label=>'Closing Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G99G99G99G99G99G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535685970103809)
,p_db_column_name=>'SERIALST'
,p_display_order=>210
,p_column_identifier=>'BR'
,p_column_label=>'Serialst'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535751336103810)
,p_db_column_name=>'SERIALEN'
,p_display_order=>220
,p_column_identifier=>'BS'
,p_column_label=>'Serialen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535882905103811)
,p_db_column_name=>'UPDATE_TIMESTAMP'
,p_display_order=>230
,p_column_identifier=>'BT'
,p_column_label=>'Update Timestamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54535969009103812)
,p_db_column_name=>'SERVICE_ISSUE'
,p_display_order=>240
,p_column_identifier=>'BU'
,p_column_label=>'Service Issue'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536073613103813)
,p_db_column_name=>'OPENING_TRANSIT'
,p_display_order=>250
,p_column_identifier=>'BV'
,p_column_label=>'Opening Transit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536197944103814)
,p_db_column_name=>'TRANSIT_RECEIPT'
,p_display_order=>260
,p_column_identifier=>'BW'
,p_column_label=>'Transit Receipt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536238061103815)
,p_db_column_name=>'TRANSIT_QTY'
,p_display_order=>270
,p_column_identifier=>'BX'
,p_column_label=>'Transit Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536375862103816)
,p_db_column_name=>'TRANSIT_ISSUE'
,p_display_order=>280
,p_column_identifier=>'BY'
,p_column_label=>'Transit Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54536429677103817)
,p_db_column_name=>'CLOSING_TRANSIT'
,p_display_order=>290
,p_column_identifier=>'BZ'
,p_column_label=>'Closing Transit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(249770135124543897)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'545210'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SL:DOCTDATE:MIGRATED_OPENING:OPENING_BALANCE:TOTAL_PURCHASE:TRANSFER_RECEIPT:TOTAL_ISSUE:TOTAL_ISSUE_RETURN:TOTAL_SALES:SALES_RETURN:CLOSING_BALANCE:CLOSING_RATE:CLOSING_VALUE:TIMSTAMP:'
,p_sum_columns_on_break=>'MIGRATED_OPENING:OPENING_BALANCE:TOTAL_PURCHASE:TRANSFER_RECEIPT:TOTAL_ISSUE:TOTAL_ISSUE_RETURN:TOTAL_SALES:SALES_RETURN:CLOSING_BALANCE:CLOSING_RATE:CLOSING_VALUE'
,p_count_columns_on_break=>'SL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54525219368096296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(249764449951543891)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54506387888096228)
,p_name=>'P446_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54506736723096237)
,p_name=>'P446_COSTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54507135094096240)
,p_name=>'P446_COSTDSC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54507523126096240)
,p_name=>'P446_ITEMCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'ITEM LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||'' - ''||itemdes2 d, a.itemcode r ',
' FROM nmitemas a',
'WHERE compcode = :compcode ',
'  AND statuscd = ''ACT''',
'ORDER BY itemcode'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54507917521096240)
,p_name=>'P446_BATCHNUM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT (batchnum) d, batchnum r',
'  FROM nmstkmas',
' WHERE compcode = :compcode',
'   AND itemcode = NVL ( :P446_ITEMCODE, itemcode)',
'   AND warecode = NVL ( :P446_WARECODE, warecode)',
'ORDER BY 1'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT (batchnum)',
'    FROM nmstkmas',
'   WHERE     compcode = :compcode',
'         AND itemcode = NVL ( :P446_ITEMCODE, itemcode)',
'         AND warecode = NVL ( :P446_WARECODE, warecode)',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54508367757096245)
,p_name=>'P446_DOCDT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54537059570103823)
,p_name=>'P446_WAREDESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(160986605261587348)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54527550287096310)
,p_name=>'set costdesc'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P446_WARECODE'
,p_condition_element=>'P446_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54528029856096315)
,p_event_id=>wwv_flow_api.id(54527550287096310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT warecode||''-''||waredesc',
'  INTO :P446_WAREDESC',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P446_WARECODE;',
'EXCEPTION',
'    when others then null;',
'END;'))
,p_attribute_02=>'P446_WARECOD'
,p_attribute_03=>'P446_WAREDESC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT costcode',
'  INTO :P446_COSTCODE',
'  FROM nmwhsmas',
' WHERE compcode = :COMPCODE',
' AND warecode = :P446_WARECODE;',
' ',
' SELECT COSTCODE||''-''||COSTDESC',
'  INTO :P446_COSTDSC',
'  FROM syjobmas',
' WHERE compcode = :COMPCODE',
'   AND COSTCODE = :P446_COSTCODE;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65198979713754912)
,p_name=>'close dialog'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(54525219368096296)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65199022271754913)
,p_event_id=>wwv_flow_api.id(65198979713754912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
