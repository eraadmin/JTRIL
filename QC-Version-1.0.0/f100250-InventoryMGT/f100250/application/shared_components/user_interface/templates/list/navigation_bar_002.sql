prompt --application/shared_components/user_interface/templates/list/navigation_bar_002
begin
--   Manifest
--     REGION TEMPLATE: NAVIGATION_BAR
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
 p_id=>wwv_flow_api.id(612038809798352939)
,p_list_template_current=>'<li><a href="#LINK#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="navIcon #IMAGE#"> <span>#TEXT_ESC_SC#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="navIcon #IMAGE#"> <span>#TEXT_ESC_SC#</span></a></li>'
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>152
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="navActions clearfix">',
'<ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div> <!-- navActions -->'))
,p_reference_id=>554291101631231424
);
wwv_flow_api.component_end;
end;
/
