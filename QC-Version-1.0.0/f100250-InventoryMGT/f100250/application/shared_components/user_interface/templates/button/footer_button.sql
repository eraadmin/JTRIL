prompt --application/shared_components/user_interface/templates/button/footer_button
begin
--   Manifest
--     BUTTON TEMPLATE: FOOTER_BUTTON
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
 p_id=>wwv_flow_api.id(1739239543433318507)
,p_template_name=>'Footer Button'
,p_internal_name=>'FOOTER_BUTTON'
,p_template=>'<a href="f?p=&APP_ID.:1:&SESSION." rel="external" data-role="button" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_hot_template=>'<a href="#LINK#" rel="external" data-role="button" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" data-theme="b" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>150
);
wwv_flow_api.component_end;
end;
/
