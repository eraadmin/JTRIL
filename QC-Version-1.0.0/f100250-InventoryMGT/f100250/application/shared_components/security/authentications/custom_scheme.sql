prompt --application/shared_components/security/authentications/custom_scheme
begin
--   Manifest
--     AUTHENTICATION: CUSTOM SCHEME
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(50939378820976437)
,p_name=>'CUSTOM SCHEME'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'CUSTOM_AUTH'
,p_attribute_05=>'Y'
,p_attribute_09=>'NO_SSL'
,p_attribute_11=>'Y'
,p_attribute_14=>'STD'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:101:&SESSION.:LOGOUT'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
