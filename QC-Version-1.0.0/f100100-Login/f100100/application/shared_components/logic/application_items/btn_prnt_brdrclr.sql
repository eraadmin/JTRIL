prompt --application/shared_components/logic/application_items/btn_prnt_brdrclr
begin
--   Manifest
--     APPLICATION ITEM: BTN_PRNT_BRDRCLR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(100091105916704974)
,p_name=>'BTN_PRNT_BRDRCLR'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/