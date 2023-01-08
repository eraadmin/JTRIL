prompt --application/shared_components/user_interface/templates/report/comment_bubbles_002
begin
--   Manifest
--     ROW TEMPLATE: COMMENT_BUBBLES
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
 p_id=>wwv_flow_api.id(2497563809194236458)
,p_row_template_name=>'Comment Bubbles'
,p_internal_name=>'COMMENT_BUBBLES'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#CLASS#">',
'<div>',
'    <em>#NOTE_TYPE#</em>',
'    #NOTE_TEXT#',
'    #ATTRIBUTE_1#',
'    #ATTRIBUTE_2#',
'    #ATTRIBUTE_3#',
'    #ATTRIBUTE_4#',
'</div>',
'<span>',
'    #CREATED_BY# (#CREATED_ON#) #LINK#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles clearfix">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>152
,p_theme_class_id=>1
,p_reference_id=>2315688322755511177
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
