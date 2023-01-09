prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 999901
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1582274073341857955)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1582233084815857817)
,p_default_dialog_template=>wwv_flow_api.id(1582223062813857794)
,p_error_template=>wwv_flow_api.id(1582212911622857782)
,p_printer_friendly_template=>wwv_flow_api.id(1582233084815857817)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(1582212911622857782)
,p_default_button_template=>wwv_flow_api.id(1582272254158857926)
,p_default_region_template=>wwv_flow_api.id(1582249860200857855)
,p_default_chart_template=>wwv_flow_api.id(1582249860200857855)
,p_default_form_template=>wwv_flow_api.id(1582249860200857855)
,p_default_reportr_template=>wwv_flow_api.id(1582249860200857855)
,p_default_tabform_template=>wwv_flow_api.id(1582249860200857855)
,p_default_wizard_template=>wwv_flow_api.id(1582249860200857855)
,p_default_menur_template=>wwv_flow_api.id(1582252463868857858)
,p_default_listr_template=>wwv_flow_api.id(1582249860200857855)
,p_default_irr_template=>wwv_flow_api.id(1582248360698857849)
,p_default_report_template=>wwv_flow_api.id(1582259508854857889)
,p_default_label_template=>wwv_flow_api.id(1582271923755857920)
,p_default_menu_template=>wwv_flow_api.id(1582273033572857931)
,p_default_calendar_template=>wwv_flow_api.id(1582273196617857933)
,p_default_list_template=>wwv_flow_api.id(1582267095881857906)
,p_default_nav_list_template=>wwv_flow_api.id(1582270139137857912)
,p_default_top_nav_list_temp=>wwv_flow_api.id(1582270139137857912)
,p_default_side_nav_list_temp=>wwv_flow_api.id(1582270971641857915)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1582239298450857834)
,p_default_dialogr_template=>wwv_flow_api.id(1582239072609857833)
,p_default_option_label=>wwv_flow_api.id(1582271923755857920)
,p_default_header_template=>wwv_flow_api.id(1582239072609857833)
,p_default_footer_template=>wwv_flow_api.id(1582239072609857833)
,p_default_required_label=>wwv_flow_api.id(1582272088542857922)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(1582270712701857913)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
