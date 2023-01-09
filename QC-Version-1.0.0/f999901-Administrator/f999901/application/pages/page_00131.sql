prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Information'
,p_alias=>'PRODUCT-INFORMATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Information'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P131_ITEMCODE_LEFT, #P131_ITEMCODE_RIGHT {',
'    height: 300px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210311114826'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21443796940845967)
,p_plug_name=>'Product Information'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(1582253198556857860)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(21439763015845910)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1582271165273857916)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21443898974845967)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(21443796940845967)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239072609857833)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21445547470845971)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21443796940845967)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21445831801845971)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(21443796940845967)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21445764544845971)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(21443796940845967)
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
 p_id=>wwv_flow_api.id(21447212146845976)
,p_branch_action=>'f?p=&APP_ID.:132:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21445831801845971)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(21446571969845975)
,p_branch_action=>'f?p=&APP_ID.:130:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(21445764544845971)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21207181037277830)
,p_name=>'P131_CUSTTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21443898974845967)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P130_CUSTTYPE'
,p_item_default_type=>'ITEM'
,p_prompt=>'Category'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'CUSTOMER TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES d, NMSOFCDE r',
'  FROM nmcodmas ',
' WHERE NMHRDCDE = ''CTY''',
'   AND MODLCODE = ''NM''',
'   AND COMPCODE = :COMPCODE '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'All'
,p_lov_cascade_parent_items=>'P131_CUSTTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(263844700291047892)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21208149941277840)
,p_name=>'P131_DISCPCNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21443898974845967)
,p_prompt=>'Discount %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(263844700291047892)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21445281432845971)
,p_name=>'P131_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(21443898974845967)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct ITEMCODE||'' - ''||ITEMDESC||'' - ''||SALERATE d, ITEMCODE r       ',
'  FROM NMSLRATE',
' where :P131_CUSTTYPE is null',
'    or CUSTTYPE = :P131_CUSTTYPE',
'order by ITEMCODE '))
,p_lov_cascade_parent_items=>'P131_CUSTTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(263844339994047892)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEMCODE||'' - ''||ITEMDESC||'' - ''||SALERATE d, ITEMCODE r       ',
'  FROM NMSLRATE',
' where :P131_CUSTTYPE = ''A''',
'    or CUSTTYPE = :P131_CUSTTYPE;',
'',
'',
'SELECT ITEMDESC',
'       || '' - ''',
'       || EFFICTIVE_DATE',
'       || '' - ''',
'       || SALERATE d,',
'       ITEMCODE r',
'  FROM (SELECT ITEMCODE,',
'               ITEMDESC,',
'               EFFICTIVE_DATE,',
'               (SELECT SALERATE',
'                  FROM NMSLRATE',
'                 WHERE     itemcode = x.itemcode',
'                       AND EFFICTIVE_DATE = x.EFFICTIVE_DATE) SALERATE',
'          FROM (  SELECT s.ITEMCODE,',
'                         s.ITEMDESC,',
'                         MAX (s.EFFICTIVE_DATE) EFFICTIVE_DATE',
'                    FROM NMSLRATE s',
'                   WHERE :P131_CUSTTYPE = ''A'' ',
'                      OR CUSTTYPE = :P131_CUSTTYPE',
'                GROUP BY s.ITEMCODE, s.ITEMDESC) x)',
' WHERE EFFICTIVE_DATE = (SELECT MAX (TRUNC (EFFICTIVE_DATE)) FROM NMSLRATE);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21207622852277835)
,p_name=>'close dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(21445547470845971)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21578823268518403)
,p_event_id=>wwv_flow_api.id(21207622852277835)
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
 p_id=>wwv_flow_api.id(21579212003518407)
,p_event_id=>wwv_flow_api.id(21207622852277835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_ITEMCODE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21207709491277836)
,p_event_id=>wwv_flow_api.id(21207622852277835)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(21207810088277837)
,p_name=>'Refresh ITEMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P131_CUSTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(21207929967277838)
,p_event_id=>wwv_flow_api.id(21207810088277837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P131_ITEMCODE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21208011069277839)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection (''ORDER_ITEMS'');  ',
'end if; ',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY_B (',
'            p_collection_name =>''ORDER_ITEMS'' , ',
'            p_query => ''Select t.column_value As ITEMCODE,',
'                               ''''''||:P131_DISCPCNT ||'''''' DISCPCNT',
'                               --''''''||:P131_CUSTTYPE ||'''''' CUSTTYPE',
'                          From Table ( apex_string.split(''''''||:P131_ITEMCODE||'''''', '''':'''') ) t',
'                         Where t.column_value Is Not Null'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
