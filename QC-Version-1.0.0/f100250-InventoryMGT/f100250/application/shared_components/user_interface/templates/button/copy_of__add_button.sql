prompt --application/shared_components/user_interface/templates/button/copy_of__add_button
begin
--   Manifest
--     BUTTON TEMPLATE: COPY_OF_[_+_]_ADD_BUTTON
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
 p_id=>wwv_flow_api.id(51669294512344140)
,p_template_name=>'Copy of [ + ] Add Button'
,p_internal_name=>'COPY_OF_[_+_]_ADD_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#"  class="addIcon"/></a>'
,p_reference_id=>2293089607080631579
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>17
);
wwv_flow_api.component_end;
end;
/
