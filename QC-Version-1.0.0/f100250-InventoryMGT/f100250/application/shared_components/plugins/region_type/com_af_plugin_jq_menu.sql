prompt --application/shared_components/plugins/region_type/com_af_plugin_jq_menu
begin
--   Manifest
--     PLUGIN: COM.AF.PLUGIN.JQ.MENU
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
 p_id=>wwv_flow_api.id(69585525039618385)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.AF.PLUGIN.JQ.MENU'
,p_display_name=>'jquery.menu'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.AF.PLUGIN.JQ.MENU'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =============================================================================',
'--',
'--   ____________________________  __    __________                ______                                ',
'--   ___    |__  __ \__  ____/_  |/ /    ___  ____/___________________  /_____ __________________________',
'--   __  /| |_  /_/ /_  __/  __    /     __  /_   __  ___/  _ \  _ \_  /_  __ `/_  __ \  ___/  _ \_  ___/',
'--   _  ___ |  ____/_  /___  _    |      _  __/   _  /   /  __/  __/  / / /_/ /_  / / / /__ /  __/  /    ',
'--   /_/  |_/_/     /_____/  /_/|_|      /_/      /_/    \___/\___//_/  \__,_/ /_/ /_/\___/ \___//_/     ',
'--                                                                                                    ',
'--',
'-- =============================================================================',
'--',
'-- Plugin        : com.af.plugin.jq.menu',
'-- Description   : This region plugin has been written to generate a dynamic menu',
'--                 See http://www.filamentgroup.com/lab/jquery_ipod_style_and_flyout_menus/',
'--                 for more details about the jQuery plugin in use',
'--',
'-- Author        : Matt Nolan',
'-- Email         : matt.nolan@theapexfreelancer.com',
'-- Twitter       : apex_freelancer',
'-- Webiste       : www.theapexfreelancer.com',
'-- Demo          : http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:::',
'-- Documentation : http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:DOCUMENTATION::',
'-- Created       : 18-Jan-2011',
'--',
'-- =============================================================================',
'  --',
'  -- Change Log',
'  --',
'  -- Date         Author              Description',
'  -- ------------ ------------------- --------------------------------------------',
'  -- 18-Jan-2011  Matt Nolan          Plugin Created.',
'  -- 10-Feb-2011  Matt Nolan          Adding in support for ordering the menu',
'  --                                  children and removing logger.log references',
'  -- =============================================================================',
'  --',
'  --',
'  -- ============================================================',
'  -- menu_children - I''ve split getting the mneu items into two',
'  --                 procedures. Menu children is for generating the',
'  --                 menu items (including submenus recursively).',
'  -- ============================================================',
'  PROCEDURE menu_children',
'  ( p_id          IN VARCHAR2',
'  , p_sql         IN VARCHAR2',
'  , p_id_column   IN NUMBER',
'  , p_text_column IN NUMBER',
'  , p_url_column  IN NUMBER',
'  , p_order_by    IN VARCHAR2',
'  )',
'  IS',
'    --',
'    -- Our plugin SQL execution variables',
'    --',
'    l_sql_handler     APEX_PLUGIN_UTIL.t_sql_handler;',
'    l_row_set         APEX_PLUGIN_UTIL.t_column_value_list;',
'    l_sql_exec        VARCHAR2(32767);',
'    --',
'    -- Variables for our ref cursor which is a dynamic SQL statement',
'    --',
'    TYPE ref_cursor IS REF CURSOR;',
'    c_cur             REF_CURSOR;',
'    l_count           PLS_INTEGER;',
'  BEGIN',
'    l_sql_exec := ''SELECT v.*, level',
'                   FROM   (''||p_sql||'') v',
'                   WHERE  level = 1',
'                   CONNECT BY PRIOR id=pid',
'                   START WITH pid = ''||p_id||'' ORDER SIBLINGS BY ''||p_order_by;',
'  ',
'  ',
'    --  Begin to process the query',
'    --',
'    -- We''re going to use the APEX_PLUGIN_UTIL package to do all of our processing as it will',
'    -- take care of the binding to Page items, etc.',
'    --',
'    -- First thing we need to do is create the cursor handle using',
'    -- APEX_PLUGIN_UTIL.GET_SQL_HANDLER',
'    --',
'    -- We''re limiting the minimum number of columns to 2 and the Max to 100.',
'    -- Minimum = 2 because we need the ID and at least one "displayed" column',
'    --',
'    l_sql_handler := APEX_PLUGIN_UTIL.GET_SQL_HANDLER ',
'                 ( p_sql_statement  => l_sql_exec',
'                 , p_min_columns    => 2',
'                 , p_max_columns    => 100 ',
'                 , p_component_name => NULL);',
'    --',
'    -- Now prepare the query. This is where all the binding is done.',
'    --',
'    APEX_PLUGIN_UTIL.PREPARE_QUERY',
'    ( l_sql_handler ) ;',
'    --',
'    -- Now we get the data using get_data. We''re using this one as we don''t need the',
'    -- data to come back in their natural data types. We''re going to slip them into HTML',
'    -- anyway so they will end up being strings.',
'    --',
'    l_row_set := APEX_PLUGIN_UTIL.GET_DATA ',
'                 ( l_sql_handler ) ;',
'    --',
'    --',
'    -- ============================',
'    --    Menu Widget HTML Markup',
'    -- ============================',
'    -- We are going to recursively loop through our heirarchical query as this ',
'    -- represents our menu items and sub menu items',
'    --',
'    -- The way that the APEX_PLUGIN_UTIL deals with the l_row_set that it returns ',
'    -- is : l_row_set(COLUMNS)(ROWS)',
'    --',
'    -- Create the <UL> unordered list of menu items',
'    --',
'    sys.htp.p ( ''   <ul>'' ) ;',
'    FOR row IN 1..l_row_set(1).count  -- Number of rows',
'    LOOP',
'      sys.htp.p ( ''      <li>'' ) ;',
'      --',
'      -- This is for my development environment',
'      --',
'      IF v(''APP_ALIAS'') = ''APEXFREELANCER'' AND v(''APP_PAGE_ID'') = ''18'' THEN',
'        sys.htp.prn ( ''         <a href="javascript:alert(''''You clicked me.'''');">'' ) ;',
'      ELSE',
'        sys.htp.prn ( ''         <a href="''||APEX_APPLICATION.DO_SUBSTITUTIONS(nvl(l_row_set(p_url_column)(row),''#''))||''">'' ) ;',
'      END IF;',
'      sys.htp.p (nvl(APEX_APPLICATION.DO_SUBSTITUTIONS(l_row_set(p_text_column)(row)), ''No text defined!'')||''</a>'' ) ;',
'  ',
'      --',
'      -- Lets check for any sub menu items',
'      --',
'      OPEN c_cur FOR',
'       ''SELECT ( count(*) -1 ) cn_count',
'        FROM ( SELECT connect_by_root(id) root',
'               FROM   (''||p_sql||'')',
'               CONNECT BY pid = prior id',
'             )',
'        WHERE  root = :root_id',
'        GROUP BY root'' USING l_row_set(p_id_column)(row);',
'      LOOP',
'        FETCH c_cur INTO l_count;',
'        EXIT WHEN c_cur%NOTFOUND;',
'        IF l_count > 0 THEN',
'          --',
'          -- Child nodes detected, lets recursively fetch them',
'          --',
'          menu_children',
'          ( p_id          => l_row_set(p_id_column)(row)',
'          , p_sql         => p_sql',
'          , p_id_column   => p_id_column',
'          , p_text_column => p_text_column',
'          , p_url_column  => p_url_column',
'          , p_order_by    => p_order_by',
'          );',
'        END IF;',
'      END LOOP;',
'      CLOSE c_cur;',
'  ',
'      sys.htp.p ( ''      </li>'' ) ;',
'    END LOOP;',
'    sys.htp.p ( ''   </ul>'' ) ;',
'    --',
'    -- Always remember to close your cursor by freeing the SQL Handler',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And if we get an error',
'    --',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    IF c_cur%ISOPEN THEN',
'      CLOSE c_cur;',
'    END IF;',
'    --',
'    -- Again, Close that cursor',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ',
'    ( l_sql_handler ) ;',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    RAISE;',
'    --',
'  END menu_children;',
'  --',
'  -- ============================================================',
'  --   menu_root - I''ve split getting the menu items into two',
'  --               procedures. Menu root is for generating the',
'  --               menu buttons/holder. I''ve also added support for ',
'  --               turning the existing breadcrumb into a menu',
'  --               as well as page tabs',
'  -- ============================================================',
'  PROCEDURE menu_root',
'  ( p_sourceSQL IN VARCHAR2',
'  , p_region    IN apex_plugin.t_region ',
'  , p_css_class IN VARCHAR2',
'  )',
'  IS',
'  ',
'    l_menu_type       VARCHAR2(50) := ''BUTTON'';',
'    --',
'    -- Our plugin SQL execution variables',
'    --',
'    l_sql_handler     APEX_PLUGIN_UTIL.t_sql_handler;',
'    l_row_set         APEX_PLUGIN_UTIL.t_column_value_list;',
'    l_sql_exec        VARCHAR2(32767);',
'    l_orderBy         apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'   --',
'    -- We allow the query columns to be defined in any order since we can''t',
'    -- control the order of the query through the interface. Even yhough',
'    -- we show an example... just a little extra flexibility for people who don''t',
'    -- like too much rigid structure',
'    --',
'    l_id_column           PLS_INTEGER;',
'    l_pid_column          PLS_INTEGER;',
'    l_text_column         PLS_INTEGER;',
'    l_url_column          PLS_INTEGER;  ',
'    l_display_seq_column  PLS_INTEGER;  ',
'    --',
'    -- Variables for our ref cursor which is a dynamic SQL statement',
'    --',
'    TYPE ref_cursor IS REF CURSOR;',
'    c_cur             REF_CURSOR;',
'    l_count           PLS_INTEGER;',
'    --',
'    -- The following 2 variables are required for building the DOM ID for ',
'    -- each menu section',
'    --',
'    l_id              VARCHAR2(500);',
'    l_id_type         VARCHAR2(20);',
'    ',
'    l_source_sql      VARCHAR2(32767) := regexp_replace(p_sourceSQL,'':([a-zA-Z0-9_]*)?(\s|$)'',''v(''''\1'''')'');',
'  BEGIN',
'    --IF apex_application.g_debug THEN',
'    --  logger.log(l_source_sql);',
'    --END IF;',
'    ',
'    --',
'    -- Lets make any necessary adjustments to our order by clause for ',
'    -- case insensitivity',
'    --',
'    l_orderBy :=  CASE l_orderBy',
'                    WHEN ''text'' THEN',
'                      ''lower(text)''',
'                    WHEN ''url'' THEN',
'                      ''lower(url), lower(text)''',
'                    ELSE',
'                      l_orderBy||'', lower(text)''',
'                  END;',
'        ',
'    --',
'    -- Lets work out what type of menu we are producing based on checking the',
'    -- SQL query',
'    --',
'    CASE ',
'      WHEN regexp_instr(p_sourceSQL,''page tabs'',1,1,0,''i'') > 0 THEN',
'        l_menu_type := ''PAGETABS'';',
'        l_id_type   := ''pt-'';',
'      WHEN regexp_instr(p_sourceSQL,''apex_application_bc_entries'',1,1,0,''i'') > 0 THEN',
'        l_menu_type := ''BREADCRUMB'';',
'        l_id_type   := ''bc-'';',
'      ELSE',
'        l_menu_type := ''BUTTON'';',
'    END CASE;',
'  ',
'    --',
'    -- The SQL we accept is in a flat structure e.g.',
'    -- SELECT id,pid,text,url',
'    -- FROM   mytable',
'    --',
'    -- We need to turn it into a hierarchical query. This reduces the',
'    -- complexity for the end users query which is an added benefit for them',
'    --',
'    l_sql_exec := ''SELECT v.*, level',
'                   FROM   (''||l_source_sql||'') v',
'                   WHERE  level = 1',
'                   CONNECT BY PRIOR id=pid',
'                   START WITH pid IS NULL',
'                   ORDER BY ''||l_orderBy;',
'  ',
'  ',
'    --  Begin to process the query',
'    --',
'    -- We''re going to use the APEX_PLUGIN_UTIL package to do all of our processing as it will',
'    -- take care of the binding to Page items, etc.',
'    --',
'    -- First thing we need to do is create the cursor handle using',
'    -- APEX_PLUGIN_UTIL.GET_SQL_HANDLER',
'    --',
'    -- We''re limiting the minimum number of columns to 4 and the Max to 4.',
'    -- as 4 the columns make up our menu items, e.g.',
'    --',
'    -- ID   - the unique identifier of our menu item',
'    -- PID  - the parent ID that the menu item belongs to or NULL for the menu root',
'    -- TEXT - the menu item text',
'    -- URL  - the URL to open when the menu item is selected.',
'    --',
'    l_sql_handler := APEX_PLUGIN_UTIL.GET_SQL_HANDLER ',
'                 ( p_sql_statement  => l_sql_exec',
'                 , p_min_columns    => 6',
'                 , p_max_columns    => 6 ',
'                 , p_component_name => NULL);',
'    --',
'    -- Now prepare the query. This is where all the binding is done.',
'    --',
'    APEX_PLUGIN_UTIL.PREPARE_QUERY ( l_sql_handler ) ;',
'',
'    --',
'    -- Lets perform a check and make sure our query has all the columns we require',
'    --',
'    FOR col IN 1..l_sql_handler.column_list.count',
'    LOOP',
'     CASE upper(l_sql_handler.column_list ( col ) .col_name )',
'       WHEN ''ID'' THEN',
'         l_id_column := col;',
'       WHEN ''PID'' THEN',
'         l_pid_column := col;',
'       WHEN ''TEXT'' THEN',
'         l_text_column := col;',
'       WHEN ''URL'' THEN',
'         l_url_column := col;',
'       WHEN ''DISPLAY_SEQ'' THEN',
'         l_display_seq_column := col;',
'       ELSE',
'         NULL;',
'     END CASE;',
'    END LOOP;',
'    --',
'    -- We will raise an error if our expected column names are not defined',
'    --',
'    IF l_id_column IS NULL THEN',
'      raise_application_error(-20001, ''ID column not defined in SQL query'');',
'    ELSIF l_pid_column IS NULL THEN',
'      raise_application_error(-20001, ''PID column not defined in SQL query'');',
'    ELSIF l_text_column IS NULL THEN',
'      raise_application_error(-20001, ''TEXT column not defined in SQL query'');',
'    ELSIF l_url_column IS NULL THEN',
'      raise_application_error(-20001, ''URL column not defined in SQL query'');',
'    ELSIF l_display_seq_column IS NULL THEN',
'      raise_application_error(-20001, ''DISPLAY_SEQ column not defined in SQL query'');',
'    END IF;',
'  ',
'    --',
'    -- Now we get the data using get_data. We''re using this one as we don''t need the',
'    -- data to come back in their natural data types. We''re going to slip them into HTML',
'    -- anyway so they will end up being strings.',
'    --',
'    l_row_set := APEX_PLUGIN_UTIL.GET_DATA ( l_sql_handler ) ;',
'',
'    IF l_menu_type = ''BUTTON'' THEN',
'      --',
'      -- ============================',
'      --    Menu Widget HTML Markup',
'      -- ============================',
'      -- We are going to loop through level 1 of our heirarchical query as this ',
'      -- represents our buttons',
'      --',
'      -- The way that the APEX_PLUGIN_UTIL deals with the l_row_set that it returns is :',
'      --      l_row_set(COLUMNS)(ROWS)',
'      --',
'      sys.htp.p ( ''<div class="fg-toolbar">'' ) ;',
'      sys.htp.p ( ''<div class="fg-buttonset">'' ) ;',
'      FOR row IN 1..l_row_set(1).count  -- Number of rows (via accessing column 1)',
'      LOOP',
'        --',
'        -- We will generate our DOM ID, we need to cater for mutliple uses of the',
'        -- same menu for creadcrumbs, tabs, custom query etc.',
'        --',
'        l_id := ''jqmenu-''||l_id_type|| replace(l_row_set(l_text_column)(row),'' '','''');',
'        sys.htp.p ( ''<a id="''||l_id||''" href="#" class="fg-button ui-state-default ui-corner-all ''||p_css_class||''"><span>'' ) ;',
'        --',
'        -- We add a jQuery UI icon to indicate that the button is a drop down menu',
'        --',
'        sys.htp.p (l_row_set(l_text_column)(row)||''</span><span class="ui-icon ui-icon-triangle-1-s" style="display:inline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></a>'' ) ;',
'      END LOOP;',
'      sys.htp.p ( ''</div>'' ) ;',
'      sys.htp.p ( ''</div>'' ) ;',
'    END IF;',
'      ',
'    FOR row IN 1..l_row_set(1).count  -- Number of rows',
'    LOOP',
'      --',
'      -- We will generate our DOM ID, we need to cater for mutliple uses of the',
'      -- same menu for breadcrumbs, tabs, custom query etc.',
'      --',
'      l_id := ''jqmenu-''||l_id_type|| replace(l_row_set(l_text_column)(row),'' '','''');',
'      --',
'      -- We need to wrap our menu HTML into a hidden DIV as the contents will only be',
'      -- displayed when clicking on the menu',
'      --',
'      sys.htp.p (''<div class="hidden ''||l_id||''">'' ) ;',
'      --',
'      -- Lets retrieve our menu items, I perform the connect by to keep things',
'      -- simple for the developer',
'      --',
'      OPEN c_cur FOR',
'       ''SELECT ( count(*) -1 ) cn_count',
'        FROM ( SELECT connect_by_root(id) root',
'               FROM   (''||l_source_sql||'')',
'               CONNECT BY pid = prior id',
'             )',
'        WHERE  root = :root_id',
'        GROUP BY root'' USING l_row_set(l_id_column)(row);',
'      LOOP',
'        FETCH c_cur INTO l_count;',
'        EXIT WHEN c_cur%NOTFOUND;',
'        IF l_count > 0 THEN',
'          --',
'          -- Menu child items detected, lets fetch them',
'          --',
'          menu_children',
'          ( p_id          => l_row_set(l_id_column)(row)',
'          , p_sql         => l_source_sql',
'          , p_id_column   => l_id_column',
'          , p_text_column => l_text_column',
'          , p_url_column  => l_url_column',
'          , p_order_by    => l_orderBy',
'          );',
'        END IF;',
'      END LOOP;',
'      CLOSE c_cur;',
'  ',
'      sys.htp.p ( ''</div>'' ) ;',
'    END LOOP;',
'    --',
'    -- Always remember to close your cursor by freeing the SQL Handler',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And if we ge an error',
'    --',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    IF c_cur%ISOPEN THEN',
'      CLOSE c_cur;',
'    END IF;',
'    --',
'    -- Again, Close that cursor',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    raise;',
'    --',
'  END menu_root;',
'  -- =======================================================================================',
'  -- apexplugin_render - The Entry Point for the plugin. This is what gets executed when the',
'  --                     plugin is called.',
'  -- =======================================================================================',
'  FUNCTION apexplugin_render',
'  ( p_region              IN apex_plugin.t_region',
'  , p_plugin              IN apex_plugin.t_plugin',
'  , p_is_printer_friendly IN BOOLEAN ',
'  ) RETURN apex_plugin.t_region_render_result',
'  IS',
'    --',
'    -- Lets identify our attributes to make the code more readable',
'    --',
'    l_sourceSQL           apex_application_page_regions.region_source%type    := p_region.source;',
'    l_width               NUMBER                                              := to_number(nvl(p_region.attribute_01,''180''));',
'    l_maxHeight           NUMBER                                              := to_number(nvl(p_region.attribute_02,''180''));',
'    l_flyout              apex_application_page_regions.attribute_03%type     := nvl(p_region.attribute_03,''true'');',
'    l_showSpeed           NUMBER                                              := to_number(nvl(p_region.attribute_04,''200''));',
'    l_crumbDefaultText    apex_application_page_regions.attribute_05%type     := nvl(p_region.attribute_05,''Choose an option'');',
'    l_posOpts             apex_application_page_regions.attribute_06%type     := nvl(p_region.attribute_06,''{"posX":"left", "posY":"bottom", "offsetX":0,"offsetX":0,"directionH":"right","directionV":"down","detectH":true,"detectV":true,"linkToFront":'
||'false}'');',
'    l_backLink            apex_application_page_regions.attribute_07%type     := nvl(p_region.attribute_07,''true'');',
'    l_backLinkText        apex_application_page_regions.attribute_08%type     := nvl(p_region.attribute_08,''Back'');',
'    --l_topLinkText         apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'    --',
'    -- Swapping out topLinktext for ordering the menu entries',
'    --',
'    l_orderBy             apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'    l_crossSpeed          NUMBER                                              := to_number(nvl(p_region.attribute_10,''200''));',
'    --',
'    l_startup_code        VARCHAR2 ( 32767 ) ;',
'    l_css_class           VARCHAR2 ( 200 ) ;',
'    --',
'  BEGIN',
'    --',
'    -- During plug-in development it''s very helpful to have some debug information',
'    --',
'    IF apex_application.g_debug THEN',
'      apex_plugin_util.debug_region ',
'      ( p_plugin              => p_plugin',
'      , p_region              => p_region',
'      , p_is_printer_friendly => p_is_printer_friendly',
'      ) ;',
'    END IF;',
'  ',
'    --',
'    -- In case we have multiple menu''s plugin defind on the page for different',
'    -- purposes we need to distinguish between them',
'    --',
'    CASE ',
'      WHEN regexp_instr(l_sourceSQL,''page tabs'',1,1,0,''i'') > 0 THEN',
'        l_css_class   := ''jq-menu-pt'';',
'      WHEN regexp_instr(l_sourceSQL,''apex_application_bc_entries'',1,1,0,''i'') > 0 THEN',
'        l_css_class   := ''jq-menu-bc'';',
'      ELSE',
'        l_css_class   := ''jq-menu-''||p_region.static_id;',
'    END CASE;',
'  ',
'    --',
'    -- Include CSS.',
'    --',
'    apex_css.add_file ',
'    ( p_name      => ''apex.jquery.menu''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    );',
'    --',
'    -- Include Javascript.',
'    --',
'    apex_javascript.add_library ',
'    ( p_name      => ''apex.jquery.menu.min''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    ) ;',
'    -- ',
'    -- This is the styling for our buttonset',
'    -- See http://www.filamentgroup.com/lab/styling_buttons_and_toolbars_with_the_jquery_ui_css_framework/',
'    -- for more details',
'    --',
'    -- Feel free to take this out and place into a stylesheet and/or modify',
'    --',
'    sys.htp.p ( ''',
'          <style type="text/css">     ',
'          .hidden { display:none; }',
'          .fg-toolbar { padding: .5em; margin: 0; }',
'          .fg-toolbar .fg-buttonset { margin-right:1.5em; padding-left: 1px; }',
'          .fg-toolbar .fg-button { font-size: 1em;  }',
'          .fg-button { outline: 0; margin:0 4px 0 0; padding: .4em 1em; text-decoration:none !important; cursor:pointer; position: relative; text-align: center; zoom: 1; }',
'          </style>'' ) ;',
'    --',
'    -- Create the code that will form the ONLOAD event.',
'    --',
'    l_startup_code := ',
'    --',
'    -- Note: apex_javascript.add_attribute does not work for select lists',
'    --       which have "true" "false" as they are interprested as strings',
'    --       also sub objects in 1 attribute field are escaped which I',
'    --       don''t want to occur, e.g. posOpts',
'    --',
'    ''(function($){ $(".''||l_css_class||''").each(function() {''||',
'      ''($("."+$(this).attr("id")).length) ? $(this).menu({''||',
'         apex_javascript.add_attribute(''showSpeed'',  l_showSpeed)||',
'         ''content: $("."+$(this).attr("id")).html(),''||',
'         apex_javascript.add_attribute(''width'',  l_width)||',
'         apex_javascript.add_attribute(''maxHeight'',  l_maxHeight)||',
'         ''flyOut: ''||l_flyout||'',''||',
'         apex_javascript.add_attribute(''crumbDefaultText'',  l_crumbDefaultText)||',
'         ''posOpts: ''||l_posOpts||'',''||',
'         ''backLink: ''||l_backLink||'',''||',
'         apex_javascript.add_attribute(''backLinkText'',  l_backLinkText)||',
'         --apex_javascript.add_attribute(''topLinkText'',  l_topLinkText)|| MN - 10-FEB-2011',
'         apex_javascript.add_attribute(''crossSpeed'',  l_crossSpeed, false, false)||',
'      ''}) : null;''||',
'    ''});})(apex.jQuery);'';',
'    --',
'    -- Add the Javascript ONLOAD code to create the menu',
'    --',
'    apex_javascript.add_onload_code ',
'    ( p_code => l_startup_code ',
'    );',
'    --',
'    -- Lets render the HTML markup.',
'    --',
'    menu_root',
'    ( p_sourceSQL => l_sourceSQL',
'    , p_region    => p_region',
'    , p_css_class => l_css_class',
'    );',
'    --',
'    -- Plugin Code End',
'    --',
'    RETURN NULL;',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    RAISE;',
'    --',
'  END apexplugin_render;'))
,p_api_version=>1
,p_render_function=>'apexplugin_render'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Please read the <a href="http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:DOCUMENTATION" target="_blank">documentation</a> for more info</p>',
''))
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69603243281808251)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'180'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Width of menu container. Required for hierarchical menus (flyout, ipod) to calculate widths of child menus'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69603830252814030)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'maxHeight'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'180'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Maximum height of menu (if ipod-style, height does not include breadcrumb, which can vary in height depending on content)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69604447221818849)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'flyOut'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Multi-level menus are ipod-style by default (false); set this option to "true" to override and make flyout the default instead.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69605023457821455)
,p_plugin_attribute_id=>wwv_flow_api.id(69604447221818849)
,p_display_sequence=>10
,p_display_value=>'true'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69605426574822374)
,p_plugin_attribute_id=>wwv_flow_api.id(69604447221818849)
,p_display_sequence=>20
,p_display_value=>'false'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69606023242830898)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'showSpeed'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'200'
,p_display_length=>10
,p_max_length=>5
,p_is_translatable=>false
,p_help_text=>'Speed to show/hide the menu in milliseconds.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69606642981836568)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'crumbDefaultText'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Choose an option'
,p_display_length=>50
,p_max_length=>100
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(69604447221818849)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_help_text=>'Text that appears in the ipod-style footer before a child menu is opened.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69609238404929899)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'posOpts'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "posX": "left",',
'    "posY": "bottom",',
'    "offsetX": 0,',
'    "offsetX": 0,',
'    "directionH": "right",',
'    "directionV": "down",',
'    "detectH": true,',
'    "detectV": true,',
'    "linkToFront": false',
'}'))
,p_display_length=>50
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>positionOpts (defaults listed below)</strong> - location and orientation of the menu, relative to the button/link used to open it',
'	<ul>',
'	<li><strong>posX: ''left''</strong> - left side of the menu aligned with a side of the button, left or right</li>',
'	<li><strong>posY: ''bottom''</strong> - top of the menu aligned with a either top or bottom of the menu</li>',
'	<li><strong>offsetX: 0</strong> - number of pixels to offset the menu left/right</li>',
'',
'	<li><strong>offsetY: 0</strong> - number of pixels to offset the menu top/bottom</li>',
'	<li><strong>directionH: ''right''</strong> - horizontal direction in which the menu will open, to the right or left</li>',
'	<li><strong>directionV: ''down''</strong> - vertical direction in which the menu will open, up or down</li>',
'	<li><strong>detectH: true</strong> - do horizontal collision detection</li>',
'',
'	<li><strong>detectV: true</strong> - do vertical collision detection</li>',
'	<li><strong>linkToFront: false</strong> - set to "true," this option will create a clone of the button and place it over the menu for an overlapping visual effect</li>',
'	</ul>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69615351854530004)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'backLink'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(69604447221818849)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_lov_type=>'STATIC'
,p_help_text=>'When set to "true", this option shows a ''back'' link under the menu instead of a full breadcrumb in the ipod-style menu'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69615921857530763)
,p_plugin_attribute_id=>wwv_flow_api.id(69615351854530004)
,p_display_sequence=>10
,p_display_value=>'true'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69616323934531393)
,p_plugin_attribute_id=>wwv_flow_api.id(69615351854530004)
,p_display_sequence=>20
,p_display_value=>'false'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69617725451541309)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'backLinkText'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Back'
,p_display_length=>50
,p_max_length=>100
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(69604447221818849)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_help_text=>'Text for the back link (i.e., could also say ''previous''). Defaults to "Back"'
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
 p_id=>wwv_flow_api.id(68851496774820666)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>5
,p_prompt=>'Order By'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'text'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(68852499544821472)
,p_plugin_attribute_id=>wwv_flow_api.id(68851496774820666)
,p_display_sequence=>10
,p_display_value=>'ID'
,p_return_value=>'id'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(68861921567092732)
,p_plugin_attribute_id=>wwv_flow_api.id(68851496774820666)
,p_display_sequence=>15
,p_display_value=>'PID'
,p_return_value=>'pid'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(68852906817823565)
,p_plugin_attribute_id=>wwv_flow_api.id(68851496774820666)
,p_display_sequence=>20
,p_display_value=>'TEXT'
,p_return_value=>'text'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(68853316167826275)
,p_plugin_attribute_id=>wwv_flow_api.id(68851496774820666)
,p_display_sequence=>30
,p_display_value=>'DISPLAY SEQUENCE'
,p_return_value=>'display_seq'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(68853718245826841)
,p_plugin_attribute_id=>wwv_flow_api.id(68851496774820666)
,p_display_sequence=>40
,p_display_value=>'URL'
,p_return_value=>'url'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69618925928550867)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'crossSpeed'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'200'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Transition effect speed for multi-level menus '
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(37400945628517275)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>5
,p_sql_max_column_count=>5
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'<!--',
'.style1 {font-family: "Courier New", Courier, monospace}',
'-->',
'</style>',
'<p class="style1">SELECT id</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pid</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display_seq</p>',
'<p class="style1">FROM&nbsp;&nbsp;&nbsp;[TABLE NAME]</p>'))
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
wwv_flow_api.g_varchar2_table(1) := '2F2A205374796C657320666F72206A5175657279206D656E75207769646765740A417574686F723A094D61676769652057616368732C206D61676769654066696C616D656E7467726F75702E636F6D0A446174653A090953657074656D62657220323030';
wwv_flow_api.g_varchar2_table(2) := '380A2A2F0A0A0A2F2A205245515549524544205354594C4553202D20746865206D656E75732077696C6C206F6E6C792072656E64657220636F72726563746C7920776974682074686573652072756C6573202A2F090A0A2E66672D6D656E752D636F6E74';
wwv_flow_api.g_varchar2_table(3) := '61696E6572207B20706F736974696F6E3A206162736F6C7574653B20746F703A303B206C6566743A2D39393970783B2070616464696E673A202E34656D3B20206F766572666C6F773A2068696464656E3B207D0A2E66672D6D656E752D636F6E7461696E';
wwv_flow_api.g_varchar2_table(4) := '65722E66672D6D656E752D666C796F7574207B206F766572666C6F773A2076697369626C653B207D0A0A2E66672D6D656E752C202E66672D6D656E7520756C207B206C6973742D7374796C652D747970653A6E6F6E653B2070616464696E673A20303B20';
wwv_flow_api.g_varchar2_table(5) := '6D617267696E3A303B207D0A0A2E66672D6D656E75207B20706F736974696F6E3A72656C61746976653B207D0A2E66672D6D656E752D666C796F7574202E66672D6D656E75207B20706F736974696F6E3A7374617469633B207D0A0A2E66672D6D656E75';
wwv_flow_api.g_varchar2_table(6) := '20756C207B20706F736974696F6E3A6162736F6C7574653B20746F703A303B207D0A2E66672D6D656E7520756C20756C207B20746F703A2D3170783B207D0A0A2E66672D6D656E752D636F6E7461696E65722E66672D6D656E752D69706F64202E66672D';
wwv_flow_api.g_varchar2_table(7) := '6D656E752D636F6E74656E742C200A2E66672D6D656E752D636F6E7461696E65722E66672D6D656E752D69706F64202E66672D6D656E752D636F6E74656E7420756C207B206261636B67726F756E643A206E6F6E652021696D706F7274616E743B207D0A';
wwv_flow_api.g_varchar2_table(8) := '0A2E66672D6D656E752E66672D6D656E752D7363726F6C6C2C0A2E66672D6D656E7520756C2E66672D6D656E752D7363726F6C6C207B206F766572666C6F773A207363726F6C6C3B20206F766572666C6F772D783A2068696464656E3B207D0A0A2E6667';
wwv_flow_api.g_varchar2_table(9) := '2D6D656E75206C69207B20636C6561723A626F74683B20666C6F61743A6C6566743B2077696474683A313030253B206D617267696E3A20303B2070616464696E673A303B20626F726465723A20303B207D090A2E66672D6D656E75206C69206C69207B20';
wwv_flow_api.g_varchar2_table(10) := '666F6E742D73697A653A31656D3B207D202F2A20696E6E6572206C6920666F6E742073697A65206D75737420626520726573657420736F2074686174207468657920646F6E277420626C6F77207570202A2F0A0A2E66672D6D656E752D666C796F757420';
wwv_flow_api.g_varchar2_table(11) := '756C20756C207B2070616464696E673A202E34656D3B207D0A2E66672D6D656E752D666C796F7574206C69207B20706F736974696F6E3A72656C61746976653B207D0A0A2E66672D6D656E752D7363726F6C6C207B206F766572666C6F773A207363726F';
wwv_flow_api.g_varchar2_table(12) := '6C6C3B206F766572666C6F772D783A2068696464656E3B207D0A0A2E66672D6D656E752D62726561646372756D62207B206D617267696E3A20303B2070616464696E673A20303B207D0A0A2E66672D6D656E752D666F6F746572207B20206D617267696E';
wwv_flow_api.g_varchar2_table(13) := '2D746F703A202E34656D3B2070616464696E673A202E34656D3B207D0A2E66672D6D656E752D686561646572207B20206D617267696E2D626F74746F6D3A202E34656D3B2070616464696E673A202E34656D3B207D0A0A2E66672D6D656E752D62726561';
wwv_flow_api.g_varchar2_table(14) := '646372756D62206C69207B20666C6F61743A206C6566743B206C6973742D7374796C653A206E6F6E653B206D617267696E3A20303B2070616464696E673A2030202E32656D3B20666F6E742D73697A653A202E39656D3B206F7061636974793A202E373B';
wwv_flow_api.g_varchar2_table(15) := '207D0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D707265762D6C6973742C0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D63757272656E742D6372756D62207B20636C6561723A206C';
wwv_flow_api.g_varchar2_table(16) := '6566743B20666C6F61743A206E6F6E653B206F7061636974793A20313B207D0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D63757272656E742D6372756D62207B2070616464696E672D746F703A202E32656D3B207D0A';
wwv_flow_api.g_varchar2_table(17) := '0A2E66672D6D656E752D62726561646372756D6220612C200A2E66672D6D656E752D62726561646372756D62207370616E207B20666C6F61743A206C6566743B207D0A0A2E66672D6D656E752D666F6F74657220613A6C696E6B2C0A2E66672D6D656E75';
wwv_flow_api.g_varchar2_table(18) := '2D666F6F74657220613A76697369746564207B20666C6F61743A6C6566743B2077696474683A313030253B20746578742D6465636F726174696F6E3A206E6F6E653B207D0A2E66672D6D656E752D666F6F74657220613A686F7665722C0A2E66672D6D65';
wwv_flow_api.g_varchar2_table(19) := '6E752D666F6F74657220613A616374697665207B20207D0A0A2E66672D6D656E752D666F6F7465722061207370616E207B20666C6F61743A6C6566743B20637572736F723A20706F696E7465723B207D0A0A2E66672D6D656E752D62726561646372756D';
wwv_flow_api.g_varchar2_table(20) := '62202E66672D6D656E752D707265762D6C69737420613A6C696E6B2C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C69737420613A766973697465642C0A2E66672D6D656E752D62726561646372756D62202E';
wwv_flow_api.g_varchar2_table(21) := '66672D6D656E752D707265762D6C69737420613A686F7665722C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C69737420613A616374697665207B206261636B67726F756E642D696D6167653A206E6F6E653B';
wwv_flow_api.g_varchar2_table(22) := '20746578742D6465636F726174696F6E3A6E6F6E653B207D0A090A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C6973742061207B20666C6F61743A206C6566743B2070616464696E672D72696768743A202E34';
wwv_flow_api.g_varchar2_table(23) := '656D3B207D0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C6973742061202E75692D69636F6E207B20666C6F61743A206C6566743B207D0A090A2E66672D6D656E752D62726561646372756D62202E66672D6D';
wwv_flow_api.g_varchar2_table(24) := '656E752D63757272656E742D6372756D6220613A6C696E6B2C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D63757272656E742D6372756D6220613A766973697465642C0A2E66672D6D656E752D62726561646372756D6220';
wwv_flow_api.g_varchar2_table(25) := '2E66672D6D656E752D63757272656E742D6372756D6220613A686F7665722C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D63757272656E742D6372756D6220613A616374697665207B20646973706C61793A626C6F636B3B';
wwv_flow_api.g_varchar2_table(26) := '206261636B67726F756E642D696D6167653A6E6F6E653B20666F6E742D73697A653A312E33656D3B20746578742D6465636F726174696F6E3A6E6F6E653B207D0A0A0A0A2F2A205245515549524544204C494E4B205354594C45533A206C696E6B732061';
wwv_flow_api.g_varchar2_table(27) := '72652022646973706C61793A626C6F636B222062792064656661756C743B20696620746865206D656E75206F7074696F6E73206172652073706C697420696E746F200A0973656C65637461626C65206E6F6465206C696E6B7320616E6420276E65787427';
wwv_flow_api.g_varchar2_table(28) := '206C696E6B732C207468652073637269707420666C6F61747320746865206E6F6465206C696E6B73206C65667420616E6420666C6F6174732074686520276E65787427206C696E6B7320746F20746865207269676874092A2F0A0A2E66672D6D656E7520';
wwv_flow_api.g_varchar2_table(29) := '613A6C696E6B2C0A2E66672D6D656E7520613A766973697465642C0A2E66672D6D656E7520613A686F7665722C0A2E66672D6D656E7520613A616374697665207B20666C6F61743A6C6566743B2077696474683A3932253B2070616464696E673A2E3365';
wwv_flow_api.g_varchar2_table(30) := '6D2033253B20746578742D6465636F726174696F6E3A6E6F6E653B206F75746C696E653A20302021696D706F7274616E743B207D0A0A2E66672D6D656E752061207B20626F726465723A2031707820646173686564207472616E73706172656E743B207D';
wwv_flow_api.g_varchar2_table(31) := '0A0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A6C696E6B2C0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A766973697465642C0A2E66672D6D656E7520612E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(32) := '3A686F7665722C0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A6163746976652C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A6C696E6B2C0A2E66672D6D656E7520612E75692D73746174652D686F7665';
wwv_flow_api.g_varchar2_table(33) := '723A766973697465642C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A686F7665722C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A6163746976652C0A202E66672D6D656E7520612E75692D73746174652D61';
wwv_flow_api.g_varchar2_table(34) := '63746976653A6C696E6B2C0A202E66672D6D656E7520612E75692D73746174652D6163746976653A766973697465642C0A202E66672D6D656E7520612E75692D73746174652D6163746976653A686F7665722C0A2E66672D6D656E7520612E75692D7374';
wwv_flow_api.g_varchar2_table(35) := '6174652D6163746976653A616374697665207B20626F726465722D7374796C653A20736F6C69643B20666F6E742D7765696768743A206E6F726D616C3B207D0A0A2E66672D6D656E752061207370616E207B20646973706C61793A626C6F636B3B206375';
wwv_flow_api.g_varchar2_table(36) := '72736F723A706F696E7465723B207D0A0A0A202F2A20535547474553544544205354594C4553202D20666F72207573652077697468206A5175657279205549205468656D65726F6C6C657220435353202A2F090A200A2E66672D6D656E752D696E646963';
wwv_flow_api.g_varchar2_table(37) := '61746F72207370616E207B20666C6F61743A6C6566743B207D0A2E66672D6D656E752D696E64696361746F72207370616E2E75692D69636F6E207B20666C6F61743A72696768743B207D0A0A2E66672D6D656E752D636F6E74656E742E75692D77696467';
wwv_flow_api.g_varchar2_table(38) := '65742D636F6E74656E742C200A2E66672D6D656E752D636F6E74656E7420756C2E75692D7769646765742D636F6E74656E74207B20626F726465723A303B207D0A0A0A2F2A2049434F4E5320414E44204449564944455253202A2F0A0A2E66672D6D656E';
wwv_flow_api.g_varchar2_table(39) := '752E66672D6D656E752D6861732D69636F6E7320613A6C696E6B2C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A766973697465642C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A686F766572';
wwv_flow_api.g_varchar2_table(40) := '2C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A616374697665207B2070616464696E672D6C6566743A323070783B207D0A0A2E66672D6D656E75202E686F72697A6F6E74616C2D646976696465722068722C202E66672D6D';
wwv_flow_api.g_varchar2_table(41) := '656E75202E686F72697A6F6E74616C2D64697669646572207370616E207B2070616464696E673A303B206D617267696E3A357078202E36656D3B207D0A2E66672D6D656E75202E686F72697A6F6E74616C2D64697669646572206872207B20626F726465';
wwv_flow_api.g_varchar2_table(42) := '723A303B206865696768743A3170783B207D0A2E66672D6D656E75202E686F72697A6F6E74616C2D64697669646572207370616E207B20666F6E742D73697A653A2E39656D3B20746578742D7472616E73666F726D3A207570706572636173653B207061';
wwv_flow_api.g_varchar2_table(43) := '6464696E672D6C6566743A2E32656D3B207D0A0A';
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
 p_id=>wwv_flow_api.id(69612623355450559)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_file_name=>'apex.jquery.menu.css'
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
wwv_flow_api.g_varchar2_table(1) := '76617220616C6C55494D656E75733D5B5D3B2866756E6374696F6E2863297B632E666E2E6D656E753D66756E6374696F6E2866297B76617220653D746869733B76617220663D663B76617220643D6E6577206228652C66293B616C6C55494D656E75732E';
wwv_flow_api.g_varchar2_table(2) := '707573682864293B632874686973292E6D6F757365646F776E2866756E6374696F6E28297B69662821642E6D656E754F70656E297B642E73686F774C6F6164696E6728297D7D292E636C69636B2866756E6374696F6E28297B696628642E6D656E754F70';
wwv_flow_api.g_varchar2_table(3) := '656E3D3D66616C7365297B642E73686F774D656E7528297D656C73657B642E6B696C6C28297D72657475726E2066616C73657D297D3B66756E6374696F6E206228672C66297B76617220683D746869733B76617220673D632867293B76617220643D6328';
wwv_flow_api.g_varchar2_table(4) := '273C64697620636C6173733D2266672D6D656E752D636F6E7461696E65722075692D7769646765742075692D7769646765742D636F6E74656E742075692D636F726E65722D616C6C223E272B662E636F6E74656E742B223C2F6469763E22293B74686973';
wwv_flow_api.g_varchar2_table(5) := '2E6D656E754F70656E3D66616C73653B746869732E6D656E754578697374733D66616C73653B76617220663D632E657874656E64287B636F6E74656E743A6E756C6C2C77696474683A3138302C6D61784865696768743A3138302C706F736974696F6E4F';
wwv_flow_api.g_varchar2_table(6) := '7074733A7B706F73583A226C656674222C706F73593A22626F74746F6D222C6F6666736574583A302C6F6666736574593A302C646972656374696F6E483A227269676874222C646972656374696F6E563A22646F776E222C646574656374483A74727565';
wwv_flow_api.g_varchar2_table(7) := '2C646574656374563A747275652C6C696E6B546F46726F6E743A66616C73657D2C73686F7753706565643A3230302C63616C6C65724F6E53746174653A2275692D73746174652D616374697665222C6C6F6164696E6753746174653A2275692D73746174';
wwv_flow_api.g_varchar2_table(8) := '652D6C6F6164696E67222C6C696E6B486F7665723A2275692D73746174652D686F766572222C6C696E6B486F7665725365636F6E646172793A226C692D686F766572222C63726F737353706565643A3230302C6372756D6244656661756C74546578743A';
wwv_flow_api.g_varchar2_table(9) := '2243686F6F736520616E206F7074696F6E3A222C6261636B4C696E6B3A747275652C6261636B4C696E6B546578743A224261636B222C666C794F75743A66616C73652C666C794F75744F6E53746174653A2275692D73746174652D64656661756C74222C';
wwv_flow_api.g_varchar2_table(10) := '6E6578744D656E754C696E6B3A2275692D69636F6E2D747269616E676C652D312D65222C746F704C696E6B546578743A22416C6C222C6E6578744372756D624C696E6B3A2275692D69636F6E2D63617261742D312D65227D2C66293B76617220653D6675';
wwv_flow_api.g_varchar2_table(11) := '6E6374696F6E28297B632E6561636828616C6C55494D656E75732C66756E6374696F6E286A297B696628616C6C55494D656E75735B6A5D2E6D656E754F70656E297B616C6C55494D656E75735B6A5D2E6B696C6C28297D7D297D3B746869732E6B696C6C';
wwv_flow_api.g_varchar2_table(12) := '3D66756E6374696F6E28297B672E72656D6F7665436C61737328662E6C6F6164696E675374617465292E72656D6F7665436C617373282266672D6D656E752D6F70656E22292E72656D6F7665436C61737328662E63616C6C65724F6E5374617465293B64';
wwv_flow_api.g_varchar2_table(13) := '2E66696E6428226C6922292E72656D6F7665436C61737328662E6C696E6B486F7665725365636F6E64617279292E66696E6428226122292E72656D6F7665436C61737328662E6C696E6B486F766572293B696628662E666C794F75744F6E537461746529';
wwv_flow_api.g_varchar2_table(14) := '7B642E66696E6428226C69206122292E72656D6F7665436C61737328662E666C794F75744F6E5374617465297D696628662E63616C6C65724F6E5374617465297B672E72656D6F7665436C61737328662E63616C6C65724F6E5374617465297D69662864';
wwv_flow_api.g_varchar2_table(15) := '2E697328222E66672D6D656E752D69706F642229297B682E72657365744472696C6C646F776E4D656E7528297D696628642E697328222E66672D6D656E752D666C796F75742229297B682E7265736574466C796F75744D656E7528297D642E706172656E';
wwv_flow_api.g_varchar2_table(16) := '7428292E6869646528293B682E6D656E754F70656E3D66616C73653B6328646F63756D656E74292E756E62696E642822636C69636B222C65293B6328646F63756D656E74292E756E62696E6428226B6579646F776E22297D3B746869732E73686F774C6F';
wwv_flow_api.g_varchar2_table(17) := '6164696E673D66756E6374696F6E28297B672E616464436C61737328662E6C6F6164696E675374617465297D3B746869732E73686F774D656E753D66756E6374696F6E28297B6528293B69662821682E6D656E75457869737473297B682E637265617465';
wwv_flow_api.g_varchar2_table(18) := '28297D672E616464436C617373282266672D6D656E752D6F70656E22292E616464436C61737328662E63616C6C65724F6E5374617465293B642E706172656E7428292E73686F7728292E636C69636B2866756E6374696F6E28297B682E6B696C6C28293B';
wwv_flow_api.g_varchar2_table(19) := '72657475726E2066616C73657D293B642E6869646528292E736C696465446F776E28662E73686F775370656564292E66696E6428222E66672D6D656E753A657128302922293B682E6D656E754F70656E3D747275653B672E72656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(20) := '662E6C6F6164696E675374617465293B6328646F63756D656E74292E636C69636B2865293B6328646F63756D656E74292E6B6579646F776E2866756E6374696F6E286C297B766172206D3B6966286C2E7768696368213D2222297B6D3D6C2E7768696368';
wwv_flow_api.g_varchar2_table(21) := '7D656C73657B6966286C2E63686172436F6465213D2222297B6D3D6C2E63686172436F64657D656C73657B6966286C2E6B6579436F6465213D2222297B6D3D6C2E6B6579436F64657D7D7D766172206B3D2863286C2E746172676574292E706172656E74';
wwv_flow_api.g_varchar2_table(22) := '73282264697622292E697328222E66672D6D656E752D666C796F75742229293F22666C796F7574223A2269706F64223B737769746368286D297B636173652033373A6966286B3D3D22666C796F757422297B63286C2E746172676574292E747269676765';
wwv_flow_api.g_varchar2_table(23) := '7228226D6F7573656F757422293B6966286328222E222B662E666C794F75744F6E5374617465292E73697A6528293E30297B6328222E222B662E666C794F75744F6E5374617465292E7472696767657228226D6F7573656F76657222297D7D6966286B3D';
wwv_flow_api.g_varchar2_table(24) := '3D2269706F6422297B63286C2E746172676574292E7472696767657228226D6F7573656F757422293B6966286328222E66672D6D656E752D666F6F74657222292E66696E6428226122292E73697A6528293E30297B6328222E66672D6D656E752D666F6F';
wwv_flow_api.g_varchar2_table(25) := '74657222292E66696E6428226122292E747269676765722822636C69636B22297D6966286328222E66672D6D656E752D68656164657222292E66696E6428226122292E73697A6528293E30297B6328222E66672D6D656E752D63757272656E742D637275';
wwv_flow_api.g_varchar2_table(26) := '6D6222292E7072657628292E66696E6428226122292E747269676765722822636C69636B22297D6966286328222E66672D6D656E752D63757272656E7422292E7072657628292E697328222E66672D6D656E752D696E64696361746F722229297B632822';
wwv_flow_api.g_varchar2_table(27) := '2E66672D6D656E752D63757272656E7422292E7072657628292E7472696767657228226D6F7573656F76657222297D7D72657475726E2066616C73653B627265616B3B636173652033383A69662863286C2E746172676574292E697328222E222B662E6C';
wwv_flow_api.g_varchar2_table(28) := '696E6B486F76657229297B766172206A3D63286C2E746172676574292E706172656E7428292E7072657628292E66696E642822613A657128302922293B6966286A2E73697A6528293E30297B63286C2E746172676574292E7472696767657228226D6F75';
wwv_flow_api.g_varchar2_table(29) := '73656F757422293B6A2E7472696767657228226D6F7573656F76657222297D7D656C73657B642E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D72657475726E2066616C73653B627265616B3B6361736520';
wwv_flow_api.g_varchar2_table(30) := '33393A69662863286C2E746172676574292E697328222E66672D6D656E752D696E64696361746F722229297B6966286B3D3D22666C796F757422297B63286C2E746172676574292E6E65787428292E66696E642822613A657128302922292E7472696767';
wwv_flow_api.g_varchar2_table(31) := '657228226D6F7573656F76657222297D656C73657B6966286B3D3D2269706F6422297B63286C2E746172676574292E747269676765722822636C69636B22293B73657454696D656F75742866756E6374696F6E28297B63286C2E746172676574292E6E65';
wwv_flow_api.g_varchar2_table(32) := '787428292E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D2C662E63726F73735370656564297D7D7D72657475726E2066616C73653B627265616B3B636173652034303A69662863286C2E74617267657429';
wwv_flow_api.g_varchar2_table(33) := '2E697328222E222B662E6C696E6B486F76657229297B76617220693D63286C2E746172676574292E706172656E7428292E6E65787428292E66696E642822613A657128302922293B696628692E73697A6528293E30297B63286C2E746172676574292E74';
wwv_flow_api.g_varchar2_table(34) := '72696767657228226D6F7573656F757422293B692E7472696767657228226D6F7573656F76657222297D7D656C73657B642E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D72657475726E2066616C73653B';
wwv_flow_api.g_varchar2_table(35) := '627265616B3B636173652032373A6528293B627265616B3B636173652031333A69662863286C2E746172676574292E697328222E66672D6D656E752D696E64696361746F72222926266B3D3D2269706F6422297B63286C2E746172676574292E74726967';
wwv_flow_api.g_varchar2_table(36) := '6765722822636C69636B22293B73657454696D656F75742866756E6374696F6E28297B63286C2E746172676574292E6E65787428292E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D2C662E63726F737353';
wwv_flow_api.g_varchar2_table(37) := '70656564297D627265616B7D7D297D3B746869732E6372656174653D66756E6374696F6E28297B642E637373287B77696474683A662E77696474687D292E617070656E64546F2822626F647922292E66696E642822756C3A666972737422292E6E6F7428';
wwv_flow_api.g_varchar2_table(38) := '222E66672D6D656E752D62726561646372756D6222292E616464436C617373282266672D6D656E7522293B642E66696E642822756C2C206C69206122292E616464436C617373282275692D636F726E65722D616C6C22293B642E66696E642822756C2229';
wwv_flow_api.g_varchar2_table(39) := '2E617474722822726F6C65222C226D656E7522292E65712830292E617474722822617269612D61637469766564657363656E64616E74222C226163746976652D6D656E756974656D22292E617474722822617269612D6C6162656C6C65646279222C672E';
wwv_flow_api.g_varchar2_table(40) := '61747472282269642229293B642E66696E6428226C6922292E617474722822726F6C65222C226D656E756974656D22293B642E66696E6428226C693A68617328756C2922292E617474722822617269612D686173706F707570222C227472756522292E66';
wwv_flow_api.g_varchar2_table(41) := '696E642822756C22292E617474722822617269612D657870616E646564222C2266616C736522293B642E66696E6428226122292E617474722822746162696E646578222C222D3122293B696628642E66696E642822756C22292E73697A6528293E31297B';
wwv_flow_api.g_varchar2_table(42) := '696628662E666C794F7574297B682E666C796F757428642C66297D656C73657B682E6472696C6C646F776E28642C66297D7D656C73657B642E66696E6428226122292E636C69636B2866756E6374696F6E28297B682E63686F6F73654974656D28746869';
wwv_flow_api.g_varchar2_table(43) := '73293B72657475726E2066616C73657D297D696628662E6C696E6B486F766572297B76617220693D642E66696E6428222E66672D6D656E75206C69206122293B692E686F7665722866756E6374696F6E28297B766172206A3D632874686973293B632822';
wwv_flow_api.g_varchar2_table(44) := '2E222B662E6C696E6B486F766572292E72656D6F7665436C61737328662E6C696E6B486F766572292E626C757228292E706172656E7428292E72656D6F7665417474722822696422293B632874686973292E616464436C61737328662E6C696E6B486F76';
wwv_flow_api.g_varchar2_table(45) := '6572292E666F63757328292E706172656E7428292E6174747228226964222C226163746976652D6D656E756974656D22297D2C66756E6374696F6E28297B632874686973292E72656D6F7665436C61737328662E6C696E6B486F766572292E626C757228';
wwv_flow_api.g_varchar2_table(46) := '292E706172656E7428292E72656D6F7665417474722822696422297D297D696628662E6C696E6B486F7665725365636F6E64617279297B642E66696E6428222E66672D6D656E75206C6922292E686F7665722866756E6374696F6E28297B632874686973';
wwv_flow_api.g_varchar2_table(47) := '292E7369626C696E677328226C6922292E72656D6F7665436C61737328662E6C696E6B486F7665725365636F6E64617279293B696628662E666C794F75744F6E5374617465297B632874686973292E7369626C696E677328226C6922292E66696E642822';
wwv_flow_api.g_varchar2_table(48) := '6122292E72656D6F7665436C61737328662E666C794F75744F6E5374617465297D632874686973292E616464436C61737328662E6C696E6B486F7665725365636F6E64617279297D2C66756E6374696F6E28297B632874686973292E72656D6F7665436C';
wwv_flow_api.g_varchar2_table(49) := '61737328662E6C696E6B486F7665725365636F6E64617279297D297D682E736574506F736974696F6E28642C672C66293B682E6D656E754578697374733D747275657D3B746869732E63686F6F73654974656D3D66756E6374696F6E2869297B682E6B69';
wwv_flow_api.g_varchar2_table(50) := '6C6C28293B6C6F636174696F6E2E687265663D632869292E6174747228226872656622297D7D622E70726F746F747970652E666C796F75743D66756E6374696F6E28642C65297B76617220663D746869733B746869732E7265736574466C796F75744D65';
wwv_flow_api.g_varchar2_table(51) := '6E753D66756E6374696F6E28297B76617220673D642E66696E642822756C20756C22293B672E72656D6F7665436C617373282275692D7769646765742D636F6E74656E7422292E6869646528297D3B642E616464436C617373282266672D6D656E752D66';
wwv_flow_api.g_varchar2_table(52) := '6C796F757422292E66696E6428226C693A68617328756C2922292E656163682866756E6374696F6E28297B76617220683D642E776964746828293B766172206A2C673B76617220693D632874686973292E66696E642822756C22293B692E637373287B6C';
wwv_flow_api.g_varchar2_table(53) := '6566743A682C77696474683A687D292E6869646528293B632874686973292E66696E642822613A657128302922292E616464436C617373282266672D6D656E752D696E64696361746F7222292E68746D6C28223C7370616E3E222B632874686973292E66';
wwv_flow_api.g_varchar2_table(54) := '696E642822613A657128302922292E7465787428292B273C2F7370616E3E3C7370616E20636C6173733D2275692D69636F6E20272B652E6E6578744D656E754C696E6B2B27223E3C2F7370616E3E27292E686F7665722866756E6374696F6E28297B636C';
wwv_flow_api.g_varchar2_table(55) := '65617254696D656F75742867293B766172206B3D632874686973292E6E65787428293B69662821666974566572746963616C286B2C632874686973292E6F666673657428292E746F7029297B6B2E637373287B746F703A226175746F222C626F74746F6D';
wwv_flow_api.g_varchar2_table(56) := '3A307D297D69662821666974486F72697A6F6E74616C286B2C632874686973292E6F666673657428292E6C6566742B31303029297B6B2E637373287B6C6566743A226175746F222C72696768743A682C227A2D696E646578223A3939397D297D6A3D7365';
wwv_flow_api.g_varchar2_table(57) := '7454696D656F75742866756E6374696F6E28297B6B2E616464436C617373282275692D7769646765742D636F6E74656E7422292E73686F7728652E73686F775370656564292E617474722822617269612D657870616E646564222C227472756522297D2C';
wwv_flow_api.g_varchar2_table(58) := '333030297D2C66756E6374696F6E28297B636C65617254696D656F7574286A293B766172206B3D632874686973292E6E65787428293B673D73657454696D656F75742866756E6374696F6E28297B6B2E72656D6F7665436C617373282275692D77696467';
wwv_flow_api.g_varchar2_table(59) := '65742D636F6E74656E7422292E6869646528652E73686F775370656564292E617474722822617269612D657870616E646564222C2266616C736522297D2C343030297D293B632874686973292E66696E642822756C206122292E686F7665722866756E63';
wwv_flow_api.g_varchar2_table(60) := '74696F6E28297B636C65617254696D656F75742867293B696628632874686973292E706172656E74732822756C22292E7072657628292E69732822612E66672D6D656E752D696E64696361746F722229297B632874686973292E706172656E7473282275';
wwv_flow_api.g_varchar2_table(61) := '6C22292E7072657628292E616464436C61737328652E666C794F75744F6E5374617465297D7D2C66756E6374696F6E28297B673D73657454696D656F75742866756E6374696F6E28297B692E6869646528652E73686F775370656564293B642E66696E64';
wwv_flow_api.g_varchar2_table(62) := '28652E666C794F75744F6E5374617465292E72656D6F7665436C61737328652E666C794F75744F6E5374617465297D2C353030297D297D293B642E66696E6428226122292E636C69636B2866756E6374696F6E28297B662E63686F6F73654974656D2874';
wwv_flow_api.g_varchar2_table(63) := '686973293B72657475726E2066616C73657D297D3B622E70726F746F747970652E6472696C6C646F776E3D66756E6374696F6E28642C6F297B76617220653D746869733B76617220673D642E66696E6428222E66672D6D656E7522293B766172206B3D63';
wwv_flow_api.g_varchar2_table(64) := '28273C756C20636C6173733D2266672D6D656E752D62726561646372756D622075692D7769646765742D6865616465722075692D636F726E65722D616C6C2075692D68656C7065722D636C656172666978223E3C2F756C3E27293B76617220703D632827';
wwv_flow_api.g_varchar2_table(65) := '3C6C6920636C6173733D2266672D6D656E752D62726561646372756D622D74657874223E272B6F2E6372756D6244656661756C74546578742B223C2F6C693E22293B766172206C3D286F2E6261636B4C696E6B293F6F2E6261636B4C696E6B546578743A';
wwv_flow_api.g_varchar2_table(66) := '6F2E746F704C696E6B546578743B76617220663D286F2E6261636B4C696E6B293F2266672D6D656E752D707265762D6C697374223A2266672D6D656E752D616C6C2D6C69737473223B766172206E3D286F2E6261636B4C696E6B293F2275692D73746174';
wwv_flow_api.g_varchar2_table(67) := '652D64656661756C742075692D636F726E65722D616C6C223A22223B766172206A3D286F2E6261636B4C696E6B293F273C7370616E20636C6173733D2275692D69636F6E2075692D69636F6E2D747269616E676C652D312D77223E3C2F7370616E3E273A';
wwv_flow_api.g_varchar2_table(68) := '22223B76617220693D6328273C6C6920636C6173733D22272B662B27223E3C6120687265663D22232220636C6173733D22272B6E2B27223E272B6A2B6C2B223C2F613E3C2F6C693E22293B642E616464436C617373282266672D6D656E752D69706F6422';
wwv_flow_api.g_varchar2_table(69) := '293B6966286F2E6261636B4C696E6B297B6B2E616464436C617373282266672D6D656E752D666F6F74657222292E617070656E64546F2864292E6869646528297D656C73657B6B2E616464436C617373282266672D6D656E752D68656164657222292E70';
wwv_flow_api.g_varchar2_table(70) := '726570656E64546F2864297D6B2E617070656E642870293B766172206D3D66756E6374696F6E2871297B696628712E68656967687428293E6F2E6D6178486569676874297B712E616464436C617373282266672D6D656E752D7363726F6C6C22297D712E';
wwv_flow_api.g_varchar2_table(71) := '637373287B6865696768743A6F2E6D61784865696768747D297D3B76617220683D66756E6374696F6E2871297B712E72656D6F7665436C617373282266672D6D656E752D7363726F6C6C22292E72656D6F7665436C617373282266672D6D656E752D6375';
wwv_flow_api.g_varchar2_table(72) := '7272656E7422292E686569676874286F2E6D6178486569676874297D3B746869732E72657365744472696C6C646F776E4D656E753D66756E6374696F6E28297B6328222E66672D6D656E752D63757272656E7422292E72656D6F7665436C617373282266';
wwv_flow_api.g_varchar2_table(73) := '672D6D656E752D63757272656E7422293B672E616E696D617465287B6C6566743A307D2C6F2E63726F737353706565642C66756E6374696F6E28297B632874686973292E66696E642822756C22292E656163682866756E6374696F6E28297B6328746869';
wwv_flow_api.g_varchar2_table(74) := '73292E6869646528293B682863287468697329297D293B672E616464436C617373282266672D6D656E752D63757272656E7422297D293B6328222E66672D6D656E752D616C6C2D6C6973747322292E66696E6428227370616E22292E72656D6F76652829';
wwv_flow_api.g_varchar2_table(75) := '3B6B2E656D70747928292E617070656E642870293B6328222E66672D6D656E752D666F6F74657222292E656D70747928292E6869646528293B6D2867297D3B672E616464436C617373282266672D6D656E752D636F6E74656E742066672D6D656E752D63';
wwv_flow_api.g_varchar2_table(76) := '757272656E742075692D7769646765742D636F6E74656E742075692D68656C7065722D636C65617266697822292E637373287B77696474683A642E776964746828297D292E66696E642822756C22292E637373287B77696474683A642E77696474682829';
wwv_flow_api.g_varchar2_table(77) := '2C6C6566743A642E776964746828297D292E616464436C617373282275692D7769646765742D636F6E74656E7422292E6869646528293B6D2867293B672E66696E6428226122292E656163682866756E6374696F6E28297B696628632874686973292E6E';
wwv_flow_api.g_varchar2_table(78) := '65787428292E69732822756C2229297B632874686973292E616464436C617373282266672D6D656E752D696E64696361746F7222292E656163682866756E6374696F6E28297B632874686973292E68746D6C28223C7370616E3E222B632874686973292E';
wwv_flow_api.g_varchar2_table(79) := '7465787428292B273C2F7370616E3E3C7370616E20636C6173733D2275692D69636F6E20272B6F2E6E6578744D656E754C696E6B2B27223E3C2F7370616E3E27297D292E636C69636B2866756E6374696F6E28297B76617220713D632874686973292E6E';
wwv_flow_api.g_varchar2_table(80) := '65787428293B76617220763D632874686973292E706172656E74732822756C3A657128302922293B76617220723D28762E697328222E66672D6D656E752D636F6E74656E742229293F303A7061727365466C6F617428672E63737328226C656674222929';
wwv_flow_api.g_varchar2_table(81) := '3B76617220743D4D6174682E726F756E6428722D7061727365466C6F617428642E7769647468282929293B76617220783D6328222E66672D6D656E752D666F6F74657222293B682876293B6D2871293B672E616E696D617465287B6C6566743A747D2C6F';
wwv_flow_api.g_varchar2_table(82) := '2E63726F73735370656564293B712E73686F7728292E616464436C617373282266672D6D656E752D63757272656E7422292E617474722822617269612D657870616E646564222C227472756522293B76617220773D66756E6374696F6E2841297B766172';
wwv_flow_api.g_varchar2_table(83) := '20793D413B76617220423D6328222E66672D6D656E752D63757272656E7422293B766172207A3D422E706172656E74732822756C3A657128302922293B422E6869646528292E617474722822617269612D657870616E646564222C2266616C736522293B';
wwv_flow_api.g_varchar2_table(84) := '682842293B6D287A293B7A2E616464436C617373282266672D6D656E752D63757272656E7422292E617474722822617269612D657870616E646564222C227472756522293B6966287A2E686173436C617373282266672D6D656E752D636F6E74656E7422';
wwv_flow_api.g_varchar2_table(85) := '29297B792E72656D6F766528293B782E6869646528297D7D3B6966286F2E6261636B4C696E6B297B696628782E66696E6428226122292E73697A6528293D3D30297B782E73686F7728293B6328273C6120687265663D2223223E3C7370616E20636C6173';
wwv_flow_api.g_varchar2_table(86) := '733D2275692D69636F6E2075692D69636F6E2D747269616E676C652D312D77223E3C2F7370616E3E203C7370616E3E4261636B3C2F7370616E3E3C2F613E27292E617070656E64546F2878292E636C69636B2866756E6374696F6E28297B766172207A3D';
wwv_flow_api.g_varchar2_table(87) := '632874686973293B76617220793D7061727365466C6F617428672E63737328226C6566742229292B642E776964746828293B672E616E696D617465287B6C6566743A797D2C6F2E63726F737353706565642C66756E6374696F6E28297B77287A297D293B';
wwv_flow_api.g_varchar2_table(88) := '72657475726E2066616C73657D297D7D656C73657B6966286B2E66696E6428226C6922292E73697A6528293D3D31297B6B2E656D70747928292E617070656E642869293B692E66696E6428226122292E636C69636B2866756E6374696F6E28297B652E72';
wwv_flow_api.g_varchar2_table(89) := '657365744472696C6C646F776E4D656E7528293B72657475726E2066616C73657D297D6328222E66672D6D656E752D63757272656E742D6372756D6222292E72656D6F7665436C617373282266672D6D656E752D63757272656E742D6372756D6222293B';
wwv_flow_api.g_varchar2_table(90) := '76617220753D632874686973292E66696E6428227370616E3A657128302922292E7465787428293B76617220733D6328273C6C6920636C6173733D2266672D6D656E752D63757272656E742D6372756D62223E3C6120687265663D226A61766173637269';
wwv_flow_api.g_varchar2_table(91) := '70743A2F2F2220636C6173733D2266672D6D656E752D6372756D62223E272B752B223C2F613E3C2F6C693E22293B732E617070656E64546F286B292E66696E6428226122292E636C69636B2866756E6374696F6E28297B696628632874686973292E7061';
wwv_flow_api.g_varchar2_table(92) := '72656E7428292E697328222E66672D6D656E752D63757272656E742D6372756D622229297B652E63686F6F73654974656D2874686973297D656C73657B76617220793D2D286328222E66672D6D656E752D63757272656E7422292E706172656E74732822';
wwv_flow_api.g_varchar2_table(93) := '756C22292E73697A6528292D31292A3138303B672E616E696D617465287B6C6566743A797D2C6F2E63726F737353706565642C66756E6374696F6E28297B7728297D293B632874686973292E706172656E7428292E616464436C617373282266672D6D65';
wwv_flow_api.g_varchar2_table(94) := '6E752D63757272656E742D6372756D6222292E66696E6428227370616E22292E72656D6F766528293B632874686973292E706172656E7428292E6E657874416C6C28292E72656D6F766528297D72657475726E2066616C73657D293B732E707265762829';
wwv_flow_api.g_varchar2_table(95) := '2E617070656E642827203C7370616E20636C6173733D2275692D69636F6E20272B6F2E6E6578744372756D624C696E6B2B27223E3C2F7370616E3E27297D72657475726E2066616C73657D297D656C73657B632874686973292E636C69636B2866756E63';
wwv_flow_api.g_varchar2_table(96) := '74696F6E28297B652E63686F6F73654974656D2874686973293B72657475726E2066616C73657D297D7D297D3B622E70726F746F747970652E736574506F736974696F6E3D66756E6374696F6E28672C652C6C297B76617220643D673B76617220693D65';
wwv_flow_api.g_varchar2_table(97) := '3B766172206A3D7B726566583A692E6F666673657428292E6C6566742C726566593A692E6F666673657428292E746F702C726566573A692E676574546F74616C576964746828297C7C692E776964746828292C726566483A692E676574546F74616C4865';
wwv_flow_api.g_varchar2_table(98) := '6967687428297C7C692E68656967687428297D3B766172206C3D6C3B766172206B2C683B76617220663D6328273C64697620636C6173733D22706F736974696F6E48656C706572223E3C2F6469763E27293B662E637373287B706F736974696F6E3A2261';
wwv_flow_api.g_varchar2_table(99) := '62736F6C757465222C6C6566743A6A2E726566582C746F703A6A2E726566592C77696474683A6A2E726566572C6865696768743A6A2E726566487D293B642E777261702866293B737769746368286C2E706F736974696F6E4F7074732E706F7358297B63';
wwv_flow_api.g_varchar2_table(100) := '617365226C656674223A6B3D303B627265616B3B636173652263656E746572223A6B3D6A2E726566572F323B627265616B3B63617365227269676874223A6B3D6A2E726566573B627265616B7D737769746368286C2E706F736974696F6E4F7074732E70';
wwv_flow_api.g_varchar2_table(101) := '6F7359297B6361736522746F70223A683D303B627265616B3B636173652263656E746572223A683D6A2E726566482F323B627265616B3B6361736522626F74746F6D223A683D6A2E726566483B627265616B7D6B2B3D6C2E706F736974696F6E4F707473';
wwv_flow_api.g_varchar2_table(102) := '2E6F6666736574583B682B3D6C2E706F736974696F6E4F7074732E6F6666736574593B6966286C2E706F736974696F6E4F7074732E646972656374696F6E563D3D22757022297B642E637373287B746F703A226175746F222C626F74746F6D3A687D293B';
wwv_flow_api.g_varchar2_table(103) := '6966286C2E706F736974696F6E4F7074732E64657465637456262621666974566572746963616C286429297B642E637373287B626F74746F6D3A226175746F222C746F703A687D297D7D656C73657B642E637373287B626F74746F6D3A226175746F222C';
wwv_flow_api.g_varchar2_table(104) := '746F703A687D293B6966286C2E706F736974696F6E4F7074732E64657465637456262621666974566572746963616C286429297B642E637373287B746F703A226175746F222C626F74746F6D3A687D297D7D6966286C2E706F736974696F6E4F7074732E';
wwv_flow_api.g_varchar2_table(105) := '646972656374696F6E483D3D226C65667422297B642E637373287B6C6566743A226175746F222C72696768743A6B7D293B6966286C2E706F736974696F6E4F7074732E64657465637448262621666974486F72697A6F6E74616C286429297B642E637373';
wwv_flow_api.g_varchar2_table(106) := '287B72696768743A226175746F222C6C6566743A6B7D297D7D656C73657B642E637373287B72696768743A226175746F222C6C6566743A6B7D293B6966286C2E706F736974696F6E4F7074732E64657465637448262621666974486F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(107) := '286429297B642E637373287B6C6566743A226175746F222C72696768743A6B7D297D7D6966286C2E706F736974696F6E4F7074732E6C696E6B546F46726F6E74297B692E636C6F6E6528292E616464436C61737328226C696E6B436C6F6E6522292E6373';
wwv_flow_api.g_varchar2_table(108) := '73287B706F736974696F6E3A226162736F6C757465222C746F703A302C72696768743A226175746F222C626F74746F6D3A226175746F222C6C6566743A302C77696474683A692E776964746828292C6865696768743A692E68656967687428297D292E69';
wwv_flow_api.g_varchar2_table(109) := '6E7365727441667465722864297D7D3B66756E6374696F6E206128652C64297B72657475726E20642D657D632E666E2E676574546F74616C57696474683D66756E6374696F6E28297B72657475726E20632874686973292E776964746828292B70617273';
wwv_flow_api.g_varchar2_table(110) := '65496E7428632874686973292E637373282270616464696E6752696768742229292B7061727365496E7428632874686973292E637373282270616464696E674C6566742229292B7061727365496E7428632874686973292E6373732822626F7264657252';
wwv_flow_api.g_varchar2_table(111) := '6967687457696474682229292B7061727365496E7428632874686973292E6373732822626F726465724C65667457696474682229297D3B632E666E2E676574546F74616C4865696768743D66756E6374696F6E28297B72657475726E2063287468697329';
wwv_flow_api.g_varchar2_table(112) := '2E68656967687428292B7061727365496E7428632874686973292E637373282270616464696E67546F702229292B7061727365496E7428632874686973292E637373282270616464696E67426F74746F6D2229292B7061727365496E7428632874686973';
wwv_flow_api.g_varchar2_table(113) := '292E6373732822626F72646572546F7057696474682229292B7061727365496E7428632874686973292E6373732822626F72646572426F74746F6D57696474682229297D7D2928617065782E6A5175657279293B66756E6374696F6E206765745363726F';
wwv_flow_api.g_varchar2_table(114) := '6C6C546F7028297B72657475726E2073656C662E70616765594F66667365747C7C646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F707C7C646F63756D656E742E626F64792E7363726F6C6C546F707D66756E6374696F';
wwv_flow_api.g_varchar2_table(115) := '6E206765745363726F6C6C4C65667428297B72657475726E2073656C662E70616765584F66667365747C7C646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C6566747C7C646F63756D656E742E626F64792E7363726F6C6C';
wwv_flow_api.g_varchar2_table(116) := '4C6566747D66756E6374696F6E2067657457696E646F7748656967687428297B76617220613D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E2073656C662E696E6E65724865696768747C7C28612626612E636C69656E74';
wwv_flow_api.g_varchar2_table(117) := '486569676874297C7C646F63756D656E742E626F64792E636C69656E744865696768747D66756E6374696F6E2067657457696E646F77576964746828297B76617220613D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E20';
wwv_flow_api.g_varchar2_table(118) := '73656C662E696E6E657257696474687C7C28612626612E636C69656E745769647468297C7C646F63756D656E742E626F64792E636C69656E7457696474687D66756E6374696F6E20666974486F72697A6F6E74616C28622C63297B76617220613D706172';
wwv_flow_api.g_varchar2_table(119) := '7365496E742863297C7C617065782E6A51756572792862292E6F666673657428292E6C6566743B72657475726E28612B617065782E6A51756572792862292E776964746828293C3D67657457696E646F77576964746828292B6765745363726F6C6C4C65';
wwv_flow_api.g_varchar2_table(120) := '667428292626612D6765745363726F6C6C4C65667428293E3D30297D66756E6374696F6E20666974566572746963616C28632C62297B76617220613D7061727365496E742862297C7C617065782E6A51756572792863292E6F666673657428292E746F70';
wwv_flow_api.g_varchar2_table(121) := '3B72657475726E28612B617065782E6A51756572792863292E68656967687428293C3D67657457696E646F7748656967687428292B6765745363726F6C6C546F7028292626612D6765745363726F6C6C546F7028293E3D30297D4E756D6265722E70726F';
wwv_flow_api.g_varchar2_table(122) := '746F747970652E7078546F456D3D537472696E672E70726F746F747970652E7078546F456D3D66756E6374696F6E2862297B623D617065782E6A51756572792E657874656E64287B73636F70653A22626F6479222C726576657273653A66616C73657D2C';
wwv_flow_api.g_varchar2_table(123) := '62293B76617220653D28746869733D3D2222293F303A7061727365466C6F61742874686973293B76617220643B76617220633D66756E6374696F6E28297B76617220673D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E20';
wwv_flow_api.g_varchar2_table(124) := '73656C662E696E6E657257696474687C7C28672626672E636C69656E745769647468297C7C646F63756D656E742E626F64792E636C69656E7457696474687D3B696628622E73636F70653D3D22626F6479222626617065782E6A51756572792E62726F77';
wwv_flow_api.g_varchar2_table(125) := '7365722E6D7369652626287061727365466C6F6174286A51756572792822626F647922292E6373732822666F6E742D73697A652229292F632829292E746F46697865642831293E30297B76617220663D66756E6374696F6E28297B72657475726E287061';
wwv_flow_api.g_varchar2_table(126) := '727365466C6F617428617065782E6A51756572792822626F647922292E6373732822666F6E742D73697A652229292F632829292E746F46697865642833292A31367D3B643D6628297D656C73657B643D7061727365466C6F617428617065782E6A517565';
wwv_flow_api.g_varchar2_table(127) := '727928622E73636F7065292E6373732822666F6E742D73697A652229297D76617220613D28622E726576657273653D3D74727565293F28652A64292E746F46697865642832292B227078223A28652F64292E746F46697865642832292B22656D223B7265';
wwv_flow_api.g_varchar2_table(128) := '7475726E20617D3B';
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
 p_id=>wwv_flow_api.id(70799520926233234)
,p_plugin_id=>wwv_flow_api.id(69585525039618385)
,p_file_name=>'apex.jquery.menu.min.js'
,p_mime_type=>'text/x-c++'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
