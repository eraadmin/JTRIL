prompt --application/shared_components/user_interface/templates/label/required_with_help_003
begin
--   Manifest
--     LABEL TEMPLATE: REQUIRED_WITH_HELP
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
 p_id=>wwv_flow_api.id(1064781398483588850)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<!--<span class="uLabelError">#ERROR_MESSAGE#</span>-->'
,p_theme_id=>152
,p_theme_class_id=>2
,p_reference_id=>1826092927429571721
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
