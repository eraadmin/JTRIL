prompt --application/shared_components/plugins/region_type/com_oracle_apex_listreport
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.LISTREPORT
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
 p_id=>wwv_flow_api.id(942152051974749079)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.LISTREPORT'
,p_display_name=>'List Report'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.LISTREPORT'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_list_report( p_region in apex_plugin.t_region ) is',
'    c_group_col          constant varchar2(255) := p_region.attribute_01;',
'    c_color_col          constant varchar2(255) := p_region.attribute_02;',
'    c_title_col          constant varchar2(255) := p_region.attribute_03;',
'    c_link_col           constant varchar2(255) := p_region.attribute_04;',
'    c_row1_attr1_lbl_col constant varchar2(255) := p_region.attribute_05;',
'    c_row1_attr1_val_col constant varchar2(255) := p_region.attribute_06;',
'    c_row1_attr2_lbl_col constant varchar2(255) := p_region.attribute_07;',
'    c_row1_attr2_val_col constant varchar2(255) := p_region.attribute_08;',
'    c_row2_attr1_lbl_col constant varchar2(255) := p_region.attribute_09;',
'    c_row2_attr1_val_col constant varchar2(255) := p_region.attribute_10;',
'    c_row2_attr2_lbl_col constant varchar2(255) := p_region.attribute_11;',
'    c_row2_attr2_val_col constant varchar2(255) := p_region.attribute_12;',
'    c_description_1_col  constant varchar2(255) := p_region.attribute_13;',
'    c_description_2_col  constant varchar2(255) := p_region.attribute_14;',
'    c_description_3_col  constant varchar2(255) := p_region.attribute_15;',
'',
'    l_group_col_no          pls_integer;',
'    l_color_col_no          pls_integer;',
'    l_title_col_no          pls_integer;',
'    l_link_col_no           pls_integer;',
'    l_row1_attr1_lbl_col_no pls_integer;',
'    l_row1_attr1_val_col_no pls_integer;',
'    l_row1_attr2_lbl_col_no pls_integer;',
'    l_row1_attr2_val_col_no pls_integer;',
'    l_row2_attr1_lbl_col_no pls_integer;',
'    l_row2_attr1_val_col_no pls_integer;',
'    l_row2_attr2_lbl_col_no pls_integer;',
'    l_row2_attr2_val_col_no pls_integer;',
'    l_description_1_col_no  pls_integer;',
'    l_description_2_col_no  pls_integer;',
'    l_description_3_col_no  pls_integer;',
'',
'    l_group          varchar2(4000);',
'    l_color          varchar2(4000);',
'    l_color_hex      varchar2(4000);',
'    l_title          varchar2(4000);',
'    l_link           varchar2(4000);',
'    l_row1_attr1_lbl varchar2(4000);',
'    l_row1_attr1_val varchar2(4000);',
'    l_row1_attr2_lbl varchar2(4000);',
'    l_row1_attr2_val varchar2(4000);',
'    l_row2_attr1_lbl varchar2(4000);',
'    l_row2_attr1_val varchar2(4000);',
'    l_row2_attr2_lbl varchar2(4000);',
'    l_row2_attr2_val varchar2(4000);',
'    l_description_1  varchar2(4000);',
'    l_description_2  varchar2(4000);',
'    l_description_3  varchar2(4000);',
'',
'    --',
'    l_no_data_found     varchar2(32767) := p_region.no_data_found_message;',
'    --',
'    l_column_value_list    apex_plugin_util.t_column_value_list2;',
'    l_region_source        varchar2(32767) := p_region.source;',
'',
'    --',
'    l_last_group varchar2(4000) := ''xY#'';',
'',
'    l_found boolean;',
'    l_count pls_integer := 0;',
'begin',
'    -- get the data to be displayed',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => l_region_source,',
'                               p_min_columns    => 3,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name,',
'                               p_max_rows       => p_region.fetched_rows );',
'',
'    -- Get the actual column number for the fields we want.',
'    l_group_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Control Break column'',',
'                        p_column_alias      => c_group_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_color_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Color column'',',
'                        p_column_alias      => c_color_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_title_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Title column'',',
'                        p_column_alias      => c_title_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => true,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_link_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Link column'',',
'                        p_column_alias      => c_link_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr1_lbl_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Attribute Label column'',',
'                        p_column_alias      => c_row1_attr1_lbl_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Attribute Value column'',',
'                        p_column_alias      => c_row1_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr2_lbl_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Attribute Label column'',',
'                        p_column_alias      => c_row1_attr2_lbl_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row1_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Attribute Value column'',',
'                        p_column_alias      => c_row1_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr1_lbl_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Attribute Label column'',',
'                        p_column_alias      => c_row2_attr1_lbl_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr1_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Attribute Value column'',',
'                        p_column_alias      => c_row2_attr1_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr2_lbl_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Attribute Label column'',',
'                        p_column_alias      => c_row2_attr2_lbl_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_row2_attr2_val_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Fourth Attribute Value column'',',
'                        p_column_alias      => c_row2_attr2_val_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_1_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''First Description column'',',
'                        p_column_alias      => c_description_1_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_2_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Second Description column'',',
'                        p_column_alias      => c_description_2_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    l_description_3_col_no := apex_plugin_util.get_column_no (',
'                        p_attribute_label   => ''Third Description column (allows HTML)'',',
'                        p_column_alias      => c_description_3_col,',
'                        p_column_value_list => l_column_value_list,',
'                        p_is_required       => false,',
'                        p_data_type         => apex_plugin_util.c_data_type_varchar2',
'                    );',
'',
'    -- Loop through the data.',
'    for l_row_num in 1..l_column_value_list(1).value_list.count loop',
'        l_count := l_count + 1;',
'',
'        l_group := apex_plugin_util.escape(',
'                    apex_plugin_util.get_value_as_varchar2(',
'                        p_data_type => l_column_value_list(l_group_col_no).data_type,',
'                        p_value     => l_column_value_list(l_group_col_no).value_list(l_row_num) ),',
'                    p_region.escape_output );',
'        if l_color_col_no is not null then',
'            l_color := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_color_col_no).data_type,',
'                            p_value     => l_column_value_list(l_color_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_title_col_no is not null then',
'            l_title := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_title_col_no).data_type,',
'                            p_value     => l_column_value_list(l_title_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_link_col_no is not null then',
'            l_link := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_link_col_no).data_type,',
'                            p_value     => l_column_value_list(l_link_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row1_attr1_lbl_col_no is not null then',
'            l_row1_attr1_lbl := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row1_attr1_lbl_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row1_attr1_lbl_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row1_attr1_val_col_no is not null then',
'            l_row1_attr1_val := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row1_attr1_val_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row1_attr1_val_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row1_attr2_lbl_col_no is not null then',
'            l_row1_attr2_lbl := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row1_attr2_lbl_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row1_attr2_lbl_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row1_attr2_val_col_no is not null then',
'            l_row1_attr2_val := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row1_attr2_val_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row1_attr2_val_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row2_attr1_lbl_col_no is not null then',
'            l_row2_attr1_lbl := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row2_attr1_lbl_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row2_attr1_lbl_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row2_attr1_val_col_no is not null then',
'            l_row2_attr1_val := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row2_attr1_val_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row2_attr1_val_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row2_attr2_lbl_col_no is not null then',
'            l_row2_attr2_lbl := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row2_attr2_lbl_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row2_attr2_lbl_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_row2_attr2_val_col_no is not null then',
'            l_row2_attr2_val := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_row2_attr2_val_col_no).data_type,',
'                            p_value     => l_column_value_list(l_row2_attr2_val_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_description_1_col_no is not null then',
'            l_description_1 := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_description_1_col_no).data_type,',
'                            p_value     => l_column_value_list(l_description_1_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_description_2_col_no is not null then',
'            l_description_2 := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_description_2_col_no).data_type,',
'                            p_value     => l_column_value_list(l_description_2_col_no).value_list(l_row_num) ),',
'                        p_region.escape_output );',
'        end if;',
'',
'        if l_description_3_col_no is not null then',
'            l_description_3 := apex_plugin_util.escape(',
'                        apex_plugin_util.get_value_as_varchar2(',
'                            p_data_type => l_column_value_list(l_description_3_col_no).data_type,',
'                            p_value     => l_column_value_list(l_description_3_col_no).value_list(l_row_num) ),',
'                        false );',
'        end if;',
'',
'        -- Limit it down to the colors we support.',
'        l_color := initcap(l_color);',
'        if l_color not in (''Red'',''Black'',''Yellow'',''Green'') then',
'            l_color_hex := l_color;',
'            l_color     := '''';',
'        else',
'            l_color_hex := '''';',
'        end if;',
'',
'        -- Begin actual rendering code.',
'        if l_last_group != l_group then',
'            l_last_group := l_group;',
'',
'            if l_count > 1 then',
'                -- Not the first row; close the previous group.',
'                sys.htp.p(''</ul></div>'');',
'            end if;',
'',
'            sys.htp.p(''<div class="timelineStatusList textHeadings">'');',
'            sys.htp.p(''<h3>''||l_group||''</h3>'');',
'            sys.htp.p(''<ul>'');',
'        end if;',
'',
'        sys.htp.p(''<li><span class="itemDate"></span>'');',
'        if l_color is not null then',
'            sys.htp.p(''<div class="status''||l_color||''">'');',
'        else',
'            sys.htp.p(''<div style="border-left-color: ''||l_color_hex||''">'');',
'        end if;',
'        sys.htp.p(''<span class="itemDesc">'');',
'        sys.htp.p(''<h4><a href="''||apex_util.prepare_url(l_link)||''">''||l_title||''</a></h4>'');',
'',
'        if l_row1_attr1_lbl is not null or l_row1_attr1_val is not null',
'                or l_row1_attr2_lbl is not null or l_row1_attr2_val is not null then',
'            sys.htp.prn(''<p>'');',
'            if l_row1_attr1_lbl is not null and l_row1_attr1_val is not null then',
'                sys.htp.prn(''<span><strong>''||l_row1_attr1_lbl||''</strong> ''',
'                    ||l_row1_attr1_val||''</span>'');',
'            elsif l_row1_attr1_lbl is null and l_row1_attr1_val is not null then',
'                sys.htp.prn(''<span>''||l_row1_attr1_val||''</span>'');',
'            elsif l_row1_attr1_lbl is not null and l_row1_attr1_val is null then',
'                sys.htp.prn(''<span><strong>''||l_row1_attr1_lbl||''</strong></span>'');',
'            else',
'                -- No attr1.',
'                null;',
'            end if;',
'',
'            if l_row1_attr2_lbl is not null and l_row1_attr2_val is not null then',
'                sys.htp.prn(''<span><strong>''||l_row1_attr2_lbl||''</strong> ''',
'                    ||l_row1_attr2_val||''</span>'');',
'            elsif l_row1_attr2_lbl is null and l_row1_attr2_val is not null then',
'                sys.htp.prn(''<span>''||l_row1_attr2_val||''</span>'');',
'            elsif l_row1_attr2_lbl is not null and l_row1_attr2_val is null then',
'                sys.htp.prn(''<span><strong>''||l_row1_attr2_lbl||''</strong></span>'');',
'            else',
'                -- No attr2.',
'                null;',
'            end if;',
'            sys.htp.prn(''</p>'');',
'        end if;',
'',
'        if l_row2_attr1_lbl is not null or l_row2_attr1_val is not null',
'                or l_row2_attr2_lbl is not null or l_row2_attr2_val is not null then',
'            sys.htp.prn(''<p>'');',
'            if l_row2_attr1_lbl is not null and l_row2_attr1_val is not null then',
'                sys.htp.prn(''<span><strong>''||l_row2_attr1_lbl||''</strong> ''',
'                    ||l_row2_attr1_val||''</span>'');',
'            elsif l_row2_attr1_lbl is null and l_row2_attr1_val is not null then',
'                sys.htp.prn(''<span>''||l_row2_attr1_val||''</span>'');',
'            elsif l_row2_attr1_lbl is not null and l_row2_attr1_val is null then',
'                sys.htp.prn(''<span><strong>''||l_row2_attr1_lbl||''</strong></span>'');',
'            else',
'                -- No attr3.',
'                null;',
'            end if;',
'',
'            if l_row2_attr2_lbl is not null and l_row2_attr2_val is not null then',
'                sys.htp.prn(''<span><strong>''||l_row2_attr2_lbl||''</strong> ''',
'                    ||l_row2_attr2_val||''</span>'');',
'            elsif l_row2_attr2_lbl is null and l_row2_attr2_val is not null then',
'                sys.htp.prn(''<span>''||l_row2_attr2_val||''</span>'');',
'            elsif l_row2_attr2_lbl is not null and l_row2_attr2_val is null then',
'                sys.htp.prn(''<span><strong>''||l_row2_attr2_lbl||''</strong></span>'');',
'            else',
'                -- No attr4.',
'                null;',
'            end if;',
'            sys.htp.prn(''</p>'');',
'        end if;',
'',
'        if l_description_1 is not null then',
'            sys.htp.prn(''<p><span>''||l_description_1||''</span></p>'');',
'        end if;',
'',
'        if l_description_2 is not null then',
'            sys.htp.prn(''<p><span>''||l_description_2||''</span></p>'');',
'        end if;',
'',
'        if l_description_3 is not null then',
'            sys.htp.prn(''<p><span>''||l_description_3||''</span></p>'');',
'        end if;',
'',
'        sys.htp.prn(''</span></div></li>'');',
'    end loop;',
'    if l_count > 0 then',
'        -- Close the HTML.',
'        sys.htp.p(''</ul></div>'');',
'    else',
'        sys.htp.p(''<span class="nodatafound">''||l_no_data_found||''</span>'');',
'    end if;',
'end render_list_report;',
'',
'function render ( p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin, p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    render_list_report( p_region );',
'    return null;',
'end;'))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'SOURCE_SQL:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_reference_id=>875838507064367429
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_plugin_comment=>'Requires APEX 4.2.4.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945574732366391345)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Control Break column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945575135086391345)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Color column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945575561273391346)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Title column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945575954584391346)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945576332759391346)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'First Attribute Label column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945576740648391347)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'First Attribute Value column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945577145685391347)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Second Attribute Label column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945577561541391347)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Second Attribute Value column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945577948339391347)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Third Attribute Label column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945578338985391347)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Third Attribute Value column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945578740035391348)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Fourth Attribute Label column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945579158306391348)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Fourth Attribute Value column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945579531055391348)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'First Description column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945579943698391348)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Second Description column'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(945580355825391348)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Third Description column (allows HTML)'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(37399949915517275)
,p_plugin_id=>wwv_flow_api.id(942152051974749079)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>3
);
wwv_flow_api.component_end;
end;
/
