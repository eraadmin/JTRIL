prompt --application/shared_components/user_interface/templates/report/active_filters_report
begin
--   Manifest
--     ROW TEMPLATE: ACTIVE_FILTERS_REPORT
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
 p_id=>wwv_flow_api.id(771605915393038459)
,p_row_template_name=>'Active Filters Report'
,p_internal_name=>'ACTIVE_FILTERS_REPORT'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <strong>#FILTER_GROUP#</strong>',
'    <a href="#" class="active activeFilter" data-sequence="#FILTER_SEQUENCE#">',
'        #FILTER_DISPLAY#',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" alt="(Remove)"></a>'))
,p_row_template_condition1=>'''#ACTIVE_GROUP#'' is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <a href="#" class="active activeFilter" data-sequence="#FILTER_SEQUENCE#">',
'        #FILTER_DISPLAY#',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" alt="(Remove)"></a>'))
,p_row_template_condition2=>'''#ACTIVE_GROUP#'' = ''#FILTER_GROUP#'''
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</span>',
'<span class="searchFilter">',
'    <strong>#FILTER_GROUP#</strong>',
'    <a href="#" class="active activeFilter" data-sequence="#FILTER_SEQUENCE#">',
'        #FILTER_DISPLAY#',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" alt="(Remove)"></a>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="searchFilters">',
'<span class="searchFilter">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</span>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>152
,p_theme_class_id=>7
,p_reference_id=>709030411175920668
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
