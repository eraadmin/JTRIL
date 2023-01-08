prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
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
 p_id=>132
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Confirmation'
,p_alias=>'CONFIRMATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Confirmation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210311114457'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21447973447845976)
,p_plug_name=>'Confirmation'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(21439763015845910)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21448095849845976)
,p_plug_name=>'Confirmation'
,p_parent_plug_id=>wwv_flow_api.id(21447973447845976)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(21208223423277841)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(21448095849845976)
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select seq_id sl, ',
'          c001 ITEMCODE,',
'          c002 DISCPCNT',
'     from apex_collections',
'    where collection_name = ''ORDER_ITEMS''',
' order by sl;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21208340543277842)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>10
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21208486808277843)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEMCODE||'' - ''||ITEMDESC d, ITEMCODE r       ',
'  FROM NMSLRATE'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21209097932277849)
,p_query_column_id=>3
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>30
,p_column_heading=>'Discount %'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21449732512845981)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21447973447845976)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21449862628845981)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(21447973447845976)
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21449978863845981)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21447973447845976)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21209194410277850)
,p_branch_name=>'Go To Page 127'
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21450767010845981)
,p_branch_action=>'f?p=&APP_ID.:131:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21449978863845981)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21208545252277844)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(21449732512845981)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21578773648518402)
,p_event_id=>wwv_flow_api.id(21208545252277844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21208656783277845)
,p_event_id=>wwv_flow_api.id(21208545252277844)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21208961824277848)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Submit Process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   --v_itemcode   VARCHAR2 (100);',
'   v_itemtype   VARCHAR2 (2);',
'   v_itemdesc   VARCHAR2 (200);',
'   v_salerate   NUMBER;',
'',
'BEGIN',
'    for i in',
'    (   SELECT seq_id sl, ',
'               c001 ITEMCODE,',
'               c002 DISCPCNT',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'LOOP',
'begin',
'    SELECT itemtype, itemdes1 --itemdesc--, salerate',
'        INTO v_itemtype, v_itemdesc--, v_salerate',
'        FROM nmitemas --nmslrate',
'       WHERE itemcode = i.itemcode;',
'         --AND CUSTTYPE = :P131_CUSTTYPE;',
'         exception',
'         when others then',
'         raise_application_error(-20001,i.itemcode||'' ''||sqlcode||'' ''||sqlerrm);',
'         end;',
'',
'INSERT INTO NMSLRATE (COMPCODE,',
'                      ITEMCODE,',
'                      ITEMTYPE,',
'                      ITEMDESC,',
'                      ITEMLONG,',
'                      DISCPCNT,',
'                      DISCAMNT,',
'                      SALERATE,',
'                      SPCLRATE,',
'                      EFFICTIVE_DATE,',
'                      EXPIRY_DATE,',
'                      ACTIVE_FLAG,',
'                      CURRCODE,',
'                      EXCGRATE,',
'                      CUSTTYPE,',
'                      REMARKSS,',
'                      OPRSTAMP,',
'                      TIMSTAMP                   ',
'                      )',
'     VALUES (:COMPCODE,',
'             i.ITEMCODE,',
'             v_itemtype, ',
'             v_itemdesc, ',
'             v_itemdesc,',
'             i.DISCPCNT,',
'             NULL, --DISCAMNT,',
'             null, --v_salerate - v_salerate*i.DISCPCNT/100,',
'             NULL, --SPCLRATE,',
'             sysdate, --EFFICTIVE_DATE,',
'             NULL, --EXPIRY_DATE,',
'             ''Y'', --ACTIVE_FLAG,',
'             ''BDT'', --CURRCODE,',
'             1, --EXCGRATE,',
'             :P131_CUSTTYPE,',
'             NULL, --REMARKSS,',
'             :APP_USER,',
'             SYSDATE',
'             ) ;',
'    end loop;',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21578681906518401)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'130,131'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
