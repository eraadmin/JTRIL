prompt --application/shared_components/user_interface/templates/report/mobile_reports_with_count
begin
--   Manifest
--     ROW TEMPLATE: +_MOBILE_REPORTS_WITH_COUNT
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
 p_id=>wwv_flow_api.id(2657700821104736317)
,p_row_template_name=>'+ Mobile Reports with Count'
,p_internal_name=>'+_MOBILE_REPORTS_WITH_COUNT'
,p_row_template1=>'  <li>#1#<span class="ui-li-count">#2#</span></li>'
,p_row_template_before_rows=>'<ul data-role="listview" data-inset="false" data-theme="c" data-dividertheme="b">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>152
,p_theme_class_id=>14
,p_reference_id=>2598809218071596679
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
