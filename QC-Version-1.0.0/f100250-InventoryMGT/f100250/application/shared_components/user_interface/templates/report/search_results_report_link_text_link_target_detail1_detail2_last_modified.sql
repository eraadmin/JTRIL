prompt --application/shared_components/user_interface/templates/report/search_results_report_link_text_link_target_detail1_detail2_last_modified
begin
--   Manifest
--     ROW TEMPLATE: SEARCH_RESULTS_REPORT_LINK_TEXT,_LINK_TARGET,_DETAIL1,_DETAIL2,_LAST_MODIFIED
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
 p_id=>wwv_flow_api.id(61366744788315720)
,p_row_template_name=>'Search Results Report (link_text, link_target, detail1, detail2, last_modified)'
,p_internal_name=>'SEARCH_RESULTS_REPORT_LINK_TEXT,_LINK_TARGET,_DETAIL1,_DETAIL2,_LAST_MODIFIED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>' <ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
' </ul> ',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
''))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_7/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_7/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>7
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
