prompt --application/pages/page_00109
begin
--   Manifest
--     PAGE: 00109
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
 p_id=>109
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Menu Master Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Menu Master Modify'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200920163745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117980679158443374)
,p_plug_name=>'Menu Master Tree'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "PROGDESC" as title, ',
'       null as icon, ',
'       "PARENTNM" as value, ',
'       null as tooltip, ',
'      ',
'          ''f?p=''||999901||'':''||211||'':''||:APP_SESSION||'':T:::P211_ROWID:''||ROWID  as link ',
'         ',
'from SYMENTRE',
'start with  "PARENTNM"=''ROOT''',
'connect by prior "PROGNAME" = "PARENTNM"',
'order  siblings by MENUSLNO --"PROGDESC"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'D'
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
 p_id=>wwv_flow_api.id(118006439272472728)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59422361601187621)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(118006439272472728)
,p_button_name=>'CONTRACT_ALL'
,p_button_static_id=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59421969372187621)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(118006439272472728)
,p_button_name=>'EXPAND_ALL'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Expand All'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59422710395187623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(118006439272472728)
,p_button_name=>'Cancel'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58586562627285123)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(118006439272472728)
,p_button_name=>'refresh'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Refresh'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,109::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59423420875187623)
,p_name=>'EXPAND_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59421969372187621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59423967569187625)
,p_event_id=>wwv_flow_api.id(59423420875187623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_EXPAND'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117980679158443374)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59424339537187625)
,p_name=>'CONTRACT_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59422361601187621)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59424833721187625)
,p_event_id=>wwv_flow_api.id(59424339537187625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_TREE_COLLAPSE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117980679158443374)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59425283230187625)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59422710395187623)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59425770238187626)
,p_event_id=>wwv_flow_api.id(59425283230187625)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58586377068285121)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(117980679158443374)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58586474366285122)
,p_event_id=>wwv_flow_api.id(58586377068285121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117980679158443374)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ',
'  treeRegionStaticId = ''#test'',',
'  currentTree = $(treeRegionStaticId);',
'  parent = currentTree.parent();',
'',
'$.ajax({',
'  url: apex.server.url ({}, $v(''pFlowStepId'')),',
'  dataType: ''html'',',
'  method : ''GET'',',
'  success: function( data ){',
'    var',
'      temp = $(''<html />''),',
'      newTree,',
'      id;',
'    temp.html( data );',
'    //find region with id ''test''',
'    newTree = temp.find( treeRegionStaticId );',
'    //get id that is needed to call APEX tree constructor',
'    id = newTree.find(''[aria-label="Tree"]'').attr(''id'');',
'    //remove old tree region',
'    currentTree.remove();',
'    //append new tree region',
'    newTree.appendTo( parent );',
'    //call apex tree constructor',
'    eval( ''apex.widget.tree.init( \''''+id+''\'', {}, gT''+(id.substr(1, id.length))+''Data,"S","",true,false,false,"a-Icon")'' )',
'  }',
'})'))
);
wwv_flow_api.component_end;
end;
/
