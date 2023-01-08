prompt --application/shared_components/logic/application_items/fx_mod_allowed
begin
--   Manifest
--     APPLICATION ITEM: FX_MOD_ALLOWED
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(44728145793452630)
,p_name=>'FX_MOD_ALLOWED'
,p_scope=>'GLOBAL'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/