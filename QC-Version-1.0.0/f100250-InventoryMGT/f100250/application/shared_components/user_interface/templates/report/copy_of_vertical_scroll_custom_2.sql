prompt --application/shared_components/user_interface/templates/report/copy_of_vertical_scroll_custom_2
begin
--   Manifest
--     ROW TEMPLATE: COPY_OF_VERTICAL_SCROLL_CUSTOM_2
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
 p_id=>wwv_flow_api.id(51770484578809781)
,p_row_template_name=>'Copy of Vertical Scroll (Custom 2)'
,p_internal_name=>'COPY_OF_VERTICAL_SCROLL_CUSTOM_2'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><div id="#REGION_STATIC_ID#_top">',
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard"></table>',
'</div></td></tr>',
'<tr><td><div id="#REGION_STATIC_ID#_bottom">',
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></div><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_1/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_1/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>17
,p_theme_class_id=>8
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
