prompt --application/shared_components/plugins/item_type/com_oracle_apex_tags
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.TAGS
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
 p_id=>wwv_flow_api.id(17503398173827439706)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.TAGS'
,p_display_name=>'Tags'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.TAGS'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function format_tags (',
'    p_format_type in varchar2,',
'    p_tags        in varchar2 )',
'    return varchar2',
'is',
'begin',
'    return case p_format_type',
'             when ''NONE''  then p_tags',
'             when ''LOWER'' then lower(p_tags)',
'             when ''UPPER'' then upper(p_tags)',
'           end;',
'end format_tags;',
'',
'',
'--==============================================================================',
'-- Renders the autocomplete item type based on the defined attributes in',
'-- p_item.',
'--==============================================================================',
'function render (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- It''s very important to escape the value and only use that version for the HTML output!',
'    l_escaped_value varchar2(32767);',
'    l_name          varchar2(30);',
'',
'    l_format_type   varchar2(10) := nvl(p_plugin.attribute_01, ''NONE'');',
'    ',
'    l_result        apex_plugin.t_page_item_render_result;',
'begin',
'    l_escaped_value := apex_escape.html (',
'                           format_tags (',
'                               p_format_type => l_format_type,',
'                               p_tags        => p_value ));',
'',
'    -- Based on the flags we normally generate different HTML code, but that',
'    -- depends on the plug-in.',
'    if p_is_readonly or p_is_printer_friendly then',
'        wwv_flow_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        --',
'        wwv_flow_plugin_util.print_display_only (',
'            p_item_name        => p_item.name,',
'            p_display_value    => l_escaped_value,',
'            p_show_line_breaks => false,',
'            p_escape           => false,',
'            p_attributes       => p_item.element_attributes );',
'    else',
'        -- If a page item saves state, we have to call the get_input_name_for_page_item',
'        -- to render the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := apex_plugin.get_input_name_for_page_item(false);',
'',
'        -- render the tags widget',
'        sys.htp.prn (',
'            ''<input type="text" name="''||l_name||''" id="''||p_item.name||''" ''||',
'            ''size="''||p_item.element_width||''" maxlength="''||p_item.element_max_length||''" ''||',
'            coalesce(p_item.element_attributes, ''class="tags" '')||',
'            ''value="''||l_escaped_value||''">'' );',
'',
'        -- Register the javascript library the plug-in uses.',
'        -- The add_library call will make sure that just one instance of the',
'        -- library is loaded when the plug-in is used multiple times on the page.',
'        apex_javascript.add_library (',
'            p_name      => ''apex.jquery.autocomplete.min'',',
'            p_directory => wwv_flow.g_image_prefix||''libraries/jquery-autocomplete/1.1/'',',
'            p_version   => null );',
'',
'        apex_javascript.add_library (',
'            p_name      => ''com_oracle_apex_tags'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'',
'        apex_javascript.add_onload_code (',
'            p_code => ''com_oracle_apex_tags(''||',
'                          ''"#''||p_item.name||''",''||',
'                          ''{''||',
'                          apex_javascript.add_attribute(''dependingOn'',       apex_plugin_util.page_item_names_to_jquery(p_item.lov_cascade_parent_items))||',
'                          apex_javascript.add_attribute(''optimizeRefresh'',   p_item.ajax_optimize_refresh)||',
'                          apex_javascript.add_attribute(''pageItemsToSubmit'', apex_plugin_util.page_item_names_to_jquery(p_item.ajax_items_to_submit))||',
'                          apex_javascript.add_attribute(''ajaxIdentifier'',    apex_plugin.get_ajax_identifier, false, false)||',
'                          ''});'' );',
'',
'        l_result.is_navigable := true;',
'    end if;',
'    --',
'    return l_result;',
'    --',
'end render;',
'--',
'--',
'--==============================================================================',
'-- Returns the possible values restricted by the value specified in wwv_flow.g_x01.',
'--==============================================================================',
'function ajax (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin )',
'    return apex_plugin.t_page_item_ajax_result',
'is',
'    -- Dynamic attribute mapping',
'    l_search_string     varchar2(32767) := apex_application.g_x01;',
'',
'    l_column_value_list apex_plugin_util.t_column_value_list;',
'    ',
'    l_result            apex_plugin.t_page_item_ajax_result;',
'begin',
'    -- Write header for the output.',
'    sys.owa_util.mime_header(''text/plain'', false);',
'    sys.htp.p(''Cache-Control: no-cache'');',
'    sys.htp.p(''Pragma: no-cache'');',
'    sys.owa_util.http_header_close;',
'',
'    -- Get all data',
'    l_column_value_list := apex_plugin_util.get_data (',
'                               p_sql_statement  => p_item.lov_definition,',
'                               p_min_columns      => 1,',
'                               p_max_columns      => 1,',
'                               p_component_name   => p_item.name,',
'                               p_search_type      => apex_plugin_util.c_search_contains_ignore,',
'                               p_search_column_no => 1,',
'                               p_search_string    => upper(l_search_string),',
'                               p_max_rows         => 10 );',
'',
'    -- Just write each row into a new line. Escaping is done by com_oracle_apex_tags.js',
'    for i in 1 .. l_column_value_list(1).count',
'    loop',
'        sys.htp.p(l_column_value_list(1)(i));',
'    end loop;',
'    --',
'    return l_result;',
'    --',
'exception when others then',
'    sys.htp.p(wwv_flow_lang.system_message(''ajax_server_error'', apex_escape.html(sqlerrm), p_item.name));',
'end ajax;',
'--',
'--',
'--==============================================================================',
'-- Validates the submitted value if it is contained in the list of possible values.',
'--==============================================================================',
'function validate (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_value  in varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    l_format_type       varchar2(10) := nvl(p_plugin.attribute_01, ''NONE'');',
'',
'    l_sql_handler       wwv_flow_plugin_util.t_sql_handler;',
'    l_column_value_list apex_plugin_util.t_column_value_list;',
'    l_tag_list          wwv_flow_global.vc_arr2;',
'    l_tag               varchar2(32767);',
'    l_final_tags        varchar2(32767);',
'begin',
'    -- get all tags from our page item value',
'    l_tag_list := wwv_flow_utilities.string_to_table (',
'                      format_tags (',
'                           p_format_type => l_format_type,',
'                           p_tags        => p_value ),',
'                      '','' );',
'',
'    if l_tag_list.count > 0 then',
'        if l_format_type in (''LOWER'', ''UPPER'') then',
'            -- for lower and upper formatting we just clean up the tags from',
'            -- unnecessary spaces, ...',
'            for i in 1 .. l_tag_list.count',
'            loop',
'                l_tag := trim(l_tag_list(i));',
'                if l_tag is not null then',
'                    l_final_tags := l_final_tags ||',
'                                    case when l_final_tags is not null then '', '' end||',
'                                    l_tag;',
'                end if;',
'            end loop;',
'',
'        elsif l_format_type = ''NONE'' then',
'            -- Get the tags in the format as they have already been stored in the tag table',
'',
'            -- We use the more complicated get_sql_handler and prepare_query so that',
'            -- the SQL statement is just parsed once when we search for the different tags',
'            l_sql_handler := apex_plugin_util.get_sql_handler (',
'                                 p_sql_statement  => p_item.lov_definition,',
'                                 p_min_columns    => 1,',
'                                 p_max_columns    => 1,',
'                                 p_component_name => p_item.name );',
'    ',
'            apex_plugin_util.prepare_query (',
'                p_sql_handler      => l_sql_handler,',
'                p_search_type      => apex_plugin_util.c_search_exact_ignore,',
'                p_search_column_no => 1,',
'                p_max_rows         => 1 /* we are just interested in the first hit */',
'                );',
'    ',
'            -- Check each tag with a case insensitive search if it already exists.',
'            -- If we find it we use the existing writing of the tag (for example "ApEx"',
'            -- instead of the entered "apex") for our final tag list. None existing tags',
'            -- are added as they have been entered.',
'            for i in 1 .. l_tag_list.count',
'            loop',
'                l_tag := trim(l_tag_list(i));',
'                if l_tag is not null then',
'                    l_column_value_list := apex_plugin_util.get_data (',
'                                               p_sql_handler      => l_sql_handler,',
'                                               p_search_column_no => 1,',
'                                               p_search_string    => upper(l_tag) );',
'    ',
'                    -- we have found a tag, but make sure that it''s the same tag',
'                    -- because get_data uses a LIKE tag% search and if we enter',
'                    -- "Oracle" we don''t want to replace it with "Oracle APEX".',
'                    if l_column_value_list(1).count = 1 and',
'                       upper(l_column_value_list(1)(1)) = upper(l_tag)',
'                    then',
'                        l_tag := l_column_value_list(1)(1);',
'                    end if;',
'        ',
'                    l_final_tags := l_final_tags ||',
'                                    case when l_final_tags is not null then '', '' end||',
'                                    l_tag;',
'                end if;',
'            end loop;',
'        ',
'            apex_plugin_util.free_sql_handler(l_sql_handler);',
'        end if;',
'    end if;',
'',
'    htmldb_util.set_session_state(p_item.name, l_final_tags);',
'',
'    return null;',
'exception when others then',
'    wwv_flow_plugin_util.free_sql_handler(l_sql_handler);',
'    raise;',
'end validate;'))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_validation_function=>'validate'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ELEMENT:WIDTH:ENCRYPT:LOV:CASCADING_LOV'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(644565153074376493)
,p_plugin_id=>wwv_flow_api.id(17503398173827439706)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Formatting of Tags'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NONE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(644565545574376493)
,p_plugin_attribute_id=>wwv_flow_api.id(644565153074376493)
,p_display_sequence=>10
,p_display_value=>'None'
,p_return_value=>'NONE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(644566070260376493)
,p_plugin_attribute_id=>wwv_flow_api.id(644565153074376493)
,p_display_sequence=>20
,p_display_value=>'Lowercase'
,p_return_value=>'LOWER'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(644566562462376494)
,p_plugin_attribute_id=>wwv_flow_api.id(644565153074376493)
,p_display_sequence=>30
,p_display_value=>'Uppercase'
,p_return_value=>'UPPER'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(37400380984517275)
,p_plugin_id=>wwv_flow_api.id(17503398173827439706)
,p_name=>'LOV'
,p_sql_min_column_count=>1
,p_sql_max_column_count=>1
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'<strong>Example 1: Get available tags from tag table</strong>',
'<pre>',
'SELECT tag',
'  FROM your_tag_table',
' ORDER BY 1',
'</pre>',
'</p>',
'',
'<p>',
'<b>Example 2: Use the DISTINCT command if your tag table doesn''t store unique tags.</b>',
'<pre>',
'SELECT DISTINCT tag',
'  from apa$dl_tags',
' ORDER BY 1',
'</pre>',
'</p>',
''))
);
wwv_flow_api.component_end;
end;
/
