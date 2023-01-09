prompt --application/shared_components/user_interface/templates/list/copy_of_custom_multi_level_navigation
begin
--   Manifest
--     REGION TEMPLATE: COPY_OF_CUSTOM_MULTI_LEVEL_NAVIGATION
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
 p_id=>wwv_flow_api.id(82405418894630434)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    #TEXT#',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    #TEXT#',
'  </a>',
'</li>'))
,p_list_template_name=>'Copy of Custom Multi Level Navigation'
,p_internal_name=>'COPY_OF_CUSTOM_MULTI_LEVEL_NAVIGATION'
,p_theme_id=>111
,p_theme_class_id=>12
,p_list_template_before_rows=>'<ul class="multiLevelMenu rootMenu">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="multiLevelMenu subMenu">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    #TEXT#',
'  </a>',
'</li>'))
,p_sub_list_item_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    #TEXT#',
'  </a>',
'</li>'))
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="hasSubMenu">',
'  <a href="#LINK#">',
'    #TEXT#',
'    <div class="right-arrow"></div>',
'  </a>',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="hasSubMenu">',
'  <a href="#LINK#">',
'    #TEXT#',
'    <div class="right-arrow"></div>',
'  </a>',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="hasSubMenu">',
'  <a href="#LINK#">',
'    #TEXT#',
'    <div class="right-arrow"></div>',
'  </a>',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="hasSubMenu">',
'  <a href="#LINK#">',
'    #TEXT#',
'    <div class="right-arrow"></div>',
'  </a>',
'</li>'))
);
wwv_flow_api.component_end;
end;
/
