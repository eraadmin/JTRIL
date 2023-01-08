prompt --application/shared_components/user_interface/templates/list/mobile_navigation_list
begin
--   Manifest
--     REGION TEMPLATE: MOBILE_NAVIGATION_LIST
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
 p_id=>wwv_flow_api.id(2596242921593350173)
,p_list_template_current=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_list_template_name=>'Mobile Navigation List'
,p_internal_name=>'MOBILE_NAVIGATION_LIST'
,p_theme_id=>152
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="false">'
,p_list_template_after_rows=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_f_list_template_noncurrent=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_f_list_template_current=>'<li><a href="#LINK#"#IMAGE_ATTR#>#TEXT#</a><span class="ui-icon ui-icon-arrow-r ui-icon-shadow"></span></li>'
,p_reference_id=>2585131114682022247
);
wwv_flow_api.component_end;
end;
/
