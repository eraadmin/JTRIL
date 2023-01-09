prompt --application/shared_components/security/authorizations/contribution_rights
begin
--   Manifest
--     SECURITY SCHEME: CONTRIBUTION RIGHTS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(51608975789825261)
,p_name=>'CONTRIBUTION RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return eba_proj_stat_ui.get_authorization_level(:APP_USER) >= 2;'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
