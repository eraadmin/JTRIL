prompt --application/pages/page_00557
begin
--   Manifest
--     PAGE: 00557
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
 p_id=>557
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_alias=>'CONFIRMATION3'
,p_page_mode=>'MODAL'
,p_step_title=>'Confirmation'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20230101193358'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(251846125202718854)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(36971309856355294)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(294553309294493773)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(251846125202718854)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(298490009600178262)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(294553309294493773)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       c001 SERLNUMB,',
'       c002 ITEMCODE,',
'       c003 ITEMDESC,',
'       c004 LUOMCODE,        ',
'       c005 HUOMCODE,',
'       c006 LUOMCODE_DESC,',
'       c007 ITEMTYPE,',
'       c008 COSTRATE,',
'       c009 SALERATE,',
'       c010 COMMCODE,',
'       c011 ORGNQNTY,',
'       c012 REMARKS,',
'       c013 POSTFLAG,',
'       c014 Last_recieve_qty,',
'       d001 Last_recieve_date,',
'       c015 Last_month_consumption,',
'       c016 present_stock,',
'       d002 required_date',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
' ORDER BY sl'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37013699755368735)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37014069436368736)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37014464406368737)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37014808883368737)
,p_query_column_id=>4
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37015205429368737)
,p_query_column_id=>5
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>54
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37015663560368738)
,p_query_column_id=>6
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>64
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37016009946368738)
,p_query_column_id=>7
,p_column_alias=>'LUOMCODE_DESC'
,p_column_display_sequence=>74
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37016488761368738)
,p_query_column_id=>8
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>94
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37016824851368738)
,p_query_column_id=>9
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>84
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37017268387368738)
,p_query_column_id=>10
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>104
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37017697627368739)
,p_query_column_id=>11
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>114
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37018000141368739)
,p_query_column_id=>12
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>124
,p_column_heading=>'Request Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37018467436368739)
,p_query_column_id=>13
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>184
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37018810916368739)
,p_query_column_id=>14
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>194
,p_column_heading=>'Submit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(7533453041907249696)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37019251528368740)
,p_query_column_id=>15
,p_column_alias=>'LAST_RECIEVE_QTY'
,p_column_display_sequence=>144
,p_column_heading=>'Last Recieve Qty'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37019601441368740)
,p_query_column_id=>16
,p_column_alias=>'LAST_RECIEVE_DATE'
,p_column_display_sequence=>154
,p_column_heading=>'Last Recieve Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37020025461368740)
,p_query_column_id=>17
,p_column_alias=>'LAST_MONTH_CONSUMPTION'
,p_column_display_sequence=>164
,p_column_heading=>'Last Month Consumption'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37020496524368740)
,p_query_column_id=>18
,p_column_alias=>'PRESENT_STOCK'
,p_column_display_sequence=>174
,p_column_heading=>'Present Stock'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37155217463924323)
,p_query_column_id=>19
,p_column_alias=>'REQUIRED_DATE'
,p_column_display_sequence=>134
,p_column_heading=>'Required Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(298486478015176953)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(251846125202718854)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37011834917368734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(251846125202718854)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37012253479368734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(251846125202718854)
,p_button_name=>'FINISH'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Finish?'',''PLACE_ORDER'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37012607117368734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(251846125202718854)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37030307561368746)
,p_branch_name=>'go to success'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.::P1_DOCNUMBR,P1_PROGNAME:&P557_DOCNUMBR.,&PRNTPROG.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37029931938368746)
,p_branch_name=>'Go To Page 414'
,p_branch_action=>'f?p=&APP_ID.:556:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(37012607117368734)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37021120922368741)
,p_name=>'P557_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37021538396368741)
,p_name=>'P557_TRNDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37021930714368741)
,p_name=>'P557_WARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37022364756368741)
,p_name=>'P557_COSTCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37022791927368742)
,p_name=>'P557_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37023106631368742)
,p_name=>'P557_STATUSCD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37023523542368742)
,p_name=>'P557_REFNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37023960418368742)
,p_name=>'P557_REFNDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37024327952368742)
,p_name=>'P557_MIONUM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37024794934368743)
,p_name=>'P557_PREVPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37025133451368743)
,p_name=>'P557_NEXTPAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(298486478015176953)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37027923146368745)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(37011834917368734)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37028426891368745)
,p_event_id=>wwv_flow_api.id(37027923146368745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37028939628368746)
,p_event_id=>wwv_flow_api.id(37027923146368745)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37029414605368746)
,p_event_id=>wwv_flow_api.id(37027923146368745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37025974408368744)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT   c001 TRNDATE,',
'            c002 REFNUMBR,',
'            c003 REFNDATE,',
'            c004 WARECODE, ',
'            c004 ||''-''|| c005 warename,',
'            c006 MIONUM,',
'            c008 COSTCODE',
'     INTO :P557_TRNDATE, :P557_REFNUMBR, :P557_REFNDATE, :P557_WARECODE, :P557_WARENAME, :P557_MIONUM, :P557_COSTCODE',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37027138545368744)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'    for i in',
'    (   SELECT seq_id SL,',
'               c001 SERLNUMB,',
'               c002 ITEMCODE,',
'               c003 ITEMDESC,',
'               c004 LUOMCODE,        ',
'               c005 HUOMCODE,',
'               c006 LUOMCODE_DESC,',
'               c007 ITEMTYPE,',
'               c008 COSTRATE,',
'               c009 SALERATE,',
'               c010 COMMCODE,',
'               c011 ORGNQNTY,',
'               c012 REMARKS,',
'               c013 POSTFLAG,',
'               d002 required_date',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'loop',
'INSERT INTO nmprocur (SERLNUMB,',
'                      ITEMCODE,',
'                      ITEMDESC,',
'                      LUOMCODE,',
'                      HUOMCODE,',
'                      LUOMDESC,',
'                      ITEMTYPE,',
'                      COSTRATE,',
'                      SALERATE,',
'                      COMMCODE,',
'                      ORGNQNTY,',
'                      REMARKSS,',
'                      POSTFLAG,',
'                      ITEMRATE,',
'                      COMPCODE,',
'                      DOCTTYPE,',
'                      SUBTTYPE,',
'                      DOCTDATE,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      RAISEDBY,',
'                      REQDDATE,',
'                      ITEMLONG,',
'                      CURRCODE,',
'                      APPRQNTY,',
'                      --DISCAMNT,',
'                      --MSLCAMNT,',
'                      --MSFCAMNT,',
'                      EXCGRATE,',
'                      REFNUMBR,',
'                      REFNDATE,',
'                      WARECODE,',
'                      COSTCODE,',
'                      STATUSCD,',
'                      PRICFLAG,',
'                      DOCNUMBR',
'                      )',
'                      ',
'              values (i.SL,',
'                      i.ITEMCODE,',
'                      i.ITEMDESC,',
'                      i.LUOMCODE,',
'                      i.HUOMCODE,',
'                      i.LUOMCODE_DESC,',
'                      i.ITEMTYPE,',
'                      i.COSTRATE,',
'                      i.SALERATE,',
'                      i.COMMCODE,',
'                      i.ORGNQNTY,',
'                      i.REMARKS,',
'                      i.POSTFLAG,',
'                      i.COSTRATE,',
'                      :COMPCODE,',
'                      :DOCTTYPE,',
'                      :SUBTTYPE,',
'                      :P557_TRNDATE, --sysdate,',
'                      :APP_USER,',
'                      sysdate,',
'                      :APP_USER,',
'                      i.required_date,',
'                      i.ITEMDESC,',
'                      ''BDT'',',
'                      i.ORGNQNTY,',
'                      --:DISCAMNT,',
'                      --:MSLCAMNT,',
'                      --:MSFCAMNT,',
'                      1,',
'                      :P557_REFNUMBR,',
'                      :P557_REFNDATE,',
'                      :P557_WARECODE,',
'                      :P557_COSTCODE,',
'                      :P557_STATUSCD, --''NEW'',',
'                      ''N'',',
'                      :P557_DOCNUMBR);     ',
'                      ',
'        IF i.POSTFLAG = ''Y'' THEN',
'',
'                BEGIN',
'                   dpr_insert_approval (P_COMPCODE => :COMPCODE,                                        ',
'                                        P_DOCTTYPE => :DOCTTYPE,',
'                                        P_SUBTTYPE => :SUBTTYPE,',
'                                        P_DOCNUMBR => :P557_DOCNUMBR,',
'                                        P_DOCTDATE => :P555_DOCTDATE,',
'                                        P_ITEMCODE => i.ITEMCODE,',
'                                        P_WARECODE => :P555_WARECODE',
'                                        );',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                    raise_application_error(-20001,''Insert in Approval- ''||sqlerrm);',
'                END;     ',
'        END IF;        ',
'',
'    end loop;',
'    ',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37027526258368745)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CleanAll'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37026340837368744)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'begin',
'    docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                         :SUBTTYPE, :P557_TRNDATE, :P557_WARECODE,',
'                         ''NM'', newno); ',
'    :P557_DOCNUMBR:= newno; ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlerrm ||'' - ''|| :COMPCODE  ||'' - ''|| :DOCTTYPE  ||'' - ''||',
'                         :SUBTTYPE ||'' - ''||:P557_TRNDATE ||'' - ''|| :P557_WARECODE);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P557_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37026704477368744)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 29/Dec/22 3:27:16 PM (QP5 v5.287) */',
'BEGIN',
'   PKG_APPROVAL.PRC_CHK_APPRNEED ( :COMPCODE,',
'                                  :DOCTTYPE,',
'                                  :SUBTTYPE,',
'                                  :P557_STATUSCD);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20008,',
'                               ''Unable to Call Approve Status Process. '');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37025536822368743)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P2',
'  INTO :P557_NEXTPAGE, :P557_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
