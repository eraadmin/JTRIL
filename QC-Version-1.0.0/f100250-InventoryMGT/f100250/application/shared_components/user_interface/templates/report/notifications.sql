prompt --application/shared_components/user_interface/templates/report/notifications
begin
--   Manifest
--     ROW TEMPLATE: NOTIFICATIONS
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
 p_id=>wwv_flow_api.id(611857816900235690)
,p_row_template_name=>'Notifications'
,p_internal_name=>'NOTIFICATIONS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="alertMessage #2#">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" alt="Warning">',
'    <div class="innerMessage">',
'        <h3>#3#</h3>',
'        <p>#4#</p>',
'    </div>',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>152
,p_theme_class_id=>14
,p_reference_id=>553908121187434227
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
