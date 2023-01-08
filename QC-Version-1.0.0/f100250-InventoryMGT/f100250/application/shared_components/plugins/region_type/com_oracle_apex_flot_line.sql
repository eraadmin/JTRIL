prompt --application/shared_components/plugins/region_type/com_oracle_apex_flot_line
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.FLOT.LINE
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
 p_id=>wwv_flow_api.id(40059755920895116)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.FLOT.LINE'
,p_display_name=>'Flot Line Chart'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.FLOT.LINE'),'#IMAGE_PREFIX#plugins/com.oracle.apex.flot_line/2.0/')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/excanvas.min.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.min.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.resize.min.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.symbol.min.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.time.min.js',
'#IMAGE_PREFIX#libraries/jquery-flot/0.8.3/jquery.flot.axislabels.js',
'#PLUGIN_FILES#interpolation.js',
'#PLUGIN_FILES#com.oracle.apex.flot_line.js'))
,p_css_file_urls=>'#PLUGIN_FILES#com.oracle.apex.flot_line.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render ',
'(',
'    p_region                in  apex_plugin.t_region,',
'    p_plugin                in  apex_plugin.t_plugin,',
'    p_is_printer_friendly   in  boolean ',
')',
'return apex_plugin.t_region_render_result',
'is',
'    -- Assign readable names to plugin attributes. Omit data attributes, they''ll be handled in ajax function.',
'    -- Dimensions',
'    c_min_height            constant number         := nvl(p_region.attribute_18, 100);',
'    c_max_height            constant number         := nvl(p_region.attribute_19, 500);',
'',
'    -- Series display configuration',
'    c_data_points           constant varchar2(200)  := p_region.attribute_06;',
'    c_show_data_points      constant boolean        := c_data_points <> ''NONE'';',
'    c_interpolation         constant varchar2(200)  := p_region.attribute_21;',
'    c_show_area             constant boolean        := p_region.attribute_22 is not null;',
'',
'    -- Axis titles',
'    c_x_axis_title          constant varchar2(200)  := p_region.attribute_08;',
'    c_y_axis_title          constant varchar2(200)  := p_region.attribute_09;',
'',
'    -- Tooltip configuration',
'    c_show_tooltip          constant boolean        := p_region.attribute_10 is not null;',
'    c_series_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':SERIES:'') > 0;',
'    c_x_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':X:'') > 0;',
'    c_y_tooltip             constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':Y:'') > 0;',
'    c_custom_tooltip        constant boolean        := instr('':'' || p_region.attribute_10 || '':'', '':CUSTOM:'') > 0;',
'',
'    -- Legend',
'    c_show_legend           constant boolean        := p_region.attribute_12 is not null;',
'',
'    -- Colors',
'    c_color_scheme          constant varchar2(200)  := p_region.attribute_13;',
'    l_colors                varchar2(200)           := p_region.attribute_14;',
'',
'    -- X type checking',
'    c_is_time_data          constant boolean        := p_region.attribute_17 = ''TIMESTAMP'' OR p_region.attribute_17 = ''DATE'';',
'',
'    -- Aspect ratios',
'    c_min_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_02, ''Min Aspect Ratio'' ), 1.333 );',
'    c_max_ar                constant number         := nvl( apex_plugin_util.get_attribute_as_number( p_plugin.attribute_01, ''Max Aspect Ratio'' ), 3 );',
'',
'    -- Function constants',
'    c_rgb_list_regex        constant varchar2(200)  := ''^#[0-9a-fA-F]{6}(,#[0-9a-fA-F]{6})*$'';',
'begin',
'    -- Add placeholder div',
'    sys.htp.p (',
'        ''<div class="a-FlotLine" id="'' || p_region.static_id || ''_container">'' ||',
'            ''<div class="a-FlotLine-desc"></div>'' ||',
'            ''<div class="a-FlotLine-chart" id="'' || p_region.static_id || ''_chart"></div>'' ||',
'        ''</div>'');',
'',
'    -- Color scheme',
'    case c_color_scheme',
'        when ''MODERN'' then',
'            l_colors := ''#FF3B30,#FF9500,#FFCC00,#4CD964,#34AADC,#007AFF,#5856D6,#FF2D55,#8E8E93,#C7C7CC'';',
'        when ''MODERN2'' then',
'            l_colors := ''#1ABC9C,#2ECC71,#4AA3DF,#9B59B6,#3D566E,#F1C40F,#E67E22,#E74C3C'';',
'        when ''SOLAR'' then',
'            l_colors := ''#B58900,#CB4B16,#DC322F,#D33682,#6C71C4,#268BD2,#2AA198,#859900'';',
'        when ''METRO'' then',
'            l_colors := ''#E61400,#19A2DE,#319A31,#EF9608,#8CBE29,#A500FF,#00AAAD,#FF0094,#9C5100,#E671B5'';',
'        else',
'            null;',
'    end case;',
'',
'    -- Build the initial chart. Data will be loaded with ajax.',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_flot_line('' ||',
'            apex_javascript.add_value(p_region.static_id) ||',
'            ''{'' ||',
'                apex_javascript.add_attribute(''chartRegionId'',  p_region.static_id || ''_chart'') ||',
'                apex_javascript.add_attribute(''isTimeData'',     c_is_time_data) || ',
'                apex_javascript.add_attribute(''showDataPoints'', c_show_data_points) || ',
'                apex_javascript.add_attribute(''fill'',           c_show_area) || ',
'                apex_javascript.add_attribute(''interpolation'',  c_interpolation) || ',
'                apex_javascript.add_attribute(''dataPoints'',     c_data_points) || ',
'                apex_javascript.add_attribute(''xAxisTitle'',     c_x_axis_title) || ',
'                apex_javascript.add_attribute(''yAxisTitle'',     c_y_axis_title) || ',
'                apex_javascript.add_attribute(''showTooltip'',    c_show_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipSeries'',  c_series_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipX'',       c_x_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipY'',       c_y_tooltip) || ',
'                apex_javascript.add_attribute(''tooltipCustom'',  c_custom_tooltip) || ',
'                apex_javascript.add_attribute(''showLegend'',     c_show_legend) || ',
'                apex_javascript.add_attribute(''colors'',         l_colors) || ',
'                apex_javascript.add_attribute(''minHeight'',      c_min_height) || ',
'                apex_javascript.add_attribute(''maxHeight'',      c_max_height) || ',
'                apex_javascript.add_attribute(''minAR'',          c_min_ar) ||',
'                apex_javascript.add_attribute(''maxAR'',          c_max_ar) ||',
'                apex_javascript.add_attribute(''noDataFoundMessage'', p_region.no_data_found_message) || ',
'                apex_javascript.add_attribute(''pageItems'',      apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)) ||',
'                apex_javascript.add_attribute(''ajaxIdentifier'', apex_plugin.get_ajax_identifier, false, false) ||',
'            ''});'' );',
'    return null;',
'end;',
'',
'function ajax',
'(',
'    p_region    in  apex_plugin.t_region,',
'    p_plugin    in  apex_plugin.t_plugin ',
')',
'return apex_plugin.t_region_ajax_result',
'is',
'    -- It''s better to have named variables instead of using the generic ones, ',
'    -- makes the code more readable. ',
'    c_has_multiple_series   constant boolean := ( p_region.attribute_03 = ''Y'' );',
'',
'    -- Column names',
'    c_x_type                constant varchar2(200) := p_region.attribute_17;',
'    c_x_column              constant varchar2(255) := coalesce(p_region.attribute_01, p_region.attribute_15, p_region.attribute_16);',
'    c_y_column              constant varchar2(255) := p_region.attribute_02;',
'    c_series_column         constant varchar2(255) := case when c_has_multiple_series then p_region.attribute_04 end;',
'    c_tooltip_column        constant varchar2(255) := p_region.attribute_11;',
'    c_link_target           constant varchar2(255) := p_region.attribute_20;',
'',
'    -- Series name, for single series configuration',
'    c_series_name           constant varchar2(200) := case when not c_has_multiple_series then p_region.attribute_05 end;',
'    c_use_sql_color         constant boolean       := p_region.attribute_13 = ''COLUMN'';',
'',
'    -- Column numbers for fetching',
'    l_x_column_no           pls_integer;',
'    l_y_column_no           pls_integer;',
'    l_series_column_no      pls_integer;',
'    l_tooltip_column_no     pls_integer;',
'    l_link_column_no        pls_integer;',
'    l_column_value_list     apex_plugin_util.t_column_value_list2;',
'',
'    -- Holders for row data',
'    l_x_number              number;',
'    l_x_timestamp           timestamp;',
'    l_x_date                date;',
'    l_y                     number;',
'    l_series                varchar2(4000);',
'    l_color                 varchar2(4000);',
'    l_tooltip               varchar2(4000);',
'    l_link                  varchar2(4000);',
'',
'    -- Date utils',
'    c_epoch                 constant timestamp     := to_date(''01-01-1970 00:00:00'', ''DD-MM-YYYY HH24:MI:SS'');',
'    l_millis                number;',
'begin',
'    apex_plugin_util.print_json_http_header;',
'',
'    sys.htp.prn(''{'');',
'',
'    -- First, we must get the color mapping if the color scheme requires it.',
'    if c_use_sql_color then',
'        l_column_value_list := apex_plugin_util.get_data2 (',
'            p_sql_statement     => p_region.attribute_23,',
'            p_min_columns       => 2,',
'            p_max_columns       => 2,',
'            p_component_name    => p_region.name );',
'',
'        sys.htp.prn(''"colors":['');',
'        for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'            -- Series, optional',
'            l_series := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(1).data_type,',
'                p_value     => l_column_value_list(1).value_list(l_row_num) );',
'            l_color := apex_plugin_util.get_value_as_varchar2 (',
'                p_data_type => l_column_value_list(2).data_type,',
'                p_value     => l_column_value_list(2).value_list(l_row_num) );',
'            ',
'        if l_row_num > 1 then',
'            sys.htp.prn('','');            ',
'        end if;',
'            sys.htp.prn(''{'');',
'            sys.htp.prn(',
'                apex_javascript.add_attribute(''series'', l_series) ||',
'                apex_javascript.add_attribute(''color'',  l_color, false, false) );',
'            sys.htp.prn(''}'');',
'        end loop;',
'        sys.htp.prn(''],'');',
'',
'        l_series := null;',
'    end if;',
'',
'    -- Then, we get the actual data points.',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'        p_sql_statement     => ''SELECT * FROM ('' || p_region.source || '') ORDER BY "'' || c_x_column || ''" ASC'',',
'        p_min_columns       => 2,',
'        p_max_columns       => 5,',
'        p_component_name    => p_region.name );',
'',
'    -- Get the actual column # for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_x_column_no := apex_plugin_util.get_column_no (',
'                p_attribute_label       => ''x column'',',
'                p_column_alias          => c_x_column,',
'                p_column_value_list     => l_column_value_list,',
'                p_is_required           => true,',
'                p_data_type             => case c_x_type  ',
'                                            when ''NUMBER'' then apex_plugin_util.c_data_type_number',
'                                            when ''DATE'' then apex_plugin_util.c_data_type_date',
'                                            when ''TIMESTAMP'' then apex_plugin_util.c_data_type_timestamp end );',
'',
'    l_y_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''y column'',',
'        p_column_alias          => c_y_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => true,',
'        p_data_type             => apex_plugin_util.c_data_type_number );',
'',
'    l_series_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''series column'',',
'        p_column_alias          => c_series_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    l_tooltip_column_no := apex_plugin_util.get_column_no (',
'        p_attribute_label       => ''tooltip column'',',
'        p_column_alias          => c_tooltip_column,',
'        p_column_value_list     => l_column_value_list,',
'        p_is_required           => false,',
'        p_data_type             => apex_plugin_util.c_data_type_varchar2 );',
'',
'    sys.htp.prn(''"data":['');',
'',
'    -- Fetch data',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num => l_row_num ',
'            );',
'',
'            -- X may be TIMESTAMP, DATE or NUMBER, required',
'            case c_x_type',
'                when ''TIMESTAMP'' then',
'                    l_x_timestamp := l_column_value_list(l_x_column_no).value_list(l_row_num).timestamp_value;',
'                    l_x_number := extract(day from (l_x_timestamp - c_epoch)) * 86400000 + ',
'                        extract(hour from (l_x_timestamp - c_epoch)) * 3600000 +',
'                        extract(minute from (l_x_timestamp - c_epoch)) * 60000 +',
'                        extract(second from (l_x_timestamp - c_epoch)) * 1000;',
'                when ''DATE'' then',
'                    l_x_date := l_column_value_list(l_x_column_no).value_list(l_row_num).date_value;',
'                    l_x_number := extract(day from (l_x_date - c_epoch)) * 86400000 + ',
'                        extract(hour from (l_x_date - c_epoch)) * 3600000 +',
'                        extract(minute from (l_x_date - c_epoch)) * 60000 +',
'                        extract(second from (l_x_date - c_epoch)) * 1000;',
'                when ''NUMBER'' then',
'                    l_x_number := l_column_value_list(l_x_column_no).value_list(l_row_num).number_value;',
'            end case;',
'',
'            -- Y is a number, required',
'            l_y := l_column_value_list(l_y_column_no).value_list(l_row_num).number_value;',
'',
'            -- Series, optional',
'            if l_series_column_no is not null then',
'                l_series := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_series_column_no).data_type,',
'                    p_value     => l_column_value_list(l_series_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Tooltip, optional',
'            if l_tooltip_column_no is not null then',
'                l_tooltip := apex_plugin_util.get_value_as_varchar2 (',
'                    p_data_type => l_column_value_list(l_tooltip_column_no).data_type,',
'                    p_value     => l_column_value_list(l_tooltip_column_no).value_list(l_row_num) );',
'            end if;',
'',
'            -- Link, optional',
'            if c_link_target is not null then',
'                l_link := wwv_flow_utilities.prepare_url (',
'                    apex_plugin_util.replace_substitutions (',
'                        p_value  => c_link_target,',
'                        p_escape => false ) );',
'            end if;',
'',
'            -- Print an object representing this data point',
'            if l_row_num > 1 then',
'                sys.htp.prn('','');            ',
'            end if;',
'            sys.htp.prn(',
'                ''{'' ||',
'                    apex_javascript.add_attribute(''series'',  nvl(l_series, c_series_name)) ||',
'                    apex_javascript.add_attribute(''tooltip'', l_tooltip) ||',
'                    apex_javascript.add_attribute(''link'',    l_link) ||',
'                    apex_javascript.add_attribute(''x'',       l_x_number) ||',
'                    apex_javascript.add_attribute(''y'',       l_y, false, false ) ||',
'                ''}'' );',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    sys.htp.prn('']'');',
'    sys.htp.prn(''}'');',
'',
'    return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:NO_DATA_FOUND_MESSAGE'
,p_substitute_attributes=>false
,p_reference_id=>168588084827812
,p_subscribe_plugin_settings=>true
,p_help_text=>'Flot Line Chart is a pure JavaScript plotting library for jQuery, with a focus on simple usage, attractive looks and interactive features.'
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
,p_files_version=>20
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40060057151895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>520
,p_prompt=>'Maximum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'3'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'The maximum aspect ratio that Flot line charts use to recommend a height. A max aspect ratio of 3 means that the chart''s width should be no greater than 3 times its height. It can be overridden by the ''Max Height'' setting on each region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40060449889895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>510
,p_prompt=>'Minimum Aspect Ratio'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'1.333'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'The minimum aspect ratio that Flot line charts use to recommend a height. A min aspect ratio of 1.333 means that the chart''s width should be no less than 1.333 times its height. It can be overridden by the ''Min Height'' setting on each region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40060829413895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>20
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'TIMESTAMP'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'TIMESTAMP'
,p_help_text=>'Select the timestamp column from the region SQL Query that holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40061242983895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>50
,p_prompt=>'Y Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the Y-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40061671541895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>70
,p_prompt=>'Multiple Series'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether to enable multi-series functionality on the chart.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40062040356895116)
,p_plugin_attribute_id=>wwv_flow_api.id(40061671541895116)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40062502621895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>80
,p_prompt=>'Multiple Series Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_default_value=>'SERIES'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40061671541895116)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_help_text=>'Select the column from the region SQL Query that defines the multiple series for the chart. The values from this column will become the labels for the series.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40062901150895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>90
,p_prompt=>'Single Series Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(40061671541895116)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NULL'
,p_help_text=>'Enter the name of the single data series which is shown on the legend.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40063340957895116)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>130
,p_prompt=>'Data Points'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NONE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40080389355895119)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'STEP'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the symbols used to mark the chart''s data points. Use "Don''t show" to disable markers.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40063691471895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>10
,p_display_value=>'Don''t show'
,p_return_value=>'NONE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40064256387895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>20
,p_display_value=>'Circle'
,p_return_value=>'CIRCLE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40064753094895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'SQUARE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40065244846895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>40
,p_display_value=>'Diamond'
,p_return_value=>'DIAMOND'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40065713876895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>50
,p_display_value=>'Cross'
,p_return_value=>'CROSS'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40066254139895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40063340957895116)
,p_display_sequence=>60
,p_display_value=>'Triangle'
,p_return_value=>'TRIANGLE'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40066714946895117)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>100
,p_prompt=>'Axis Titles'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether to include labels on the X-axis and/or the Y-axis. Leave both unselected to hide them.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40067156813895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40066714946895117)
,p_display_sequence=>10
,p_display_value=>'X'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40067641151895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40066714946895117)
,p_display_sequence=>20
,p_display_value=>'Y'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40068184988895117)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>110
,p_prompt=>'X-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(40066714946895117)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'X:Y,X'
,p_help_text=>'The label for the X-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40068509301895117)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>120
,p_prompt=>'Y-Axis Title'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>20
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_api.id(40066714946895117)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'X:Y,Y'
,p_help_text=>'The label for the Y-axis.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40068939871895117)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>160
,p_prompt=>'Tooltips'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Check which attributes are shown on the tooltip for each data point. The ''Custom column'' option allows you to specify text for each individual data point as an additional column in the region SQL Query.</p>',
'<p>Note: Leave all options unchecked to disable the tooltip.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40069310112895117)
,p_plugin_attribute_id=>wwv_flow_api.id(40068939871895117)
,p_display_sequence=>0
,p_display_value=>'Show series name'
,p_return_value=>'SERIES'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40069816365895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40068939871895117)
,p_display_sequence=>10
,p_display_value=>'Show X value'
,p_return_value=>'X'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40070292510895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40068939871895117)
,p_display_sequence=>20
,p_display_value=>'Show Y value'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40070801802895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40068939871895117)
,p_display_sequence=>30
,p_display_value=>'Custom column'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40071343873895118)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>170
,p_prompt=>'Tooltip Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40068939871895117)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'SERIES:X:Y:CUSTOM,SERIES:X:CUSTOM,SERIES:Y:CUSTOM,X:Y:CUSTOM,SERIES:CUSTOM,X:CUSTOM,Y:CUSTOM,CUSTOM'
,p_help_text=>'Enter the column from the region SQL Query that holds the custom tooltip values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40071743706895118)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>180
,p_prompt=>'Legend'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether to display a legend on the chart. The legend will display the names and colors of all the data series.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40072150015895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40071743706895118)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40072650734895118)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>190
,p_prompt=>'Color Scheme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'MODERN'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the color scheme used to render the chart.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40073087771895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>10
,p_display_value=>'Modern'
,p_return_value=>'MODERN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40073544304895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>20
,p_display_value=>'Modern 2'
,p_return_value=>'MODERN2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40074051765895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>30
,p_display_value=>'Solar'
,p_return_value=>'SOLAR'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40074576418895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>40
,p_display_value=>'Metro'
,p_return_value=>'METRO'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40075057537895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>50
,p_display_value=>'SQL Query'
,p_return_value=>'COLUMN'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40075566371895118)
,p_plugin_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_display_sequence=>60
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40076040845895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>200
,p_prompt=>'Colors'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>RGB color notation  (red,green,blue)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'  <dt>RGBA color notation (red,green,blue,alpha)</dt><dd><pre>rgba(0,25,47,0.5)</pre>; or </dd>',
'</dl>'))
,p_help_text=>'Enter a comma-separated list of RGB color strings to use as a color scheme for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40076424084895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>30
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'DATE'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DATE'
,p_help_text=>'Select the date column from the region SQL Query that holds the X-axis values for the chart.'
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
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40076883873895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>40
,p_prompt=>'X Values Column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NUMBER'
,p_help_text=>'Select the number column from the region SQL Query that holds the X-axis values for the chart.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40077198282895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>10
,p_prompt=>'X Values Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TIMESTAMP'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the data type of the X values in your query.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40077653563895119)
,p_plugin_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_display_sequence=>10
,p_display_value=>'TIMESTAMP'
,p_return_value=>'TIMESTAMP'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40078102939895119)
,p_plugin_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_display_sequence=>20
,p_display_value=>'DATE'
,p_return_value=>'DATE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40078594290895119)
,p_plugin_attribute_id=>wwv_flow_api.id(40077198282895119)
,p_display_sequence=>30
,p_display_value=>'NUMBER'
,p_return_value=>'NUMBER'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40079091497895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>230
,p_prompt=>'Minimum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'Enter the minimum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40079554763895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>240
,p_prompt=>'Maximum Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_display_length=>5
,p_max_length=>5
,p_unit=>'px'
,p_is_translatable=>false
,p_help_text=>'The maximum height, in pixels, of the chart. Chart width will adapt to the size of the region.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40079988932895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>60
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a chart entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40080389355895119)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>220
,p_prompt=>'Line Interpolation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'LINE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select how the curvature of the line is fitted for the chart.'
,p_attribute_comment=>'Whether the connection between consecutive data points should be shown as straight lines or as steps.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40080735477895119)
,p_plugin_attribute_id=>wwv_flow_api.id(40080389355895119)
,p_display_sequence=>10
,p_display_value=>'Lines'
,p_return_value=>'LINE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40081288383895119)
,p_plugin_attribute_id=>wwv_flow_api.id(40080389355895119)
,p_display_sequence=>20
,p_display_value=>'Steps'
,p_return_value=>'STEP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40081770576895120)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>140
,p_prompt=>'Fill Area'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select whether the area under the chart line should be filled.'
,p_attribute_comment=>'Whether to color the area below each series.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40082155569895120)
,p_plugin_attribute_id=>wwv_flow_api.id(40081770576895120)
,p_display_sequence=>10
,p_display_value=>' '
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40082667262895120)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>23
,p_display_sequence=>210
,p_prompt=>'Color SQL Query'
,p_attribute_type=>'SQL'
,p_is_required=>true
,p_sql_min_column_count=>2
,p_sql_max_column_count=>2
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40072650734895118)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'COLUMN'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>select ''SALES'', rgb(0,255,0)',
'from dual',
'UNION',
'select ''RESEARCH'', rgba(0,25,47,0.5)',
'from dual;</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Enter a SQL Query that maps a series name to an RGB color. The first column must contain the series names (and those values must match the ones returned from the region SQL) and the second column must have the RGB or RGBA color notation for the serie'
||'s. ',
'Both columns must be VARCHAR2.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40083066476895120)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>150
,p_prompt=>'Value Format Mask'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the format mask used to display the values.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(40087573468895121)
,p_plugin_id=>wwv_flow_api.id(40059755920895116)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>5
);
wwv_flow_api.component_end;
end;
/
