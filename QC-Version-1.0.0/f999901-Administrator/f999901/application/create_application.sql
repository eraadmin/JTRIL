prompt --application/create_application
begin
--   Manifest
--     FLOW: 999901
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ORBRGS')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Setting Up The System')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'999901')
,p_application_group=>wwv_flow_api.id(33868433499051851)
,p_application_group_name=>'18.2 Productivity Apps'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'910DB3741F34971B1AE6457704D85E1C6E13676CAA6C91691D382C61DE9CA94A'
,p_checksum_salt_last_reset=>'20150102072406'
,p_bookmark_checksum_function=>'SH1'
,p_accept_old_checksums=>false
,p_max_session_length_sec=>28800
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_timestamp_format=>'DD-MON-YYYY HH:MIPM'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>wwv_flow_string.join(wwv_flow_t_varchar2(
'1.0.22 -> 1.0.23: Changed Notifications region(s) from plsql to report.',
'    Changed navigation bar to native APEX list.',
'1.0.23 -> 1.0.24: Changed Authentication scheme to use new "APEX_PACKAGED_APPLICATIONS" cookie',
'1.0.24 -> 1.0.25: Added confirm modal when enabling ACL',
'1.0.26 -> 1.0.27: Added "Rename Application" page and supporting application items, computations, substitution strings, item and region  changes on login pages, and UI Logo text replacement.',
'1.0.27 -> 1.0.28: Added Notifications to Mobile home page (400)',
'1.0.28 -> 1.0.29: Added "Bulk Add Users" functionality',
'1.0.31 -> 1.0.32: Error handling procedure updated to resolve bug 17516350',
'1.0.32 -> 1.0.33: Implemented redesigned administrative ACL controls',
'1.0.33 -> 1.0.34: Added Usage Metrics region plugin to page 50 (Ticket details)'))
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(4374260161791924079)
,p_application_tab_set=>1
,p_logo_type=>'C'
,p_logo=>'<span width="30" height="30" alt="HOME" margin-top="0px">&APPLICATION_TITLE.</span>'
,p_favicons=>'<link rel="icon" sizes="16x16" href="#IMAGE_PREFIX#apex_ui/img/favicons/homeicon.gif">'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'2.1.2'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(3177304593759864341)
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_ui_detection_css_urls=>'#APP_IMAGES#my_sprites.css'
,p_error_handling_function=>'eba_intrack_fw.apex_error_handling'
,p_friendly_url=>'N'
,p_substitution_string_01=>'GETTING_STARTED_URL'
,p_substitution_value_01=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_substitution_string_02=>'APP_NAME'
,p_substitution_value_02=>'ORBITS ACCOUNTS'
,p_last_updated_by=>'ASIF'
,p_last_upd_yyyymmddhh24miss=>'20230105124115'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>21
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'N'
);
wwv_flow_api.component_end;
end;
/
