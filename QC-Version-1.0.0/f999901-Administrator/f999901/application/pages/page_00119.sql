prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
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
,p_page_template_options=>'ui-dialog--stretch'
,p_overwrite_navigation_list=>'Y'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20220717164956'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182294406658426501)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186079201715928406)
,p_plug_name=>'Create Store'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582248828871857852)
,p_plug_display_sequence=>30
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(354649329316544148)
,p_plug_name=>'Bin Tree'
,p_region_name=>'mytree'
,p_region_template_options=>'#DEFAULT#:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
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
'                 -- ''icon-tree-folder'' AS ICON,',
'                  CASE',
'                     WHEN ROOTLEAF = ''Y'' THEN ''	icon-irr-ws-col-groups''',
'                     ELSE    ''icon-tree-folder''',
'                  END AS ICON,',
'                  CHILDCDE VALUE,',
'                  NULL AS tooltip,',
'                  '' javascript:$s(''''P119_PARENTPK'''',''||PARENTPK||'')'' AS link,',
'                  CHILDCDE',
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
 p_id=>wwv_flow_api.id(354649374747544149)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(186079126808928405)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(354649374747544149)
,p_button_name=>'CREATE_STORE'
,p_button_static_id=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create Store'
,p_button_position=>'COPY'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181002284374550370)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(354649329316544148)
,p_button_name=>'COLLAPSE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-minus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(181001875064550360)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(354649329316544148)
,p_button_name=>'EXPAND'
,p_button_static_id=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Expand All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182294596007426502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(182294406658426501)
,p_button_name=>'CREATE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(186079915421928413)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(186079201715928406)
,p_button_name=>'NEW_STORE'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create Store'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182294632865426503)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(182294406658426501)
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
 p_id=>wwv_flow_api.id(180998409509550296)
,p_name=>'P119_PARENTPK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(180998788265550326)
,p_name=>'P119_PARENTFK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(180999146899550326)
,p_name=>'P119_PARENTCD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_prompt=>'Root Bin Code'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(180999596914550326)
,p_name=>'P119_CHILDCDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_prompt=>'Leaf Bin Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(180999917275550328)
,p_name=>'P119_BINDESC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
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
 p_id=>wwv_flow_api.id(181000393232550328)
,p_name=>'P119_ROOTLEAF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_item_default=>'N'
,p_prompt=>'Is Root?'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181000726505550328)
,p_name=>'P119_LEVELCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(181001190653550329)
,p_name=>'P119_WARECODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT INITCAP (WAREDESC) AS d, WARECODE AS r',
'  FROM VW_BRANCH',
' WHERE COMPCODE = :COMPCODE',
'   AND GRUPCODE = :APP_USER',
' ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_08=>'300'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182294892147426505)
,p_name=>'P119_PARENTCD_DES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(354649374747544149)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186079430311928408)
,p_name=>'P119_STORE_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186079201715928406)
,p_prompt=>'Store Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(186079579490928409)
,p_name=>'P119_STORE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(186079201715928406)
,p_prompt=>'Store Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(173654927754994046)
,p_name=>'Parent Details'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_PARENTPK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182295305664426510)
,p_event_id=>wwv_flow_api.id(173654927754994046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P119_PARENTFK,P119_PARENTCD,P119_PARENTCD_DES,P119_CHILDCDE,P119_BINDESC,P119_LEVELCDE,P119_WARECODE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(173655071246994047)
,p_event_id=>wwv_flow_api.id(173654927754994046)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 23-Nov-20 8:31:19 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vROOTLEAF   VARCHAR2 (1);',
'BEGIN',
'   /* BEGIN',
'       SELECT PARENTFK,',
'              CASE WHEN ROOTLEAF = ''Y'' THEN CHILDCDE ELSE PARENTCD END',
'                 PARENTCD',
'         INTO :P119_PARENTFK, :P119_PARENTCD',
'         FROM NMWHBNMS',
'        WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'    EXCEPTION',
'       WHEN OTHERS',
'       THEN',
'          :P119_PARENTFK := 0;',
'          :P119_PARENTCD := ''1'';',
'    END;*/',
'',
'',
'   BEGIN',
'      SELECT PARENTFK, ROOTLEAF',
'        INTO :P119_PARENTFK, vROOTLEAF',
'        FROM NMWHBNMS',
'       WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P119_PARENTFK := 0;',
'   END;',
'',
'',
'   BEGIN',
'      IF vROOTLEAF = ''Y''',
'      THEN',
'         BEGIN',
'            SELECT CHILDCDE --DISTINCT PARENTCD',
'              INTO :P119_PARENTCD',
'              FROM NMWHBNMS',
'             WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               :P119_PARENTCD := NULL;',
'         END;',
'      ELSE',
'         BEGIN',
'            SELECT PARENTCD',
'              INTO :P119_PARENTCD',
'              FROM NMWHBNMS',
'             WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'         EXCEPTION',
'            WHEN OTHERS',
'            THEN',
'               :P119_PARENTCD := NULL;',
'         END;',
'      END IF;',
'   END;',
'/*  BEGIN',
'     SELECT BINDESC',
'       INTO :P119_PARENTCD_DES',
'       FROM NMWHBNMS',
'      WHERE PARENTPK = :P119_PARENTFK;',
'  EXCEPTION',
'     WHEN OTHERS',
'     THEN',
'        :P119_PARENTCD_DES := NULL;',
'  END;*/',
'END;'))
,p_attribute_02=>'P119_PARENTPK,P119_PARENTFK'
,p_attribute_03=>'P119_PARENTFK,P119_PARENTCD,P119_PARENTCD_DES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(186079649934928410)
,p_name=>'Open Create Store'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(186079126808928405)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(186079770637928411)
,p_event_id=>wwv_flow_api.id(186079649934928410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(186079201715928406)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182295410859426511)
,p_name=>'Cancel Dialog'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(182294632865426503)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182295549964426512)
,p_event_id=>wwv_flow_api.id(182295410859426511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182296274564426519)
,p_name=>'Expand All'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(181001875064550360)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182296384022426520)
,p_event_id=>wwv_flow_api.id(182296274564426519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(354649329316544148)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182296421138426521)
,p_name=>'Collapse All'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(181002284374550370)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182296525571426522)
,p_event_id=>wwv_flow_api.id(182296421138426521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(354649329316544148)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(180816968726417019)
,p_name=>'trrrreeeeee'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(180817038607417020)
,p_event_id=>wwv_flow_api.id(180816968726417019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#mytree div.a-TreeView-content'').click(function(){',
'$(this).prev(''span.a-TreeView-toggle'').click();',
'});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(173655373213994050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Bin Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 26/Nov/20 8:43:07 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vParentCode   VARCHAR2 (10);',
'   vROOTLEAF     VARCHAR2 (1);',
'BEGIN',
'   BEGIN',
'      SELECT CHILDCDE',
'        INTO vParentCode',
'        FROM NMWHBNMS',
'       WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Problem to Find Parent Code. '');',
'   END;',
'',
'',
'   BEGIN',
'      SELECT ROOTLEAF',
'        INTO vROOTLEAF',
'        FROM NMWHBNMS',
'       WHERE COMPCODE = :COMPCODE AND PARENTPK = :P119_PARENTPK;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         :P119_PARENTFK := 0;',
'   END;',
'',
'',
'   IF vROOTLEAF = ''N''',
'   THEN',
'      IF :P119_ROOTLEAF = ''Y''',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001,',
'                                  ''Can Not Create a Parent Under a Child. '');',
'      END IF;',
'',
'',
'      IF :P119_ROOTLEAF = ''N''',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001,',
'                                  ''Can Not Create a Child Under a Child. '');',
'      END IF;',
'   END IF;',
'',
'',
'   IF :P119_ROOTLEAF = ''Y''',
'   THEN',
'      BEGIN',
'         INSERT INTO NMWHBNMS (COMPCODE,',
'                               PARENTCD,',
'                               CHILDCDE,',
'                               BINDESC,',
'                               LEVELCDE,',
'                               ROOTLEAF,',
'                               SERIALNO,',
'                               OPRSTAMP,',
'                               TIMSTAMP,',
'                               BINSCODE,',
'                               PARENTPK,',
'                               PARENTFK,',
'                               WARECODE)',
'              VALUES (:COMPCODE,',
'                      :P119_PARENTCD,',
'                      REPLACE (UPPER (:P119_CHILDCDE), '' '', ''''),',
'                      :P119_BINDESC,',
'                      :P119_LEVELCDE,',
'                      :P119_ROOTLEAF,',
'                      NULL,',
'                      :APP_USER,',
'                      SYSDATE,',
'                      NULL,',
'                      NMWHBNMS_SEQ.NEXTVAL,',
'                      :P119_PARENTPK,',
'                      :P119_WARECODE);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20001, ''Unable to Insert Root Bin. '');',
'      END;',
'   ELSE',
'      BEGIN',
'         INSERT INTO NMWHBNMS (COMPCODE,',
'                               PARENTCD,',
'                               CHILDCDE,',
'                               BINDESC,',
'                               LEVELCDE,',
'                               ROOTLEAF,',
'                               SERIALNO,',
'                               OPRSTAMP,',
'                               TIMSTAMP,',
'                               BINSCODE,',
'                               PARENTPK,',
'                               PARENTFK,',
'                               WARECODE)',
'              VALUES (:COMPCODE,',
'                      :P119_PARENTCD,',
'                      REPLACE (UPPER (:P119_CHILDCDE), '' '', ''''),',
'                      :P119_BINDESC,',
'                      :P119_LEVELCDE,',
'                      :P119_ROOTLEAF,',
'                      NULL,',
'                      :APP_USER,',
'                      SYSDATE,',
'                      NULL,',
'                      NMWHBNMS_SEQ.NEXTVAL,',
'                      :P119_PARENTPK,',
'                      :P119_WARECODE);',
'      EXCEPTION',
'         WHEN OTHERS',
'         THEN',
'            RAISE_APPLICATION_ERROR (-20001, ''Unable to Insert Child Bin. '');',
'      END;',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(182294596007426502)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(186080584571928419)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Bin Info'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(182294596007426502)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(186080241497928416)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Store '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 26/Nov/20 8:16:53 PM (QP5 v5.227.12220.39754) */',
'DECLARE',
'   vChildCount   NUMBER := 0;',
'BEGIN',
'   :P119_STORE_CODE := UPPER (:P119_STORE_CODE);',
'',
'   BEGIN',
'      SELECT COUNT (CHILDCDE)',
'        INTO vChildCount',
'        FROM NMWHBNMS',
'       WHERE     COMPCODE = :COMPCODE',
'             AND UPPER (CHILDCDE) = UPPER (:P119_STORE_CODE)',
'             AND NVL (ROOTLEAF, ''N'') = ''Y''',
'             AND PARENTFK IS NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Problem When Check Duplicate Store Code. '');',
'   END;',
'',
'   IF vChildCount <> 0',
'   THEN',
'      RAISE_APPLICATION_ERROR (-20001, ''Store Code - '' || :P119_STORE_CODE || '' Already Exists. '');',
'   END IF;',
'',
'',
'   BEGIN',
'      INSERT INTO NMWHBNMS (COMPCODE,',
'                            PARENTCD,',
'                            CHILDCDE,',
'                            BINDESC,',
'                            LEVELCDE,',
'                            ROOTLEAF,',
'                            SERIALNO,',
'                            OPRSTAMP,',
'                            TIMSTAMP,',
'                            BINSCODE,',
'                            PARENTPK,',
'                            PARENTFK,',
'                            WARECODE)',
'           VALUES (:COMPCODE,',
'                   NULL,',
'                   REPLACE (:P119_STORE_CODE, '' '', ''''),',
'                   :P119_STORE_NAME,',
'                   NULL,',
'                   ''Y'',',
'                   NULL,',
'                   :APP_USER,',
'                   SYSDATE,',
'                   NULL,',
'                   NMWHBNMS_SEQ.NEXTVAL,',
'                   NULL,',
'                   NULL);',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         RAISE_APPLICATION_ERROR (-20001, ''Unable to Insert Child Bin. '');',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(186079915421928413)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(186080479559928418)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Create Store'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P119_STORE_CODE,P119_STORE_NAME'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(186079915421928413)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183309897338446600)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation - Bin'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P119_CHILDCDE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Child Bin Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P119_CHILDCDE'');',
'   END IF;',
'   ',
'   IF :P119_BINDESC IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Child Bin Description Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P119_BINDESC'');',
'   END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(182294596007426502)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(186080311661928417)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Item Validation - Store'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P119_STORE_CODE IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Store Code Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P119_STORE_CODE'');',
'   END IF;',
'   ',
'   IF :P119_STORE_NAME IS NULL',
'   THEN',
'      apex_error.add_error (',
'         p_message            => ''Store Name Required. '',',
'         p_display_location   => apex_error.c_inline_with_field_and_notif,',
'         p_page_item_name     => ''P119_STORE_NAME'');',
'   END IF;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(186079915421928413)
);
wwv_flow_api.component_end;
end;
/
