prompt --application/shared_components/user_interface/templates/label/optional_004
begin
--   Manifest
--     LABEL TEMPLATE: OPTIONAL
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
 p_id=>wwv_flow_api.id(1032967593709990492)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-field-contain" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_theme_id=>50
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
