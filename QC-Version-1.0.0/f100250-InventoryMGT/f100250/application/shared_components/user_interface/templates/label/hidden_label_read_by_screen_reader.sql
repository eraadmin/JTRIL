prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_reader
begin
--   Manifest
--     LABEL TEMPLATE: HIDDEN_LABEL,_READ_BY_SCREEN_READER
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
 p_id=>wwv_flow_api.id(545051617504943507)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>152
,p_theme_class_id=>13
,p_reference_id=>2041611204002849261
,p_translate_this_template=>'N'
);
wwv_flow_api.component_end;
end;
/
