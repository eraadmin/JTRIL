prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_002
begin
--   Manifest
--     MENU TEMPLATE: BREADCRUMB
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1032968380748990493)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>50
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
