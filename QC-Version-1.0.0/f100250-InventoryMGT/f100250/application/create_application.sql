prompt --application/create_application
begin
--   Manifest
--     FLOW: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ORBRGS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Orbits Material Management')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'100250')
,p_application_group=>wwv_flow_api.id(51088130586425234)
,p_application_group_name=>'A2F'
,p_application_group_comment=>'App2Fusion.com '
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20230105151703'
,p_bookmark_checksum_function=>'MD5'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_on_max_session_timeout_url=>'http://mail.yahoo.com'
,p_max_session_idle_sec=>3600
,p_compatibility_mode=>'19.2'
,p_html_escaping_mode=>'B'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH24:MI:SS'
,p_timestamp_format=>'DD-MON-YYYY HH24:MI:SS'
,p_timestamp_tz_format=>'DD-MON-YYYY HH24:MI TZR'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'4.2.1 -> 4.2.2: Replaced mixed case column aliases in select statement for "Top Users" Interactive report'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(50939378820976437)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_type=>'C'
,p_logo=>'<img src="#IMAGE_PREFIX#homeicon.gif" width="30" height="30" alt="HOME" margin-top="0px" />'
,p_favicons=>'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/homeicon.gif">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'5.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_ui_detection_css_urls=>'#APP_IMAGES#my_sprites.css'
,p_friendly_url=>'N'
,p_substitution_string_01=>'FAVICONS'
,p_substitution_value_01=>'<link rel="icon" sizes="16x16" href="#APP_IMAGES#globe.png">'
,p_substitution_string_03=>'TITLE'
,p_substitution_value_03=>'&PAGE_TITLE.'
,p_substitution_string_04=>'PAGETITLE_ALIGN'
,p_substitution_value_04=>'center'
,p_substitution_string_05=>'REGION_ATTRIBUTES'
,p_substitution_value_05=>'style="padding: 1px 13px;"'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230105151703'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>25
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_api.component_end;
end;
/
