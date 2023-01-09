prompt --application/shared_components/user_interface/shortcuts/ok_to_get_next_prev_pk_value
begin
--   Manifest
--     SHORTCUT: OK_TO_GET_NEXT_PREV_PK_VALUE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(43832819527915420)
,p_shortcut_name=>'OK_TO_GET_NEXT_PREV_PK_VALUE'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Are you sure you want to leave this page without saving?'
);
wwv_flow_api.component_end;
end;
/
