prompt --application/shared_components/security/authorizations/delete_rights
begin
--   Manifest
--     SECURITY SCHEME: DELETE RIGHTS
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
 p_id=>wwv_flow_api.id(70911620824438204)
,p_name=>'DELETE RIGHTS'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return PKG_AUTHORIZATION.DFN_DELSTATUS (:COMPCODE, :APP_USER, :PROGNAME);'
,p_error_message=>'You have no Rights to Perform this Action.'
,p_reference_id=>69907654439180345
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
