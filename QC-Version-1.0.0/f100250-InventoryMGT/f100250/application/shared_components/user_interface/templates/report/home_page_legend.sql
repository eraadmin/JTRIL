prompt --application/shared_components/user_interface/templates/report/home_page_legend
begin
--   Manifest
--     ROW TEMPLATE: HOME_PAGE_LEGEND
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(612602123312202823)
,p_row_template_name=>'Home Page Legend'
,p_internal_name=>'HOME_PAGE_LEGEND'
,p_row_template1=>'<span><img src="#IMAGE_PREFIX#f_spacer.gif" class="status#4#" alt="#5#" /><em>#5#</em></span>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="detailedStatusList">',
'    <li class="detailedStatusListLegend">',
'        <span class="legendHeader">Legend: </span>'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    </li>',
'</ul>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>152
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
