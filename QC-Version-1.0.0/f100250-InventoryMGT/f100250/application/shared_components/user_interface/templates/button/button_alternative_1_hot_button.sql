prompt --application/shared_components/user_interface/templates/button/button_alternative_1_hot_button
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON,_ALTERNATIVE_1_HOT_BUTTON
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(51090381709369497)
,p_template_name=>'Button, Alternative 1 - Hot Button'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1_HOT_BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>17
);
wwv_flow_api.component_end;
end;
/
