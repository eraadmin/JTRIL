prompt --application/shared_components/security/authentications/application_express_accounts
begin
--   Manifest
--     AUTHENTICATION: Application Express Accounts
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(4374260161791924079)
,p_name=>'Application Express Accounts'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'CUSTOM_AUTH'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'ORA_WWV_PACKAGED_APPLICATIONS'))
);
wwv_flow_api.component_end;
end;
/
