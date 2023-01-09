prompt --application/shared_components/logic/application_items/loginapp_redirect_url
begin
--   Manifest
--     APPLICATION ITEM: LOGINAPP_REDIRECT_URL
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
 p_id=>wwv_flow_api.id(66616470995197255)
,p_name=>'LOGINAPP_REDIRECT_URL'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
