prompt --application/shared_components/plugins/dynamic_action/pretius_com_notifications
begin
--   Manifest
--     PLUGIN: PRETIUS_COM_NOTIFICATIONS
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
 p_id=>wwv_flow_api.id(1757946058987982430)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'PRETIUS_COM_NOTIFICATIONS'
,p_display_name=>'Pretius APEX Enhanced Notifications'
,p_category=>'NOTIFICATION'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','PRETIUS_COM_NOTIFICATIONS'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#pretius.notifications.js',
'#PLUGIN_FILES#pretius.notification.js',
''))
,p_css_file_urls=>'#PLUGIN_FILES#pretius.notifications.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function pretius_notifications (',
'  p_dynamic_action in apex_plugin.t_dynamic_action,',
'  p_plugin         in apex_plugin.t_plugin ',
') return apex_plugin.t_dynamic_action_render_result',
'is',
'  v_result apex_plugin.t_dynamic_action_render_result;',
'',
'  v_plugin_collection varchar2(50) := ''PRETIUS_NOTIFICATIONS'';',
'  v_page_template apex_application_pages.page_template%type;',
'  v_success_message apex_application_temp_page.success_message%type;',
'  v_notification_message apex_application_temp_page.message%type;',
'',
'  v_current_page_template number;',
'',
'  v_retrieve_page_templates boolean default false;',
'',
'  v_onload_json clob;',
'  v_da_json clob;',
'',
'  app_useUtTemplates    varchar2(1)     := p_plugin.attribute_01;',
'  app_successMessage    varchar2(4000)  := p_plugin.attribute_02;',
'  app_notifyMessage     varchar2(4000)  := p_plugin.attribute_03;',
'',
'  attr_type             varchar2(50)   := p_dynamic_action.attribute_01;',
'  attr_displayAs        varchar2(50)   := p_dynamic_action.attribute_02;',
'  attr_insertInto       varchar2(50)   := p_dynamic_action.attribute_03;',
'  attr_duration         varchar2(50)   := p_dynamic_action.attribute_04;',
'  attr_where            varchar2(50)   := p_dynamic_action.attribute_05;',
'  attr_msgType          varchar2(50)   := p_dynamic_action.attribute_06;',
'  attr_msgStaticText    varchar2(4000) := p_dynamic_action.attribute_07;',
'  attr_closeAnimation   varchar2(50)   := p_dynamic_action.attribute_08;',
'  attr_msgJSreturn      varchar2(4000) := p_dynamic_action.attribute_09;',
'  attr_position         varchar2(15)   := p_dynamic_action.attribute_10;',
'  attr_embededSettings  varchar2(500)  := p_dynamic_action.attribute_11;',
'  attr_eMerge           boolean        := case when instr( attr_embededSettings, ''MERGE''    )     > 0 then true else false end;',
'  attr_eScrollTo        boolean        := case when instr( attr_embededSettings, ''SCROLLTO'' )     > 0 then true else false end;',
'  attr_eFixed           boolean        := case when instr( attr_embededSettings, ''FIXED'' )        > 0 then true else false end;',
'  attr_eRemoveOther     boolean        := case when instr( attr_embededSettings, ''REMOVEOTHER'' )  > 0 then true else false end;',
'  attr_eShowBullets     boolean        := case when instr( attr_embededSettings, ''SHOWBULLETS'' )  > 0 then true else false end;',
'  ',
'  attr_fixedAffected    varchar2(2000) := p_dynamic_action.attribute_12;',
'',
'',
'BEGIN',
'  attr_msgJSreturn := ''this.data = data; ''||attr_msgJSreturn;',
'',
'  if app_useUtTemplates = ''Y'' then',
'    if not APEX_COLLECTION.COLLECTION_EXISTS( v_plugin_collection ) then',
'      APEX_COLLECTION.CREATE_COLLECTION( v_plugin_collection );',
'    end if;',
'',
'    begin',
'      select',
'        c001,',
'        c002 ',
'      into ',
'        v_success_message,',
'        v_notification_message',
'      from ',
'        apex_collections ',
'      where ',
'        collection_name = v_plugin_collection ',
'      and ',
'        n001 = :APP_PAGE_ID;',
'    EXCEPTION',
'      when no_data_found then',
'        v_retrieve_page_templates := true;',
'    end;',
'',
'    if v_retrieve_page_templates then',
'      select ',
'        NVL(aap.page_template, aa.page_template),',
'        aatp.success_message,',
'        aatp.message',
'      into  ',
'        v_page_template,',
'        v_success_message,',
'        v_notification_message',
'      from ',
'        apex_application_pages aap',
'      join',
'        apex_applications aa',
'      on',
'        aap.application_id = aa.application_id ',
'      join',
'        apex_application_temp_page aatp',
'      on  ',
'        aap.application_id = aatp.application_id ',
'        and template_name = NVL(aap.page_template, aa.page_template)',
'      where ',
'        aap.application_id = :APP_ID and aap.page_id = :APP_PAGE_ID;',
'',
'',
'      APEX_COLLECTION.ADD_MEMBER(',
'        p_collection_name => v_plugin_collection,',
'        p_c001 => v_success_message,',
'        p_c002 => v_notification_message,',
'        p_n001 => :APP_PAGE_ID',
'      );',
'',
'    end if;',
'  else',
'    v_success_message      := app_successMessage; ',
'    v_notification_message := app_notifyMessage;',
'  end if;',
'  ',
'  apex_json.initialize_clob_output;',
'',
'  apex_json.open_object;',
'    apex_json.write( ''successMessageTemplate'', v_success_message );',
'    apex_json.write( ''notificationMessageTemplate'', v_notification_message );',
'  apex_json.close_object;',
'',
'  v_onload_json := apex_json.get_clob_output;',
'',
'  apex_json.free_output;',
'',
'  --',
'  apex_json.initialize_clob_output;  ',
'',
'  apex_json.open_object;',
'    apex_json.write( ''type''           , attr_type );',
'    apex_json.write( ''displayAs''      , attr_displayAs );',
'    apex_json.write( ''insertInto''     , attr_insertInto );',
'    apex_json.write( ''duration''       , attr_duration );',
'    apex_json.write( ''where''          , attr_where );',
'    apex_json.write( ''where''          , attr_where );',
'    apex_json.write( ''closeAnimation'' , attr_closeAnimation );',
'    apex_json.write( ''msgType''        , attr_msgType );',
'    apex_json.write( ''msgStaticText''  , attr_msgStaticText );',
'    apex_json.write( ''msgJsReturn''    , attr_msgJSreturn );',
'    apex_json.write( ''position''       , attr_position );',
'    apex_json.write( ''merge''          , attr_eMerge );',
'    apex_json.write( ''scrollTo''       , attr_eScrollTo );',
'    apex_json.write( ''fixed''          , attr_eFixed );',
'    apex_json.write( ''fixedAffected''  , attr_fixedAffected );',
'    apex_json.write( ''removeOther''    , attr_eRemoveOther );',
'    apex_json.write( ''showBullets''    , attr_eShowBullets );',
'    ',
'    ',
'  apex_json.close_object;',
'  v_da_json := apex_json.get_clob_output;',
'',
'  apex_json.free_output;',
'',
'  apex_javascript.add_onload_code(''',
'    if ( $(document).data(''''pretius-notifications'''') == undefined ) {',
'      $(document).notifications(''|| v_onload_json ||'');',
'    }',
'  '');',
'  ',
'  v_result.javascript_function := ''function() { ',
'    $(document).notifications(''''pushNotification'''',''|| v_da_json ||'', this);',
'  }'';',
'',
'  return v_result;',
'',
'EXCEPTION',
'  WHEN OTHERS then',
'    APEX_JAVASCRIPT.add_onload_code(''',
'      console.log(''''While rendering plugin error ocured: ''||SQLERRM||'' '''');      ',
'    '');  ',
'    return v_result;',
'end pretius_notifications;'))
,p_api_version=>1
,p_render_function=>'pretius_notifications'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'The plugin is dynamic action plugin providing notifications for Oracle APEX 5 and Universal Theme. Due to highly configurable attributes, the plugin can be used as presentation layer for AJAX callbacks. Translated messages from the database can be ea'
||'sly presented in two types of notification. Author: Bartosz Ostrowski, Twitter: @bostrowsk1'
,p_version_identifier=>'1.0'
,p_files_version=>34
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1085427773696991093)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Use "Universal Theme" templates'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>When "Yes" is selected</b>',
'<p>',
'the plugin fetch success and notification message from APEX tables.',
'</p>',
'<b>When "No" is selected</b>',
'<p>',
'the plugin uses success and notification message templates defined as plugin application attributes.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1085402465653982329)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Success message template'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1085427773696991093)
,p_depending_on_has_to_exist=>false
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Plugin success message template. Default value is copy of Universal Theme template.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1085415279918985254)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Message template'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1085427773696991093)
,p_depending_on_has_to_exist=>false
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Plugin warning/error message template. Default value is copy of Universal Theme template.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1757967394321745617)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'SUCCESS'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Selected option defines the notification appearance.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757968339886746228)
,p_plugin_attribute_id=>wwv_flow_api.id(1757967394321745617)
,p_display_sequence=>10
,p_display_value=>'Success'
,p_return_value=>'SUCCESS'
,p_is_quick_pick=>true
,p_help_text=>'Notification is styled as APEX success message.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757968746758747104)
,p_plugin_attribute_id=>wwv_flow_api.id(1757967394321745617)
,p_display_sequence=>20
,p_display_value=>'Warning'
,p_return_value=>'WARNING'
,p_is_quick_pick=>true
,p_help_text=>'Notification is styled as APEX warning message.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757969193001747753)
,p_plugin_attribute_id=>wwv_flow_api.id(1757967394321745617)
,p_display_sequence=>30
,p_display_value=>'Error'
,p_return_value=>'DANGER'
,p_is_quick_pick=>true
,p_help_text=>'Notification is styled as APEX error message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1757970277368753999)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Display as'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NOTIFICATION'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Selected option defines the notification type.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757971408924755299)
,p_plugin_attribute_id=>wwv_flow_api.id(1757970277368753999)
,p_display_sequence=>10
,p_display_value=>'Floating'
,p_return_value=>'NOTIFICATION'
,p_is_quick_pick=>true
,p_help_text=>'Light notification floating in the corner of the window.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757971800711759177)
,p_plugin_attribute_id=>wwv_flow_api.id(1757970277368753999)
,p_display_sequence=>20
,p_display_value=>'Inline'
,p_return_value=>'EMBEDED'
,p_is_quick_pick=>true
,p_help_text=>'Horizontal embeded notification.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1757973162457778341)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>1
,p_prompt=>'Insert into'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'.t-Body-main'
,p_is_translatable=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'To show Inline notification within APEX region, the proper jQuery selector must be provided.',
'</p>',
'<p>',
'For APEX region defined as:',
'</p>',
'<ul>',
'<li>Identification > Type = "Static Content"</li>',
'<li>Appearance > Template = "Standard"</li>',
'<li>Advanced > Static id = "embededNotification"</li>',
'</ul>',
'<p>',
'the proper jQuery selector is defined as "#embededNotification .t-Region-body".',
'</p>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'jQuery selector that points to notifications container. This attribute can be used to append Inline notification into APEX page region (see examples).',
'</p>',
'<p>',
'<i>',
'If you are not sure how to use this attribute leave it with default value ".t-Body-main". Notification are appended to default "Universal Theme" notification container.',
'</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1757975811724846324)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Display duration'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0'
,p_unit=>'ms'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dl>',
'  <dt>When equal 0</dt>',
'  <dd>Notification is displayed without time limit. To hide the notification, user has to click on close (X) button.</dd>',
'  <dt>When more than 0</dt>',
'  <dd>Notification is displayed for specified number of miliseconds. Time indicator presents amount of time before closing the notification.</dd>',
'</dl>'))
,p_help_text=>'Defines amount of time when notification is displayed to the user.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1757984499060641877)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>23
,p_prompt=>'Show new'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TOP'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Defines whether notification is added on top or bottom of notifications list'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757985917380642906)
,p_plugin_attribute_id=>wwv_flow_api.id(1757984499060641877)
,p_display_sequence=>10
,p_display_value=>'On top'
,p_return_value=>'TOP'
,p_is_quick_pick=>true
,p_help_text=>'New notification is added on top of notification list'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1757986391056643746)
,p_plugin_attribute_id=>wwv_flow_api.id(1757984499060641877)
,p_display_sequence=>20
,p_display_value=>'On bottom'
,p_return_value=>'BOTTOM'
,p_is_quick_pick=>true
,p_help_text=>'New notification is added on bottom of notification list'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758016260505774406)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Message type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'STATIC'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'This attribute defines the source of the notification message. Using values other then <b>Static text</b> and <b>Dialog close event</b> allows to use dynamic message for the notification.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758021218182777351)
,p_plugin_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_display_sequence=>10
,p_display_value=>'Static text'
,p_return_value=>'STATIC'
,p_is_quick_pick=>true
,p_help_text=>'Provided text in <b>Static text</b> attribute is displayed as notification message.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1759319230089297045)
,p_plugin_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_display_sequence=>15
,p_display_value=>'Dialog close event'
,p_return_value=>'DIALOG'
,p_is_quick_pick=>true
,p_help_text=>'Modal page success message is displayed as notification message. Plugin must be bound to <b>dialog close</b> event.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1759275518053287137)
,p_plugin_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_display_sequence=>17
,p_display_value=>'Function returning String'
,p_return_value=>'JSSTRING'
,p_is_quick_pick=>true
,p_help_text=>'Function body defined as <b>JavaScript function body</b> attribute must return String or Number. Read more in help text for <b>JavaScript function body</b> attribute.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758023937115780390)
,p_plugin_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_display_sequence=>20
,p_display_value=>'Function returning JSON'
,p_return_value=>'JSJSON'
,p_help_text=>'Function body defined as <b>JavaScript function body</b> attribute must return valid JSON object. JSON object is used to build notification with list. Read more in help text for <b>JavaScript function body</b> attribute.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1590898574287497529)
,p_plugin_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_display_sequence=>50
,p_display_value=>'Function returning String or JSON'
,p_return_value=>'JSMIXED'
,p_is_quick_pick=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Function body defined as <b>JavaScript function body</b> attribute must return valid JSON object or String/Number. This option is handy when you are not sure if custom event provides String/Number or JSON object.',
'',
'Read more in help text for <b>JavaScript function body</b> attribute.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758024411773809522)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Static text'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'STATIC'
,p_help_text=>'Provided text is used as notification message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758033530032095498)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>55
,p_prompt=>'Removing method'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'REMOVE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Defines how notification is removed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758036639353096193)
,p_plugin_attribute_id=>wwv_flow_api.id(1758033530032095498)
,p_display_sequence=>10
,p_display_value=>'Remove'
,p_return_value=>'REMOVE'
,p_is_quick_pick=>true
,p_help_text=>'Notification is removed without animation.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758037086820101400)
,p_plugin_attribute_id=>wwv_flow_api.id(1758033530032095498)
,p_display_sequence=>20
,p_display_value=>'Slide up'
,p_return_value=>'slideUp'
,p_is_quick_pick=>true
,p_help_text=>'Notification is removed using "Slide up" jQuery animation.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758037512282102190)
,p_plugin_attribute_id=>wwv_flow_api.id(1758033530032095498)
,p_display_sequence=>30
,p_display_value=>'Fade out'
,p_return_value=>'fadeOut'
,p_is_quick_pick=>true
,p_help_text=>'Notification is removed using "Fade out" jQuery animation.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758070231031360614)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'JavaScript function body'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1758016260505774406)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'JSJSON,JSSTRING,JSMIXED'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'This code has access to the following dynamic action related attributes::',
'</p>',
'<dl>',
'  <dt>this.data</dt>',
'  <dd>Optional additional data that can be passed from the event handler.</dd>',
'</dl>',
'',
'<b>Valid JSON object</b>',
'<p>',
'Valid object must has two attributes: ',
'</p>',
'<ul>',
'<li>msg [Object String]</li>',
'<li>List [Object Array]</li>',
'</ul>',
'Example:',
'<pre>',
'{',
'  msg: "Title of notification",',
'  list: [',
'    "Detailed message #1",',
'    "Detailed message #2",',
'    "..."',
'  ]',
'}',
'</pre>',
'',
'<b>Example of JavaScript function body returning String</b>',
'<pre>',
'var location = window.location.href;',
'return location;',
'</pre>',
'',
'<b>Example of JavaScript function body returning JSON</b>',
'<pre>',
'return {',
'  msg: "Notification with details",',
'  list: ["detailed message #1", "detailed message #2"]',
'}',
'</pre>',
'',
'<b>Alternative for Dialog Close event</b>',
'<p>',
'To capture modal page message (and returned APEX items) you can use "Message type" = "Function returning JSON". Dynamic action event should be set to "Dialog close event" and <b>JavaScript function body</b> should work on <b>dialog close</b> event <b'
||'>data</b>:',
'</p>',
'<pre>',
'return {',
'  msg: this.data.successMessage.text,',
'  list: [ this.data.PX_ITEM_NAME, this.data.PX_ITEM_NAME_2 ]',
'};',
'</pre>',
'',
'<p>',
'Where X is page number and ITEM_NAME_1, ITEM_NAME_2 are APEX item names.',
'</p>',
'',
'<b>Custom event</b>',
'<p>',
'To bind the plugin with custom event <b>customEvent</b>, dynamic action:',
'</p>',
'<ul>',
'<li>must be bound to custom event <b>customEvent</b></li>',
'<li>should be triggered by <b>apex.event</b>. </li>',
'</ul>',
'<p>',
'Example trigger for dynamic action might look like:',
'</p>',
'<pre>',
'var pSelector = document, ',
'    pEvent = ''customEvent'', ',
'    pData = {msg: "Custom event", list: ["line 1", "line 2", "..."]};',
'',
'apex.event.trigger(pSelector,pEvent,pData);',
'</pre>',
'<p>',
'<b>pData</b> is referenced by <b>this.data</b> in <b>JavaScript function body</b>:',
'</p>',
'<pre>',
'return this.data;',
'</pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Provide JavaScript function body returning String / Number / JSON depending on selected value in <b>Message type</b> attribute. ',
'The result is used to build notification content. ',
'Maximum length for function body is 4000 characters.',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758236378044788381)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>22
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'TOPRIGHT'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1757970277368753999)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'NOTIFICATION'
,p_lov_type=>'STATIC'
,p_help_text=>'Selected option defines notification position.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758243080059789447)
,p_plugin_attribute_id=>wwv_flow_api.id(1758236378044788381)
,p_display_sequence=>10
,p_display_value=>'Top right'
,p_return_value=>'TOPRIGHT'
,p_is_quick_pick=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'The notification is displayed in top right corner of the browser window.',
'</p>',
'<p>',
'<i>',
'This position is default position for APEX native success message.',
'</i>',
'</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758243476117790377)
,p_plugin_attribute_id=>wwv_flow_api.id(1758236378044788381)
,p_display_sequence=>20
,p_display_value=>'Top left'
,p_return_value=>'TOPLEFT'
,p_is_quick_pick=>true
,p_help_text=>'The notification is displayed in top left corner of the browser window.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758243861545791445)
,p_plugin_attribute_id=>wwv_flow_api.id(1758236378044788381)
,p_display_sequence=>30
,p_display_value=>'Bottom right'
,p_return_value=>'BOTTOMRIGHT'
,p_is_quick_pick=>true
,p_help_text=>'The notification is displayed in bottom right corner of the browser window.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758244231225792619)
,p_plugin_attribute_id=>wwv_flow_api.id(1758236378044788381)
,p_display_sequence=>40
,p_display_value=>'Bottom left'
,p_return_value=>'BOTTOMLEFT'
,p_is_quick_pick=>true
,p_help_text=>'The notification is displayed in bottom left corner of the browser window.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1758267490061015997)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>21
,p_prompt=>'Inline settings'
,p_attribute_type=>'CHECKBOXES'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1757970277368753999)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'EMBEDED'
,p_lov_type=>'STATIC'
,p_help_text=>'With this attribute notification behaviour can be changed.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758275380187022704)
,p_plugin_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_display_sequence=>10
,p_display_value=>'Merge'
,p_return_value=>'MERGE'
,p_help_text=>'When this option selected, new notifications of the same type are merged to one notification.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1758275741648024024)
,p_plugin_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_display_sequence=>20
,p_display_value=>'Scroll to'
,p_return_value=>'SCROLLTO'
,p_help_text=>'When this option selected, browser window is scrolled to the new notification.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1085502556955172398)
,p_plugin_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_display_sequence=>30
,p_display_value=>'Fixed position'
,p_return_value=>'FIXED'
,p_help_text=>'When this option selected, notification is pinned to the browser window.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(916762394962312138)
,p_plugin_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_display_sequence=>40
,p_display_value=>'Remove existing'
,p_return_value=>'REMOVEOTHER'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'When this option selected, all* existing inline notifications are removed before adding this notification.<br/><br/>',
'',
'*When <b>Merge</b> option is selected, only different types of notification are removed.'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(408069484851527681)
,p_plugin_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_display_sequence=>50
,p_display_value=>'Show bullets in list'
,p_return_value=>'SHOWBULLETS'
,p_help_text=>'When this option selected, list elements are preceded with list bullet.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1085524024640229369)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>22
,p_prompt=>'Affected by fixed position'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'.t-Body-contentInner'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1758267490061015997)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'FIXED'
,p_examples=>'asd'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'jQuery selector that points to APEX page body container. ',
'When <b>Fixed position</b> in <b>Inline settings</b> is checked, this selectors margin-top css property is recalculated. When fixed notification is removed the margin-top value is restored to previous value.',
'</p>',
'<p>',
'<i>If you are not sure how to use this attribute leave it with default value ".t-Body-contentInner"</i>',
'</p>'))
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(408087302442592626)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_name=>'pretiusnotificationdraw'
,p_display_name=>'Notification appended'
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
wwv_flow_api.g_varchar2_table(1) := '2F2A20636F6D6D6F6E202A2F0D0A2E742D416C6572742D2D737563636573732E73686F7742756C6C657473202E68746D6C64625374644572722C0D0A2E742D416C6572742D2D706167652E73686F7742756C6C657473202E68746D6C6462537464457272';
wwv_flow_api.g_varchar2_table(2) := '207B0D0A202020206C6973742D7374796C653A20646973633B0D0A202020206D617267696E3A2034707820313270782034707820323470783B0D0A7D0D0A0D0A2E742D426F64792D616C6572742E6669786564207B0D0A2020706F736974696F6E3A2066';
wwv_flow_api.g_varchar2_table(3) := '697865643B0D0A20207A2D696E6465783A203131313B0D0A202077696474683A20313030253B0D0A7D0D0A0D0A2E702D416C657274207B0D0A2020706F736974696F6E3A2066697865643B0D0A20207A2D696E6465783A203839393B0D0A7D0D0A0D0A2E';
wwv_flow_api.g_varchar2_table(4) := '702D416C6572742E544F505249474854207B0D0A2020746F703A20313270783B0D0A202072696768743A20313270783B202020200D0A7D0D0A0D0A2E702D416C6572742E544F504C454654207B0D0A2020746F703A20313270783B0D0A20206C6566743A';
wwv_flow_api.g_varchar2_table(5) := '20313270783B202020200D0A7D0D0A0D0A2E702D416C6572742E424F54544F4D4C454654207B0D0A2020626F74746F6D3A20313270783B0D0A20206C6566743A20313270783B202020200D0A7D0D0A2E702D416C6572742E424F54544F4D524947485420';
wwv_flow_api.g_varchar2_table(6) := '7B0D0A2020626F74746F6D3A20313270783B0D0A202072696768743A20313270783B0D0A7D0D0A0D0A2E707265746975732D2D656D6265646564202E6475726174696F6E496E64696361746F722C0D0A2E707265746975732D2D6E6F7469666963617469';
wwv_flow_api.g_varchar2_table(7) := '6F6E202E6475726174696F6E496E64696361746F72207B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A202077696474683A20313030253B0D0A20206261636B67726F756E643A20726762612835372C2035372C2035372C20302E32293B';
wwv_flow_api.g_varchar2_table(8) := '0D0A20206865696768743A203570783B0D0A2020626F74746F6D3A203070783B0D0A20206C6566743A203070783B20200D0A7D0D0A0D0A2E707265746975732D2D656D6265646564202E614572724D73675469746C65207B0D0A2020666F6E742D776569';
wwv_flow_api.g_varchar2_table(9) := '6768743A203730303B0D0A7D0D0A0D0A2E707265746975732D2D656D6265646564202E68746D6C6462556C4572722C0D0A2E707265746975732D2D6E6F74696669636174696F6E202E68746D6C6462556C457272207B0D0A20206D617267696E3A20303B';
wwv_flow_api.g_varchar2_table(10) := '0D0A20206C6973742D7374796C653A206E6F6E653B0D0A7D0D0A0D0A2E707265746975732D2D656D6265646564202E68746D6C64624F72614572722C0D0A2E707265746975732D2D6E6F74696669636174696F6E202E68746D6C64624F7261457272207B';
wwv_flow_api.g_varchar2_table(11) := '0D0A20206D617267696E2D746F703A203870783B0D0A2020646973706C61793A20626C6F636B3B0D0A2020666F6E742D73697A653A20312E3172656D3B0D0A20206C696E652D6865696768743A20312E3672656D3B0D0A2020666F6E742D776569676874';
wwv_flow_api.g_varchar2_table(12) := '3A206E6F726D616C3B0D0A2020666F6E742D66616D696C793A204D656E6C6F2C436F6E736F6C61732C6D6F6E6F73706163652C73657269663B0D0A202077686974652D73706163653A207072652D6C696E653B0D0A7D0D0A0D0A2E702D416C657274202E';
wwv_flow_api.g_varchar2_table(13) := '707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D737563636573732C0D0A2E702D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D7761726E696E672C0D0A2E702D416C657274';
wwv_flow_api.g_varchar2_table(14) := '202E707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D64616E676572207B0D0A20206D61782D77696474683A2034383070783B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020746F703A6175746F3B0D0A';
wwv_flow_api.g_varchar2_table(15) := '202072696768743A6175746F3B0D0A20206F7061636974793A20313B0D0A7D0D0A2F2A2073756363657373202A2F0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D737563636573732E69732D76697369626C652C0D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(16) := '742D2D706167652E742D416C6572742D2D73756363657373207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A20207472616E73666F726D3A207472616E736C6174655928307078293B0D0A7D0D0A0D0A2F2A2064616E676572202A2F';
wwv_flow_api.g_varchar2_table(17) := '0D0A2E702D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283232352C37322C37322C302E39293B0D0A7D0D0A2E70';
wwv_flow_api.g_varchar2_table(18) := '2D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D64616E676572202E742D416C6572742D7469746C652C200D0A2E702D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E742D416C';
wwv_flow_api.g_varchar2_table(19) := '6572742D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E702D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D64616E676572202E742D416C6572742D74';
wwv_flow_api.g_varchar2_table(20) := '69746C65207B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A2020666F6E742D7765696768743A203730303B0D0A7D0D0A0D0A0D0A2F2A207761726E696E67202A2F0D0A2E702D416C657274202E707265746975732D2D6E6F746966696361';
wwv_flow_api.g_varchar2_table(21) := '74696F6E2E742D416C6572742D2D7761726E696E67202E742D416C6572742D7469746C65207B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A7D0D0A0D0A2E702D416C657274202E707265746975732D2D6E6F74696669636174696F6E2E74';
wwv_flow_api.g_varchar2_table(22) := '2D416C6572742D2D7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C3235302C3232392C302E39293B200D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A0D0A2E702D416C657274202E7072';
wwv_flow_api.g_varchar2_table(23) := '65746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20236666636330303B20200D0A7D0D0A0D0A2E702D416C657274202E7072';
wwv_flow_api.g_varchar2_table(24) := '65746975732D2D6E6F74696669636174696F6E2E742D416C6572742D2D7761726E696E67202E742D416C6572742D627574746F6E73202E742D49636F6E2E69636F6E2D636C6F7365207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A0D0A';
wwv_flow_api.g_varchar2_table(25) := '2E707265746975732D2D656D6265646564202E742D416C6572742D627574746F6E732C0D0A2E707265746975732D2D656D6265646564202E742D416C6572742D69636F6E2C0D0A2E707265746975732D2D6E6F74696669636174696F6E202E742D416C65';
wwv_flow_api.g_varchar2_table(26) := '72742D627574746F6E732C0D0A2E707265746975732D2D6E6F74696669636174696F6E202E742D416C6572742D69636F6E207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A';
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
 p_id=>wwv_flow_api.id(235095219468760153)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_file_name=>'pretius.notifications.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
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
wwv_flow_api.g_varchar2_table(1) := '242E7769646765742827707265746975732E6E6F74696669636174696F6E272C207B0D0A2020696E73657274496E746F456C656D3A206E756C6C2C0D0A20206E6F74696669636174696F6E436F6E7461696E65723A206E756C6C2C0D0A202074656D706C';
wwv_flow_api.g_varchar2_table(2) := '6174653A206E756C6C2C0D0A2020656D6265646564436F6E7461696E65723A206E756C6C2C0D0A20206572726F7248616E646C696E673A207B0D0A0D0A202020207469746C653A207B0D0A202020202020636F6E663A2022506C7567696E20636F6E6669';
wwv_flow_api.g_varchar2_table(3) := '6775726174696F6E206572726F72222C0D0A202020202020696E7465726E616C3A2022496E7465726E616C20706C7567696E206572726F72220D0A202020207D2C0D0A20202020636F6E664572726F723A207B0D0A202020202020696E73657274496E74';
wwv_flow_api.g_varchar2_table(4) := '6F4E6F74466F756E643A20276A51756572792073656C6563746F722070726F766964656420696E2022496E7365727420696E746F222061747472696275746520646F6573206E6F74206578697374732E272C0D0A20202020202066697865644166666563';
wwv_flow_api.g_varchar2_table(5) := '7465644E6F74466F756E643A20276A51756572792073656C6563746F722070726F766964656420696E2022416666656374656420627920666978656420706F736974696F6E222061747472696275746520646F6573206E6F74206578697374732E272C0D';
wwv_flow_api.g_varchar2_table(6) := '0A20202020202074656D706C617465537562537472696E67546F4D616E793A2027546F206D616E7920737562737469747574696F6E20737472696E677320696E206E6F74696669636174696F6E2074656D706C6174652028234D45535341474523206F72';
wwv_flow_api.g_varchar2_table(7) := '2023535543434553535F4D45535341474523292E272C0D0A20202020202074656D706C617465537562537472696E674E6F74466F756E643A2027234D45535341474523206F722023535543434553535F4D45535341474523206E6F7420666F756E642077';
wwv_flow_api.g_varchar2_table(8) := '697468696E207468652074656D706C6174652E272C0D0A2020202020206D6573736167654A7352657475726E3A202746756E6374696F6E2072657475726E696E67206D65737361676520636F6E7461696E73204A617661536372697074206572726F7273';
wwv_flow_api.g_varchar2_table(9) := '3A20272C0D0A2020202020206D6573736167654A7352657475726E4E6F7456616C69644A534F4E3A202746756E6374696F6E2072657475726E696E67206D6573736167652072657475726E656420696E76616C6964204A534F4E206F626A6563742E272C';
wwv_flow_api.g_varchar2_table(10) := '0D0A2020202020206D6573736167654A7352657475726E4E6F74537570706F727465644F626A3A202746756E6374696F6E2072657475726E696E67206D6573736167652072657475726E6564206E6F7420737570706F72746564204A53206F626A656374';
wwv_flow_api.g_varchar2_table(11) := '2E272C0D0A2020202020206D6573736167654A7352657475726E4A736F6E57726F6E674F626A6563743A202746756E6374696F6E2072657475726E696E67206D657373616765206572726F723A206578706563746564204A534F4E206F626A6563742067';
wwv_flow_api.g_varchar2_table(12) := '6F7420272C0D0A2020202020206D6573736167654A7352657475726E537472696E6757726F6E674F626A6563743A202746756E6374696F6E2072657475726E696E67206D657373616765206572726F723A20657870656374656420537472696E6720676F';
wwv_flow_api.g_varchar2_table(13) := '7420272C0D0A2020202020206D6573736167654A7352657475726E4D6978656457726F6E674F626A6563743A202746756E6374696F6E2072657475726E696E67206D657373616765206572726F723A20657870656374656420537472696E6720676F7420';
wwv_flow_api.g_varchar2_table(14) := '270D0A202020207D2C0D0A20202020696E7465726E616C4572726F723A207B0D0A202020202020756E6B6E6F776E4F7074696F6E547970653A2027556E6B6E6F776E2076616C7565206F6620225479706522206174747269627574652020617474726962';
wwv_flow_api.g_varchar2_table(15) := '7574653A272C0D0A202020202020756E6B6E6F776E4F7074696F6E57686572653A2027556E6B6F776E2076616C7565206F6620225768657265222061747472696275746520206174747269627574653A272C0D0A202020202020756E6B6E6F776E4F7074';
wwv_flow_api.g_varchar2_table(16) := '696F6E506F736974696F6E3A2027556E6B6E6F776E2076616C7565206F662022506F736974696F6E2220617474726962757465206174747269627574653A272C0D0A202020202020756E6B6E6F776E4F7074696F6E4D7367547970653A2027556E6B6E6F';
wwv_flow_api.g_varchar2_table(17) := '776E2076616C7565206F6620224E6F74696669636174696F6E207479706522206174747269627574653A272C0D0A202020202020756E6B6E6F776E446973706C617941733A2027556E6B6E6F776E2076616C7565206F662022446973706C617920617322';
wwv_flow_api.g_varchar2_table(18) := '206174747269627574653A270D0A202020207D0D0A20207D2C0D0A0D0A20206F7074696F6E733A207B0D0A20202020636C6F7365416E696D6174696F6E3A202252454D4F5645222C0D0A20202020646973706C617941733A2022454D4245444544222C0D';
wwv_flow_api.g_varchar2_table(19) := '0A202020206475726174696F6E3A202231303030222C0D0A20202020696E73657274496E746F3A20222E742D426F64792D6D61696E222C0D0A20202020747970653A20225741524E494E47222C0D0A2020202077686572653A2022544F50222C0D0A2020';
wwv_flow_api.g_varchar2_table(20) := '20206D616E616765723A206E756C6C2C0D0A202020206D736754797065203A206E756C6C2C0D0A202020206D736753746174696354657874203A206E756C6C2C0D0A202020206D73674A7352657475726E20203A206E756C6C2C0D0A20202020706F7369';
wwv_flow_api.g_varchar2_table(21) := '74696F6E3A2027544F505249474854272C0D0A202020206D657267653A2066616C73652C0D0A202020207363726F6C6C546F3A2066616C73652C0D0A2020202066697865643A2066616C73652C0D0A20202020666978656441666665637465643A206E75';
wwv_flow_api.g_varchar2_table(22) := '6C6C2C0D0A2020202072656D6F76654F746865723A2066616C73652C0D0A2020202064796E616D6963416374696F6E3A206E756C6C0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F6372656174653A206675';
wwv_flow_api.g_varchar2_table(23) := '6E6374696F6E202829207B0D0A20202020766172200D0A202020202020696E73657274496E746F2C20626F6479436F6E74656E742C206572726F724D73673B0D0A0D0A202020202F2F70727A656369C485C5BC20746869732E6F7074696F6E730D0A2020';
wwv_flow_api.g_varchar2_table(24) := '2020746869732E5F73757065722820746869732E6F7074696F6E7320293B0D0A20202020746869732E6F7074696F6E732E6475726174696F6E203D207061727365496E742820746869732E6F7074696F6E732E6475726174696F6E20293B0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(25) := '2020746869732E74656D706C617465203D20746869732E6F7074696F6E732E6D616E616765722E67657454656D706C6174652820746869732E6F7074696F6E732E646973706C6179417320293B0D0A0D0A202020202F2F706F6D6F636E69637A65207072';
wwv_flow_api.g_varchar2_table(26) := '7A79207279736F77616E6975206E6F747966696B61636A690D0A20202020696E73657274496E746F203D202428746869732E6F7074696F6E732E696E73657274496E746F292E666972737428293B0D0A202020202F2F6A65736C6920696E73657274496E';
wwv_flow_api.g_varchar2_table(27) := '746F207A617769657261202E742D426F64792D636F6E74656E7420746F206265647A696520777374617769616C206E6F747966696B61636A6520646F207465676F20656C656D656E74750D0A20202020626F6479436F6E74656E74203D20696E73657274';
wwv_flow_api.g_varchar2_table(28) := '496E746F2E66696E6428272E742D426F64792D636F6E74656E7427293B0D0A0D0A202020206966202820696E73657274496E746F2E73697A652829203D3D20302029207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E';
wwv_flow_api.g_varchar2_table(29) := '646C696E672E636F6E664572726F722E696E73657274496E746F4E6F74466F756E643B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C65';
wwv_flow_api.g_varchar2_table(30) := '2E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A0D0A20202020746869732E696E73657274496E746F456C656D20202020202020203D20626F6479436F6E74656E742E73697A';
wwv_flow_api.g_varchar2_table(31) := '652829203E2030203F20626F6479436F6E74656E74203A20696E73657274496E746F3B0D0A0D0A20202020746869732E656D6265646564436F6E7461696E65722020202020203D20746869732E696E73657274496E746F456C656D2E66696E6428273E20';
wwv_flow_api.g_varchar2_table(32) := '2E742D426F64792D616C65727427293B0D0A20202020746869732E6E6F74696669636174696F6E436F6E7461696E6572203D20746869732E696E73657274496E746F456C656D2E66696E6428273E202E702D416C6572742E272B746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(33) := '6E732E706F736974696F6E293B0D0A0D0A202020202F2F646F64616A206B6F6E74656E657220646C6120656D62656465640D0A202020206966202820746869732E656D6265646564436F6E7461696E65722E73697A652829203D3D20302029207B0D0A20';
wwv_flow_api.g_varchar2_table(34) := '2020202020746869732E656D6265646564436F6E7461696E6572203D202428273C64697620636C6173733D22742D426F64792D616C657274223E3C2F6469763E27292E70726570656E64546F2820746869732E696E73657274496E746F456C656D20293B';
wwv_flow_api.g_varchar2_table(35) := '0D0A202020207D0D0A0D0A202020202F2F646F64616A206B6F6E74656E657220646C61206E6F74696669636174696F6E0D0A202020206966202820746869732E6E6F74696669636174696F6E436F6E7461696E65722E73697A652829203D3D2030202920';
wwv_flow_api.g_varchar2_table(36) := '7B0D0A202020202020746869732E6E6F74696669636174696F6E436F6E7461696E6572203D202428273C64697620636C6173733D22702D416C65727420272B746869732E6F7074696F6E732E706F736974696F6E2B27223E3C2F6469763E27292E707265';
wwv_flow_api.g_varchar2_table(37) := '70656E64546F2820746869732E696E73657274496E746F456C656D20293B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F64657374726F793A2066756E6374696F6E202829207B0D';
wwv_flow_api.g_varchar2_table(38) := '0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F676574456C656D436F6E7461696E696E673A2066756E6374696F6E2820737472696E672029207B0D0A202020';
wwv_flow_api.g_varchar2_table(39) := '2076617220646F6D456C656D656E742C206572726F724D73673B0D0A0D0A20202020646F6D456C656D656E74203D20746869732E74656D706C6174652E66696E6428273A636F6E7461696E7328272B737472696E672B272927292E66696C746572286675';
wwv_flow_api.g_varchar2_table(40) := '6E6374696F6E28696E6465782C20656C656D297B0D0A20202020202072657475726E202428656C656D292E6368696C6472656E28292E73697A652829203D3D20303B0D0A202020207D293B0D0A0D0A202020206966202820646F6D456C656D656E742E73';
wwv_flow_api.g_varchar2_table(41) := '697A652829203E20312029207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E74656D706C617465537562537472696E67546F4D616E793B0D0A202020202020746869732E6F70';
wwv_flow_api.g_varchar2_table(42) := '74696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(43) := '20202020656C7365206966202820646F6D456C656D656E742E73697A652829203D3D20302029207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E74656D706C61746553756253';
wwv_flow_api.g_varchar2_table(44) := '7472696E674E6F74466F756E643B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A20';
wwv_flow_api.g_varchar2_table(45) := '20202020207468726F77206572726F724D73673B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E20646F6D456C656D656E743B0D0A202020207D0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(46) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F696E736572744E6F74696669636174696F6E3A2066756E6374696F6E2829207B0D0A202020206966202820746869732E6F7074696F6E732E74797065203D3D202753554343455353272029207B0D0A20';
wwv_flow_api.g_varchar2_table(47) := '2020202020746869732E74656D706C6174652E72656D6F7665436C6173732827742D416C6572742D2D7375636365737327292E616464436C6173732827742D416C6572742D2D7375636365737327290D0A202020207D0D0A20202020656C736520696620';
wwv_flow_api.g_varchar2_table(48) := '2820746869732E6F7074696F6E732E74797065203D3D20275741524E494E47272029207B0D0A202020202020746869732E74656D706C6174652E72656D6F7665436C6173732827742D416C6572742D2D7375636365737327292E616464436C6173732827';
wwv_flow_api.g_varchar2_table(49) := '742D416C6572742D2D7761726E696E672729200D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E74797065203D3D202744414E474552272029207B0D0A202020202020746869732E74656D706C6174652E72656D';
wwv_flow_api.g_varchar2_table(50) := '6F7665436C6173732827742D416C6572742D2D7375636365737327292E616464436C6173732827742D416C6572742D2D64616E676572272920200D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D2074686973';
wwv_flow_api.g_varchar2_table(51) := '2E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E4F7074696F6E547970652B746869732E6F7074696F6E732E747970653B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F7745';
wwv_flow_api.g_varchar2_table(52) := '72726F722820746869732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A0D0A202020202F2F777374617769656E69650D0A';
wwv_flow_api.g_varchar2_table(53) := '202020206966202820746869732E6F7074696F6E732E7768657265203D3D2027544F50272029207B0D0A202020202020746869732E6E6F74696669636174696F6E436F6E7461696E65722E70726570656E642820746869732E74656D706C61746520293B';
wwv_flow_api.g_varchar2_table(54) := '0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E7768657265203D3D2027424F54544F4D272029207B0D0A202020202020746869732E6E6F74696669636174696F6E436F6E7461696E65722E617070656E642820';
wwv_flow_api.g_varchar2_table(55) := '746869732E74656D706C61746520293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E4F7074696F6E';
wwv_flow_api.g_varchar2_table(56) := '57686572652B746869732E6F7074696F6E732E77686572653B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C';
wwv_flow_api.g_varchar2_table(57) := '206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A0D0A202020206966202820242E696E417272617928746869732E6F7074696F6E732E706F736974696F6E2C205B27424F54544F4D52494748';
wwv_flow_api.g_varchar2_table(58) := '54272C2027544F505249474854275D29203E202D312029207B0D0A202020202020746869732E74656D706C6174652E63737328277269676874272C20272D3132302527292E736C69646555702830292E666164654F75742830292E616E696D617465287B';
wwv_flow_api.g_varchar2_table(59) := '6865696768743A2027746F67676C65272C206F7061636974793A2027746F67676C65272C2072696768743A2031327D293B0D0A202020207D0D0A20202020656C7365206966202820242E696E417272617928746869732E6F7074696F6E732E706F736974';
wwv_flow_api.g_varchar2_table(60) := '696F6E2C205B27544F504C454654272C2027424F54544F4D4C454654275D29203E202D312029207B0D0A202020202020746869732E74656D706C6174652E63737328276C656674272C20272D3132302527292E736C69646555702830292E666164654F75';
wwv_flow_api.g_varchar2_table(61) := '742830292E616E696D617465287B6865696768743A2027746F67676C65272C206F7061636974793A2027746F67676C65272C206C6566743A2031327D293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20';
wwv_flow_api.g_varchar2_table(62) := '746869732E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E4F7074696F6E506F736974696F6E2B746869732E6F7074696F6E732E706F736974696F6E3B0D0A202020202020746869732E6F7074696F6E732E6D61';
wwv_flow_api.g_varchar2_table(63) := '6E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(64) := '7D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F696E73657274456D62656465643A2066756E6374696F6E2829207B0D0A20202020766172200D0A202020202020706172656E74203D20746869732E656D';
wwv_flow_api.g_varchar2_table(65) := '6265646564436F6E7461696E65722E706172656E7428292C0D0A202020202020706172656E7450616464696E67203D207061727365496E742820706172656E742E637373282770616464696E67272920292C0D0A202020202020706C7567696E436C6173';
wwv_flow_api.g_varchar2_table(66) := '73203D2027707265746975732D2D272B746869732E6F7074696F6E732E747970652C0D0A2020202020206D65726765203D20746869732E6F7074696F6E732E6D65726765203F20276D6572676527203A2027272C0D0A20202020202073686F7742756C6C';
wwv_flow_api.g_varchar2_table(67) := '657473203D20746869732E6F7074696F6E732E73686F7742756C6C657473203F202773686F7742756C6C65747327203A2027272C0D0A2020202020206D6572676557697468203D20756E646566696E65642C0D0A202020202020656C656D546F4D657267';
wwv_flow_api.g_varchar2_table(68) := '653B0D0A0D0A202020206966202820706172656E7450616464696E67203E20302029207B0D0A202020202020746869732E74656D706C6174652E637373287B0D0A2020202020202020276D617267696E273A202D706172656E7450616464696E672C0D0A';
wwv_flow_api.g_varchar2_table(69) := '2020202020202020276D617267696E2D626F74746F6D273A20706172656E7450616464696E670D0A2020202020207D293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206E756C6C3B0D0A202020207D0D0A0D0A2020202074686973';
wwv_flow_api.g_varchar2_table(70) := '2E74656D706C6174652E6373732827646973706C6179272C2027626C6F636B27290D0A0D0A202020206966202820746869732E6F7074696F6E732E74797065203D3D202753554343455353272029207B0D0A202020202020746869732E74656D706C6174';
wwv_flow_api.g_varchar2_table(71) := '652E72656D6F7665436C6173732827742D416C6572742D2D7761726E696E6720742D416C6572742D2D7061676527290D0A20202020202020202E616464436C6173732827742D416C6572742D2D7375636365737327293B0D0A0D0A202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(72) := '2020656C7365206966202820746869732E6F7074696F6E732E74797065203D3D20275741524E494E47272029207B0D0A202020202020746869732E74656D706C6174652E72656D6F7665436C6173732827742D416C6572742D2D7761726E696E6727290D';
wwv_flow_api.g_varchar2_table(73) := '0A20202020202020202E616464436C6173732827742D416C6572742D2D7761726E696E6727293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E74797065203D3D202744414E474552272029207B0D0A202020';
wwv_flow_api.g_varchar2_table(74) := '202020746869732E74656D706C6174652E72656D6F7665436C6173732827742D416C6572742D2D7761726E696E6727290D0A20202020202020202E616464436C6173732827742D416C6572742D2D64616E67657227293B0D0A202020207D0D0A20202020';
wwv_flow_api.g_varchar2_table(75) := '656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E4F7074696F6E547970652B746869732E6F7074696F6E732E747970653B0D0A20202020';
wwv_flow_api.g_varchar2_table(76) := '2020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C206572726F724D736720293B0D0A2020202020207468726F77206572726F72';
wwv_flow_api.g_varchar2_table(77) := '4D73673B0D0A202020207D0D0A0D0A202020206966202820746869732E6F7074696F6E732E6D657267652029207B0D0A202020202020656C656D546F4D65726765203D20746869732E656D6265646564436F6E7461696E65722E66696E6428273E202E27';
wwv_flow_api.g_varchar2_table(78) := '2B706C7567696E436C6173732B272E6D6572676527293B0D0A2020202020206D6572676557697468203D20656C656D546F4D657267652E66696E6428272E707265746975732D2D68746D6C4D65737361676527292E636C6F6E6528292E68746D6C28293B';
wwv_flow_api.g_varchar2_table(79) := '0D0A202020202020656C656D546F4D657267652E72656D6F766528293B0D0A2020202020202F2F6A65736C69207A6D6572676F77616C20746F206F626C69637A206D617267696E2D746F7020646C61206E61737465706E65676F20656C656D656E74750D';
wwv_flow_api.g_varchar2_table(80) := '0A202020207D0D0A0D0A0D0A0D0A202020202F2F777069737A20776961646F6D6FC59BC48720646F2074656D706C6174650D0A20202020746869732E5F696E736572744D7367496E746F54656D706C617465282027234D45535341474523272C206D6572';
wwv_flow_api.g_varchar2_table(81) := '676557697468293B0D0A202020200D0A20202020746869732E74656D706C6174650D0A2020202020202E616464436C6173732820706C7567696E436C617373202920202F2F616464207479706520617320636C6173730D0A2020202020202E616464436C';
wwv_flow_api.g_varchar2_table(82) := '61737328206D65726765202920202020202020202F2F61646420696E64696361746F7220696620746865206D657373616765206973206D65726761626C650D0A2020202020202E616464436C617373282073686F7742756C6C65747320293B202F2F0D0A';
wwv_flow_api.g_varchar2_table(83) := '0D0A202020206966202820746869732E6F7074696F6E732E72656D6F76654F746865722029207B0D0A2020202020202F2F746869732E656D6265646564436F6E7461696E65722E656D70747928293B0D0A202020202020746869732E656D626564656443';
wwv_flow_api.g_varchar2_table(84) := '6F6E7461696E65722E66696E6428272E707265746975732D2D656D626564656420627574746F6E27292E74726967676572282772656D6F76654F6E44656D616E6427293B0D0A202020202020746869732E656D6265646564436F6E7461696E65722E6669';
wwv_flow_api.g_varchar2_table(85) := '6E6428273A6E6F74282E707265746975732D2D656D62656465642920627574746F6E27292E747269676765722827636C69636B27293B2020202020200D0A202020207D0D0A0D0A0D0A0D0A202020202F2F777374617769656E69650D0A20202020696620';
wwv_flow_api.g_varchar2_table(86) := '2820746869732E6F7074696F6E732E7768657265203D3D2027544F50272029207B0D0A202020202020746869732E74656D706C617465203D20746869732E74656D706C6174652E70726570656E64546F2820746869732E656D6265646564436F6E746169';
wwv_flow_api.g_varchar2_table(87) := '6E657220293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E7768657265203D3D2027424F54544F4D272029207B0D0A202020202020746869732E74656D706C617465203D20746869732E74656D706C617465';
wwv_flow_api.g_varchar2_table(88) := '2E617070656E64546F2820746869732E656D6265646564436F6E7461696E657220293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E696E7465726E616C';
wwv_flow_api.g_varchar2_table(89) := '4572726F722E756E6B6E6F776E4F7074696F6E57686572653B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C';
wwv_flow_api.g_varchar2_table(90) := '206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B2020202020200D0A202020207D0D0A0D0A202020202F2F6669786564202020200D0A202020206966202820746869732E6F7074696F6E732E66697865642029207B';
wwv_flow_api.g_varchar2_table(91) := '0D0A202020202020746869732E656D6265646564436F6E7461696E65722E616464436C6173732827666978656427293B0D0A202020202020746869732E5F666978656441666665637465644164644D617267696E28293B0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(92) := '7D2C20200D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F70617273654A61766153637269707446756E6374696F6E3A2066756E6374696F6E2829207B0D0A20202020766172207465';
wwv_flow_api.g_varchar2_table(93) := '6D7046756E632C206572726F724D73673B0D0A0D0A202020207472797B0D0A20202020202074656D7046756E63203D206E65772046756E6374696F6E2028202264617461222C20746869732E6F7074696F6E732E6D73674A7352657475726E20293B0D0A';
wwv_flow_api.g_varchar2_table(94) := '20202020202072657475726E2074656D7046756E632820746869732E6F7074696F6E732E64796E616D6963416374696F6E2E6461746120293B0D0A2020202020200D0A202020207D206361746368286572726F7229207B0D0A2020202020206572726F72';
wwv_flow_api.g_varchar2_table(95) := '4D7367203D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E6D6573736167654A7352657475726E2B6572726F723B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F7228207468';
wwv_flow_api.g_varchar2_table(96) := '69732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B2020202020200D0A202020207D0D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(97) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F6765744D73674A617661536372697074537472696E673A2066756E6374696F6E2829207B0D0A20202020766172200D0A20202020202074656D7046756E63526573756C74203D';
wwv_flow_api.g_varchar2_table(98) := '20746869732E5F70617273654A61766153637269707446756E6374696F6E28292C0D0A20202020202074656D7046756E63526573756C7454797065203D204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D704675';
wwv_flow_api.g_varchar2_table(99) := '6E63526573756C7420292C0D0A2020202020206572726F724D73673B0D0A0D0A2020202069662028200D0A20202020202074656D7046756E63526573756C7454797065203D3D3D20225B6F626A65637420537472696E675D22200D0A2020202020207C7C';
wwv_flow_api.g_varchar2_table(100) := '2074656D7046756E63526573756C7454797065203D3D3D20225B6F626A656374204E756D6265725D22200D0A2020202029207B0D0A2020202020202F2F6F6B0D0A20202020202072657475726E20273C64697620636C6173733D22737472696E672D2D6A';
wwv_flow_api.g_varchar2_table(101) := '73223E272B74656D7046756E63526573756C742B273C2F6469763E273B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E6D657373';
wwv_flow_api.g_varchar2_table(102) := '6167654A7352657475726E537472696E6757726F6E674F626A656374202B202720272B74656D7046756E63526573756C74547970653B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E';
wwv_flow_api.g_varchar2_table(103) := '6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A0D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(104) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F6765744D73674A6176615363726970744D697865643A2066756E6374696F6E2829207B0D0A20202020766172200D0A2020202020202F2F6A61766173637269707446756E6374696F6E426F647920';
wwv_flow_api.g_varchar2_table(105) := '3D20746869732E6F7074696F6E732E6D73674A7352657475726E2C0D0A20202020202074656D7046756E63526573756C74203D20746869732E5F70617273654A61766153637269707446756E6374696F6E28292C0D0A20202020202074656D7046756E63';
wwv_flow_api.g_varchar2_table(106) := '526573756C7454797065203D204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D7046756E63526573756C7420292C0D0A2020202020206572726F724D73673B0D0A0D0A202020202F2F7370727761647A20706F70';
wwv_flow_api.g_varchar2_table(107) := '7261776E6F7363206F6269656B74752077656A7363696F7765676F0D0A2020202069662028200D0A20202020202074656D7046756E63526573756C7454797065203D3D3D20225B6F626A65637420537472696E675D22207C7C0D0A20202020202074656D';
wwv_flow_api.g_varchar2_table(108) := '7046756E63526573756C7454797065203D3D3D20225B6F626A656374204E756D6265725D220D0A2020202029207B0D0A2020202020202F2F6F6269656B742077656A7363696F7779206A65737420737472696E6769656D206C7562206C69637A62612C20';
wwv_flow_api.g_varchar2_table(109) := '777973776965746C616D79206F642072617A750D0A20202020202072657475726E20273C64697620636C6173733D22737472696E672D2D6A73223E272B74656D7046756E63526573756C742B273C2F6469763E273B0D0A202020207D20656C7365206966';
wwv_flow_api.g_varchar2_table(110) := '20282074656D7046756E63526573756C7454797065203D3D3D20225B6F626A656374204F626A6563745D222029207B0D0A2020202020202F2F6A657374206F6269656B74656D0D0A20202020202072657475726E20746869732E5F6765744D73674A6176';
wwv_flow_api.g_varchar2_table(111) := '615363726970744A534F4E28293B0D0A0D0A202020207D20656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E6D6573736167654A7352657475726E4E6F7453757070';
wwv_flow_api.g_varchar2_table(112) := '6F727465644F626A3B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(113) := '7468726F77206572726F724D73673B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F6765744D73674D6F64616C506167653A2066756E6374696F6E2829207B0D0A';
wwv_flow_api.g_varchar2_table(114) := '20202020747279207B0D0A20202020202072657475726E20746869732E6F7074696F6E732E64796E616D6963416374696F6E2E646174612E737563636573734D6573736167652E746578743B20200D0A202020207D202020200D0A202020206361746368';
wwv_flow_api.g_varchar2_table(115) := '20286572726F72297B0D0A2020202020207468726F77206572726F723B0D0A202020207D0D0A202020200D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F6765744D73674A61';
wwv_flow_api.g_varchar2_table(116) := '76615363726970744A534F4E3A2066756E6374696F6E2829207B0D0A20202020766172200D0A20202020202074656D7046756E63526573756C74203D20746869732E5F70617273654A61766153637269707446756E6374696F6E28292C0D0A2020202020';
wwv_flow_api.g_varchar2_table(117) := '2074656D7046756E63526573756C7454797065203D204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D7046756E63526573756C7420292C0D0A2020202020206C69436C617373203D20746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(118) := '732E73686F7742756C6C657473203F202768746D6C646253746445727227203A202768746D6C64624F7261457272272C0D0A0D0A2020202020206D7367436F6E7461696E65722C0D0A2020202020206D7367556C2C0D0A2020202020206572726F724D73';
wwv_flow_api.g_varchar2_table(119) := '673B0D0A0D0A0D0A20202020696620282074656D7046756E63526573756C7454797065203D3D3D20225B6F626A656374204F626A6563745D222029207B0D0A2020202020200D0A20202020202069662028200D0A202020202020202074656D7046756E63';
wwv_flow_api.g_varchar2_table(120) := '526573756C742E6D736720213D20756E646566696E656420262620280D0A202020202020202020204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D7046756E63526573756C742E6D73672029203D3D3D20225B6F';
wwv_flow_api.g_varchar2_table(121) := '626A65637420537472696E675D22207C7C0D0A202020202020202020204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D7046756E63526573756C742E6D73672029203D3D3D20225B6F626A656374204E756D6265';
wwv_flow_api.g_varchar2_table(122) := '725D220D0A2020202020202020292026260D0A202020202020202074656D7046756E63526573756C742E6C696E657320213D20756E646566696E65642026260D0A20202020202020204F626A6563742E70726F746F747970652E746F537472696E672E63';
wwv_flow_api.g_varchar2_table(123) := '616C6C282074656D7046756E63526573756C742E6C696E65732029203D3D3D20225B6F626A6563742041727261795D220D0A20202020202029207B0D0A20202020202020202F2F6D61206F64706F776965646E69652061747279627574790D0A20202020';
wwv_flow_api.g_varchar2_table(124) := '202020202F2F646F2070727A65726F6269656E6961206E61206D75737461636865206A65736C6920757A6E616D207A612073746F736F776E650D0A20202020202020206D7367436F6E7461696E6572203D202428273C6469763E3C2F6469763E27293B0D';
wwv_flow_api.g_varchar2_table(125) := '0A0D0A20202020202020202428273C7370616E20636C6173733D22614572724D73675469746C65223E272B74656D7046756E63526573756C742E6D73672B273C2F7370616E3E27292E617070656E64546F28206D7367436F6E7461696E657220293B0D0A';
wwv_flow_api.g_varchar2_table(126) := '20202020202020206D7367556C203D202428273C756C20636C6173733D2268746D6C6462556C457272223E3C2F756C3E27292E617070656E64546F28206D7367436F6E7461696E657220293B0D0A0D0A2020202020202020666F7220282076617220693D';
wwv_flow_api.g_varchar2_table(127) := '302C206C656E677468203D2074656D7046756E63526573756C742E6C696E65732E6C656E6774683B2069203C206C656E6774683B20692B2B29207B0D0A202020202020202020206D7367556C2E617070656E6428202428273C6C6920636C6173733D2227';
wwv_flow_api.g_varchar2_table(128) := '2B6C69436C6173732B27223E272B74656D7046756E63526573756C742E6C696E65735B695D2B273C2F6C693E272920293B0D0A20202020202020207D0D0A0D0A202020202020202072657475726E206D7367436F6E7461696E65723B0D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(129) := '20207D200D0A202020202020656C73652069662028200D0A202020202020202074656D7046756E63526573756C742E6D736720213D20756E646566696E656420262620280D0A202020202020202020204F626A6563742E70726F746F747970652E746F53';
wwv_flow_api.g_varchar2_table(130) := '7472696E672E63616C6C282074656D7046756E63526573756C742E6D73672029203D3D3D20225B6F626A65637420537472696E675D22207C7C0D0A202020202020202020204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28';
wwv_flow_api.g_varchar2_table(131) := '2074656D7046756E63526573756C742E6D73672029203D3D3D20225B6F626A656374204E756D6265725D220D0A2020202020202020292026260D0A202020202020202074656D7046756E63526573756C742E6C69737420213D20756E646566696E656420';
wwv_flow_api.g_varchar2_table(132) := '26260D0A20202020202020204F626A6563742E70726F746F747970652E746F537472696E672E63616C6C282074656D7046756E63526573756C742E6C6973742029203D3D3D20225B6F626A6563742041727261795D220D0A20202020202029207B0D0A20';
wwv_flow_api.g_varchar2_table(133) := '202020202020202F2F6D61206F64706F776965646E69652061747279627574790D0A20202020202020202F2F646F2070727A65726F6269656E6961206E61206D75737461636865206A65736C6920757A6E616D207A612073746F736F776E650D0A202020';
wwv_flow_api.g_varchar2_table(134) := '20202020206D7367436F6E7461696E6572203D202428273C6469763E3C2F6469763E27293B0D0A0D0A20202020202020202428273C7370616E20636C6173733D22614572724D73675469746C65223E272B74656D7046756E63526573756C742E6D73672B';
wwv_flow_api.g_varchar2_table(135) := '273C2F7370616E3E27292E617070656E64546F28206D7367436F6E7461696E657220293B0D0A20202020202020206D7367556C203D202428273C756C20636C6173733D2268746D6C6462556C457272223E3C2F756C3E27292E617070656E64546F28206D';
wwv_flow_api.g_varchar2_table(136) := '7367436F6E7461696E657220293B0D0A0D0A2020202020202020666F7220282076617220693D302C206C656E677468203D2074656D7046756E63526573756C742E6C6973742E6C656E6774683B2069203C206C656E6774683B20692B2B29207B0D0A2020';
wwv_flow_api.g_varchar2_table(137) := '20202020202020206D7367556C2E617070656E6428202428273C6C6920636C6173733D22272B6C69436C6173732B27223E272B74656D7046756E63526573756C742E6C6973745B695D2B273C2F6C693E272920293B0D0A20202020202020207D0D0A0D0A';
wwv_flow_api.g_varchar2_table(138) := '202020202020202072657475726E206D7367436F6E7461696E65723B0D0A0D0A2020202020207D202020202020200D0A202020202020656C7365207B0D0A20202020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E';
wwv_flow_api.g_varchar2_table(139) := '636F6E664572726F722E6D6573736167654A7352657475726E4E6F7456616C69644A534F4E3B0D0A2020202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E';
wwv_flow_api.g_varchar2_table(140) := '7469746C652E636F6E662C206572726F724D736720293B0D0A20202020202020207468726F77206572726F724D73673B0D0A0D0A2020202020207D0D0A0D0A202020207D200D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20';
wwv_flow_api.g_varchar2_table(141) := '746869732E6572726F7248616E646C696E672E636F6E664572726F722E6D6573736167654A7352657475726E4A736F6E57726F6E674F626A656374202B202720272B74656D7046756E63526573756C74547970653B0D0A202020202020746869732E6F70';
wwv_flow_api.g_varchar2_table(142) := '74696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(143) := '0D0A0D0A2020202072657475726E2027746F646F273B0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2020';
wwv_flow_api.g_varchar2_table(144) := '5F696E736572744D7367496E746F54656D706C6174653A2066756E6374696F6E2820704D7367506C616365486F6C6465722C20704D657267655769746820297B0D0A20202020766172200D0A2020202020206D736748746D6C2C0D0A202020202020656C';
wwv_flow_api.g_varchar2_table(145) := '656D656E74436F6E7461696E696E672C0D0A2020202020206572726F724D73673B0D0A0D0A202020206966202820746869732E6F7074696F6E732E6D736754797065203D3D2027535441544943272029207B0D0A2020202020206D736748746D6C203D20';
wwv_flow_api.g_varchar2_table(146) := '2428273C64697620636C6173733D22737472696E672D2D737461746963223E272B746869732E6F7074696F6E732E6D7367537461746963546578742B273C2F6469763E27293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F70';
wwv_flow_api.g_varchar2_table(147) := '74696F6E732E6D736754797065203D3D20274A534A534F4E272029207B0D0A2020202020206D736748746D6C203D20746869732E5F6765744D73674A6176615363726970744A534F4E28293B0D0A202020207D0D0A20202020656C736520696620282074';
wwv_flow_api.g_varchar2_table(148) := '6869732E6F7074696F6E732E6D736754797065203D3D20274A53535452494E47272029207B2020202020200D0A2020202020206D736748746D6C203D20746869732E5F6765744D73674A617661536372697074537472696E6728293B0D0A202020207D0D';
wwv_flow_api.g_varchar2_table(149) := '0A20202020656C7365206966202820746869732E6F7074696F6E732E6D736754797065203D3D20274A534D49584544272029207B0D0A2020202020206D736748746D6C203D20746869732E5F6765744D73674A6176615363726970744D6978656428293B';
wwv_flow_api.g_varchar2_table(150) := '0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F6E732E6D736754797065203D3D20274449414C4F47272029207B0D0A2020202020206D736748746D6C203D20746869732E5F6765744D73674D6F64616C506167652829';
wwv_flow_api.g_varchar2_table(151) := '3B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20746869732E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E4F7074696F6E4D7367547970652B746869732E6F70';
wwv_flow_api.g_varchar2_table(152) := '74696F6E732E6D7367547970653B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C206572726F724D73672029';
wwv_flow_api.g_varchar2_table(153) := '3B0D0A2020202020207468726F77206572726F724D73673B2020202020200D0A202020207D0D0A0D0A202020202F2F6D75736920627963207A6164656B6C61726F77616E61207A6D69656E6E610D0A20202020656C656D656E74436F6E7461696E696E67';
wwv_flow_api.g_varchar2_table(154) := '203D20746869732E5F676574456C656D436F6E7461696E696E672820704D7367506C616365486F6C64657220293B0D0A20202020656C656D656E74436F6E7461696E696E672E656D70747928290D0A0D0A202020206966202820704D6572676557697468';
wwv_flow_api.g_varchar2_table(155) := '20213D20756E646566696E656420262620746869732E6F7074696F6E732E7768657265203D3D2027544F50272029207B0D0A202020202020656C656D656E74436F6E7461696E696E672E617070656E6428206D736748746D6C20292E617070656E642820';
wwv_flow_api.g_varchar2_table(156) := '704D657267655769746820293B0D0A202020207D0D0A20202020656C7365206966202820704D657267655769746820213D20756E646566696E656420262620746869732E6F7074696F6E732E7768657265203D3D2027424F54544F4D272029207B0D0A20';
wwv_flow_api.g_varchar2_table(157) := '2020202020656C656D656E74436F6E7461696E696E672E617070656E642820704D657267655769746820292E617070656E6428206D736748746D6C20293B0D0A202020207D0D0A20202020656C7365207B0D0A202020202020656C656D656E74436F6E74';
wwv_flow_api.g_varchar2_table(158) := '61696E696E672E617070656E6428206D736748746D6C20293B0D0A202020207D0D0A202020200D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A2020647261773A2066756E6374696F6E28297B0D0A20202020766172200D0A';
wwv_flow_api.g_varchar2_table(159) := '2020202020206D7367506C616365486F6C646572203D206E756C6C2C0D0A2020202020206C6F616465722C0D0A2020202020206576656E744F626A656374203D207B0D0A20202020202020202F2F636C6F7365416E696D6174696F6E3A202252454D4F56';
wwv_flow_api.g_varchar2_table(160) := '45222C0D0A20202020202020202F2F6D616E616765723A206E756C6C2C0D0A20202020202020202F2F6D736754797065203A206E756C6C2C0D0A20202020202020202F2F6D736753746174696354657874203A206E756C6C2C0D0A20202020202020202F';
wwv_flow_api.g_varchar2_table(161) := '2F6D73674A7352657475726E20203A206E756C6C2C0D0A20202020202020202F2F64796E616D6963416374696F6E3A206E756C6C0D0A202020202020202022646973706C61794173223A20746869732E6F7074696F6E732E646973706C617941732C0D0A';
wwv_flow_api.g_varchar2_table(162) := '2020202020202020226475726174696F6E223A20746869732E6F7074696F6E732E6475726174696F6E2C0D0A202020202020202022696E73657274496E746F223A20746869732E6F7074696F6E732E696E73657274496E746F2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(163) := '2274797065223A20746869732E6F7074696F6E732E747970652C0D0A2020202020202020227768657265223A20746869732E6F7074696F6E732E77686572652C0D0A202020202020202022706F736974696F6E223A20746869732E6F7074696F6E732E70';
wwv_flow_api.g_varchar2_table(164) := '6F736974696F6E2C0D0A2020202020202020226D65726765223A20746869732E6F7074696F6E732E6D657267652C0D0A2020202020202020227363726F6C6C546F223A20746869732E6F7074696F6E732E7363726F6C6C546F2C0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(165) := '226669786564223A20746869732E6F7074696F6E732E66697865642C0D0A20202020202020202266697865644166666563746564223A20746869732E6F7074696F6E732E666978656441666665637465642C0D0A20202020202020202272656D6F76654F';
wwv_flow_api.g_varchar2_table(166) := '74686572223A20746869732E6F7074696F6E732E72656D6F76654F746865720D0A2020202020207D3B0D0A0D0A202020202F2F77737461772074656D706C61746520646F2061706C696B61636A690D0A202020206966202820746869732E6F7074696F6E';
wwv_flow_api.g_varchar2_table(167) := '732E646973706C61794173203D3D20274E4F54494649434154494F4E272029207B0D0A2020202020206D7367506C616365486F6C646572203D202723535543434553535F4D45535341474523273B0D0A202020202020746869732E5F696E736572744D73';
wwv_flow_api.g_varchar2_table(168) := '67496E746F54656D706C61746528206D7367506C616365486F6C64657220293B0D0A202020202020746869732E5F696E736572744E6F74696669636174696F6E28293B0D0A202020207D0D0A20202020656C7365206966202820746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(169) := '6E732E646973706C61794173203D3D2027454D4245444544272029207B0D0A202020202020746869732E5F696E73657274456D626564656428293B0D0A202020207D0D0A20202020656C7365207B0D0A2020202020206572726F724D7367203D20746869';
wwv_flow_api.g_varchar2_table(170) := '732E6572726F7248616E646C696E672E696E7465726E616C4572726F722E756E6B6E6F776E446973706C617941732B746869732E6F7074696F6E732E646973706C617941733B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E74';
wwv_flow_api.g_varchar2_table(171) := '68726F774572726F722820746869732E6572726F7248616E646C696E672E7469746C652E696E7465726E616C2C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B2020202020200D0A202020207D0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(172) := '202F2F706F6465706E696A2067757A696B20646F207A616D756B616E69610D0A202020202F2F746869732E74656D706C6174652E66696E642827627574746F6E27292E636C69636B2820242E70726F787928746869732E636C6F73652C20746869732920';
wwv_flow_api.g_varchar2_table(173) := '293B0D0A20202020746869732E74656D706C6174652E66696E642827627574746F6E27292E62696E642827636C69636B272C20242E70726F787928746869732E636C6F73652C207468697329293B0D0A20202020746869732E74656D706C6174652E6669';
wwv_flow_api.g_varchar2_table(174) := '6E642827627574746F6E27292E62696E64282772656D6F76654F6E44656D616E64272C20242E70726F787928746869732E636C6F73654F6E44656D616E642C207468697329293B0D0A0D0A202020200D0A202020202F2F686F77206C6F6E67206E6F7469';
wwv_flow_api.g_varchar2_table(175) := '6669636174696F6E202F20656D62656465642073686F756C64206C6173743F0D0A202020206966202820746869732E6F7074696F6E732E6475726174696F6E203E20302029207B0D0A2020202020206C6F61646572203D202428273C64697620636C6173';
wwv_flow_api.g_varchar2_table(176) := '733D226475726174696F6E496E64696361746F72223E3C2F6469763E27293B0D0A0D0A2020202020206C6F616465722E617070656E64546F2820746869732E74656D706C61746520292E616E696D61746528207B77696474683A2027746F67676C65277D';
wwv_flow_api.g_varchar2_table(177) := '2C207B0D0A20202020202020206475726174696F6E3A20746869732E6F7074696F6E732E6475726174696F6E2C0D0A2020202020202020636F6D706C6574653A20242E70726F78792866756E6374696F6E28297B20746869732E636C6F73652829207D2C';
wwv_flow_api.g_varchar2_table(178) := '2074686973290D0A2020202020207D293B0D0A202020207D0D0A0D0A202020206966202820746869732E6F7074696F6E732E7363726F6C6C546F2029207B0D0A20202020202024282768746D6C2C20626F647927292E616E696D61746528207B20736372';
wwv_flow_api.g_varchar2_table(179) := '6F6C6C546F703A2028746869732E74656D706C6174652E6F666673657428292E746F70202D20746869732E656D6265646564436F6E7461696E65722E6F666673657428292E746F7029207D2C20313030293B0D0A202020207D0D0A0D0A20202020657665';
wwv_flow_api.g_varchar2_table(180) := '6E744F626A6563742E6E6F74696669636174696F6E203D20746869732E74656D706C6174653B0D0A20202020617065782E6576656E742E7472696767657228646F63756D656E742C2027707265746975736E6F74696669636174696F6E64726177272C20';
wwv_flow_api.g_varchar2_table(181) := '6576656E744F626A656374293B0D0A0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F72656D6F766554656D706C6174653A2066756E6374696F6E2829207B0D0A20202020746869732E7465';
wwv_flow_api.g_varchar2_table(182) := '6D706C6174652E72656D6F766528293B0D0A0D0A202020206966202820746869732E6F7074696F6E732E66697865642029207B0D0A202020202020746869732E5F666978656452656D6F766528293B0D0A202020207D0D0A0D0A20207D2C0D0A20202F2F';
wwv_flow_api.g_varchar2_table(183) := '2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0D0A20205F666978656441666665637465644164644D617267696E3A2066756E6374696F6E2829207B0D0A0D0A20202020766172200D0A202020202020656C656D';
wwv_flow_api.g_varchar2_table(184) := '203D202428746869732E6F7074696F6E732E66697865644166666563746564292C0D0A2020202020206572726F724D73673B0D0A0D0A202020206966202820656C656D2E73697A652829203D3D20302029207B0D0A2020202020206572726F724D736720';
wwv_flow_api.g_varchar2_table(185) := '3D20746869732E6572726F7248616E646C696E672E636F6E664572726F722E666978656441666665637465644E6F74466F756E643B0D0A202020202020746869732E6F7074696F6E732E6D616E616765722E7468726F774572726F722820746869732E65';
wwv_flow_api.g_varchar2_table(186) := '72726F7248616E646C696E672E7469746C652E636F6E662C206572726F724D736720293B0D0A2020202020207468726F77206572726F724D73673B2020202020200D0A0D0A202020207D0D0A20202020656C7365207B0D0A202020202020656C656D2E64';
wwv_flow_api.g_varchar2_table(187) := '61746128276F6C644D617267696E546F70272C20656C656D2E63737328276D617267696E546F702729293B0D0A202020202020656C656D2E63737328276D617267696E546F70272C20746869732E656D6265646564436F6E7461696E65722E6F75746572';
wwv_flow_api.g_varchar2_table(188) := '4865696768742829293B20200D0A202020207D0D0A202020200D0A20207D2C0D0A20205F666978656452656D6F76653A2066756E6374696F6E28297B0D0A20202020766172200D0A202020202020656C656D203D202428746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(189) := '66697865644166666563746564292C0D0A2020202020206F6C644D617267696E546F70203D20656C656D2E6461746128276F6C644D617267696E546F7027293B0D0A0D0A2020202069662028206F6C644D617267696E546F70203D3D202730707827207C';
wwv_flow_api.g_varchar2_table(190) := '7C206F6C644D617267696E546F70203D3D206E756C6C207C7C206F6C644D617267696E546F70203D3D2027756E646566696E6564272029207B0D0A202020202020656C656D2E63737328276D617267696E546F70272C202727293B0D0A202020207D0D0A';
wwv_flow_api.g_varchar2_table(191) := '20202020656C7365207B0D0A202020202020656C656D2E63737328276D617267696E546F70272C206F6C644D617267696E546F70293B200D0A202020207D0D0A0D0A20202020746869732E656D6265646564436F6E7461696E65722E72656D6F7665436C';
wwv_flow_api.g_varchar2_table(192) := '6173732827666978656427293B0D0A0D0A20207D2C0D0A2020636C6F73654F6E44656D616E643A2066756E6374696F6E28297B0D0A20202020746869732E5F72656D6F766554656D706C61746528293B0D0A20207D2C0D0A20202F2F2D2D2D2D2D2D2D2D';
wwv_flow_api.g_varchar2_table(193) := '2D2D2D2D2D2D2D2D2D0D0A2020636C6F73653A2066756E6374696F6E2829207B0D0A20202020766172200D0A2020202020206F626A203D20746869732C0D0A202020202020656C656D203D202428746869732E6F7074696F6E732E666978656441666665';
wwv_flow_api.g_varchar2_table(194) := '63746564293B0D0A0D0A202020206966202820746869732E6F7074696F6E732E636C6F7365416E696D6174696F6E203D3D202752454D4F5645272029207B0D0A0D0A202020202020746869732E5F72656D6F766554656D706C61746528293B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(195) := '2020207D0D0A202020202F2F646F20646F726F6269656E696120736C6964652C20637A796C692075636965637A6B612077206C65776F206261647A20707261776F0D0A20202020656C7365207B0D0A202020202020746869732E74656D706C6174655B74';
wwv_flow_api.g_varchar2_table(196) := '6869732E6F7074696F6E732E636C6F7365416E696D6174696F6E5D28203430302C20242E70726F78792866756E6374696F6E28297B200D0A0D0A2020202020202020746869732E5F72656D6F766554656D706C61746528293B0D0A2020202020207D2C20';
wwv_flow_api.g_varchar2_table(197) := '746869732920293B0D0A202020207D0D0A0D0A20207D0D0A7D293B';
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
 p_id=>wwv_flow_api.id(408114127726983057)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_file_name=>'pretius.notification.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
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
wwv_flow_api.g_varchar2_table(1) := '242E7769646765742827707265746975732E6E6F74696669636174696F6E73272C207B0D0A2020737461636B4E6F74696669636174696F6E733A205B5D2C0D0A2020737461636B456D62656465643A205B5D2C0D0A20206F7074696F6E733A207B0D0A20';
wwv_flow_api.g_varchar2_table(2) := '202020737563636573734D65737361676554656D706C6174653A206E756C6C2C0D0A202020206E6F74696669636174696F6E4D65737361676554656D706C6174653A206E756C6C0D0A20207D2C0D0A20205F6372656174653A2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(3) := '202029207B0D0A20202020746869732E5F73757065722820746869732E6F7074696F6E7320293B0D0A20207D2C0D0A20205F6765745472696D65645375636365737354656D706C6174653A2066756E6374696F6E282020297B0D0A20202020766172200D';
wwv_flow_api.g_varchar2_table(4) := '0A20202020202072657475726E56616C7565203D202428746869732E6F7074696F6E732E737563636573734D65737361676554656D706C617465292E636C6F6E6528292E6368696C6472656E28292E666972737428292C0D0A2020202020207265747572';
wwv_flow_api.g_varchar2_table(5) := '6E56616C756548746D6C203D2072657475726E56616C75652E706172656E7428292E68746D6C28293B0D0A0D0A2020202072657475726E56616C756548746D6C203D2072657475726E56616C756548746D6C2E7265706C61636528272353554343455353';
wwv_flow_api.g_varchar2_table(6) := '5F4D45535341474523272C20273C64697620636C6173733D22707265746975732D2D68746D6C4D657373616765223E23535543434553535F4D455353414745233C2F6469763E27293B0D0A2020202072657475726E56616C756548746D6C203D20726574';
wwv_flow_api.g_varchar2_table(7) := '75726E56616C756548746D6C2E7265706C6163652827234D455353414745232720202020202020202C20273C64697620636C6173733D22707265746975732D2D68746D6C4D657373616765223E234D455353414745233C2F6469763E27293B0D0A202020';
wwv_flow_api.g_varchar2_table(8) := '200D0A2020202072657475726E56616C7565203D20242872657475726E56616C756548746D6C292E72656D6F7665417474722827696427292E756E69717565496428292E616464436C6173732827707265746975732D2D6E6F74696669636174696F6E27';
wwv_flow_api.g_varchar2_table(9) := '293B3B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A20205F6765745472696D65644D65737361676554656D706C6174653A2066756E6374696F6E282020297B0D0A0D0A20202020766172200D0A202020202020';
wwv_flow_api.g_varchar2_table(10) := '72657475726E56616C7565203D2072657475726E56616C7565203D202428746869732E6F7074696F6E732E6E6F74696669636174696F6E4D65737361676554656D706C617465292E636C6F6E6528292E6368696C6472656E28292E666972737428293B0D';
wwv_flow_api.g_varchar2_table(11) := '0A20202020202072657475726E56616C756548746D6C203D2072657475726E56616C75652E706172656E7428292E68746D6C28293B0D0A0D0A2020202072657475726E56616C756548746D6C203D2072657475726E56616C756548746D6C2E7265706C61';
wwv_flow_api.g_varchar2_table(12) := '6365282723535543434553535F4D45535341474523272C20273C64697620636C6173733D22707265746975732D2D68746D6C4D657373616765223E23535543434553535F4D455353414745233C2F6469763E27293B0D0A2020202072657475726E56616C';
wwv_flow_api.g_varchar2_table(13) := '756548746D6C203D2072657475726E56616C756548746D6C2E7265706C6163652827234D455353414745232720202020202020202C20273C64697620636C6173733D22707265746975732D2D68746D6C4D657373616765223E234D455353414745233C2F';
wwv_flow_api.g_varchar2_table(14) := '6469763E27293B0D0A202020200D0A2020202072657475726E56616C7565203D20242872657475726E56616C756548746D6C292E72656D6F7665417474722827696427292E756E69717565496428292E616464436C6173732827707265746975732D2D65';
wwv_flow_api.g_varchar2_table(15) := '6D626564656427293B0D0A0D0A2020202072657475726E2072657475726E56616C75653B0D0A20207D2C0D0A0D0A202064657374726F793A2066756E6374696F6E2829207B0D0A20202020242E5769646765742E70726F746F747970652E64657374726F';
wwv_flow_api.g_varchar2_table(16) := '792E63616C6C2874686973293B0D0A20207D2C0D0A20200D0A2020707573684E6F74696669636174696F6E3A2066756E6374696F6E2820704E6F74696669636174696F6E4F626A6563742C2064614F626A65637420297B0D0A2020202076617220707573';
wwv_flow_api.g_varchar2_table(17) := '6865644E6F74696669636174696F6E203D206E756C6C3B0D0A0D0A20202020766172206E6F74696669636174696F6E203D202428273C6469763E3C2F6469763E27292E6E6F74696669636174696F6E2820704E6F74696669636174696F6E4F626A656374';
wwv_flow_api.g_varchar2_table(18) := '2C207B6D616E616765723A20746869732C2064796E616D6963416374696F6E3A2064614F626A6563747D20293B0D0A20200D0A202020206E6F74696669636174696F6E2E6E6F74696669636174696F6E28276472617727293B0D0A2020200D0A0D0A2020';
wwv_flow_api.g_varchar2_table(19) := '7D2C20200D0A202067657454656D706C6174653A2066756E6374696F6E28207768617420297B0D0A20202020696620282077686174203D3D20274E4F54494649434154494F4E272029207B0D0A20202020202072657475726E20746869732E5F67657454';
wwv_flow_api.g_varchar2_table(20) := '72696D65645375636365737354656D706C61746528293B0D0A202020207D0D0A20202020656C736520696620282077686174203D3D2027454D4245444544272029207B0D0A20202020202072657475726E20746869732E5F6765745472696D65644D6573';
wwv_flow_api.g_varchar2_table(21) := '7361676554656D706C61746528293B0D0A202020207D0D0A20202020656C7365207B0D0A20202020202072657475726E206E756C6C3B0D0A202020207D0D0A2020202020200D0A202020200D0A20207D2C0D0A20207468726F774572726F723A2066756E';
wwv_flow_api.g_varchar2_table(22) := '6374696F6E28206572726F725469746C652C206572726F724D736720297B0D0A20202020766172206E6F74696669636174696F6E203D202428273C6469763E3C2F6469763E27292E6E6F74696669636174696F6E28207B0D0A2020202020206D616E6167';
wwv_flow_api.g_varchar2_table(23) := '65723A20746869732C0D0A20202020202064796E616D6963416374696F6E3A206E756C6C2C0D0A202020202020636C6F7365416E696D6174696F6E3A202252454D4F5645222C0D0A202020202020646973706C617941733A20224E4F5449464943415449';
wwv_flow_api.g_varchar2_table(24) := '4F4E222C0D0A2020202020206475726174696F6E3A202230222C0D0A202020202020696E73657274496E746F3A2022626F6479222C0D0A202020202020747970653A202244414E474552222C0D0A20202020202077686572653A2022544F50222C0D0A20';
wwv_flow_api.g_varchar2_table(25) := '20202020206D736754797065203A20274A534A534F4E272C0D0A2020202020206D736753746174696354657874203A206E756C6C2C0D0A2020202020206D73674A7352657475726E20203A202772657475726E20646174613B272C0D0A20202020202070';
wwv_flow_api.g_varchar2_table(26) := '6F736974696F6E3A2027544F505249474854272C0D0A2020202020206D657267653A2066616C73652C0D0A2020202020207363726F6C6C546F3A2066616C73652C0D0A20202020202064796E616D6963416374696F6E3A207B646174613A207B0D0A2020';
wwv_flow_api.g_varchar2_table(27) := '2020202020206D73673A206572726F725469746C652C0D0A20202020202020206C696E65733A205B206572726F724D7367205D0D0A2020202020207D7D0D0A202020207D293B0D0A20200D0A202020206E6F74696669636174696F6E2E6E6F7469666963';
wwv_flow_api.g_varchar2_table(28) := '6174696F6E28276472617727293B0D0A202020207468726F7728206572726F724D736720293B0D0A20207D20200D0A7D293B';
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
 p_id=>wwv_flow_api.id(1085719397679909751)
,p_plugin_id=>wwv_flow_api.id(1757946058987982430)
,p_file_name=>'pretius.notifications.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
