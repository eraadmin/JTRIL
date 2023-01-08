prompt --application/pages/page_10025_013
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500415
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Material Requisition (Department)'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103191951'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105556346790426903)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(41540688182999803)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148263530882201822)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(105556346790426903)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(152200231187886311)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(148263530882201822)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
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
'       c013 POSTFLAG',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
' ORDER BY sl'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41294735689227434)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Serial No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41295167004227434)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41295533866227435)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41295923695227435)
,p_query_column_id=>4
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41296398951227435)
,p_query_column_id=>5
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41296769207227437)
,p_query_column_id=>6
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41297112916227437)
,p_query_column_id=>7
,p_column_alias=>'LUOMCODE_DESC'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41297590294227437)
,p_query_column_id=>8
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41297925521227439)
,p_query_column_id=>9
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>8
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41298302633227439)
,p_query_column_id=>10
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41298723685227439)
,p_query_column_id=>11
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41299138331227440)
,p_query_column_id=>12
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>12
,p_column_heading=>'Request Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41299503997227440)
,p_query_column_id=>13
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>13
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41299937435227440)
,p_query_column_id=>14
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>14
,p_column_heading=>'Submit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(7533453041907249696)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152196699602885002)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(105556346790426903)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41292914343227428)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(105556346790426903)
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
 p_id=>wwv_flow_api.id(41293379105227428)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(105556346790426903)
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
 p_id=>wwv_flow_api.id(41293726096227428)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(105556346790426903)
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
 p_id=>wwv_flow_api.id(41310750821227450)
,p_branch_name=>'Go To Page 413'
,p_branch_action=>'f?p=&APP_ID.:&P1002500415_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(41310373034227450)
,p_branch_name=>'Go To Page 414'
,p_branch_action=>'f?p=&APP_ID.:&P1002500415_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(41293726096227428)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41300607896227442)
,p_name=>'P1002500415_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41301036145227442)
,p_name=>'P1002500415_WARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_prompt=>'Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41301467718227442)
,p_name=>'P1002500415_COSTCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41301851371227443)
,p_name=>'P1002500415_SRCWARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41302281951227443)
,p_name=>'P1002500415_SRCWARENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_prompt=>'Source Warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41302656004227443)
,p_name=>'P1002500415_APRPERSON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41303046125227443)
,p_name=>'P1002500415_APRPERSNM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P1002500415_APRPERSON'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41303481064227443)
,p_name=>'P1002500415_DOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41303819317227445)
,p_name=>'P1002500415_DOCTDATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41304231098227445)
,p_name=>'P1002500415_STATUSCD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41304690015227445)
,p_name=>'P1002500415_PREVPAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41305046188227445)
,p_name=>'P1002500415_NEXTPAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(152196699602885002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41308366694227448)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41292914343227428)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41308896405227450)
,p_event_id=>wwv_flow_api.id(41308366694227448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41309393453227450)
,p_event_id=>wwv_flow_api.id(41308366694227448)
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
 p_id=>wwv_flow_api.id(41309845187227450)
,p_event_id=>wwv_flow_api.id(41308366694227448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41306236906227446)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 DOCTDATE,',
'   		  c002 WARECODE, ',
'		  c002 ||''-''|| c003 warename,',
'          c004 SRCWARECODE, ',
'		  c004 ||''-''|| c005 srcwarename,',
'          c006 APRPERSON,',
'          c007 APRPERSNM,',
'          c008 COSTCODE',
'     INTO :P1002500415_DOCTDATE, :P1002500415_WARECODE, :P1002500415_WARENAME, :P1002500415_SRCWARECODE, :P1002500415_SRCWARENAME, :P1002500415_APRPERSON, :P1002500415_APRPERSNM, :P1002500415_COSTCODE',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41307046740227446)
,p_process_sequence=>10
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
'               --c006 LUOMCODE_DESC,',
'               c007 ITEMTYPE,',
'               c008 COSTRATE,',
'               c009 SALERATE,',
'               c010 COMMCODE,',
'               c011 ORGNQNTY,',
'               c012 REMARKS,',
'               c013 POSTFLAG',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'loop',
'    dpr_insert_nmstkrec (',
'       P_COMPCODE        => :COMPCODE,',
'       P_DOCTTYPE        => :DOCTTYPE,',
'       P_SUBTTYPE        => :SUBTTYPE,',
'       P_DOCNUMBR        => :P1002500415_DOCNUMBR,',
'       P_DOCTDATE        => :P1002500415_DOCTDATE,',
'       P_SERLNUMB        => i.SL,',
'       P_PARTYCDE        => NULL,',
'       P_RAISEDBY        => :APP_USER,',
'       P_APPRVDBY        => :P1002500415_APRPERSON,',
'       P_APPRDATE        => NULL,',
'       P_REQDDATE        => sysdate,',
'       P_COMMCODE        => i.COMMCODE,',
'       P_ITEMCODE        => i.ITEMCODE,',
'       P_ITEMTYPE        => NVL(i.ITEMTYPE,''S''),',
'       P_MCSERIAL        => NULL,',
'       P_CMSERIAL        => NULL,',
'       P_ITEMDESC        => i.ITEMDESC,',
'       P_ITEMLONG        => i.ITEMDESC,',
'       P_ITEMRATE        => i.COSTRATE,',
'       P_DISCPCNT        => NULL,',
'       P_DISCAMNT        => NULL,',
'       P_SPLDISPC        => NULL,',
'       P_SPLDISNT        => NULL,',
'       P_SALERATE        => i.SALERATE,',
'       P_HUOMCODE        => NVL(i.HUOMCODE,i.LUOMCODE),',
'       P_FACTRVAL        => NULL,',
'       P_LUOMCODE        => NVL(i.LUOMCODE,i.HUOMCODE),',
'       P_ORGNQNTY        => i.ORGNQNTY,',
'       P_APPRQNTY        => i.ORGNQNTY,',
'       P_TRNSQNTY        => NULL,',
'       P_TRNSQTY2        => NULL,',
'       P_MSFCAMNT        => NULL,',
'       P_CURRCODE        => ''BDT'',',
'       P_EXCGRATE        => 1,',
'       P_MSLCAMNT        => NULL,',
'       P_ADJAMTLC        => NULL,',
'       P_REFNUMBR        => NULL,',
'       P_REFNDATE        => sysdate,',
'       P_UPDOCTYP        => NULL,',
'       P_UPSUBTYP        => NULL,',
'       P_UPDOCNUM        => NULL,',
'       P_UPDOCDTE        => NULL,',
'       P_UPDOCSRL        => NULL,',
'       P_DWDOCTYP        => NULL,',
'       P_DWSUBTYP        => NULL,',
'       P_DWDOCNUM        => NULL,',
'       P_DWDOCDTE        => NULL,',
'       P_DWDOCSRL        => NULL,',
'       P_ACDOCTYP        => NULL,',
'       P_ACSUBTYP        => NULL,',
'       P_ACDOCNUM        => NULL,',
'       P_ACDOCDTE        => NULL,',
'       P_ACDOCSRL        => NULL,',
'       P_REMARKSS        => i.REMARKS,',
'       P_COSTCODE        => :P1002500415_COSTCODE,',
'       P_WARECODE        => :P1002500415_WARECODE,',
'       P_POSTFLAG        => i.POSTFLAG,',
'       P_PRNTFLAG        => NULL,',
'       P_PRICFLAG        => ''N'',',
'       P_PRINTCNT        => NULL,',
'       P_BALNFLAG        => NULL,',
'       P_RATVFLAG        => NULL,',
'       P_STATUSCD        => :P1002500415_STATUSCD,',
'       P_TCSTPCNT        => NULL,',
'       P_DIVNCODE        => NULL,',
'       P_TECHNICN        => NULL,',
'       P_ENGINEER        => NULL,',
'       P_AMENDSRL        => NULL,',
'       P_MATLTYPE        => NULL,',
'       P_BOQREFER        => NULL,',
'       P_MFRGDATE        => NULL,',
'       P_MFRGTIME        => NULL,',
'       P_PARNTITM        => NULL,',
'       P_INDTFLAG        => NULL,',
'       P_OPRSTAMP        => :APP_USER,',
'       P_TIMSTAMP        => SYSDATE,',
'       P_BATCHNUM        => :P1002500415_DOCNUMBR,',
'       P_BATCHEXP        => NULL,',
'       P_BATCHDTE        => NULL,',
'       P_NORMRATE        => NULL,',
'       P_SRVCTRCN        => NULL,',
'       P_DGNITMFK        => NULL,',
'       P_STKRCFK1        => NULL,',
'       P_COSTRATE        => i.COSTRATE,',
'       P_AVRGRATE        => NULL,',
'       P_SERIALST        => NULL,',
'       P_SERIALEN        => NULL,',
'       P_BOM_NO          => NULL,',
'       P_COLORCDE        => NULL,',
'       P_SRCWRECD        => :P1002500415_SRCWARECODE,',
'       P_SNDPERSN        => NULL,',
'       P_INVNUMFK        => NULL,',
'       P_SRCCMPCD        => NULL,',
'       P_SPCLRATE        => NULL,',
'       P_LOSTSALE        => NULL,',
'       P_NEGITMFK        => NULL,',
'       P_COUNT           => NULL,',
'       P_ENGINE_NO       => NULL,',
'       P_SALEPERC        => NULL,',
'       P_BILLPARTY       => NULL,',
'       P_LSTPURRT        => NULL,',
'       P_LSTPURDT        => NULL,',
'       P_WGTUOMCD        => NULL,',
'       P_WGHTQNTY        => NULL,',
'       P_MODIFYDT        => NULL,',
'       P_DEFECTQT        => NULL,',
'       P_MINSRATE        => NULL,',
'       P_NEW_COSTRATE    => NULL,',
'       P_SRC_BATCHNUM    => NULL,',
'       P_REFITEM         => NULL',
'       );',
'',
'    IF i.POSTFLAG=''Y'' THEN',
'        BEGIN',
'           dpr_insert_approval (:COMPCODE,',
'                                :P1002500415_DOCNUMBR,',
'                                :DOCTTYPE,',
'                                :SUBTTYPE);',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'            raise_application_error(-20001,''insert nmreqapr ''||sqlcode||'' ''||sqlerrm);',
'        END;     ',
'    END IF;                         ',
'end loop;',
'    ',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41306683714227446)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'begin',
'',
'    docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                         :SUBTTYPE, :P1002500415_DOCTDATE, :P1002500415_WARECODE,',
'                         ''NM'', newno); ',
'    :P1002500415_DOCNUMBR:= newno; ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P1002500415_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41305833224227445)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P1002500415_STATUSCD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41305415652227445)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P2',
'  INTO :P1002500415_NEXTPAGE, :P1002500415_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
