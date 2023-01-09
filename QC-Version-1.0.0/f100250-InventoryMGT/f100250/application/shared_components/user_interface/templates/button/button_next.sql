prompt --application/shared_components/user_interface/templates/button/button_next
begin
--   Manifest
--     BUTTON TEMPLATE: BUTTON_NEXT
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
 p_id=>wwv_flow_api.id(2694924398888895766)
,p_template_name=>'Button (Next)'
,p_internal_name=>'BUTTON_NEXT'
,p_template=>'<a href="#LINK#" class="uButtonLarge nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_reference_id=>2617404610575945338
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>152
);
wwv_flow_api.component_end;
end;
/
