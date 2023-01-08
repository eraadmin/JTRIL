prompt --application/shared_components/user_interface/templates/list/sidebar_button_list
begin
--   Manifest
--     REGION TEMPLATE: +_SIDEBAR_BUTTON_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1618560703199568837)
,p_list_template_current=>'<a href="#LINK#" class="uButton uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'+ Sidebar Button List'
,p_internal_name=>'+_SIDEBAR_BUTTON_LIST'
,p_theme_id=>152
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="ebaSearchFilterButtons uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.component_end;
end;
/
