prompt --application/shared_components/user_interface/templates/list/vertical_list_with_subtext_and_icon_with_count
begin
--   Manifest
--     REGION TEMPLATE: VERTICAL_LIST_WITH_SUBTEXT_AND_ICON_WITH_COUNT
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
 p_id=>wwv_flow_api.id(922667996481064909)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'      <span class="#A04#">#A03#</span>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="" />',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'      <span class="#A04#">#A03#</span>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon (with count)'
,p_internal_name=>'VERTICAL_LIST_WITH_SUBTEXT_AND_ICON_WITH_COUNT'
,p_theme_id=>152
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList withCount">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<style>',
'ul.largeLinkList.withCount li a span {',
'    margin: 8px;',
'    padding: 8px 16px;',
'    border-radius: 2px;',
'    background: #F8F8F8;',
'    font-size: 14px;',
'    color: #404040;',
'}',
'ul.largeLinkList.withCount li a span:empty {',
'display: none;',
'}',
'ul.largeLinkList.withCount li a:hover span {',
'    background: #F8F8F8;',
'    color: #404040;',
'}',
'ul.largeLinkList.withCount li a span.green,',
'ul.largeLinkList.withCount li a:hover span.green{',
'    background-color: #40C230;',
'    color: #FFF;',
'}',
'ul.largeLinkList.withCount li a span.red,',
'ul.largeLinkList.withCount li a:hover span.red{',
'    background-color: #DE3038;',
'    color: #FFF;',
'}',
'ul.largeLinkList.withCount li a span.yellow,',
'ul.largeLinkList.withCount li a:hover span.yellow{',
'    background-color: #FFCC1B;',
'    color: #404040;',
'}',
'</style>'))
,p_reference_id=>864918612253883089
);
wwv_flow_api.component_end;
end;
/
