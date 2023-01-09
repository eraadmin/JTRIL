prompt --application/pages/page_05557
begin
--   Manifest
--     PAGE: 05557
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
 p_id=>5557
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'My Book Store'
,p_step_title=>'My Book Store'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>'<script type="text/javascript" src="#JQUERYUI_DIRECTORY#ui/minified/jquery.ui.button.min.js"></script>'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'var gaInputMapping = new Array();',
'var gRowSelect, gTriggerTable;',
'$().ready(function(){',
'   $("input[name=''fmap'']").each(function(index){ ',
'      var lsHeader = $(this).val(),',
'          lsName = ''f''+(''0''+(index+1)).slice(-2),',
'          lsNName = $("[name=''"+lsName+"'']")[0].nodeName,',
'          lMap = {"header":lsHeader,"name":lsName,"nodeName":lsNName};',
'      gaInputMapping.push(lMap);',
'   });',
'});',
'function getNameWithHeader(pHeader){',
'   var lsName;',
'   $.each(gaInputMapping, function(index){',
'      if(gaInputMapping[index].header==pHeader.toUpperCase()){',
'         lsName= gaInputMapping[index].name;',
'      };',
'   });',
'   return lsName;',
'};',
'function getHeaderWithName(pName){',
'   var lsHeader;',
'   $.each(gaInputMapping, function(index){',
'      if(gaInputMapping[index].name.toUpperCase()==pName.toUpperCase()){',
'         lsHeader= gaInputMapping[index].header;',
'      };',
'   });',
'   return lsHeader;',
'};',
'function getSelector(pHeader){',
'   var lsSel;',
'   $.each(gaInputMapping, function(index){',
'      if(gaInputMapping[index].header==pHeader.toUpperCase()){',
'         lsSel= gaInputMapping[index].nodeName + "[name=''" + gaInputMapping[index].name + "'']";',
'      };',
'   });',
'   return lsSel;',
'};',
'function getObject(pHeader){',
'   var lRet;',
'   $.each(gaInputMapping, function(index){',
'      if(gaInputMapping[index].header==pHeader.toUpperCase()){',
'         lRet= gaInputMapping[index];',
'      };',
'   });',
'   return lRet;',
'};',
'function setRowDetails(pTable, pRow, pItemId){',
'   $.post(''wwv_flow.show'', ',
'          {"p_request"      : "APPLICATION_PROCESS=get_item_details",',
'           "p_flow_id"      : $v(''pFlowId''),',
'           "p_flow_step_id" : $v(''pFlowStepId''),',
'           "p_instance"     : $v(''pInstance''),',
'           "x01"            : pItemId},',
'           function(data){              ',
'              var lItem = $.parseJSON(data);',
'              $.each(lItem, function(){',
'                 var lSelector = getSelector(this.COLUMN);',
'                 if(lSelector){',
'                    $(lSelector, pTable.find(''tbody > tr'').eq(pRow)).val(this.VALUE).change();',
'                 }',
'              })',
'           });',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170309155649'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46736486826049315)
,p_name=>'Book Cart'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.EMPLOYEE_ID,',
'  e.LAST_NAME,',
'  m.LAST_NAME AS MNAME,',
'  e.SALARY,',
'  e.COMMISSION_PCT,',
'  e.DEPARTMENT_ID,',
'  d.DEPARTMENT_NAME,',
'NULL popuplist',
'FROM hr.employees e,',
'  hr.departments d,',
'  hr.employees  m',
'WHERE e.DEPARTMENT_ID     = d.DEPARTMENT_ID',
'  CONNECT BY LEVEL < 3',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46736954302049318)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46737724369049318)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Employee Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46738083418049318)
,p_query_column_id=>3
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Last Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46738514682049318)
,p_query_column_id=>4
,p_column_alias=>'MNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Mname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46738869508049318)
,p_query_column_id=>5
,p_column_alias=>'SALARY'
,p_column_display_sequence=>6
,p_column_heading=>'Salary'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46739296084049318)
,p_query_column_id=>6
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>7
,p_column_heading=>'Commission Pct'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46739757158049320)
,p_query_column_id=>7
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Department Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46740135853049320)
,p_query_column_id=>8
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Department Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46737298792049318)
,p_query_column_id=>9
,p_column_alias=>'POPUPLIST'
,p_column_display_sequence=>2
,p_column_heading=>'Popuplist'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'Select a book'
,p_column_link_attr=>'onclick="return false;" class="modalshow"'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46744528979049329)
,p_name=>'What''s in the table'
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT e.EMPLOYEE_ID,',
'  e.LAST_NAME,',
'  m.LAST_NAME AS MNAME,',
'  e.SALARY,',
'  e.COMMISSION_PCT,',
'  e.DEPARTMENT_ID,',
'  d.DEPARTMENT_NAME',
'FROM hr.employees e,',
'  hr.departments d,',
'  hr.employees  m',
'WHERE e.DEPARTMENT_ID     = d.DEPARTMENT_ID',
'  CONNECT BY LEVEL < 3',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46744938562049329)
,p_query_column_id=>1
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Employee Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46745336349049329)
,p_query_column_id=>2
,p_column_alias=>'LAST_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Last Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46745716447049329)
,p_query_column_id=>3
,p_column_alias=>'MNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Mname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46746139018049329)
,p_query_column_id=>4
,p_column_alias=>'SALARY'
,p_column_display_sequence=>4
,p_column_heading=>'Salary'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46746498229049329)
,p_query_column_id=>5
,p_column_alias=>'COMMISSION_PCT'
,p_column_display_sequence=>5
,p_column_heading=>'Commission Pct'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46746881519049329)
,p_query_column_id=>6
,p_column_alias=>'DEPARTMENT_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Department Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46747271631049332)
,p_query_column_id=>7
,p_column_alias=>'DEPARTMENT_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Department Name'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46740544694049321)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46736486826049315)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46740941451049323)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46736486826049315)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46741313246049323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46736486826049315)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5557:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46741754997049323)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(46736486826049315)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:confirmDelete(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46752618675049341)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46742173925049323)
,p_tabular_form_region_id=>wwv_flow_api.id(46736486826049315)
,p_validation_name=>'BOOK_ID must be numeric'
,p_validation_sequence=>20
,p_validation=>'BOOK_ID'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(46740941451049323)
,p_associated_column=>'BOOK_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46742570173049324)
,p_tabular_form_region_id=>wwv_flow_api.id(46736486826049315)
,p_validation_name=>'PRICE must be numeric'
,p_validation_sequence=>40
,p_validation=>'PRICE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(46740941451049323)
,p_associated_column=>'PRICE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46743033560049324)
,p_tabular_form_region_id=>wwv_flow_api.id(46736486826049315)
,p_validation_name=>'TOPIC must be numeric'
,p_validation_sequence=>60
,p_validation=>'TOPIC'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(46740941451049323)
,p_associated_column=>'TOPIC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46751572878049341)
,p_name=>'Button Icons'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(46736486826049315)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46752084597049341)
,p_event_id=>wwv_flow_api.id(46751572878049341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).find("a.modalshow").button({icons:{secondary:''ui-icon-circle-arrow-n''}});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46748435485049338)
,p_name=>'Modal closed: fetch details'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpagemanualclose'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46748921585049338)
,p_event_id=>wwv_flow_api.id(46748435485049338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data.modalPageId==''selectitem''){',
'   lItemId = this.data.modalPageCloseValue.item_id;',
'   if(lItemId){',
'      setRowDetails(gTriggerTable, gRowSelect, lItemId);',
'   };',
'};'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46749308028049340)
,p_name=>'Show modal'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.modalshow'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46750282496049340)
,p_event_id=>wwv_flow_api.id(46749308028049340)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'gTriggerTable = $(this.triggeringElement).closest(''table'');',
'gRowSelect = $(this.triggeringElement).closest(''table'').find(''tbody > tr'').index($(this.triggeringElement).closest(''tr''));'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46749817284049340)
,p_event_id=>wwv_flow_api.id(46749308028049340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_01=>'Select an item'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:2:&APP_SESSION.:::2:::'
,p_attribute_06=>'section#uSuccessMessage'
,p_attribute_07=>'STATIC_PX'
,p_attribute_08=>'700'
,p_attribute_09=>'600'
,p_attribute_10=>'selectitem'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46750674078049340)
,p_name=>'Add Row'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(46740544694049321)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46751187607049341)
,p_event_id=>wwv_flow_api.id(46750674078049340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(46736486826049315)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'addRow();',
'$(this.affectedElements[0]).find("a.modalshow:last").button({icons:{secondary:''ui-icon-circle-arrow-n''}});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46743358376049324)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46736486826049315)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'Apply MRU'
,p_attribute_02=>'DEMO_BOOK_STORE'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46740941451049323)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46743712923049326)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46736486826049315)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'Apply MRD'
,p_attribute_02=>'DEMO_BOOK_STORE'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46748002706049338)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_item_details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   lJSON VARCHAR2(1000);',
'begin',
'',
'   select ''[{"COLUMN":"BOOK_ID", "VALUE":"'' || book_id ||''"},''||',
'           ''{"COLUMN":"SUBJECT", "VALUE":"'' || subject ||''"},''||',
'           ''{"COLUMN":"PRICE",   "VALUE":"'' || price   ||''"},''||',
'           ''{"COLUMN":"AUTHOR",  "VALUE":"'' || author  ||''"},''||',
'           ''{"COLUMN":"TOPIC",   "VALUE":"'' || topic   ||''"}]''',
'     into lJSON',
'     from demo_book_list',
'    where book_id = apex_application.g_x01;',
'',
'   htp.p(lJSON);',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
