prompt --application/shared_components/plugins/region_type/com_oracle_apex_tag_cloud
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.TAG_CLOUD
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
 p_id=>wwv_flow_api.id(8830075824846378507)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TAG_CLOUD'
,p_display_name=>'Tag Cloud'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TAG_CLOUD'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    -- Constants for the columns of our region source query',
'    c_tag_col   constant pls_integer := 1;',
'    c_count_col constant pls_integer := 2;',
'',
'    -- attributes of the plug-in',
'    l_target_url           varchar2(4000)  := p_region.attribute_01;',
'    l_max_display_tags     number          := to_number(p_region.attribute_02);',
'    l_show_count           boolean         := nvl(p_region.attribute_03,''Y'') = ''Y'';',
'',
'',
'    l_valid_data_type_list wwv_flow_global.vc_arr2;',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_max                  number;',
'    l_min                  number;',
'    l_cnts                 number;',
'    l_tag                  varchar2(4000);',
'    l_class_size           number;',
'    l_class                varchar2(30);',
'begin',
'    apex_css.add_file (',
'        p_name      => ''tag_cloud'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'',
'    -- define the valid column data types for the region query',
'    l_valid_data_type_list(c_tag_col)   := apex_plugin_util.c_data_type_varchar2;',
'    l_valid_data_type_list(c_count_col) := apex_plugin_util.c_data_type_number;',
'',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => 2,',
'                               p_data_type_list => l_valid_data_type_list,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => l_max_display_tags );',
'',
'   -- Determine maximum tag counts',
'   l_max := 0;',
'   l_min := 1000;',
'   for i in 1 .. l_column_value_list(c_count_col).value_list.count',
'   loop',
'      l_cnts  := l_column_value_list(c_count_col).value_list(i).number_value;',
'',
'      if l_cnts > l_max then',
'         l_max := l_cnts;',
'      end if;',
'      if l_cnts < l_min then',
'         l_min := l_cnts;',
'      end if;',
'   end loop;',
'   if l_max = 0 then l_max := 1; end if;',
'',
'   l_class_size := round((l_max-l_min)/6);',
'',
'   -- Generate tag cloud',
'   sys.htp.p(''<div class="tagCloud"><ul>'');',
'',
'   for i in 1 .. l_column_value_list(c_tag_col).value_list.count',
'   loop',
'       l_tag  := apex_escape.html(l_column_value_list(c_tag_col).value_list(i).varchar2_value);',
'       l_cnts := l_column_value_list(c_count_col).value_list(i).number_value;',
'',
'       if l_cnts < l_min + l_class_size then',
'           l_class := ''size1'';',
'       elsif l_cnts < l_min + (l_class_size*2) then',
'           l_class := ''size2'';',
'       elsif l_cnts < l_min + (l_class_size*3) then',
'           l_class := ''size3'';',
'       elsif l_cnts < l_min + (l_class_size*4) then',
'           l_class := ''size4'';',
'       elsif l_cnts < l_min + (l_class_size*5) then',
'           l_class := ''size5'';',
'       else',
'           l_class := ''size6'';',
'       end if;      ',
'       ',
'       sys.htp.p (',
'           ''<li><a class="''||l_class||''" href="''||',
'           wwv_flow_utilities.prepare_url(replace(l_target_url, ''#TAG#'', l_tag))||''">''||',
'           l_tag ||',
'           case when l_show_count then ''<span>'' || l_cnts || ''</span>'' end ||',
'           ''</a></li>'' );',
'   end loop;',
'',
'   sys.htp.p(''</ul></div>'');',
'',
'   return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Use this region type plug-in to render a tag cloud. The developer supplies a query returning the tag name and count. The developer specifies a target URL for the tag, the Maximum Displayed Tags, and whether or not to show the count of tags.</p>',
''))
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(644554960609374257)
,p_plugin_id=>wwv_flow_api.id(8830075824846378507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Target URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'f?p=&APP_ID.:69:&APP_SESSION.::::P69_SEARCH:#TAG#'
,p_display_length=>60
,p_is_translatable=>false
,p_help_text=>'Enter a URL to navigate to when the tag is clicked. Use the #TAG# substitution for the tag that is clicked.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(644555349439374257)
,p_plugin_id=>wwv_flow_api.id(8830075824846378507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Maximum Displayed Tags'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>4
,p_max_length=>4
,p_is_translatable=>false
,p_attribute_comment=>'Enter the maximum number of tags to display in the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(644555749808374257)
,p_plugin_id=>wwv_flow_api.id(8830075824846378507)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Show Count'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Choose whether to show the tag count next to the tag.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(37400508430517275)
,p_plugin_id=>wwv_flow_api.id(8830075824846378507)
,p_name=>'SOURCE_SQL'
,p_is_required=>false
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<strong>Example 1: Render tag cloud with all tags.</strong>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' group by tag',
' order by 1',
'</pre>',
'</p>',
'',
'<p>',
'<b>Example 2: Render tag cloud with tags specific to a content type.</b>',
'<pre>',
'select tag, count(*) cnt ',
'  from your_tag_table',
' where content_type = ''DOCUMENT''',
' group by tag',
' order by 1',
'</pre>',
'</p>',
''))
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
wwv_flow_api.g_varchar2_table(1) := '092E746167436C6F7564207B7D0A092E746167436C6F756420756C207B0A09096C6973742D7374796C653A206E6F6E653B0A09096D617267696E3A20303B0A090970616464696E673A20303B0A09097D0A09092E746167436C6F7564206C69207B0A0909';
wwv_flow_api.g_varchar2_table(2) := '09646973706C61793A20696E6C696E653B0A0909097D0A0909092E746167436C6F7564206C692061207B0A0909090970616464696E673A2030203570783B0A09090909666F6E743A206E6F726D616C20313270782F3230707820417269616C2C2073616E';
wwv_flow_api.g_varchar2_table(3) := '732D73657269663B0A09090909636F6C6F723A20233030303B0A09090909746578742D736861646F773A20302031707820302072676261283235352C3235352C3235352C2E3735293B0A090909092D6D6F7A2D626F726465722D7261646975733A203370';
wwv_flow_api.g_varchar2_table(4) := '783B0A090909092D7765626B69742D626F726465722D7261646975733A203370783B0A09090909626F726465722D7261646975733A203370783B0A09090909626F726465722D72696768743A2031707820736F6C696420234646463B0A09090909626F72';
wwv_flow_api.g_varchar2_table(5) := '6465722D626F74746F6D3A2031707820736F6C696420234646463B0A09090909746578742D6465636F726174696F6E3A206E6F6E653B0A09090909646973706C61793A20696E6C696E652D626C6F636B3B0A090909096D617267696E3A20302033707820';
wwv_flow_api.g_varchar2_table(6) := '32707820303B0A090909097D0A090909092E746167436C6F7564206C6920613A686F766572207B0A09090909096261636B67726F756E642D636F6C6F723A20234545453B0A0909090909746578742D6465636F726174696F6E3A206E6F6E653B0A090909';
wwv_flow_api.g_varchar2_table(7) := '0909626F726465722D626F74746F6D3A2031707820736F6C696420233939393B0A0909090909626F726465722D72696768743A2031707820736F6C696420233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A6163746976';
wwv_flow_api.g_varchar2_table(8) := '65207B0A0909090909096261636B67726F756E642D636F6C6F723A20234444443B0A09090909097D0A0A090909092E746167436C6F7564206C6920612E73697A6531207B666F6E742D73697A653A20313170783B206C696E652D6865696768743A203136';
wwv_flow_api.g_varchar2_table(9) := '70787D0A090909092E746167436C6F7564206C6920612E73697A6532207B666F6E742D73697A653A20313370783B6C696E652D6865696768743A20323070787D0A090909092E746167436C6F7564206C6920612E73697A6533207B666F6E742D73697A65';
wwv_flow_api.g_varchar2_table(10) := '3A20313670783B6C696E652D6865696768743A20323470787D0A090909092E746167436C6F7564206C6920612E73697A6534207B666F6E742D73697A653A20313770783B6C696E652D6865696768743A20323870787D0A090909092E746167436C6F7564';
wwv_flow_api.g_varchar2_table(11) := '206C6920612E73697A6535207B666F6E742D73697A653A20313870783B6C696E652D6865696768743A20333070787D0A090909092E746167436C6F7564206C6920612E73697A6536207B666F6E742D73697A653A20313970783B6C696E652D6865696768';
wwv_flow_api.g_varchar2_table(12) := '743A20333270787D0A0A090909092E746167436C6F7564206C692061207370616E207B0A0909090909646973706C61793A20696E6C696E652D626C6F636B3B0A09090909096D617267696E2D6C6566743A203370783B0A090909090970616464696E673A';
wwv_flow_api.g_varchar2_table(13) := '20303B0A0909090909666F6E742D7765696768743A20626F6C643B0A0909090909636F6C6F723A20233939393B0A09090909097D0A09090909092E746167436C6F7564206C6920613A686F766572207370616E207B0A0909090909097D';
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
 p_id=>wwv_flow_api.id(644556966170374262)
,p_plugin_id=>wwv_flow_api.id(8830075824846378507)
,p_file_name=>'tag_cloud.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
