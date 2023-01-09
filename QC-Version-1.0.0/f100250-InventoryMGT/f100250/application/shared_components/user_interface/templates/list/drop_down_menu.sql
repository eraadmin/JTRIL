prompt --application/shared_components/user_interface/templates/list/drop_down_menu
begin
--   Manifest
--     REGION TEMPLATE: DROP_DOWN_MENU
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
 p_id=>wwv_flow_api.id(922696897616589610)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="aDM-top" id="#LIST_ITEM_ID#">',
'  <a href="#LINK#" class="aDM-topLink uButton">',
'    <span>#TEXT#</span>',
'  </a>',
'</li> '))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="aDM-top" id="#LIST_ITEM_ID#">',
'  <a href="#LINK#" class="aDM-topLink uButton">',
'    <span>#TEXT#</span>',
'  </a>',
'</li> '))
,p_list_template_name=>'Drop Down Menu'
,p_internal_name=>'DROP_DOWN_MENU'
,p_theme_id=>152
,p_theme_class_id=>20
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aDropMenuContainer">',
'<ul class="aDropMenu">'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_before_sub_list=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="aDM-subMenuContainer" id="#PARENT_LIST_ITEM_ID#_sub">',
'  <ul class="aDM-subMenu">'))
,p_after_sub_list=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
,p_sub_list_item_current=>'<li class="aDM-sub"><a href="#LINK#" class="#A01#"><span>#TEXT#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="aDM-sub"><a href="#LINK#" class="#A01#"><span>#TEXT#</span></a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="aDM-top" id="#LIST_ITEM_ID#">',
'  <a href="javascript:void(0);" onclick="aShowMenu(''#LIST_ITEM_ID#'',''#REGION_STATIC_ID#'')" class="aDM-topLink uButton">',
'    <span>#TEXT#<img src="#IMAGE_PREFIX#f_spacer.gif" class="downArrow" alt=""></span>',
'  </a>',
'  #SUB_LISTS#',
'</li> '))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="aDM-top" id="#LIST_ITEM_ID#">',
'  <a href="javascript:void(0);" onclick="aShowMenu(''#LIST_ITEM_ID#'',''#REGION_STATIC_ID#'')" class="aDM-topLink uButton">',
'    <span>#TEXT#<img src="#IMAGE_PREFIX#f_spacer.gif" class="downArrow" alt=""></span>',
'  </a>',
'  #SUB_LISTS#',
'</li> '))
,p_sub_templ_curr_w_child=>'<li class="aDM-sub"><a href="#LINK#" class="#A01#"><span>#TEXT#</span></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="aDM-sub"><a href="#LINK#" class="#A01#"><span>#TEXT#</span></a></li>'
,p_reference_id=>642004309548663523
);
wwv_flow_api.component_end;
end;
/
