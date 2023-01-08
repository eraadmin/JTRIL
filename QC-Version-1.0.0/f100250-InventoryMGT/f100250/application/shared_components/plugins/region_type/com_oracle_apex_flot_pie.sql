prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_pie
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.FLOT.PIE
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
 p_id=>wwv_flow_api.id(40088188098895121)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.PIE'
,p_display_name=>'Flot Pie Chart'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.PIE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    c_base_directory       constant varchar2(255) := apex_application.g_image_prefix || ''libraries/jquery-flot/0.7/'';',
'',
'    -- determine plugin attributes and assign readable names',
'    c_pie_type             constant apex_application_page_regions.attribute_05%type := nvl(p_region.attribute_05, ''STANDARD'');',
'    c_show_tooltip         constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':TOOLTIP:'') > 0);',
'    c_show_legend          constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LEGEND:'') > 0);',
'    c_show_label           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':LABEL:'')  > 0);',
'    c_show_value           constant boolean := (instr('':'' || p_region.attribute_08 || '':'', '':VALUE:'')  > 0);',
'    c_pie_width            constant number  := to_number(apex_plugin_util.replace_substitutions(p_region.attribute_06));',
'    c_pie_height           constant number  := nvl(to_number(apex_plugin_util.replace_substitutions(p_region.attribute_07)), 320);',
'    c_combine_slices       constant boolean := (nvl(p_region.attribute_09, ''N'') = ''Y'');',
'    c_combine_threshold    constant number  := nvl(to_number(p_region.attribute_10), 10);',
'    c_combined_slice_label constant apex_application_page_regions.attribute_11%type := nvl(p_region.attribute_11, ''Other'');',
'    c_combined_slice_link  constant apex_application_page_regions.attribute_12%type := p_region.attribute_12;',
'    c_combined_slice_color constant apex_application_page_regions.attribute_13%type := p_region.attribute_13;',
'begin',
'    -- add inline styles necessary for plot charts',
'    apex_css.add_file (',
'        p_name      => ''com_oracle_apex_flot_pie'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    -- add placeholder div for chart',
'    sys.htp.p(',
'        ''<div class="flotPieContainer"><div id="'' || apex_escape.html_attribute(p_region.static_id || ''_chart'') || ''" style="width:'' ||',
'        case when c_pie_width is null then ''auto'' else c_pie_width || ''px'' end ||',
'        '';height:'' || c_pie_height || ''px;" '' ||',
'        ''class="flotPieContainerInner"></div></div>'' );',
'',
'    -- add all the required libraries',
'    apex_javascript.add_library (',
'        p_name         => ''excanvas.min'',',
'        p_directory    => c_base_directory,',
'        p_ie_condition => ''lte IE 8'' );',
'',
'    apex_javascript.add_library (',
'        p_name      => ''jquery.flot'',',
'        p_directory => c_base_directory );',
'',
'    apex_javascript.add_library (',
'        p_name      => ''jquery.flot.pie'',',
'        p_directory => c_base_directory );',
'',
'    apex_javascript.add_library (',
'        p_name      => ''com_oracle_apex_flot_pie'',',
'        p_directory => p_plugin.file_prefix );',
'',
'    -- Initialize the Flot pie chart when the page has been rendered.',
'    -- apex_javascript.add_attribute are used to make sure that',
'    -- the values are properly escaped.   ',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_pie('' ||',
'                  apex_javascript.add_value(p_region.static_id) ||',
'                  ''{'' ||',
'                      apex_javascript.add_attribute(''type'',             c_pie_type) || ',
'                      apex_javascript.add_attribute(''showLabel'',        c_show_label) || ',
'                      apex_javascript.add_attribute(''showLegend'',       c_show_legend) ||',
'                      apex_javascript.add_attribute(''showTooltip'',      c_show_tooltip) || ',
'                      apex_javascript.add_attribute(''showValue'',        c_show_value) || ',
'                      apex_javascript.add_attribute(''combineSlices'',    c_combine_slices) || ',
'                      apex_javascript.add_attribute(''combineThreshold'', c_combine_threshold) || ',
'                      apex_javascript.add_attribute(''combineLabel'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_label,',
'                                                                                p_escape => false ),',
'                                                                            p_region.escape_output )) || ',
'                      apex_javascript.add_attribute(''combineUrl'',       wwv_flow_utilities.prepare_url(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_link,',
'                                                                                p_escape => false ))) ||',
'                      apex_javascript.add_attribute(''combineColor'',     apex_plugin_util.escape(',
'                                                                            apex_plugin_util.replace_substitutions (',
'                                                                                p_value  => c_combined_slice_color,',
'                                                                                p_escape => false ),',
'                                                                            true )) || ',
'                      apex_javascript.add_attribute(''pageItems'',        apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                      apex_javascript.add_attribute(''ajaxIdentifier'',   apex_plugin.get_ajax_identifier, false, false) ||',
'                  ''});'' );',
'    apex_javascript.add_onload_code (',
'        p_code => q''[setTimeout(function(){$(''span.pieLabel'').removeAttr(''id'');},1000);]''',
'    );',
'',
'    return null;',
'',
'end render;',
'',
'',
'function ajax (',
'     p_region in apex_plugin.t_region,',
'     p_plugin in apex_plugin.t_plugin )',
'     return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_value_column constant varchar2(255) := p_region.attribute_02;',
'    c_color_column constant varchar2(255) := p_region.attribute_03;',
'    c_link_target  constant varchar2(255) := p_region.attribute_04;',
'',
'    l_label_column_no   pls_integer;',
'    l_value_column_no   pls_integer;',
'    l_color_column_no   pls_integer;',
'    l_column_value_list apex_plugin_util.t_column_value_list2;',
'    ',
'    l_label             varchar2(4000);',
'    l_value             number;',
'    l_color             varchar2(20);',
'    l_url               varchar2(4000);',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_label_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Label Column'',',
'                             p_column_alias      => c_label_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'                                      ',
'    l_value_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Value Column'',',
'                             p_column_alias      => c_value_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => true,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'',
'    l_color_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Color Column'',',
'                             p_column_alias      => c_color_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''['');',
'',
'    -- It''s time to emit the selected rows',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            -- get the label',
'            l_label := apex_plugin_util.escape (',
'                           apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_label_column_no).data_type,',
'                               p_value     => l_column_value_list(l_label_column_no).value_list(l_row_num) ),',
'                           p_region.escape_output );',
'',
'            -- get the value',
'            l_value := l_column_value_list(l_value_column_no).value_list(l_row_num).number_value;',
'',
'            -- get the color if specified',
'            if l_color_column_no is not null then',
'                l_color := apex_plugin_util.escape (',
'                               apex_plugin_util.get_value_as_varchar2 (',
'                                   p_data_type => l_column_value_list(l_color_column_no).data_type,',
'                                   p_value     => l_column_value_list(l_color_column_no).value_list(l_row_num) ),',
'                               true );',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := wwv_flow_utilities.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'            end if;',
'',
'            -- write the data to our output buffer',
'            sys.htp.p (',
'                case when l_row_num > 1 then '','' end ||',
'                ''{'' ||',
'                apex_javascript.add_attribute(''label'', l_label) ||',
'                apex_javascript.add_attribute(''color'', l_color) ||',
'                apex_javascript.add_attribute(''url'',   l_url) ||',
'                apex_javascript.add_attribute(''data'',  l_value, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'',
'    return null;',
'end ajax;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_reference_id=>1954466718555289909
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40088483534895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Label Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40088798083895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40089232681895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Color Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Specifies the column which contains the color of the pie slice. The color can be set as hex value or as the name of the color. If no column is entered then the color will automatically be calculated.</p>',
'',
'<p>Example:',
'<ul>',
'<li>#ff0000</li>',
'<li>red</li>',
'</ul>',
'</p>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40089648853895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>93
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Specifies the URL to a target page that is used if a user clicks on a pie slice.',
'</p>',
'<p>',
'To reference column values of your chart SQL statement use substitution syntax.',
'</p>',
'<p>',
'Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked pie slice',
'<pre>',
'f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.',
'</pre>',
'</p>',
'<p>',
'Example 2: Display the EMPNO value of the clicked pie slice in a JavaScript alert',
'<pre>',
'javascript:alert(''current empno: &amp;EMPNO.'');',
'</pre>',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40090064422895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Pie Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STANDARD'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of pie chart that should be displayed.  '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40090479080895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40090064422895122)
,p_display_sequence=>10
,p_display_value=>'Standard'
,p_return_value=>'STANDARD'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40090916346895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40090064422895122)
,p_display_sequence=>20
,p_display_value=>'Donut'
,p_return_value=>'DONUT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40091441950895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40090064422895122)
,p_display_sequence=>30
,p_display_value=>'Tilted'
,p_return_value=>'TILTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40091894698895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40090064422895122)
,p_display_sequence=>40
,p_display_value=>'Rectangular'
,p_return_value=>'RECT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40092467452895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Width (in pixels)'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>30
,p_is_translatable=>false
,p_help_text=>'Enter the width of the pie chart you want to create. For example, setting the width to 100 will create a pie chart that is a maximum of 100 pixels wide. If no value is specified, the pie chart will consume all the space of the containing region. '
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40092881823895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Height (in pixels)'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'320'
,p_display_length=>10
,p_max_length=>30
,p_is_translatable=>false
,p_help_text=>'Enter the height of the pie chart you want to create.  For example, setting the pie height to 100 will create a pie chart that is a maximum of 100 pixels tall.  '
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40093207943895122)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Show Options'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_default_value=>'LABEL:VALUE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40093684917895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40093207943895122)
,p_display_sequence=>5
,p_display_value=>'Legend'
,p_return_value=>'LEGEND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40094166137895122)
,p_plugin_attribute_id=>wwv_flow_api.id(40093207943895122)
,p_display_sequence=>10
,p_display_value=>'Tooltip'
,p_return_value=>'TOOLTIP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40094650468895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40093207943895122)
,p_display_sequence=>30
,p_display_value=>'Label'
,p_return_value=>'LABEL'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40095170698895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40093207943895122)
,p_display_sequence=>40
,p_display_value=>'Value'
,p_return_value=>'VALUE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40095643646895123)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Combine Slices'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Slices that are below a given percentage threshold can be combined into a single "other" slice.  For example, if a threshold of is set, then any slice that is below 10% will be grouped into the "other" slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40096082043895123)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Combined Slice Threshold'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'10'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40095643646895123)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_help_text=>'This threshold determines which slices to group together in an "other" slice.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40096392034895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>10
,p_display_value=>'1%'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40096927976895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>20
,p_display_value=>'2%'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40097470844895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>30
,p_display_value=>'5%'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40097939257895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>40
,p_display_value=>'10%'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40098416305895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>50
,p_display_value=>'15%'
,p_return_value=>'15'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40098919588895123)
,p_plugin_attribute_id=>wwv_flow_api.id(40096082043895123)
,p_display_sequence=>60
,p_display_value=>'20%'
,p_return_value=>'20'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40099426160895123)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Combined Slice Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Other'
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(40095643646895123)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Enter the label for the Other / combined slice.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40099803920895123)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Combined Slice Link'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40095643646895123)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'This URL will be used when "Other" or combined slice is clicked on.  Leave blank if you do not want to make this clickable. '
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40100246419895123)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Combined Slice Color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>20
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Specifies the color which should be used for the combined slice. The color can be entered as hex value or as name of the color. If no color is specified then it will be defaulted to gray.</p>',
'',
'<p>Example:',
'<ul>',
'<li>#ff0000</li>',
'<li>red</li>',
'</ul>',
'</p>',
''))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(40101794927895124)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>1
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'  from emp',
' order by sal'))
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
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A20466C6F742050696520436861727420506C75672D696E2076312E30202D20687474703A2F2F617065782E6F7261636C652E636F6D2F706C7567696E730A202A0A202A204261736564206F6E20466C6F7420687474703A2F2F7777772E666C';
wwv_flow_api.g_varchar2_table(2) := '6F746368617274732E6F72672F0A202A0A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C6963656E7365733A0A202A202020687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963';
wwv_flow_api.g_varchar2_table(3) := '656E7365732F6D69742D6C6963656E73652E7068700A202A202020687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C2E68746D6C0A202A2F0A2E666C6F745069654C6162656C4261636B67726F756E64207B0A20202020626F';
wwv_flow_api.g_varchar2_table(4) := '726465722D7261646975733A203270783B0A20202020626F782D736861646F773A20302031707820327078207267626128302C302C302C2E3235293B0A20202020626F726465722D77696474683A203170782031707820317078203470783B0A20202020';
wwv_flow_api.g_varchar2_table(5) := '626F726465722D7374796C653A20736F6C69643B0A2020202070616464696E673A203470783B0A202020206261636B67726F756E642D636F6C6F723A20234646463B0A202020206261636B67726F756E642D636F6C6F723A2072676261283235352C3235';
wwv_flow_api.g_varchar2_table(6) := '352C3235352C2E3930293B0A7D0A2E666C6F745069654C6162656C436F6E7461696E6572207B0A20202020666F6E742D73697A653A20313170783B0A202020206C696E652D6865696768743A20313270783B0A20202020746578742D736861646F773A20';
wwv_flow_api.g_varchar2_table(7) := '302031707820302072676261283235352C3235352C3235352C2E35293B0A7D0A2E666C6F74506965486F766572436F6E7461696E6572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A7D0A2E6C6567656E64436F6C6F72426F78207B';
wwv_flow_api.g_varchar2_table(8) := '0A2020202070616464696E673A203470783B0A7D0A2E6C6567656E644C6162656C207B0A2020202070616464696E673A20347078203470782034707820303B0A20202020766572746963616C2D616C69676E3A20746F703B0A20202020666F6E742D7765';
wwv_flow_api.g_varchar2_table(9) := '696768743A20626F6C643B0A202020206C696E652D6865696768743A20313470783B0A7D0A';
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
 p_id=>wwv_flow_api.id(40102270316895124)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_file_name=>'com_oracle_apex_flot_pie.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
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
wwv_flow_api.g_varchar2_table(1) := '2F2A0A202A20466C6F742050696520436861727420506C75672D696E2076312E30202D20687474703A2F2F617065782E6F7261636C652E636F6D2F706C7567696E730A202A0A202A204261736564206F6E20466C6F7420687474703A2F2F7777772E666C';
wwv_flow_api.g_varchar2_table(2) := '6F746368617274732E6F72672F0A202A0A202A204475616C206C6963656E73656420756E64657220746865204D495420616E642047504C206C6963656E7365733A0A202A202020687474703A2F2F7777772E6F70656E736F757263652E6F72672F6C6963';
wwv_flow_api.g_varchar2_table(3) := '656E7365732F6D69742D6C6963656E73652E7068700A202A202020687474703A2F2F7777772E676E752E6F72672F6C6963656E7365732F67706C2E68746D6C0A202A2F0A0A2866756E6374696F6E28207574696C2C207365727665722C20242C20756E64';
wwv_flow_api.g_varchar2_table(4) := '6566696E65642029207B0A0A636F6D5F6F7261636C655F617065785F666C6F745F706965203D2066756E6374696F6E282070526567696F6E49642C20704F7074696F6E732029207B0A0A202020202F2F2044656661756C74206F7572206F7074696F6E73';
wwv_flow_api.g_varchar2_table(5) := '20616E642073746F7265207468656D2077697468207468652022676C6F62616C22207072656669782C206265636175736520697427730A202020202F2F20757365642062792074686520646966666572656E742066756E6374696F6E7320617320636C6F';
wwv_flow_api.g_varchar2_table(6) := '737572650A2020202076617220674F7074696F6E732C0A202020202020202067526567696F6E242C0A2020202020202020674368617274242C0A20202020202020206743686172744F7074696F6E732C0A202020202020202067546F6F6C746970242C0A';
wwv_flow_api.g_varchar2_table(7) := '2020202020202020674C6162656C54656D706C6174652C0A202020202020202067446174613B0A0A202020205F696E6974282070526567696F6E49642C20704F7074696F6E7320293B0A0A2020202066756E6374696F6E205F696E697428207052656769';
wwv_flow_api.g_varchar2_table(8) := '6F6E49642C20704F7074696F6E732029207B0A0A20202020202020202F2F205365742064656661756C74206F7074696F6E73206966206E6F74207370656369666965640A2020202020202020674F7074696F6E73203D20242E657874656E64287B0A2020';
wwv_flow_api.g_varchar2_table(9) := '20202020202020202020747970653A20202020202020202020202020225354414E44415244222C0A20202020202020202020202073686F774C6162656C3A202020202020202066616C73652C0A20202020202020202020202073686F774C6567656E643A';
wwv_flow_api.g_varchar2_table(10) := '2020202020202066616C73652C0A20202020202020202020202073686F77546F6F6C7469703A20202020202066616C73652C0A20202020202020202020202073686F7756616C75653A202020202020202066616C73652C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(11) := '636F6D62696E65536C696365733A2020202066616C73652C0A202020202020202020202020636F6D62696E655468726573686F6C643A2031302C0A202020202020202020202020636F6D62696E654C6162656C3A2020202020224F7468657273222C0A20';
wwv_flow_api.g_varchar2_table(12) := '2020202020202020202020636F6D62696E6555726C3A2020202020202022222C0A202020202020202020202020636F6D62696E65436F6C6F723A20202020202223393939222C0A202020202020202020202020706167654974656D733A20202020202020';
wwv_flow_api.g_varchar2_table(13) := '2022220A20202020202020207D2C20704F7074696F6E7320293B0A0A20202020202020206743686172744F7074696F6E73203D207B0A2020202020202020202020207365726965733A207B0A202020202020202020202020202020207069653A207B0A20';
wwv_flow_api.g_varchar2_table(14) := '2020202020202020202020202020202020202073686F773A20747275652C0A20202020202020202020202020202020202020207261646975733A20312F312C0A20202020202020202020202020202020202020207374726F6B653A207B0A202020202020';
wwv_flow_api.g_varchar2_table(15) := '20202020202020202020202020202020202077696474683A20320A20202020202020202020202020202020202020207D2C0A20202020202020202020202020202020202020206C6162656C3A207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(16) := '20202073686F773A2066616C73650A20202020202020202020202020202020202020207D0A202020202020202020202020202020207D0A2020202020202020202020207D2C0A2020202020202020202020206C6567656E643A207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(17) := '202020202020202073686F773A2066616C73650A2020202020202020202020207D2C0A202020202020202020202020677269643A207B0A20202020202020202020202020202020686F76657261626C653A20674F7074696F6E732E73686F77546F6F6C74';
wwv_flow_api.g_varchar2_table(18) := '69702C0A20202020202020202020202020202020636C69636B61626C653A20747275650A2020202020202020202020207D0A20202020202020207D3B0A0A20202020202020202F2F2046696E64206F757220726567696F6E20616E642063686172742044';
wwv_flow_api.g_varchar2_table(19) := '495620636F6E7461696E6572730A202020202020202067526567696F6E24203D20242820272327202B207574696C2E657363617065435353282070526567696F6E496420292C20617065782E6750616765436F6E746578742420293B0A20202020202020';
wwv_flow_api.g_varchar2_table(20) := '206743686172742420203D20242820222322202B207574696C2E657363617065435353282070526567696F6E4964202B20225F63686172742220292C20617065782E6750616765436F6E7465787424293B0A0A20202020202020202F2F20696620746865';
wwv_flow_api.g_varchar2_table(21) := '7265206973206E6F20726567696F6E20636F6E7461696E65722C20616464206F6E65206F6E2074686520666C792E2049742773206E656365737361727920666F72206F75722072656672657368206D656368616E69736D0A202020202020202069662028';
wwv_flow_api.g_varchar2_table(22) := '2067526567696F6E242E6C656E677468203D3D3D20302029207B0A20202020202020202020202067526567696F6E24203D20674368617274242E777261702820273C6469762069643D2227202B2070526567696F6E4964202B2027223E3C2F6469763E27';
wwv_flow_api.g_varchar2_table(23) := '20293B0A20202020202020207D0A0A20202020202020202F2F2053657420706965206F7074696F6E73206261736564206F6E20636861727420747970650A20202020202020206966202820674F7074696F6E732E74797065203D3D3D2022444F4E555422';
wwv_flow_api.g_varchar2_table(24) := '2029207B0A2020202020202020202020206743686172744F7074696F6E732E7365726965732E7069652E696E6E6572526164697573203D20302E353B0A20202020202020207D20656C7365206966202820674F7074696F6E732E74797065203D3D3D2022';
wwv_flow_api.g_varchar2_table(25) := '54494C544544222029207B0A2020202020202020202020206743686172744F7074696F6E732E7365726965732E7069652E74696C74203D20302E353B0A20202020202020207D20656C7365206966202820674F7074696F6E732E74797065203D3D3D2022';
wwv_flow_api.g_varchar2_table(26) := '52454354222029207B0A2020202020202020202020206743686172744F7074696F6E732E7365726965732E7069652E726164697573203D203830303B0A20202020202020207D0A0A20202020202020202F2F20446F207765206861766520746F20646973';
wwv_flow_api.g_varchar2_table(27) := '706C617920746865206C6162656C3F0A20202020202020206966202820674F7074696F6E732E73686F774C6162656C2029207B0A2020202020202020202020206743686172744F7074696F6E732E7365726965732E7069652E6C6162656C203D207B0A20';
wwv_flow_api.g_varchar2_table(28) := '20202020202020202020202020202073686F773A202020202020747275652C0A202020202020202020202020202020207261646975733A20202020342F342C0A20202020202020202020202020202020666F726D61747465723A205F6C6162656C466F72';
wwv_flow_api.g_varchar2_table(29) := '6D61747465720A2020202020202020202020207D3B0A20202020202020207D0A0A20202020202020206966202820674F7074696F6E732E73686F774C6162656C207C7C20674F7074696F6E732E73686F77546F6F6C7469702029207B0A20202020202020';
wwv_flow_api.g_varchar2_table(30) := '2020202020674C6162656C54656D706C617465203D20273C64697620636C6173733D22666C6F745069654C6162656C4261636B67726F756E6422207374796C653D22626F726465722D636F6C6F723A2023636F6C6F7223223E3C64697620636C6173733D';
wwv_flow_api.g_varchar2_table(31) := '22666C6F745069654C6162656C436F6E7461696E6572223E3C7374726F6E673E236C6162656C233C2F7374726F6E673E3C62722F3E2370657263656E742325273B0A2020202020202020202020206966202820674F7074696F6E732E73686F7756616C75';
wwv_flow_api.g_varchar2_table(32) := '652029207B0A20202020202020202020202020202020674C6162656C54656D706C617465202B3D2022202020282376616C75652329223B0A2020202020202020202020207D0A202020202020202020202020674C6162656C54656D706C617465202B3D20';
wwv_flow_api.g_varchar2_table(33) := '223C2F6469763E3C2F6469763E223B0A20202020202020207D0A0A20202020202020202F2F2053686F756C6420776520636F6D62696E6520736C696365732062656C6F77206120737065636966696564207468726573686F6C643F0A2020202020202020';
wwv_flow_api.g_varchar2_table(34) := '6966202820674F7074696F6E732E636F6D62696E65536C696365732029207B0A2020202020202020202020206743686172744F7074696F6E732E7365726965732E7069652E636F6D62696E65203D207B0A20202020202020202020202020202020746872';
wwv_flow_api.g_varchar2_table(35) := '6573686F6C643A20674F7074696F6E732E636F6D62696E655468726573686F6C64202F203130302C0A20202020202020202020202020202020636F6C6F723A2020202020674F7074696F6E732E636F6D62696E65436F6C6F722C0A202020202020202020';
wwv_flow_api.g_varchar2_table(36) := '202020202020206C6162656C3A2020202020674F7074696F6E732E636F6D62696E654C6162656C0A2020202020202020202020207D3B0A20202020202020207D0A0A20202020202020202F2F20446F207765206861766520746F20646973706C61792074';
wwv_flow_api.g_varchar2_table(37) := '6865206C6567656E643F0A20202020202020206743686172744F7074696F6E732E6C6567656E642E73686F77203D20674F7074696F6E732E73686F774C6567656E643B0A0A20202020202020202F2F2054696D6520746F20647261772028616E20656D70';
wwv_flow_api.g_varchar2_table(38) := '747929206368617274210A20202020202020205F64726177285B5D293B0A0A20202020202020202F2F20576520646F20616C776179732072656769737465722074686520636C69636B206576656E7420616E6420636C69636B2066756E6374696F6E2064';
wwv_flow_api.g_varchar2_table(39) := '657465726D696E657320696620736F6D657468696E672068617320746F20626520646F6E650A2020202020202020674368617274242E6F6E282022706C6F74636C69636B222C205F636C69636B20293B0A0A20202020202020202F2F20446F2077652068';
wwv_flow_api.g_varchar2_table(40) := '61766520746F2073686F7720746F6F6C746970733F0A20202020202020206966202820674F7074696F6E732E73686F77546F6F6C7469702029207B0A20202020202020202020202067546F6F6C74697024203D20242820273C6469762069643D2227202B';
wwv_flow_api.g_varchar2_table(41) := '207574696C2E657363617065435353282070526567696F6E49642029202B20275F746F6F6C7469702220636C6173733D22666C6F74506965486F766572436F6E7461696E6572223E3C2F6469763E2720292E617070656E64546F282067526567696F6E24';
wwv_flow_api.g_varchar2_table(42) := '20293B0A202020202020202020202020674368617274242E6F6E282022706C6F74686F766572222C205F686F76657220293B0A20202020202020207D0A0A20202020202020202F2A2042696E64206576656E742068616E646C657220746F207468652061';
wwv_flow_api.g_varchar2_table(43) := '70657872656672657368206576656E7420666F7220746865206D61696E20726567696F6E20656C656D656E742E0A2020202020202020202A2044796E616D696320616374696F6E732063616E207468656E20726566726573682074686520636861727420';
wwv_flow_api.g_varchar2_table(44) := '766961207468652027526566726573682720616374696F6E2E0A2020202020202020202A0A2020202020202020202A20576520696D6D6564696174656C79207472696767657220746865206576656E7420697420746F206C6F61642074686520696E6974';
wwv_flow_api.g_varchar2_table(45) := '69616C20636861727420646174612E0A2020202020202020202A2F0A202020202020202067526567696F6E240A2020202020202020202020202E6F6E2820226170657872656672657368222C205F7265667265736820290A202020202020202020202020';
wwv_flow_api.g_varchar2_table(46) := '2E7472696767657228202261706578726566726573682220293B0A0A202020207D202F2F205F696E69740A0A0A202020202F2F204C6162656C2F546F6F6C74697020466F726D61747465720A2020202066756E6374696F6E205F6765744C6162656C2820';
wwv_flow_api.g_varchar2_table(47) := '704C6162656C2C20705365726965732029207B0A0A202020202020202072657475726E20674C6162656C54656D706C6174650A202020202020202020202020202020202020202E7265706C61636528202F23636F6C6F72232F2C20202070536572696573';
wwv_flow_api.g_varchar2_table(48) := '2E636F6C6F7220290A202020202020202020202020202020202020202E7265706C61636528202F236C6162656C232F2C202020704C6162656C20290A202020202020202020202020202020202020202E7265706C61636528202F2370657263656E74232F';
wwv_flow_api.g_varchar2_table(49) := '2C204D6174682E726F756E642820705365726965732E70657263656E742029290A202020202020202020202020202020202020202E7265706C61636528202F2376616C7565232F2C202020705365726965732E646174615B305D5B315D20293B0A0A2020';
wwv_flow_api.g_varchar2_table(50) := '20207D202F2F205F6765744C6162656C0A0A0A202020202F2F204C6162656C20466F726D61747465722063616C6C6261636B0A2020202066756E6374696F6E205F6C6162656C466F726D61747465722820704C6162656C2C20705365726965732029207B';
wwv_flow_api.g_varchar2_table(51) := '0A0A2020202020202020766172206C4C6162656C203D20704C6162656C2C0A2020202020202020202020206C466F756E64203D2066616C73652C0A2020202020202020202020206C55726C3B0A0A20202020202020202F2F20556E666F7274756E617465';
wwv_flow_api.g_varchar2_table(52) := '6C7920776520646F6E27742068617665206120704F626A20706172616D6574657220776869636820776520636F756C64207573650A20202020202020202F2F20746F206469726563746C79206C6F63617465207468652073746F7265642055524C20666F';
wwv_flow_api.g_varchar2_table(53) := '72207468652063757272656E746C792070726F6365737365642070696520736C6963652E0A20202020202020202F2F205765206861766520746F206C6F6F70207468726F756768206F757220674461746120617272617920616E64206D61746368206974';
wwv_flow_api.g_varchar2_table(54) := '207769746820746865206C6162656C0A2020202020202020666F722028207661722069203D20302C206C203D2067446174612E6C656E6774683B2069203C206C3B20692B2B2029207B0A202020202020202020202020696620282067446174615B206920';
wwv_flow_api.g_varchar2_table(55) := '5D2E6C6162656C203D3D3D20704C6162656C2029207B0A202020202020202020202020202020206C466F756E64203D20747275653B0A202020202020202020202020202020206C55726C2020203D2067446174615B2069205D2E75726C3B0A2020202020';
wwv_flow_api.g_varchar2_table(56) := '2020202020202020202020627265616B3B0A2020202020202020202020207D0A20202020202020207D0A20202020202020202F2F204E6F7420666F756E643F20436865636B2069662069742773207468652022436F6D62696E654C6162656C220A202020';
wwv_flow_api.g_varchar2_table(57) := '20202020206966202820216C466F756E6420262620674F7074696F6E732E636F6D62696E65536C6963657320262620704C6162656C203D3D3D20674F7074696F6E732E636F6D62696E654C6162656C2029207B0A2020202020202020202020206C55726C';
wwv_flow_api.g_varchar2_table(58) := '203D20674F7074696F6E732E636F6D62696E6555726C3B0A20202020202020207D0A20202020202020202F2F204F6E6C7920696620612055524C20686173206265656E2070726F76696465642C206372656174652061206C696E6B0A2020202020202020';
wwv_flow_api.g_varchar2_table(59) := '69662028206C55726C2029207B0A2020202020202020202020206C4C6162656C203D20273C6120687265663D2227202B206C55726C202B2027223E27202B20704C6162656C202B20273C2F613E273B0A20202020202020207D0A0A202020202020202072';
wwv_flow_api.g_varchar2_table(60) := '657475726E205F6765744C6162656C28206C4C6162656C2C207053657269657320293B0A0A202020207D202F2F205F6C6162656C466F726D61747465720A0A0A202020202F2F20436C69636B2063616C6C6261636B207768696368206E61766967617465';
wwv_flow_api.g_varchar2_table(61) := '7320746F20746865207370656369666965642055524C0A2020202066756E6374696F6E205F636C69636B2820704576656E742C2070506F732C20704F626A2029207B0A0A2020202020202020766172206C55726C3B0A0A20202020202020206966202820';
wwv_flow_api.g_varchar2_table(62) := '704F626A20297B0A0A2020202020202020202020206C55726C203D2067446174615B20704F626A2E736572696573496E646578205D2E75726C3B0A0A2020202020202020202020206966202820674F7074696F6E732E636F6D62696E65536C6963657320';
wwv_flow_api.g_varchar2_table(63) := '29207B0A202020202020202020202020202020206966202820704F626A2E7365726965732E6C6162656C203D3D3D20674F7074696F6E732E636F6D62696E654C6162656C2029207B0A20202020202020202020202020202020202020206C55726C203D20';
wwv_flow_api.g_varchar2_table(64) := '674F7074696F6E732E636F6D62696E6555726C3B0A202020202020202020202020202020207D0A2020202020202020202020207D0A0A20202020202020202020202069662028206C55726C2029207B0A202020202020202020202020202020206C6F6361';
wwv_flow_api.g_varchar2_table(65) := '74696F6E2E68726566203D206C55726C3B0A2020202020202020202020207D0A20202020202020207D0A202020207D202F2F205F636C69636B0A0A0A202020202F2F20486F7665722063616C6C6261636B207768696368206973207573656420746F2064';
wwv_flow_api.g_varchar2_table(66) := '6973706C61792074686520746F6F6C7469700A2020202066756E6374696F6E205F686F7665722820704576656E742C2070506F732C20704F626A2029207B0A0A20202020202020206966282021704F626A20297B0A20202020202020202020202067546F';
wwv_flow_api.g_varchar2_table(67) := '6F6C746970242E6869646528293B0A20202020202020207D20656C7365207B0A20202020202020202020202067546F6F6C746970242E68746D6C28205F6765744C6162656C2820704F626A2E7365726965732E6C6162656C2C20704F626A2E7365726965';
wwv_flow_api.g_varchar2_table(68) := '732029293B0A20202020202020202020202067546F6F6C746970242E637373287B0A2020202020202020202020202020202022746F70223A202070506F732E7061676559202B20227078222C0A20202020202020202020202020202020226C656674223A';
wwv_flow_api.g_varchar2_table(69) := '20282070506F732E7061676558202B2031322029202B20227078220A2020202020202020202020207D293B0A20202020202020202020202067546F6F6C746970242E73686F7728293B0A20202020202020207D0A202020207D202F2F205F686F7665720A';
wwv_flow_api.g_varchar2_table(70) := '0A0A202020202F2F2052656E646572732074686520636861727420776974682074686520646174612070726F766964656420696E2070446174610A2020202066756E6374696F6E205F64726177282070446174612029207B0A0A20202020202020206744';
wwv_flow_api.g_varchar2_table(71) := '617461203D2070446174613B0A2020202020202020242E706C6F742820674368617274242C2067446174612C206743686172744F7074696F6E7320293B0A0A202020207D202F2F205F647261770A0A0A202020202F2F2052656D6F766573206576657279';
wwv_flow_api.g_varchar2_table(72) := '7468696E6720696E7369646520746865206368617274204449560A2020202066756E6374696F6E205F636C6561722829207B0A2020202020202020674368617274242E656D70747928293B0A202020207D202F2F205F636C6561720A0A0A202020202F2F';
wwv_flow_api.g_varchar2_table(73) := '2043616C6C65642062792074686520415045582072656672657368206576656E7420746F20676574206E657720636861727420646174610A2020202066756E6374696F6E205F726566726573682829207B0A0A2020202020202020202020207365727665';
wwv_flow_api.g_varchar2_table(74) := '722E706C7567696E2820674F7074696F6E732E616A61784964656E7469666965722C0A2020202020202020202020207B0A20202020202020202020202020202020706167654974656D733A20674F7074696F6E732E706167654974656D730A2020202020';
wwv_flow_api.g_varchar2_table(75) := '202020202020207D2C207B0A20202020202020202020202020202020726566726573684F626A6563743A2067526567696F6E242C0A20202020202020202020202020202020636C6561723A2020202020202020205F636C6561722C0A2020202020202020';
wwv_flow_api.g_varchar2_table(76) := '2020202020202020737563636573733A202020202020205F647261772C0A202020202020202020202020202020206C6F6164696E67496E64696361746F723A202020202020202020674368617274242C0A202020202020202020202020202020206C6F61';
wwv_flow_api.g_varchar2_table(77) := '64696E67496E64696361746F72506F736974696F6E3A2022617070656E64220A2020202020202020202020207D293B0A0A202020207D202F2F205F726566726573680A0A7D3B202F2F20636F6D5F6F7261636C655F617065785F666C6F745F7069650A0A';
wwv_flow_api.g_varchar2_table(78) := '7D292820617065782E7574696C2C20617065782E7365727665722C20617065782E6A517565727920293B0A';
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
 p_id=>wwv_flow_api.id(40102683784895125)
,p_plugin_id=>wwv_flow_api.id(40088188098895121)
,p_file_name=>'com_oracle_apex_flot_pie.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
