prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20230105132244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(110138873003037183)
,p_plug_name=>'search item'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_region_attributes=>'display:none;'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.srch_nav input {',
'    color: black;',
'    /* background-color: antiquewhite; */',
'    background-color: white!important;',
'    /* border-color: black; */',
'    border: none!important;',
'}',
'.srch_nav{',
'    margin:13px;',
'    transition-delay: 250ms;',
'}',
'</style>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(110138967707037184)
,p_name=>'P0_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(110138873003037183)
,p_placeholder=>'Search Menu'
,p_display_as=>'PLUGIN_SI.ABAKUS.SEARCHNAVIGATIONMENU'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'S'
,p_attribute_02=>'fa-search'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{"MenuOpen":false,',
' "MenuClickOpenClose":true,',
' "SaveSS":true,',
' "ShortcutSaveSS":false,',
' "ShrtCaseSensitive":true,',
' "OnSearchShowChildren":true,',
' "UseFocus":true,',
' "Shortcuts" : []',
'}'))
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* ',
'** STYLE Settings for search navigation menu and menu icons',
'*/',
'/* FIX If you use FONT awesome enable this .srch_nav span */',
'/*',
'.srch_nav span { ',
'   top:2px;',
'}',
'*/',
'/* FIX If you use FONT awesome disable  this .t-TreeNav */',
'.t-TreeNav .a-TreeView-node--topLevel ul .a-TreeView-content .fa {',
'   vertical-align: top;',
'   width: 32px; /* This can be decrease to have smaller spacing */',
'   height: 32px;',
'   line-height: 32px;',
'   text-align: center;',
'   transition: width .2s ease;',
'}',
'/* Search resault setting */',
'.a-TreeView-label strong {',
'    font-weight:bold; ',
'    color:black;',
'    background-color:#ffef9a;',
'}',
'/* Input field style setting */',
'.srch_nav input {',
'    color:black;',
'    background-color:#f1f6fa;',
'    border-color:#ededed;',
'}',
'/* Input field on hover setting */',
'.srch_nav input:focus {',
'    border-color:#ff7052;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(84653228322439688)
,p_name=>'menu tooltip'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(84653176000439687)
,p_event_id=>wwv_flow_api.id(84653228322439688)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#t_TreeNav").treeView("option", "tooltip", {',
'    content: function(cb, node) {',
'        return node.label;',
'    }',
'} );',
'$("#t_TreeNav").tooltip({',
'  show: {',
'      effect: "blind",',
'    delay: 2000,',
'    duration: 0',
'  }',
'});',
'$("#t_TreeNav").tooltip("option", ".a-TreeView-content");',
'',
'',
'',
'',
'',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135132369094257807)
,p_name=>'notification bar'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135132456355257808)
,p_event_id=>wwv_flow_api.id(135132369094257807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_APEX.NOTIFICATION'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "refresh": 5,',
'    "mainIcon": "fa-bell",',
'    "mainIconColor": "white",',
'    "mainIconBackgroundColor": "rgba(70,70,70,0.9)",',
'    "mainIconBlinking": true,',
'    "counterBackgroundColor": "rgb(232, 55, 55 )",',
'    "counterFontColor": "white",',
'    "linkTargetBlank": false,',
'    "showAlways": false,',
'    "browserNotifications": {',
'        "enabled": true,',
'        "cutBodyTextAfter": 100,',
'        "link": false',
'    },',
'    "accept": {',
'        "color": "#44e55c",',
'        "icon": "fa-check"',
'    },',
'    "decline": {',
'        "color": "#b73a21",',
'        "icon": "fa-close"',
'    },',
'    "hideOnRefresh": false',
'}'))
,p_attribute_02=>'notification-menu'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'       CASE j.priority',
'           WHEN ''HIGH'' THEN ''fa-warning''',
'           WHEN ''MEDIUM'' THEN ''fa-exclamation-square''',
'           ELSE ''fa-exclamation-circle''',
'       END',
'           AS note_icon,',
'       CASE j.priority',
'           WHEN ''HIGH'' THEN ''#FF0000''',
'           WHEN ''MEDIUM'' THEN ''#000080''',
'           ELSE ''#008000''',
'       END',
'           AS note_icon_color,',
'       w.remarkss',
'           AS note_header,',
'          ''Document No. <b>''',
'       || j.paramval',
'       || ''</b> Request by <b style="color:green">''',
'       || j.raisedby',
'       || '' </b> at <b>''',
'       || apex_util.get_since(TRUNC (j.timstamp),''Y'')',
'       || ''</b''',
'           AS note_text,',
'       --apex_util.prepare_url(''f?p=''||app_id||'':''||PAGE_ID||'':''||:app_session||'':T:::P3_SELECTED_NODE,P9_PROJ_ID,P9_TASK_ID:''||id||'',''||link'')',
'       apex_util.prepare_url(''f?p=''||app_id||'':''||PAGE_ID||'':''||:app_session||'':T:::P1004400101_PROGNAME:''||j.progname)',
'           AS note_link,',
'       CASE j.priority',
'           WHEN ''HIGH'' THEN ''#800000''',
'           WHEN ''MEDIUM'' THEN ''#000080''',
'           ELSE ''#00FF00''',
'       END',
'           AS note_color,',
'       --''javascript:alert("Accepted");void(0);'' AS note_accept,',
'       --''javascript:alert("Declined");void(0);'' AS note_decline,',
'       0',
'           AS no_browser_notification,',
'           progname',
'  FROM nmaltflw w, sypndjob j',
' WHERE  w.compcode = :compcode',
'        AND w.compcode = j.compcode',
'       AND w.CALLPROG = j.progname',
'       AND j.authpers = :app_user',
'       AND j.actvstat = 0',
'       AND j.checkedd = ''N'''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'  "ALLOWED_ATTR": [',
'    "accesskey",',
'    "align",',
'    "alt",',
'    "always",',
'    "autocomplete",',
'    "autoplay",',
'    "border",',
'    "cellpadding",',
'    "cellspacing",',
'    "charset",',
'    "class",',
'    "colspan",',
'    "dir",',
'    "height",',
'    "href",',
'    "id",',
'    "lang",',
'    "name",',
'    "rel",',
'    "required",',
'    "rowspan",',
'    "src",',
'    "style",',
'    "summary",',
'    "tabindex",',
'    "target",',
'    "title",',
'    "type",',
'    "value",',
'    "width"',
'  ],',
'  "ALLOWED_TAGS": [',
'    "a",',
'    "address",',
'    "b",',
'    "blockquote",',
'    "br",',
'    "caption",',
'    "code",',
'    "dd",',
'    "div",',
'    "dl",',
'    "dt",',
'    "em",',
'    "figcaption",',
'    "figure",',
'    "h1",',
'    "h2",',
'    "h3",',
'    "h4",',
'    "h5",',
'    "h6",',
'    "hr",',
'    "i",',
'    "img",',
'    "label",',
'    "li",',
'    "nl",',
'    "ol",',
'    "p",',
'    "pre",',
'    "s",',
'    "span",',
'    "strike",',
'    "strong",',
'    "sub",',
'    "sup",',
'    "table",',
'    "tbody",',
'    "td",',
'    "th",',
'    "thead",',
'    "tr",',
'    "u",',
'    "ul"',
'  ]',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT                                    /* sets the icon of the list item */',
'       ''fa-exclamation-triangle''',
'           AS NOTE_ICON,',
'       /* sets the color of the list icon */',
'       ''rgb(192,0,15)''',
'           AS NOTE_ICON_COLOR,',
'       /* sets the title of the list item (html possible) */',
'       ''Alarm occurred''',
'           AS NOTE_HEADER,',
'       /* sets the text of the list item (html possible */',
'       ''There''''s an alarm in <b>Station 3</b>. Error code is <b style="color:rgba(192,0,15);">#304-AD. </b>''',
'           AS NOTE_TEXT,',
'       /* set the link when click on list item */',
'       ''javascript:alert("Click on Notification Entry");void(0);''',
'           AS NOTE_LINK,',
'       /* sets the color of the left box shadow */',
'       ''rgb(192,0,15)''',
'           AS NOTE_COLOR,',
'       /* Link or js that is executed when press accept link (if left or null not accept is shown */',
'       ''javascript:alert("Accepted");void(0);''',
'           AS NOTE_ACCEPT,',
'       /* Link or js that is executed when press decline link (if left or null not decline is shown */',
'       ''javascript:alert("Declined");void(0);''',
'           AS NOTE_DECLINE,',
'       /* When enable Browser Notifications in ConfigJSON then you can select which notifications should not be fire browser not. */',
'       0',
'           AS NO_BROWSER_NOTIFICATION',
'FROM sypndjob',
' WHERE     authpers = :app_user',
'       AND actvstat = 0',
'       AND checkedd = ''Y''',
'       AND compcode = :compcode',
'       ',
'UNION ALL',
'SELECT ''fa-wrench''',
'           AS NOTE_ICON,',
'       ''#3e6ebc''',
'           AS NOTE_ICON_COLOR,',
'       PROGNAME||'' ''||REMARKSS',
'           AS NOTE_HEADER,',
'       PARAMVAL||'' ''||RAISEDBY',
'           AS NOTE_TEXT,',
'       ''https://apex.world''',
'           AS NOTE_LINK,',
'       ''#3e6ebc''',
'           AS NOTE_COLOR,',
'       NULL',
'           AS NOTE_ACCEPT,',
'       ''javascript:alert("Declined");void(0);''',
'           AS NOTE_DECLINE,',
'       /* When enable Browser Notifications in ConfigJSON then you can select which notifications should not be fire browser not. */',
'       0',
'           AS NO_BROWSER_NOTIFICATION',
'  FROM sypndjob',
' WHERE     authpers = :app_user',
'       AND actvstat = 0',
'       AND checkedd = ''Y''',
'       AND compcode = :compcode'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135132507916257809)
,p_event_id=>wwv_flow_api.id(135132369094257807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval(function () {',
'    apex.jQuery(''#notification-menu'').trigger(''apexrefresh'');',
'}',
'    , 10000',
');'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
