prompt --application/shared_components/plugins/item_type/com_bar_solutions_progressbar
begin
--   Manifest
--     PLUGIN: COM.BAR-SOLUTIONS.PROGRESSBAR
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
 p_id=>wwv_flow_api.id(6848355424005923858)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.BAR-SOLUTIONS.PROGRESSBAR'
,p_display_name=>'ProgressBar'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.BAR-SOLUTIONS.PROGRESSBAR'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'|| APEX Plug-In',
'|| Copyright 2010 Patrick Barel',
'|| patrick@bar-solutions.com',
'|| http://blog.bar-solutions.com',
'||',
'|| Revision History:',
'|| Version | Who | What',
'||  v1.0   | PBA | Initial version...',
'||  v1.1   | PBA | Added attributes',
'||         |     | Width       [The width of the progressbar]',
'||         |     | Bordercolor [The bordercolor of the progressbar]',
'||         |     | Color       [The color of the progressbar]',
'||',
'|| Thanks to Henk Jan van Wijk (http://www.oradevblog.nl/) for helping',
'|| me on my way to finding what was wrong',
'*/',
'FUNCTION render_progressbar(p_item                IN apex_plugin.t_page_item',
'                           ,p_plugin              IN apex_plugin.t_plugin',
'                           ,p_value               IN VARCHAR2',
'                           ,p_is_readonly         IN BOOLEAN',
'                           ,p_is_printer_friendly IN BOOLEAN)',
'  RETURN apex_plugin.t_page_item_render_result IS',
'  l_value       VARCHAR2(32767) := sys.htf.escape_sc(p_value);',
'  l_name        VARCHAR2(30);',
'  l_progress    apex_application_page_items.attribute_01%TYPE := p_item.attribute_01;',
'  l_width       apex_application_page_items.attribute_02%TYPE := coalesce(p_item.attribute_02, 200);',
'  l_bordercolor apex_application_page_items.attribute_03%TYPE := coalesce(p_item.attribute_03',
'                                                                         ,''black'');',
'  l_color       apex_application_page_items.attribute_04%TYPE := coalesce(p_item.attribute_04',
'                                                                         ,''blue'');',
'  l_returnvalue apex_plugin.t_page_item_render_result;',
'BEGIN',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_page_item(p_plugin => p_plugin, p_page_item => p_item);',
'  END IF;',
'  l_name := apex_plugin.get_input_name_for_page_item(FALSE);',
'  IF p_is_readonly',
'     OR p_is_printer_friendly THEN',
'    IF p_is_readonly',
'       AND NOT p_is_printer_friendly THEN',
'      sys.htp.p(''<input type="hidden" name="'' || l_name || ''" '' || ''id="'' || p_item.name ||',
'                ''" value="'' || l_value || ''" />'');',
'    END IF;',
'    sys.htp.p(''<span id="'' || p_item.name || ''_DISPLAY" '' ||',
'              coalesce(p_item.element_attributes, ''class="display_only"'') || ''>'' || l_value || '''');',
'  ELSE',
'    -- couldn''t include a static css file, because the styles have to be based on the item name',
'    sys.htp.p(''',
'<style type="text/css">',
'/* progress bar container */',
'#'' || p_item.name || '' {',
'        border:1px solid '' || l_bordercolor || '';',
'        width:'' || l_width || ''px;',
'        height:20px;',
'        position:relative;',
'        color:black; ',
'}',
'',
'/* color bar */',
'#'' || p_item.name || '' div.progress{',
'        position:absolute;',
'        width:0;',
'        height:100%;',
'        overflow:hidden;',
'        background-color:'' || l_color || '';',
'}',
'/* text on bar */',
'#'' || p_item.name || '' div.progress .text{',
'        position:absolute;',
'        text-align:center;',
'        color:white;',
'}',
'/* text off bar */',
'#'' || p_item.name || '' div.text{',
'        position:absolute;',
'        width:100%;',
'        height:100%;',
'        text-align:center;',
'}  </style>',
''');',
'    sys.htp.p(''<div id="'' || p_item.name || ''" class="progressbar"></div>'');',
'    apex_javascript.add_library(p_name      => ''jquery.progressbar''',
'                               ,p_directory => p_plugin.file_prefix',
'                               ,p_version   => NULL);',
'    apex_javascript.add_onload_code(p_code => ''$("#'' || p_item.name || ''").reportprogress('' ||',
'                                              l_progress || '');'');',
'  END IF;',
'  RETURN l_returnvalue;',
'END render_progressbar;',
'',
'FUNCTION validate_progressbar(p_item   IN apex_plugin.t_page_item',
'                             ,p_plugin IN apex_plugin.t_plugin',
'                             ,p_value  IN VARCHAR2)',
'  RETURN apex_plugin.t_page_item_validation_result IS',
'  retval     apex_plugin.t_page_item_validation_result;',
'  l_progress apex_application_page_items.attribute_01%TYPE := p_item.attribute_01;',
'BEGIN',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_page_item(p_plugin => p_plugin, p_page_item => p_item);',
'  END IF;',
'  IF p_value = l_progress THEN',
'    -- Set session state to NULL for the item',
'    apex_util.set_session_state(p_item.name, NULL);',
'  END IF;',
'  RETURN retval;',
'END validate_progressbar;',
''))
,p_api_version=>1
,p_render_function=>'render_progressbar'
,p_validation_function=>'validate_progressbar'
,p_standard_attributes=>'VISIBLE:READONLY:ELEMENT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(6848372522236970697)
,p_plugin_id=>wwv_flow_api.id(6848355424005923858)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Progress'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'0'
,p_is_translatable=>false
,p_help_text=>'The value of the progress to fill up the progressbar (0-100)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(3903522907238673341)
,p_plugin_id=>wwv_flow_api.id(6848355424005923858)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Width'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'200'
,p_is_translatable=>false
,p_help_text=>'The width of the progressbar'
,p_attribute_comment=>'Added in v1.1'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(3905535711544185467)
,p_plugin_id=>wwv_flow_api.id(6848355424005923858)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'BorderColor'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'black'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The bordercolor of the progressbar'
,p_attribute_comment=>'Added in v1.1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905541488126188147)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>10
,p_display_value=>'Aqua'
,p_return_value=>'aqua'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905548294360189922)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>20
,p_display_value=>'Black'
,p_return_value=>'black'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905549698862191215)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>30
,p_display_value=>'Blue'
,p_return_value=>'blue'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905550703710192608)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>40
,p_display_value=>'Fuchsia'
,p_return_value=>'fuchsia'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905552307866193829)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>50
,p_display_value=>'Gray'
,p_return_value=>'gray'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905554814099195642)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>60
,p_display_value=>'Green'
,p_return_value=>'green'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905563285141196713)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>70
,p_display_value=>'Lime'
,p_return_value=>'lime'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905564389296197879)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>80
,p_display_value=>'Maroon'
,p_return_value=>'maroon'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905574393106198982)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>90
,p_display_value=>'Navy'
,p_return_value=>'navy'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905576397261200183)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>100
,p_display_value=>'Olive'
,p_return_value=>'olive'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905577601763201546)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>110
,p_display_value=>'Purple'
,p_return_value=>'purple'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905578405573202578)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>120
,p_display_value=>'Red'
,p_return_value=>'red'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905579809382203759)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>130
,p_display_value=>'Silver'
,p_return_value=>'silver'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905580912845204737)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>140
,p_display_value=>'Teal'
,p_return_value=>'teal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905582584233205906)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>150
,p_display_value=>'White'
,p_return_value=>'white'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905591389081207312)
,p_plugin_attribute_id=>wwv_flow_api.id(3905535711544185467)
,p_display_sequence=>160
,p_display_value=>'Yellow'
,p_return_value=>'yellow'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(3905612091421226944)
,p_plugin_id=>wwv_flow_api.id(6848355424005923858)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'blue'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'The color of the progressbar'
,p_attribute_comment=>'Added in v1.1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905613395230227993)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>10
,p_display_value=>'Aqua'
,p_return_value=>'aqua'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905614898693228991)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>20
,p_display_value=>'Black'
,p_return_value=>'black'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905623101464229827)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>30
,p_display_value=>'Blue'
,p_return_value=>'blue'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905626305619231025)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>40
,p_display_value=>'Fuchsia'
,p_return_value=>'fuchsia'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905628910121232304)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>50
,p_display_value=>'Gray'
,p_return_value=>'gray'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905630213238233266)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>60
,p_display_value=>'Green'
,p_return_value=>'green'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905631883933234270)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>70
,p_display_value=>'Lime'
,p_return_value=>'lime'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905632988089235406)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>80
,p_display_value=>'Maroon'
,p_return_value=>'maroon'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905634891206236339)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>90
,p_display_value=>'Navy'
,p_return_value=>'navy'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905637395015237412)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>100
,p_display_value=>'Olive'
,p_return_value=>'olive'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905639399171238616)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>110
,p_display_value=>'Purple'
,p_return_value=>'purple'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905641303673239890)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>120
,p_display_value=>'Red'
,p_return_value=>'red'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905643206443240724)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>130
,p_display_value=>'Silver'
,p_return_value=>'silver'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905644310252241804)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>140
,p_display_value=>'Teal'
,p_return_value=>'teal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905646613369242759)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>150
,p_display_value=>'White'
,p_return_value=>'white'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(3905650188566245059)
,p_plugin_attribute_id=>wwv_flow_api.id(3905612091421226944)
,p_display_sequence=>160
,p_display_value=>'Yellow'
,p_return_value=>'yellow'
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
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A202A20436F70797269676874202863292032303037204A6F7368204275736820286469676974616C627573682E636F6D290D0A202A200D0A202A205065726D697373696F6E20697320686572656279206772616E7465642C2066726565206F66';
wwv_flow_api.g_varchar2_table(2) := '206368617267652C20746F20616E7920706572736F6E0D0A202A206F627461696E696E67206120636F7079206F66207468697320736F66747761726520616E64206173736F63696174656420646F63756D656E746174696F6E0D0A202A2066696C657320';
wwv_flow_api.g_varchar2_table(3) := '287468652022536F66747761726522292C20746F206465616C20696E2074686520536F66747761726520776974686F75740D0A202A207265737472696374696F6E2C20696E636C7564696E6720776974686F7574206C696D69746174696F6E2074686520';
wwv_flow_api.g_varchar2_table(4) := '72696768747320746F207573652C0D0A202A20636F70792C206D6F646966792C206D657267652C207075626C6973682C20646973747269627574652C207375626C6963656E73652C20616E642F6F722073656C6C0D0A202A20636F70696573206F662074';
wwv_flow_api.g_varchar2_table(5) := '686520536F6674776172652C20616E6420746F207065726D697420706572736F6E7320746F2077686F6D207468650D0A202A20536F667477617265206973206675726E697368656420746F20646F20736F2C207375626A65637420746F2074686520666F';
wwv_flow_api.g_varchar2_table(6) := '6C6C6F77696E670D0A202A20636F6E646974696F6E733A0D0A0D0A202A205468652061626F766520636F70797269676874206E6F7469636520616E642074686973207065726D697373696F6E206E6F74696365207368616C6C2062650D0A202A20696E63';
wwv_flow_api.g_varchar2_table(7) := '6C7564656420696E20616C6C20636F70696573206F72207375627374616E7469616C20706F7274696F6E73206F662074686520536F6674776172652E0D0A202A200D0A202A2054484520534F4654574152452049532050524F5649444544202241532049';
wwv_flow_api.g_varchar2_table(8) := '53222C20574954484F55542057415252414E5459204F4620414E59204B494E442C0D0A202A2045585052455353204F5220494D504C4945442C20494E434C5544494E4720425554204E4F54204C494D4954454420544F205448452057415252414E544945';
wwv_flow_api.g_varchar2_table(9) := '530D0A202A204F46204D45524348414E544142494C4954592C204649544E45535320464F52204120504152544943554C415220505552504F534520414E440D0A202A204E4F4E494E4652494E47454D454E542E20494E204E4F204556454E54205348414C';
wwv_flow_api.g_varchar2_table(10) := '4C2054484520415554484F5253204F5220434F505952494748540D0A202A20484F4C44455253204245204C4941424C4520464F5220414E5920434C41494D2C2044414D41474553204F52204F54484552204C494142494C4954592C0D0A202A2057484554';
wwv_flow_api.g_varchar2_table(11) := '48455220494E20414E20414354494F4E204F4620434F4E54524143542C20544F5254204F52204F54484552574953452C2041524953494E470D0A202A2046524F4D2C204F5554204F46204F5220494E20434F4E4E454354494F4E20574954482054484520';
wwv_flow_api.g_varchar2_table(12) := '534F465457415245204F522054484520555345204F520D0A202A204F54484552204445414C494E475320494E2054484520534F4654574152452E200D0A202A2F0D0A200D0A2F2A0D0A202A2050726F67726573732042617220506C7567696E20666F7220';
wwv_flow_api.g_varchar2_table(13) := '6A51756572790D0A202A2056657273696F6E3A20416C70686120320D0A202A2052656C656173653A20323030372D30322D32360D0A202A2F200D0A2866756E6374696F6E282429207B090D0A092F2F4D61696E204D6574686F640D0A09242E666E2E7265';
wwv_flow_api.g_varchar2_table(14) := '706F727470726F6772657373203D2066756E6374696F6E2876616C2C6D617856616C29207B0909090D0A0909766172206D61783D3130303B0D0A09096966286D617856616C290D0A0909096D61783D6D617856616C3B0D0A090972657475726E20746869';
wwv_flow_api.g_varchar2_table(15) := '732E65616368280D0A09090966756E6374696F6E28297B09090D0A09090909766172206469763D242874686973293B0D0A0909090976617220696E6E65726469763D6469762E66696E6428222E70726F677265737322293B0D0A090909090D0A09090909';
wwv_flow_api.g_varchar2_table(16) := '696628696E6E65726469762E6C656E677468213D31297B0909090909090D0A0909090909696E6E65726469763D2428223C64697620636C6173733D2770726F6772657373273E3C2F6469763E22293B09090909090D0A09090909096469762E617070656E';
wwv_flow_api.g_varchar2_table(17) := '6428223C64697620636C6173733D2774657874273E266E6273703B3C2F6469763E22293B0D0A09090909092428223C7370616E20636C6173733D2774657874273E266E6273703B3C2F7370616E3E22292E63737328227769647468222C6469762E776964';
wwv_flow_api.g_varchar2_table(18) := '74682829292E617070656E64546F28696E6E6572646976293B09090909090D0A09090909096469762E617070656E6428696E6E6572646976293B09090909090D0A090909097D0D0A090909097661722077696474683D4D6174682E726F756E642876616C';
wwv_flow_api.g_varchar2_table(19) := '2F6D61782A313030293B0D0A09090909696E6E65726469762E63737328227769647468222C77696474682B222522293B090D0A090909096469762E66696E6428222E7465787422292E68746D6C2877696474682B22202522293B0D0A0909097D0D0A0909';
wwv_flow_api.g_varchar2_table(20) := '293B0D0A097D3B0D0A7D29286A5175657279293B';
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
 p_id=>wwv_flow_api.id(6849027336193108574)
,p_plugin_id=>wwv_flow_api.id(6848355424005923858)
,p_file_name=>'jquery.progressbar.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
