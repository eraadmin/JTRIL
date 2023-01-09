prompt --application/shared_components/user_interface/templates/button/header_button_002
begin
--   Manifest
--     BUTTON TEMPLATE: HEADER_BUTTON
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
 p_id=>wwv_flow_api.id(1733915543610258393)
,p_template_name=>'Header Button'
,p_internal_name=>'HEADER_BUTTON'
,p_template=>'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_hot_template=>'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" data-theme="b" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>150
);
wwv_flow_api.component_end;
end;
/
