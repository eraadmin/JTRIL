prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Success Page'
,p_alias=>'SUCCESS-PAGE'
,p_page_mode=>'MODAL'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'element.style {',
'    position: fixed;',
'    height: 432.569px;',
'    width: 25%!important;',
'    top: 148.741px;',
'    left: 19.8185px;',
'    max-width: 100%;',
'}',
'',
'.t-Dialog-bodyWrapperIn{',
'    /* background-color: #ecf2f9; */',
'    background: linear-gradient(to top left, #99ccff 11%, #ffff99 124%);',
'    border: 1px solid #b3cce6;',
'    border-left: 3px solid #b3cce6;',
'    border-right: 3px solid #b3cce6;',
'}',
'',
'.t-Icon{',
'    background: linear-gradient(to top left, #99ccff 11%, #ffff99 124%);',
'}',
'',
'#P1_SUCCESS_MSG_DISPLAY{',
'    /* color:#4080bf; */',
'    /* color: #787a94; */',
'    color: #4da6ff;',
'}',
'',
'#create_button, #modify_button, #query_button, #print_preview{',
'    font-size: 15px;',
'    margin: 0px;',
'    border-right: 1px solid #e2e3e9;',
'    border-left: 1px solid #e2e3e9;',
'    /* color: #79a6d2; */',
'    color: #336699;',
'}',
'',
'',
'#link_btn:hover{',
'    background-color: #e2e3e9;',
'}',
'',
'#ok-btn{',
'    /* background-color: #66b3ff; */',
'    /* color: white; */',
'}',
'',
'#ok-btn:hover{',
'    background: linear-gradient(to top left, #99ccff 11%, #ffff99 124%);',
'    ',
'}',
'',
'.row {',
'    margin-top: 10px;',
'    margin-right: 0px!important;',
'    margin-left: 0px!important;',
'}',
'',
'.col {',
'    padding-right: 0px;',
'    padding-left: 0px;',
'    margin: 0px;',
'}',
'',
'/* .ui-dialog{',
'    width:100px!important;',
'    height: 50px; ',
'     overflow: auto !important;',
'} */',
'',
'',
'',
''))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_dialog_width=>'300'
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20230104110923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131361629086591318)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131362164989591323)
,p_plug_name=>'<p style="font-size:15px;color:#0080ff;">&P1_SUCCESS_MSG.</p>'
,p_icon_css_classes=>'fa-lg fa-check'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_region_attributes=>'style="padding:5px;"'
,p_plug_template=>wwv_flow_api.id(1582237305848857827)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135123003243079814)
,p_plug_name=>'Report Parameters'
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131363066518591332)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(131361629086591318)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'New'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131362300738591325)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(131362164989591323)
,p_button_name=>'Create'
,p_button_static_id=>'create_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Create Another'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131362449195591326)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(131362164989591323)
,p_button_name=>'Modify'
,p_button_static_id=>'modify_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Modify'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131362508346591327)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(131362164989591323)
,p_button_name=>'Query'
,p_button_static_id=>'query_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Go To Query'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131363208252591334)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(131362164989591323)
,p_button_name=>'Print_Preview'
,p_button_static_id=>'print_preview'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Print Preview'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131363175950591333)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(131361629086591318)
,p_button_name=>'OK'
,p_button_static_id=>'ok-btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'OK'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(131361775851591319)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131361629086591318)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(131363914406591341)
,p_branch_name=>'Go To Create '
,p_branch_action=>'f?p=&CURRENT_APP_ID.:&CREATE_PAGE_ID.:&SESSION.::&DEBUG.::TRNMODE:A&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(131362300738591325)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(131364039676591342)
,p_branch_name=>'Go To Modify'
,p_branch_action=>'f?p=&CURRENT_APP_ID.:&MODIFY_PAGE_ID.:&SESSION.::&DEBUG.::TRNMODE:M&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(131362449195591326)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(131364155599591343)
,p_branch_name=>'Go To Query'
,p_branch_action=>'f?p=&CURRENT_APP_ID.:&QUERY_PAGE_ID.:&SESSION.::&DEBUG.::TRNMODE:E&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(131362508346591327)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(135123306166079817)
,p_branch_name=>'Go To Print Preview'
,p_branch_action=>'f?p=&REPORT_APP.:&REPORT_PAGE.:&SESSION.::&DEBUG.::P99990100_DOCNUMBR,P99990100_PROGNAME:&P1_DOCNUMBR.,&P1_PROGNAME.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(131363208252591334)
,p_branch_sequence=>40
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131364210188591344)
,p_name=>'P1_CREATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(131364604852591348)
,p_name=>'P1_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135121954729079803)
,p_name=>'P1_MODIFY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135122375417079807)
,p_name=>'P1_QUERY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135123132220079815)
,p_name=>'P1_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135123003243079814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135123234202079816)
,p_name=>'P1_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(135123003243079814)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135124550763079829)
,p_name=>'P1_PRINT_PREVIEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135124860792079832)
,p_name=>'P1_MSG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_item_default=>'SELECT PROGDESC from symenmas where PROGNAME = :PROGNAME;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135125959246079843)
,p_name=>'P1_SUCCESS_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(131362164989591323)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (SELECT PROGDESC from symenmas where PROGNAME = :PROGNAME)||'' Successfull! ''||',
'    (case when LENGTH(:P1_DOCNUMBR) != 0  then ',
'    ''Document Number: ''||:P1_DOCNUMBR',
'    end) ',
' a from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131361867051591320)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(131361775851591319)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131361964037591321)
,p_event_id=>wwv_flow_api.id(131361867051591320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(131364468216591346)
,p_name=>'Hide Show Addstats'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_CREATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(131364550627591347)
,p_event_id=>wwv_flow_api.id(131364468216591346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(131362300738591325)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P1_CREATE'') == ''N'' ){',
'    $x_Hide(''create_button'');',
'}',
'else{',
'    $x_Show(''create_button'');',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135121754229079801)
,p_name=>'Rights Check'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135121838053079802)
,p_event_id=>wwv_flow_api.id(135121754229079801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'SELECT ADDSTATS into :P1_CREATE from syrights where compcode = :P1_COMPCODE and PROGNAME = :PROGNAME and USERCODE = :app_user;'
,p_attribute_02=>'P1_COMPCODE,PROGNAME'
,p_attribute_03=>'P1_CREATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135122283074079806)
,p_event_id=>wwv_flow_api.id(135121754229079801)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'SELECT MODSTATS into :P1_MODIFY from syrights where compcode = :P1_COMPCODE and PROGNAME = :PROGNAME and USERCODE = :app_user;'
,p_attribute_02=>'P1_COMPCODE,PROGNAME'
,p_attribute_03=>'P1_MODIFY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135122610264079810)
,p_event_id=>wwv_flow_api.id(135121754229079801)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'SELECT ENQSTATS into :P1_QUERY from syrights where compcode = :P1_COMPCODE and PROGNAME = :PROGNAME and USERCODE = :app_user;'
,p_attribute_02=>'P1_COMPCODE,PROGNAME'
,p_attribute_03=>'P1_QUERY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135124450971079828)
,p_event_id=>wwv_flow_api.id(135121754229079801)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'SELECT count(PRNTPROG) into :P1_PRINT_PREVIEW from symenmas where PROGNAME = :PROGNAME;'
,p_attribute_02=>'PROGNAME'
,p_attribute_03=>'P1_PRINT_PREVIEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135122047341079804)
,p_name=>'Hide Show Modstats'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MODIFY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135122120469079805)
,p_event_id=>wwv_flow_api.id(135122047341079804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(131362449195591326)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P1_MODIFY'') == ''N'' ){',
'    $x_Hide(''modify_button'');',
'}',
'else{',
'    $x_Show(''modify_button'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135122414522079808)
,p_name=>'Hide Show Enqstats'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_QUERY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135122581632079809)
,p_event_id=>wwv_flow_api.id(135122414522079808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(131362508346591327)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P1_QUERY'') == ''N'' ){',
'    $x_Hide(''query_button'');',
'}',
'else{',
'    $x_Show(''query_button'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135124623919079830)
,p_name=>'Hide Show Print Preview'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PRINT_PREVIEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135124778112079831)
,p_event_id=>wwv_flow_api.id(135124623919079830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(131363208252591334)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P1_PRINT_PREVIEW'') == 0 ){',
'    $x_Hide(''print_preview'');',
'}',
'else{',
'    $x_Show(''print_preview'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135126109703079845)
,p_name=>'New_1'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135126240860079846)
,p_event_id=>wwv_flow_api.id(135126109703079845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ADD_PAGEID, MOD_PAGEID, ENQ_PAGEID, APP_ID ',
'    into :CREATE_PAGE_ID, :MODIFY_PAGE_ID, :QUERY_PAGE_ID, :CURRENT_APP_ID ',
'    from SYMENMAS where PROGNAME = :PROGNAME;'))
,p_attribute_02=>'PROGNAME'
,p_attribute_03=>'CREATE_PAGE_ID,QUERY_PAGE_ID,MODIFY_PAGE_ID,APP_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1992108478280423)
,p_name=>'Refresh'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1992293246280424)
,p_event_id=>wwv_flow_api.id(1992108478280423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_SUCCESS_MSG'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135123894279079822)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(131363175950591333)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135123919219079823)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(131363175950591333)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1992004654280422)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
