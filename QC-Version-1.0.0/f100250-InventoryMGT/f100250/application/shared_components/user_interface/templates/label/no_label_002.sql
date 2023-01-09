prompt --application/shared_components/user_interface/templates/label/no_label_002
begin
--   Manifest
--     LABEL TEMPLATE: NO_LABEL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(61373013800315726)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="no-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>7
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
