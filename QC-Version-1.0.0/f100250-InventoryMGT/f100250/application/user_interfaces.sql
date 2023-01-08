prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(1581890319240888879)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>true
,p_is_default=>true
,p_theme_id=>111
,p_home_url=>'f?p=100100:1:&SESSION.'
,p_login_url=>'f?p=100100:LOGIN:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(49204631322227646)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(47625858577858293)
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
);
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(1733908345645258388)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'jQuery Mobile Smartphone'
,p_display_seq=>20
,p_use_auto_detect=>true
,p_is_default=>false
,p_theme_id=>50
,p_home_url=>'f?p=&APP_ID.:HOME_JQM_SMARTPHONE:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>199
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_api.component_end;
end;
/
