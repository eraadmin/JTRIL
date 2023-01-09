prompt --application/shared_components/user_interface/templates/report/badge_list_copy
begin
--   Manifest
--     ROW TEMPLATE: BADGE_LIST_COPY
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
 p_id=>wwv_flow_api.id(81294476201576426)
,p_row_template_name=>'Badge List Copy'
,p_internal_name=>'BADGE_LIST_COPY'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label" style="padding: 0.5px 8px 5px;">#COLUMN_HEADER#<br><button class="t-Button t-Button--small" style="border: none;color: #CA1010;background-clip: padding-box;background-color: #f8f8f8;box-shadow: 0 0 0 2px rgba(0,0,0,.'
||'125) inset;border-radius: 10px;text-shadow: none;"  type="button"><a href="javascript:apex.navigation.dialog',
'(''f?p=&APP_ID.:143:26877391362095:::::\u0026p_dialog_cs=xaqsdZE5Caf3OeVPMddC8bkwvE4'',',
'{title:''alert_message_jobs'',height:''500'',width:''720'',maxWidth:''960'',modal:true,dialog:null});">Preview</a></button><br></span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#<br></span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#" style="height:130px;">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation" style="display:none;">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>111
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols'
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
