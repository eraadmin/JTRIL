prompt --application/pages/page_00420
begin
--   Manifest
--     PAGE: 00420
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
 p_id=>420
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_page_mode=>'MODAL'
,p_step_title=>'Confirmation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84811571976197711)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(20041431542371159)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127518756067972630)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(84811571976197711)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(131455456373657119)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(127518756067972630)
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
'       c012 REMARKS',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
' ORDER BY sl'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20549939778998256)
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
 p_id=>wwv_flow_api.id(20550352622998260)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20550770750998260)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20551146001998262)
,p_query_column_id=>4
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>4
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20551510479998262)
,p_query_column_id=>5
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20551928148998262)
,p_query_column_id=>6
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20552374748998264)
,p_query_column_id=>7
,p_column_alias=>'LUOMCODE_DESC'
,p_column_display_sequence=>7
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20552730849998264)
,p_query_column_id=>8
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20553199950998264)
,p_query_column_id=>9
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>8
,p_column_heading=>'Item Rate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20553536201998264)
,p_query_column_id=>10
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20553979451998268)
,p_query_column_id=>11
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20554371963998268)
,p_query_column_id=>12
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>12
,p_column_heading=>'Request Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20554723899998268)
,p_query_column_id=>13
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>13
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131451924788655810)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(84811571976197711)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20547710242998243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(84811571976197711)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20548170677998246)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(84811571976197711)
,p_button_name=>'CANCEL_New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20548592591998253)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(84811571976197711)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Finish?'',''PLACE_ORDER'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20548928803998253)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(84811571976197711)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20565187996998295)
,p_branch_name=>'Go To Page 413'
,p_branch_action=>'f?p=&APP_ID.:&P420_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(20564705727998295)
,p_branch_name=>'Go To Page 414'
,p_branch_action=>'f?p=&APP_ID.:&P420_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(20548928803998253)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20555474147998270)
,p_name=>'P420_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20555883175998276)
,p_name=>'P420_WARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
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
 p_id=>wwv_flow_api.id(20556269110998276)
,p_name=>'P420_COSTCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20556649578998276)
,p_name=>'P420_SRCWARECODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20557041184998278)
,p_name=>'P420_SRCWARENAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_prompt=>'Source Warehouse'
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
 p_id=>wwv_flow_api.id(20557402939998278)
,p_name=>'P420_APRPERSON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20557880317998278)
,p_name=>'P420_APRPERSNM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_prompt=>'Approve Person'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P420_APRPERSON'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20558282469998279)
,p_name=>'P420_DOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20558621563998279)
,p_name=>'P420_PREVPAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20559009506998279)
,p_name=>'P420_NEXTPAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(131451924788655810)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20561894134998292)
,p_name=>'Close Dialg'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20547710242998243)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20562385337998292)
,p_event_id=>wwv_flow_api.id(20561894134998292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20562758922998293)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20548170677998246)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20563205443998293)
,p_event_id=>wwv_flow_api.id(20562758922998293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20563799850998293)
,p_event_id=>wwv_flow_api.id(20562758922998293)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20564265761998293)
,p_event_id=>wwv_flow_api.id(20562758922998293)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20559462421998285)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c002, c002 ||''-''|| c003 warename,',
'          c004, c004 ||''-''|| c005 srcwarename,',
'          c006 APRPERSON,',
'          c007 APRPERSNM,',
'          c008 COSTCODE',
'     INTO :P420_WARECODE, :P420_WARENAME, :P420_SRCWARECODE, :P420_SRCWARENAME, :P420_APRPERSON, :P420_APRPERSNM, :P420_COSTCODE',
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
 p_id=>wwv_flow_api.id(20561025812998290)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P2',
'  INTO :P420_NEXTPAGE, :P420_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20560677993998290)
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
'               c012 REMARKS',
'               --c013 POSTFLAG',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'loop',
'',
'INSERT INTO NMSTKREC (SERLNUMB,',
'                      ITEMCODE,',
'                      ITEMDESC,',
'                      LUOMCODE,',
'                      HUOMCODE,',
'                      --LUOMDESC,',
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
'                      REFNDATE,',
'                      WARECODE,',
'                      SRCWRECD,',
'                      COSTCODE,',
'                      STATUSCD,',
'                      PRICFLAG,',
'                      DOCNUMBR,',
'                      BATCHNUM,',
'                      APPRVDBY',
'                      )',
'                      ',
'              values (i.SL,',
'                      i.ITEMCODE,',
'                      i.ITEMDESC,',
'                      i.LUOMCODE,',
'                      i.HUOMCODE,',
'                      --i.LUOMCODE_DESC,',
'                      i.ITEMTYPE,',
'                      i.COSTRATE,',
'                      i.SALERATE,',
'                      i.COMMCODE,',
'                      i.ORGNQNTY,',
'                      i.REMARKS,',
'                      ''N'', --i.POSTFLAG,',
'                      i.COSTRATE,',
'                      :COMPCODE,',
'                      :DOCTTYPE,',
'                      :SUBTTYPE,',
'                      sysdate,',
'                      :APP_USER,',
'                      sysdate,',
'                      :APP_USER,',
'                      sysdate,',
'                      i.ITEMDESC,',
'                      ''BDT'',',
'                      i.ORGNQNTY,',
'                      --:DISCAMNT,',
'                      --:MSLCAMNT,',
'                      --:MSFCAMNT,',
'                      1,',
'                      sysdate,',
'                      :P420_WARECODE,',
'                      :P420_SRCWARECODE,',
'                      :P420_COSTCODE,',
'                      ''NEW'',',
'                      ''N'',',
'                      :P420_DOCNUMBR,',
'                      :P420_DOCNUMBR,',
'                      :P420_APRPERSON',
'                      );                     ',
'',
'    end loop;',
'    ',
'  -- Truncate the collection after the order has been placed ',
'  apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
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
 p_id=>wwv_flow_api.id(20561478458998290)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20559886322998289)
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
'/*',
'docnumber_generation(:P86_COMPCODE_APPLICATION, ''NM'', :P86_DOCTTYPE,',
'                     :P86_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), null, --:P86_WARECODE, ',
'                     ''NM'', newno);',
' ',
':P86_DOCNUMBR:= newno;  ',
'*/',
'',
'    docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                         :SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''), null, --:P420_WARECODE,',
'                         ''NM'', newno); ',
'    :P420_DOCNUMBR:= newno; ',
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
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P420_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20560202621998289)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Insert NMSTKREC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
'',
'/*',
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':COMPCODE:=:P86_COMPCODE_APPLICATION;',
':DOCTTYPE:=:P86_DOCTTYPE; ',
':SUBTTYPE:=:P86_SUBTTYPE;',
':DOCTDATE:=:P86_TRNDATE;',
':ITEMTYPE:=''S'';',
'--:ITEMRATE:=:P86_TABITEMRATE;',
':OPRSTAMP:=:APP_USER;',
':TIMSTAMP:=SYSDATE;',
':RAISEDBY:=:APP_USER;',
':REQDDATE:= SYSDATE;',
':ITEMLONG:=:ITEMDESC;',
':CURRCODE:=''BDT'';',
':FACTRVAL:=1;',
':APPRQNTY:=:ORGNQNTY;',
':DISCAMNT:=((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':MSLCAMNT:=(nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))-((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':MSFCAMNT:=(nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))-((nvl(:ITEMRATE,0)*nvl(:ORGNQNTY,0))*nvl(:DISCPCNT,0)/100);',
':EXCGRATE:=1;',
':REFNDATE:=SYSDATE;',
':COSTCODE:=:p86_costcode;',
':WARECODE:=:p86_warecode;',
':STATUSCD:=''APR'';',
':PRICFLAG:=''N'';',
':postflag:=nvl(:postflag,''N''); ',
':DOCNUMBR:=:P86_DOCNUMBR;',
':SRCWRECD:= :P86_SOURCEWARECODE;',
':BATCHNUM:= :P86_DOCNUMBR;',
':HUOMCODE:= :LUOMCODE_DESC;',
':LUOMCODE:= :LUOMCODE_DESC;',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem''||:P86_WARECODE ||'' warecode not found in SYDOCMAS for Docnumber Generate'');',
'',
'end;',
'*/'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20548592591998253)
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.component_end;
end;
/
