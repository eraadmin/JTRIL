prompt --application/pages/page_00449
begin
--   Manifest
--     PAGE: 00449
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
 p_id=>449
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Barcode Report Generate'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Barcode Report Generate'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px 0px !important;',
'}'))
,p_dialog_width=>'1000'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190123152514'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73485453405236144)
,p_plug_name=>'Search Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74802542146643409)
,p_plug_name=>'Report Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:70%;float:left;margin-left:1px;margin-top:1px; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P449_XURLTEST." width="1000" height="1000">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43718342886485582)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(73485453405236144)
,p_button_name=>'P449_CANCEL'
,p_button_static_id=>'P49_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:449::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43718740615485584)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(73485453405236144)
,p_button_name=>'P449_RUNREPORT'
,p_button_static_id=>'P49_RUNREPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Runreport'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43719137475485584)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(73485453405236144)
,p_button_name=>'P449_NEWBTN'
,p_button_static_id=>'P49_NEWBTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Newbtn'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43719563039485584)
,p_name=>'P449_BASECURR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_prompt=>'Basecurr'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43719976708485585)
,p_name=>'P449_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_prompt=>'Url'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'url varchar2(1000);',
'cod varchar2(100):=''A0001'';',
'begin',
'--:P449_BASECURR1:=:P449_BASECURR;',
'--cod := :P449_BASECURR;',
'--select 27 into :P449_BASECURR from dual;',
'select distinct s.REPTURLL||''/reports/rwservlet/getjobid2376?server=rep_adminserver_reaz_asinst_1''||',
'CHR (38)',
'|| ''desformat=PDF''',
'|| CHR (38)',
'|| ''destype=Cache''',
'|| CHR (38)',
'|| ''P5=''',
'|| cod ',
'|| CHR (38)',
'|| ''APP_USER=''',
'|| :app_user',
'|| CHR (38)',
'|| ''PROGRAM_CODE=''',
'|| :P307_PROGCODE',
'|| CHR (38)',
'|| ''SESSION_ID=''',
'|| :APP_SESSION',
'into ',
'url',
'     from syparmas s',
'     where CACMPCDE = :compcode;',
'return(url);',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43720379163485585)
,p_name=>'P449_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_prompt=>'Program Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43720698337485585)
,p_name=>'P449_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43721134681485585)
,p_name=>'P449_XURL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43721501982485585)
,p_name=>'P449_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43721935088485586)
,p_name=>'P449_DOCTDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43722365229485586)
,p_name=>'P449_DOCTTDAT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT docnumbr||''-''||doctdate||''-''||custname d,docnumbr r',
'           FROM nmsalrec s, nmcusmas cu',
'          WHERE s.partycde = cu.partycde',
'       ORDER BY s.docnumbr DESC',
'',
':P37_DOCNUMBR'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43722780030485586)
,p_name=>'P449_OFRDOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43723159270485586)
,p_name=>'P449_DEVDOCNUMBR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43723543522485586)
,p_name=>'P449_GATDOCNUMBR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43723915210485586)
,p_name=>'P449_ITEMCODE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43724385636485586)
,p_name=>'P449_PARTYCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43724766763485586)
,p_name=>'P449_POSTFLAG'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43725184293485588)
,p_name=>'P449_COSTCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43725538544485588)
,p_name=>'P449_ACCTCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43725962453485588)
,p_name=>'P449_TEST'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43726291445485588)
,p_name=>'P449_DOCTTYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43726723697485588)
,p_name=>'P449_SUBTTYPE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(73485453405236144)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43728289680485604)
,p_name=>'set value'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43718740615485584)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43728710806485605)
,p_event_id=>wwv_flow_api.id(43728289680485604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43729113005485607)
,p_name=>'set value'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43718740615485584)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43729651017485607)
,p_event_id=>wwv_flow_api.id(43729113005485607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(500);',
'begin',
'v_url:=''http://''||:P449_XURL||'':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\ORBRGS_WEB\Main\NM\BIN\''||:P449_PROGNAME||''.rdf&'';',
'v_url:=v_url||''&P0=''||:COMPCODE||''&P13=''||:P449_DOCNUMBR;',
'return v_url;',
'end;'))
,p_attribute_07=>'P449_XURL,P449_ITEMCODE,P449_DOCNUMBR,P449_PROGNAME,P449_OFRDOCNUMBR,P449_GATDOCNUMBR,P449_DEVDOCNUMBR'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43730074868485607)
,p_name=>'submit'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43718740615485584)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43730558667485607)
,p_event_id=>wwv_flow_api.id(43730074868485607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43730911504485607)
,p_name=>'value assign into document number'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43731484297485610)
,p_event_id=>wwv_flow_api.id(43730911504485607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P449_PROGNAME=''nmslsorp'' then',
':P449_OFRDOCNUMBR := :OFRDOCNUMBR;',
'elsif :P449_PROGNAME=''nminvmny'' then',
':P449_DOCNUMBR := :DOCNUMBR;',
'elsif :P449_PROGNAME=''nmdlchln'' then',
':P449_DEVDOCNUMBR := :DEVDOCNUMBR;',
'elsif :P449_PROGNAME=''nmgatpas'' then',
':P449_GATDOCNUMBR := :GATDOCNUMBR;',
'else ',
'null;',
'end if;',
'end;'))
,p_attribute_02=>'P449_PROGNAME'
,p_attribute_03=>'P449_DOCNUMBR,P449_OFRDOCNUMBR,P449_DEVDOCNUMBR,P449_GATDOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43731864797485610)
,p_name=>'show/hide field on DOCNUMBR'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_DOCNUMBR'
,p_condition_element=>'P449_DOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43732353408485610)
,p_event_id=>wwv_flow_api.id(43731864797485610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_OFRDOCNUMBR,P449_DEVDOCNUMBR,P449_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43732729563485610)
,p_name=>'show/hide field on OFRDOCNUMBR'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_OFRDOCNUMBR'
,p_condition_element=>'P449_OFRDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43733278872485610)
,p_event_id=>wwv_flow_api.id(43732729563485610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_DOCNUMBR,P449_DEVDOCNUMBR,P449_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43733596894485610)
,p_name=>'show/hide field on DEVDOCNUMBR'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_DEVDOCNUMBR'
,p_condition_element=>'P449_DEVDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43734101454485610)
,p_event_id=>wwv_flow_api.id(43733596894485610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_DOCNUMBR,P449_OFRDOCNUMBR,P449_GATDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43734577225485611)
,p_name=>'show/hide field on GATDOCNUMBR'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_GATDOCNUMBR'
,p_condition_element=>'P449_GATDOCNUMBR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43735068374485611)
,p_event_id=>wwv_flow_api.id(43734577225485611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P449_DOCNUMBR,P449_OFRDOCNUMBR,P449_DEVDOCNUMBR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43735416049485611)
,p_name=>'Refrash region'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P449_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43735928401485611)
,p_event_id=>wwv_flow_api.id(43735416049485611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74802542146643409)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43727842074485604)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Amishe Server Pc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         ''http://10.99.99.27:7001'' ',
'         || ''/reports/rwservlet?server=amishe_server&userid=orbrgs/orbrgs@10.99.99.26:1525/orbits&desformat=pdf&destype=cache&paramform=NO&report=''',
';',
' ',
' ',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P449_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P449_XURLTEST :=v_url||''D:\orbrgs_web\nm\bin\''||:P449_PROGNAME||''.rdf''||''&p0=''||:COMPCODE||''&p73=''||:P449_DOCTTYPE||''&p72=''||:P449_SUBTTYPE||''&p13=''||:P449_DOCNUMBR||''&p11=''||:P449_DOCTDATE||''&p12=''||:P449_DOCTTDAT;',
'',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44822548911976616)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Era Barcode Server'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
'',
'--rep_adminserver_era-pc_asinst_3',
' v_url :=',
'         ''http://202.40.181.101:7001'' ',
'         || ''/reports/rwservlet?server=rep_server&userid=orbrgs/orbrgs@10.99.99.26:1525/orbits&desformat=pdf&destype=cache&paramform=NO&report=''',
';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P449_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P449_XURLTEST :=v_url||''D:\Orbrgs_Web\Amishe\''||''nmbarcde.rdf''||''&p0=''||:COMPCODE||''&p73=''||:P449_DOCTTYPE||''&p72=''||:P449_SUBTTYPE||''&p13=''||:P449_DOCNUMBR||''&p11=''||:P449_DOCTDATE||''&p12=''||:P449_DOCTTDAT;',
'',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43727446258485603)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign url_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  P_REPORT_NAME VARCHAR2(200);',
'  P_PARAMETER JASPERSERVER.TYPE_PARAMETER;',
'BEGIN',
'  P_REPORT_NAME := ''nmbarcde'';',
'  P_PARAMETER(''P0''):= :COMPCODE;',
'  P_PARAMETER(''P13'') := :P449_DOCNUMBR;',
'--  P_PARAMETER(''user_id''):= :app_user;',
'  JASPERSERVER.port := 8080;',
'  JASPERSERVER.reports_folder := ''/reports/'';',
'',
'  JASPERSERVER.CALL_REPORT(',
'    P_REPORT_NAME => P_REPORT_NAME,',
'    P_PARAMETER => P_PARAMETER',
'  );',
'  APEX_APPLICATION.G_UNRECOVERABLE_ERROR:=TRUE;',
'END;',
'',
'/*declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         ''http://202.40.177.93:8080'' ',
'         || ''/jasperserver/flow.html?_flowId=viewReportFlow&reportUnit=/reports/Sample/Barcode&output=pdf&j_username=joeuser&j_password=joeuser'';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P449_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P449_XURLTEST :=v_url||''&p0=''||:COMPCODE||''&p1=''||:P449_DOCTTYPE||''&p3=''||:P449_SUBTTYPE||''&p13=''||:P449_DOCNUMBR;',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;*/',
'--null;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43897027474895638)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'RML server pc'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         ''http://202.40.181.101:7001'' ',
'         || ''/reports/rwservlet?server=rep_server&userid=orbrgs/orbrgs@202.40.177.93:1525/orbits&desformat=pdf&destype=cache&paramform=NO&report=''',
';',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(:P449_PROGNAME),1,2);',
'',
'--:P100_XURLDYNMC',
':P449_XURLTEST :=v_url||''D:\orbrgs_web\nm\bin\''||''nmbarcde.rdf''||''&p0=''||:COMPCODE||''&p73=''||:P449_DOCTTYPE||''&p72=''||:P449_SUBTTYPE||''&p13=''||:P449_DOCNUMBR||''&p11=''||:P449_DOCTDATE||''&p12=''||:P449_DOCTTDAT;',
'',
'',
'--raise_application_error(-20001,v_url);',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''nodata''||V_path);',
'when too_many_rows then',
'raise_application_error(-20001,''toomany''||v_url);',
'when others then',
'raise_application_error(-20001,''others''||v_url);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
