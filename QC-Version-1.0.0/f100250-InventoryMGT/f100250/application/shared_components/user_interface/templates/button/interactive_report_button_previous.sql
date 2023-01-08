prompt --application/shared_components/user_interface/templates/button/interactive_report_button_previous
begin
--   Manifest
--     BUTTON TEMPLATE: INTERACTIVE_REPORT_BUTTON_PREVIOUS
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
 p_id=>wwv_flow_api.id(928974022212150381)
,p_template_name=>'Interactive Report Button (Previous)'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON_PREVIOUS'
,p_template=>'<a href="#LINK#" class="uButtonIR prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt=""> #LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt=""> #LABEL#</span></a> '
,p_reference_id=>713114921089120615
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>152
);
wwv_flow_api.component_end;
end;
/
