prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Bin Location Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Bin Location Master'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function treeOnload(){',
'l$Tree = $("#emptree div.tree");',
'$.extend($.expr['':''], {',
'    ciContains: function(elem, i, match) {',
'        return $(elem).text().toUpperCase().indexOf(match[3].toUpperCase()) >= 0;',
'    }',
'});'))
,p_javascript_code_onload=>'treeOnload();'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20201129161814'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173651675984994013)
,p_plug_name=>'Bin Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 19-Nov-20 7:57:33 PM (QP5 v5.227.12220.39754) */',
'           SELECT CASE',
'                     WHEN CONNECT_BY_ISLEAF = 1 THEN 0',
'                     WHEN LEVEL = 1 THEN 1',
'                     ELSE -1',
'                  END',
'                     AS STATUS,',
'                  LEVEL,',
'                  BINDESC AS TITLE,',
'                  --''icon-tree-folder'' AS ICON,',
'                   CASE',
'                     WHEN ROOTLEAF = ''Y'' THEN ''	icon-irr-ws-col-groups''',
'                     ELSE    ''icon-tree-folder''',
'                  END AS ICON,',
'                  CHILDCDE VALUE,',
'                  NULL AS tooltip,',
'                  '' javascript:$s(''''P115_PARENTPK'''',''||PARENTPK||'')'' AS link,',
'                  CHILDCDE,',
'                  ROOTLEAF',
'             FROM NMWHBNMS',
'             WHERE COMPCODE = :COMPCODE',
'       START WITH PARENTFK IS NULL',
'       CONNECT BY PRIOR PARENTPK = PARENTFK',
'ORDER SIBLINGS BY PARENTFK',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173651721415994014)
,p_plug_name=>'Bin Location Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(365583141429676574)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173654757980994044)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(173651675984994013)
,p_button_name=>'EXPAND'
,p_button_static_id=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Expand All'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183289069893250076)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(365583141429676574)
,p_button_name=>'SAVE'
,p_button_static_id=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SAVE_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SAVE_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(173654857995994045)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(173651675984994013)
,p_button_name=>'COLLAPSE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183289456174250079)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(365583141429676574)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173651883434994015)
,p_name=>'P115_PARENTCD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_prompt=>'Root Bin Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173651971642994016)
,p_name=>'P115_CHILDCDE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_prompt=>'Leaf Bin Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173652012011994017)
,p_name=>'P115_BINDESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_prompt=>'Bin Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173652169581994018)
,p_name=>'P115_ROOTLEAF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_prompt=>'Is Root?'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173654024364994037)
,p_name=>'P115_PARENTPK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173654194576994038)
,p_name=>'P115_PARENTFK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173654544906994042)
,p_name=>'P115_LEVELCDE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(173654665789994043)
,p_name=>'P115_WARECODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_use_cache_before_default=>'NO'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182295981254426516)
,p_name=>'P115_WARECODE_LIST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(173651721415994014)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(173654373144994040)
,p_name=>'Child Details'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_PARENTPK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(173654462369994041)
,p_event_id=>wwv_flow_api.id(173654373144994040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P115_CHILDCDE,P115_BINDESC,P115_LEVELCDE,P115_ROOTLEAF,P115_PARENTFK,P115_WARECODE,P115_WARECODE_LIST'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 22/Nov/20 7:57:14 PM (QP5 v5.227.12220.39754) */',
'SELECT --PARENTCD,',
'       CHILDCDE,',
'       BINDESC,',
'       LEVELCDE,',
'       ROOTLEAF,',
'       PARENTFK,',
'       WARECODE,',
'       ( SELECT WARECODE || '' - '' || INITCAP (WAREDESC)',
'          FROM VW_BRANCH',
'         WHERE COMPCODE = :COMPCODE',
'           AND GRUPCODE = :APP_USER',
'           AND WARECODE = B.WARECODE) WAREHOUSE',
'  FROM NMWHBNMS B',
' WHERE COMPCODE = :COMPCODE AND PARENTPK = :P115_PARENTPK;'))
,p_attribute_07=>'P115_PARENTPK'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182297161176426528)
,p_event_id=>wwv_flow_api.id(173654373144994040)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 23-Nov-20 8:31:19 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vROOTLEAF   VARCHAR2 (1);',
'BEGIN',
'   BEGIN',
'      SELECT ROOTLEAF',
'        INTO vROOTLEAF',
'        FROM NMWHBNMS',
'       WHERE COMPCODE = :COMPCODE AND PARENTPK = :P115_PARENTPK;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         vROOTLEAF := ''N'';',
'   END;',
'',
'',
'   BEGIN',
'      IF vROOTLEAF = ''Y''',
'      THEN',
'         BEGIN',
'            SELECT CHILDCDE --DISTINCT PARENTCD',
'              INTO :P115_PARENTCD',
'              FROM NMWHBNMS',
'             WHERE COMPCODE = :COMPCODE AND PARENTPK = :P115_PARENTPK;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               :P115_PARENTCD := NULL;',
'         END;',
'      ELSE',
'         BEGIN',
'            SELECT PARENTCD',
'              INTO :P115_PARENTCD',
'              FROM NMWHBNMS',
'             WHERE COMPCODE = :COMPCODE AND PARENTPK = :P115_PARENTPK;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               :P115_PARENTCD := NULL;',
'         END;',
'      END IF;',
'   END;',
'END;'))
,p_attribute_02=>'P115_PARENTPK'
,p_attribute_03=>'P115_PARENTCD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182295651936426513)
,p_name=>'Cancel Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(183289456174250079)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182295783470426514)
,p_event_id=>wwv_flow_api.id(182295651936426513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182296758083426524)
,p_name=>'Expand All'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(173654757980994044)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182296821360426525)
,p_event_id=>wwv_flow_api.id(182296758083426524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(173651675984994013)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182296999902426526)
,p_name=>'Collapse All'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(173654857995994045)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182297063316426527)
,p_event_id=>wwv_flow_api.id(182296999902426526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(173651675984994013)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182296157607426518)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 23-Nov-20 7:02:28 PM (QP5 v5.227.12220.39754) */',
'BEGIN',
' --RAISE_APPLICATION_ERROR (-20001, :P115_CHILDCDE );',
'   UPDATE NMWHBNMS',
'      SET CHILDCDE = :P115_CHILDCDE, BINDESC = :P115_BINDESC, ROOTLEAF = :P115_ROOTLEAF',
'    WHERE     COMPCODE = :COMPCODE',
'          AND PARENTPK = :P115_PARENTPK',
'          AND PARENTFK = :P115_PARENTFK;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''Unable to Update. '' ||:P115_PARENTFK);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(183289069893250076)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182296011099426517)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P115_CHILDCDE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Child Bin Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P115_CHILDCDE'');',
'   END IF;',
'   ',
'   IF :P115_BINDESC IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Child Bin Description Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P115_BINDESC'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
