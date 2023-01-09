prompt --application/shared_components/user_interface/templates/list/links_list_002
begin
--   Manifest
--     REGION TEMPLATE: LINKS_LIST
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
 p_id=>wwv_flow_api.id(993549710861307414)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>152
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="db-Links">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2628635301668369464
);
wwv_flow_api.component_end;
end;
/
