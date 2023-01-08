prompt --application/pages/page_00472
begin
--   Manifest
--     PAGE: 00472
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
 p_id=>472
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Campaign Stock Return Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Campaign Stock Return Report'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103152306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145811082256870232)
,p_plug_name=>'Campaign Stock Return'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            id,',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            AS docdetail,',
'         a.docttype,',
'         a.subttype,',
'         --COUNT (a.itemcode) unit,',
'         APEX_ITEM.checkbox (1,',
'                             a.docnumbr,',
'                             ''onchange="spCheckChange(this);"'',',
'                             :f_empno_list,',
'                             '','')',
'            checkbox,',
'         APEX_ITEM.checkbox2 (11, a.docnumbr) delcheckbox,',
'         a.docnumbr AS docnumbr,',
'         a.doctdate AS doctdate,',
'         --LISTAGG (a.itemcode, '', '') WITHIN GROUP (ORDER BY a.itemcode) itemcode,',
'         --LISTAGG (a.itemdesc, '', '') WITHIN GROUP (ORDER BY a.itemdesc) itemdesc,',
'         a.statuscd AS statuscd,',
'         NVL (SUM (a.apprqnty), 0) Request_Qty,',
'         NVL (SUM (a.TRNSQNTY), 0) Sales_Qty,',
'         NVL (SUM (a.RETRNQTY), 0) Return_Qty,',
'         (SELECT INITCAP (a.raisedby || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.raisedby)',
'            raisedby,',
'         a.warecode,',
'         INITCAP ( (SELECT a.warecode || '' - '' || INITCAP (waredesc)',
'                      FROM nmwhsmas',
'                     WHERE warecode = a.warecode AND compcode = a.compcode))',
'            "Ware House",',
'         NULL post_status,',
'         costcode,',
'         INITCAP ( (SELECT costcode || '' - '' || INITCAP (costdesc)',
'                      FROM SYJOBMAS_SUB',
'                     WHERE costcode = a.SUB_COSTCODE AND compcode = a.compcode))',
'            "Sales Point",',
'         dfn_smanname (a.engineer, a.compcode) smanname,',
'         --a.batchnum,',
'            ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'         || APEX_UTIL.prepare_url (',
'                  ''f?p=&APP_ID.:''',
'               || 49',
'               || '':''',
'               || :app_session',
'               || '':ADD:NO:''',
'               || 49',
'               || '':P''',
'               || 49',
'               || ''_PROGNAME,P''',
'               || 49',
'               || ''_DOCNUMBR,P''',
'               || 49',
'               || ''_DOCTTYPE,P''',
'               || 49',
'               || ''_SUBTTYPE:''',
'               || ''nmlpoprt,''',
'               || a.docnumbr',
'               || '',''',
'               || a.docttype',
'               || '',''',
'               || a.subttype',
'               || '':'')',
'         || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>''',
'            print_column',
'    FROM NMSTKMOV a',
'   WHERE     a.compcode = :compcode',
'         AND a.docttype = :P472_PRDOCTYP',
'         AND a.subttype = :P472_PRSUBTYP',
'         AND a.statuscd = ''APR''',
'         AND (a.apprqnty - NVL(a.TRNSQNTY,0)) - NVL(a.RETRNQTY,0) > 0',
'         AND (a.costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE compcode = :compcode AND grupcode = :app_user))',
'GROUP BY a.compcode,',
'         a.raisedby,',
'         a.warecode,',
'         a.costcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         --a.batchnum,',
'         a.statuscd,',
'         a.SUB_COSTCODE,',
'         a.engineer',
'ORDER BY a.doctdate DESC, a.docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P472_PRDOCTYP,P472_PRSUBTYP'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(145811457267870232)
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
,p_detail_link=>'f?p=&APP_ID.:473:&SESSION.::&DEBUG.:RP:P473_DOCNUMBR,P473_DOCTDATE,P473_WARECODE,P473_WAREHOUSE,P473_COSTCODE,P473_SHOWROOM,P473_SMANNAME:#DOCNUMBR#,#DOCTDATE#,#WARECODE#,#Ware House#,#COSTCODE#,#Sales Point#,#SMANNAME##WAREHOUSE#,#REQUISITION_NO#,#C'
||'URRENCY#,#EXCHANGE_RATE#,#SUPPLIER#,#AMOUNT_LOCAL#,#AMOUNT_FOREIGN#'
,p_detail_link_text=>'<span aria-label="Edit" class="u-bold fa fa-edit" aria-hidden="true" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(70911486113438203)
,p_owner=>'MONIR'
,p_internal_uid=>145811457267870232
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714080427381504)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'CZ'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75695344651875951)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'PO No.'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714277315381506)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>30
,p_column_identifier=>'DB'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714318204381507)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>40
,p_column_identifier=>'DC'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714135602381505)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>50
,p_column_identifier=>'DA'
,p_column_label=>'Document Detail'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75695721818875953)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(78096563775665616)
,p_db_column_name=>'SMANNAME'
,p_display_order=>70
,p_column_identifier=>'DS'
,p_column_label=>'Request By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715103248381515)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>80
,p_column_identifier=>'DK'
,p_column_label=>'Raised By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715245041381516)
,p_db_column_name=>'WARECODE'
,p_display_order=>90
,p_column_identifier=>'DL'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715337433381517)
,p_db_column_name=>'Ware House'
,p_display_order=>100
,p_column_identifier=>'DM'
,p_column_label=>'Ware House'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715542797381519)
,p_db_column_name=>'Sales Point'
,p_display_order=>110
,p_column_identifier=>'DO'
,p_column_label=>'Sales Point'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714821629381512)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>120
,p_column_identifier=>'DH'
,p_column_label=>'Request Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714909392381513)
,p_db_column_name=>'SALES_QTY'
,p_display_order=>130
,p_column_identifier=>'DI'
,p_column_label=>'Sales Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715033314381514)
,p_db_column_name=>'RETURN_QTY'
,p_display_order=>140
,p_column_identifier=>'DJ'
,p_column_label=>'Return Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714524267381509)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>150
,p_column_identifier=>'DE'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714630603381510)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>160
,p_column_identifier=>'DF'
,p_column_label=>'Delcheckbox'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74714744012381511)
,p_db_column_name=>'STATUSCD'
,p_display_order=>170
,p_column_identifier=>'DG'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715441257381518)
,p_db_column_name=>'POST_STATUS'
,p_display_order=>180
,p_column_identifier=>'DN'
,p_column_label=>'Post Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74715716992381521)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>190
,p_column_identifier=>'DQ'
,p_column_label=>'Print Column'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74716828675381532)
,p_db_column_name=>'COSTCODE'
,p_display_order=>200
,p_column_identifier=>'DR'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(146604247731270690)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'756989'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:Ware House:SMANNAME:Sales Point:REQUEST_QTY:SALES_QTY:RETURN_QTY:'
,p_sort_column_1=>'DOCNUMBR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCTDATE'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75699308054875956)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(145811082256870232)
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
 p_id=>wwv_flow_api.id(75699783599875956)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(145811082256870232)
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
 p_id=>wwv_flow_api.id(74716225945381526)
,p_name=>'P472_PRDOCTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(145811082256870232)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74716341605381527)
,p_name=>'P472_PRSUBTYP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(145811082256870232)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75700113715875957)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75699783599875956)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75700646771875957)
,p_event_id=>wwv_flow_api.id(75700113715875957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75701087698875957)
,p_name=>'refresh on close dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(145811082256870232)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75701550544875959)
,p_event_id=>wwv_flow_api.id(75701087698875957)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(145811082256870232)
);
wwv_flow_api.component_end;
end;
/
