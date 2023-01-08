prompt --application/shared_components/security/authentications/login_auth
begin
--   Manifest
--     AUTHENTICATION: LOGIN_AUTH
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(100254906347215027)
,p_name=>'LOGIN_AUTH'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'APEX_AUTH'
,p_attribute_05=>'Y'
,p_attribute_09=>'NO_SSL'
,p_attribute_11=>'Y'
,p_attribute_14=>'STD'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
