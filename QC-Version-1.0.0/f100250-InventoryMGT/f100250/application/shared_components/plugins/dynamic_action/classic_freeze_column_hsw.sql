prompt --application/shared_components/plugins/dynamic_action/classic_freeze_column_hsw
begin
--   Manifest
--     PLUGIN: CLASSIC_FREEZE_COLUMN_HSW
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
 p_id=>wwv_flow_api.id(56802159923707480)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'CLASSIC_FREEZE_COLUMN_HSW'
,p_display_name=>'Classic Freeze Column HSW (1.0.1)'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','CLASSIC_FREEZE_COLUMN_HSW'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION f_render_freeze_column (p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                                 p_plugin         IN apex_plugin.t_plugin ) RETURN apex_plugin.t_dynamic_action_render_result AS',
'',
unistr('/* By: M\00E1rcio Ap. Gon\00E7alez - magmarcio@gmail.com ( Agosto / 2013 )'),
'   http://www.hoversystem.com.br/',
'',
'*/',
'',
'v_colunas                    apex_application_page_items.attribute_01%TYPE := p_dynamic_action.attribute_01;',
'v_largura                    apex_application_page_items.attribute_02%TYPE := p_dynamic_action.attribute_02;',
'v_redutor                    apex_application_page_items.attribute_03%TYPE := p_dynamic_action.attribute_03;',
'--',
'v_result                     apex_plugin.t_dynamic_action_render_result;',
'--',
'v_html                       varchar2(32767);',
'v_affected_elements_type     apex_application_page_da_acts.affected_elements_type%type;',
'v_affected_region_static_id  apex_application_page_regions.static_id%type;',
'',
'--',
'BEGIN',
'--',
'-- Debug information (if app is being run in debug mode)',
'--',
'    IF apex_application.g_debug THEN',
'      apex_plugin_util.debug_dynamic_action (p_plugin         => p_plugin',
'                                            ,p_dynamic_action => p_dynamic_action);',
'    END IF;',
'--',
'    apex_javascript.add_library (p_name      => ''htmldbHscrollClassic''',
'                                ,p_directory => p_plugin.file_prefix',
'                                ,p_version   => null);',
'--',
'    select lower(affected_elements_type)',
'         , aapr.static_id',
'      into v_affected_elements_type',
'         , v_affected_region_static_id',
'      from apex_application_page_da_acts aapda',
'         , apex_application_page_regions aapr',
'     where aapda.action_id          = p_dynamic_action.ID',
'       and aapda.affected_region_id = aapr.region_id(+);',
'--',
'   if v_affected_elements_type <> ''region'' or v_affected_region_static_id is null THEN',
unistr('       raise_application_error (-20001,''Regi\00E3o deve ser informada...'');'),
'    end if;',
'--',
'    v_html := ''function classic_freeze_column_hsw () { '';',
'--',
'    v_html := v_html || '' var var_region   = this.action.attribute01; '';',
'    v_html := v_html || '' var var_colunas  = this.action.attribute02; '';',
'    v_html := v_html || '' var var_largura  = this.action.attribute03; '';',
'    v_html := v_html || '' var var_reducao  = this.action.attribute04; '';',
'    v_html := v_html || '' var var_width    = document.getElementsByTagName("body")[0].offsetWidth; '';',
'    v_html := v_html || '' var_width       -= var_reducao;  '';',
'--',
'    v_html := v_html || '' if (var_largura != "0") {var_width = var_largura} '';',
'    v_html := v_html || '' $("#report_" + var_region).htmldbHscrollClassic({width:var_width,columns:var_colunas}) '';',
'--',
'    v_html := v_html || '' } '';',
'--',
'    apex_javascript.add_inline_code (v_html, p_key => ''classic_freeze_column_hsw'');',
'--',
'    v_result.javascript_function := ''classic_freeze_column_hsw'';',
'    v_result.attribute_01        := v_affected_region_static_id;',
'    v_result.attribute_02        := v_colunas;',
'    v_result.attribute_03        := nvl(v_largura,0);',
'--',
'    if v_largura is null then  ',
'       v_result.attribute_04     := nvl(v_redutor,0);',
'    else',
'       v_result.attribute_04     := 0;',
'    end if;',
'--',
'    RETURN v_result;',
'--',
'END f_render_freeze_column;',
''))
,p_api_version=>1
,p_render_function=>'f_render_freeze_column'
,p_standard_attributes=>'REGION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0.1'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(56819357002118985)
,p_plugin_id=>wwv_flow_api.id(56802159923707480)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>unistr('N\00FAmero de Colunas')
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'2'
,p_display_length=>5
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(56819751826121384)
,p_plugin_id=>wwv_flow_api.id(56802159923707480)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Largura (px)'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>unistr('Deixe em branco para largura autom\00E1tica')
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(57347643283319606)
,p_plugin_id=>wwv_flow_api.id(56802159923707480)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Redutor de Largura  (px)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>5
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(56819751826121384)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NULL'
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
wwv_flow_api.g_varchar2_table(1) := '3B0D0A2866756E6374696F6E20282429207B0D0A20202020242E666E2E68746D6C6462487363726F6C6C436C6173736963203D2066756E6374696F6E20286F707429207B0D0A20202020202020206F7074203D20242E657874656E64287B0D0A20202020';
wwv_flow_api.g_varchar2_table(2) := '202020202020202077696474683A203330302C0D0A202020202020202020202020636F6C756D6E733A20312C0D0A2020202020202020202020207265706F72743A20227461626C653A6669727374222C0D0A202020202020202020202020706172656E74';
wwv_flow_api.g_varchar2_table(3) := '3A202274643A6669727374222C0D0A20202020202020202020202064756D6D794865696768743A20390D0A20202020202020207D2C206F7074293B0D0A202020202020202072657475726E20746869732E656163682866756E6374696F6E20286929207B';
wwv_flow_api.g_varchar2_table(4) := '0D0A2020202020202020202020207661722074626C31203D20242874686973290D0A202020202020202020202020202020202E66696E64286F70742E7265706F7274293B0D0A2020202020202020202020207661722074203D2074626C312E706172656E';
wwv_flow_api.g_varchar2_table(5) := '74286F70742E706172656E74290D0A202020202020202020202020202020202E637373287B0D0A202020202020202020202020202020202020202022766572746963616C2D616C69676E223A2022746F70222C0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(6) := '2020202020227269676874223A202230220D0A202020202020202020202020202020207D293B0D0A202020202020202020202020766172207231203D2074626C312E66696E642822747222293B0D0A20202020202020202020202074626C312E66696E64';
wwv_flow_api.g_varchar2_table(7) := '282274682C746422290D0A202020202020202020202020202020202E637373287B0D0A20202020202020202020202020202020202020202277686974652D7370616365223A20226E6F77726170220D0A202020202020202020202020202020207D293B0D';
wwv_flow_api.g_varchar2_table(8) := '0A2020202020202020202020207661722074626C32203D2074626C312E636C6F6E6528293B0D0A202020202020202020202020766172207232203D2074626C322E66696E642822747222293B0D0A202020202020202020202020742E6166746572282428';
wwv_flow_api.g_varchar2_table(9) := '223C74642F3E222C207B0D0A202020202020202020202020202020202020202022637373223A207B0D0A20202020202020202020202020202020202020202020202022766572746963616C2D616C69676E223A2022746F70222C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(10) := '20202020202020202020202020202020226C656674223A202230220D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D290D0A202020202020202020202020202020202E617070656E642874626C32';
wwv_flow_api.g_varchar2_table(11) := '29293B0D0A20202020202020202020202072312E656163682866756E6374696F6E20286A29207B0D0A2020202020202020202020202020202074203D2072322E6571286A293B0D0A20202020202020202020202020202020242874686973290D0A202020';
wwv_flow_api.g_varchar2_table(12) := '20202020202020202020202020202020202E6368696C6472656E28223A67742822202B20286F70742E636F6C756D6E73202D203129202B20222922290D0A20202020202020202020202020202020202020202E72656D6F766528293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(13) := '20202020202020202020742E6368696C6472656E28223A6C742822202B206F70742E636F6C756D6E73202B20222922290D0A20202020202020202020202020202020202020202E72656D6F766528293B0D0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(14) := '2028242874686973290D0A20202020202020202020202020202020202020202E6F757465724865696768742829203E20742E6F75746572486569676874282929207B0D0A2020202020202020202020202020202020202020742E68656967687428242874';
wwv_flow_api.g_varchar2_table(15) := '686973290D0A2020202020202020202020202020202020202020202020202E6F757465724865696768742829293B0D0A2020202020202020202020202020202020202020242874686973290D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(16) := '202E68656967687428242874686973290D0A202020202020202020202020202020202020202020202020202020202E6F757465724865696768742829290D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020656C';
wwv_flow_api.g_varchar2_table(17) := '7365207B0D0A2020202020202020202020202020202020202020242874686973290D0A2020202020202020202020202020202020202020202020202E68656967687428742E6F757465724865696768742829293B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(18) := '202020202020742E68656967687428742E6F757465724865696768742829290D0A202020202020202020202020202020207D0D0A2020202020202020202020207D293B0D0A20202020202020202020202074626C322E77726170282428223C6469762F3E';
wwv_flow_api.g_varchar2_table(19) := '222C207B0D0A2020202020202020202020202020202022637373223A207B0D0A202020202020202020202020202020202020202022766572746963616C2D616C69676E223A2022746F70222C0D0A2020202020202020202020202020202020202020226C';
wwv_flow_api.g_varchar2_table(20) := '656674223A202230222C0D0A2020202020202020202020202020202020202020226F766572666C6F772D78223A20226175746F222C0D0A2020202020202020202020202020202020202020227769647468223A206F70742E77696474682C0D0A20202020';
wwv_flow_api.g_varchar2_table(21) := '2020202020202020202020202020202022626F726465722D7269676874223A202231707820736F6C69642023414141220D0A202020202020202020202020202020207D0D0A2020202020202020202020207D29293B0D0A20202020202020202020202074';
wwv_flow_api.g_varchar2_table(22) := '203D2074626C312E66696E64282274723A6C61737422290D0A202020202020202020202020202020202E636C6F6E6528293B0D0A202020202020202020202020742E637373287B0D0A2020202020202020202020202020202022686569676874223A2022';
wwv_flow_api.g_varchar2_table(23) := '6175746F220D0A2020202020202020202020207D290D0A202020202020202020202020202020202E6368696C6472656E28290D0A202020202020202020202020202020202E7465787428225C753030413022290D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(24) := '202E637373287B0D0A202020202020202020202020202020202020202022686569676874223A20226175746F222C0D0A202020202020202020202020202020202020202022666F6E742D73697A65223A206F70742E64756D6D794865696768740D0A2020';
wwv_flow_api.g_varchar2_table(25) := '20202020202020202020202020207D293B0D0A20202020202020202020202074626C312E617070656E642874290D0A202020202020202020202020202020202E77726170282428223C6469762F3E222C207B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(26) := '2020202022637373223A207B0D0A20202020202020202020202020202020202020202020202022766572746963616C2D616C69676E223A2022746F70222C0D0A202020202020202020202020202020202020202020202020227269676874223A20223022';
wwv_flow_api.g_varchar2_table(27) := '0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D29290D0A20202020202020207D290D0A202020207D0D0A7D29286A5175657279293B';
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
 p_id=>wwv_flow_api.id(56913543479549717)
,p_plugin_id=>wwv_flow_api.id(56802159923707480)
,p_file_name=>'htmldbHscrollClassic.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
