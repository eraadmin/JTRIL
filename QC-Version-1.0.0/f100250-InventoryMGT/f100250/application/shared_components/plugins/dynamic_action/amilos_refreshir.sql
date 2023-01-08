prompt --application/shared_components/plugins/dynamic_action/amilos_refreshir
begin
--   Manifest
--     PLUGIN: AMILOS_REFRESHIR
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
 p_id=>wwv_flow_api.id(59589095618416515)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'AMILOS_REFRESHIR'
,p_display_name=>'Refresh Interactive Report (4.0+)'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','AMILOS_REFRESHIR'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_refreshIR (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result   apex_plugin.t_dynamic_action_render_result;',
'begin',
'',
'   if apex_application.g_debug',
'   then',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin,',
'         p_dynamic_action => p_dynamic_action ',
'      );',
'   end if;',
'',
'   apex_javascript.add_library(',
'      p_name      => ''amilos_refreshIR'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL',
'   );',
'',
'    l_result.javascript_function :=',
'            ''function(){amilos_refreshIR();}'';',
'    return l_result;',
'',
'end render_refreshIR;'))
,p_api_version=>1
,p_render_function=>'render_refreshIR'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'1.1'
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
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E20616D696C6F735F7265667265736849522829207B0A20200A20202020766172206D696E5F726F772C206D61785F726F772C20726F77735F666574636865642C20706167696E6174696F6E2C20706167696E6174696F6E4578697374';
wwv_flow_api.g_varchar2_table(2) := '733B0A20202020706167696E6174696F6E457869737473203D20242822236170657869725F444154415F50414E454C3E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6122292E6C656E6774683B0A0A202020206966';
wwv_flow_api.g_varchar2_table(3) := '2028706167696E6174696F6E457869737473203D3D2027302729207B0A2020202020202020675265706F72742E70756C6C28293B0A202020207D20656C7365207B0A2020202020202020706167696E6174696F6E203D20242E7472696D28242822236170';
wwv_flow_api.g_varchar2_table(4) := '657869725F444154415F50414E454C3E7461626C653E74626F64793E74723E74643E7370616E2E6669656C646461746122292E746578742829293B0A20202020202020206D696E5F726F77203D20706167696E6174696F6E2E73706C697428272027295B';
wwv_flow_api.g_varchar2_table(5) := '305D3B0A2020202020202020726F77735F66657463686564203D20242822236170657869725F524F57535F5045525F504147455F4D454E553E6C692E6468746D6C5375624D656E7553656C656374656422292E7465787428293B0A20202020202020206D';
wwv_flow_api.g_varchar2_table(6) := '61785F726F77203D20726F77735F666574636865643B0A2020202020202020675265706F72742E6E617669676174652E706167696E61746528277067525F6D696E5F726F773D27202B206D696E5F726F77202B20276D61785F726F77733D27202B206D61';
wwv_flow_api.g_varchar2_table(7) := '785F726F77202B2027726F77735F666574636865643D27202B20726F77735F66657463686564293B0A202020207D0A7D';
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
 p_id=>wwv_flow_api.id(59589493951419486)
,p_plugin_id=>wwv_flow_api.id(59589095618416515)
,p_file_name=>'amilos_refreshIR.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
