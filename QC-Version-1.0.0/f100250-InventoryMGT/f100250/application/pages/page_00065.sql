prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'call report generate for modal window'
,p_step_title=>'&PROGDESC.'
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
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140811'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54678001069313038)
,p_plug_name=>'call docnum'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_1'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(54678602239322854)
,p_name=>'asd'
,p_parent_plug_id=>wwv_flow_api.id(54678001069313038)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR',
'from nmsalrec',
'where instr(:F_EMPNO_LIST, '':'' || DOCNUMBR || '':'') > 0'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(54678886458322882)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'DOCNUMBR'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66922039669700549)
,p_plug_name=>'.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:20%; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(66924617546700577)
,p_plug_name=>'.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:70%;float:left;margin-left:1px;margin-top:1px; "'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P65_XURLTEST." width="1200" height="1000">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66924846045700577)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(66924617546700577)
,p_button_name=>'P65_CANCEL'
,p_button_static_id=>'P65_CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:65::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66923443047700576)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_api.id(66922039669700549)
,p_button_name=>'P65_RUNREPORT'
,p_button_static_id=>'P65_RUNREPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Runreport'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_grid_column=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(66924431612700576)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_api.id(66922039669700549)
,p_button_name=>'P65_NEWBTN'
,p_button_static_id=>'P65_NEWBTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Newbtn'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66922240470700559)
,p_name=>'P65_OFRDOCNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_prompt=>'Offer  No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66922417377700571)
,p_name=>'P65_DEVDOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_prog varchar2(500);',
'begin',
'v_prog:=TRIM(BOTH '','' FROM :F_EMPNO_LIST);',
'return v_prog;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Delivery No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66922619449700573)
,p_name=>'P65_GATDOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_prompt=>'Gatpass No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66922822391700573)
,p_name=>'P65_BASECURR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66923026278700573)
,p_name=>'P65_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_prompt=>'Url'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'url varchar2(1000);',
'cod varchar2(100):=''A0001'';',
'begin',
'--:P65_BASECURR1:=:P65_BASECURR;',
'--cod := :P65_BASECURR;',
'--select 27 into :P65_BASECURR from dual;',
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
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66923245248700576)
,p_name=>'P65_PROGNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_prog varchar2(500);',
'begin',
'v_prog:=TRIM(BOTH '','' FROM :PROGNAME);',
'return v_prog;',
'end;',
''))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Program Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66923621148700576)
,p_name=>'P65_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&XURLTEST.'
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66923834900700576)
,p_name=>'P65_XURL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_item_default=>'&XURL.'
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66924032258700576)
,p_name=>'P65_DOCNUMBR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P10_DOCNUMBER.'
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66924234097700576)
,p_name=>'P65_ITEMCODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_item_default=>'&DOCNUMBR.'
,p_prompt=>'Item List'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67200734111833169)
,p_name=>'P65_XPROGDESC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(66922039669700549)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Programe Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROGDESC from symenmas ',
'where PROGNAME=:P65_PROGNAME',
'and COMPCODE =''001'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(67465542350676574)
,p_computation_sequence=>10
,p_computation_item=>'P10_XURLTEST'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'&P10_XURLTEST.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(67469515495825802)
,p_computation_sequence=>10
,p_computation_item=>'P10_DELVERDOCNUM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY_COLON'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR ',
'from apex_order_items1 ',
'where ORDER_ID=:P10_DOCNUMBER;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67182519923603222)
,p_name=>'page load for docnumber'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67182826753603222)
,p_event_id=>wwv_flow_api.id(67182519923603222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P65_XURLTEST:=:XURLTEST;',
'end;'))
,p_attribute_02=>'XURLTEST'
,p_attribute_03=>'P65_XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67191724386352083)
,p_name=>'page load for submit'
,p_event_sequence=>120
,p_bind_type=>'live'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67192045724352084)
,p_event_id=>wwv_flow_api.id(67191724386352083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66922039669700549)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67197236627391376)
,p_event_id=>wwv_flow_api.id(67191724386352083)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(66924617546700577)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67198344828470490)
,p_name=>'submit page on Mouse move'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(66924617546700577)
,p_bind_type=>'bind'
,p_bind_event_type=>'mousemove'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67198614409470496)
,p_event_id=>wwv_flow_api.id(67198344828470490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50614571244472812)
,p_name=>'url genetate'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50614880685472812)
,p_event_id=>wwv_flow_api.id(50614571244472812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(500);',
'begin',
'v_url:=''http://''||:P65_XURL||'':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&',
'report=D:\Orbrgs_Web\nm\bin\''||TRIM(BOTH '','' FROM :PROGNAME)||''&'';',
'v_url:=v_url||''P13=''||TRIM(BOTH '','' FROM :F_EMPNO_LIST);',
'return v_url;',
'end;'))
,p_attribute_02=>'P65_XURL'
,p_attribute_03=>'P65_XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
