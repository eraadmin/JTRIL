prompt --application/shared_components/user_interface/templates/button/100_button
begin
--   Manifest
--     BUTTON TEMPLATE: 100%_BUTTON
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
 p_id=>wwv_flow_api.id(1032967793204990492)
,p_template_name=>'100% Button'
,p_internal_name=>'100%_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-theme="b" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>50
);
wwv_flow_api.component_end;
end;
/
