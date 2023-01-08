prompt --application/shared_components/plugins/dynamic_action/nl_apexconsulting_ig_refresh_records
begin
--   Manifest
--     PLUGIN: NL.APEXCONSULTING.IG_REFRESH_RECORDS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(75174405019691166)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.APEXCONSULTING.IG_REFRESH_RECORDS'
,p_display_name=>'IG Refresh Selected Record(s)'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','NL.APEXCONSULTING.IG_REFRESH_RECORDS'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#ig_refresh_records.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render',
'( p_dynamic_action in apex_plugin.t_dynamic_action',
', p_plugin         in apex_plugin.t_plugin ',
')',
'RETURN apex_plugin.t_dynamic_action_render_result',
'IS',
'  l_result apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  IF apex_application.g_debug',
'  THEN',
'    apex_plugin_util.debug_dynamic_action(',
'       p_plugin         => p_plugin,',
'       p_dynamic_action => p_dynamic_action ',
'    );',
'  END IF;',
'',
'  l_result.javascript_function := ''nl_apexconsulting_ig_refresh_records'';',
'  ',
'  RETURN l_result;',
'END;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'REGION'
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://roelhartman.blogspot.nl/2017/07/refresh-selected-rows-in-interactive.html'
,p_files_version=>5
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206E6C5F61706578636F6E73756C74696E675F69675F726566726573685F7265636F72647328297B0D0A2020766172206D7947726964203D20617065782E726567696F6E2820746869732E6166666563746564456C656D656E74735B';
wwv_flow_api.g_varchar2_table(2) := '305D2E696420292E77696467657428292E696E746572616374697665477269642822676574566965777322292E677269643B0D0A20206D79477269642E6D6F64656C2E66657463685265636F72647328206D79477269642E67657453656C656374656452';
wwv_flow_api.g_varchar2_table(3) := '65636F726473282920293B0D0A7D';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(75176662332806779)
,p_plugin_id=>wwv_flow_api.id(75174405019691166)
,p_file_name=>'ig_refresh_records.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
