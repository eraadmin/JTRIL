prompt --application/shared_components/user_interface/templates/label/no_label_003
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
 p_id=>wwv_flow_api.id(10351836099456450782)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>152
,p_theme_class_id=>13
,p_reference_id=>1826092503999571718
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
