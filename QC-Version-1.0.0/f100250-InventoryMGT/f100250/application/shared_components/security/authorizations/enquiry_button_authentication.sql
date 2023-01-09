prompt --application/shared_components/security/authorizations/enquiry_button_authentication
begin
--   Manifest
--     SECURITY SCHEME: enquiry button Authentication
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
 p_id=>wwv_flow_api.id(65362112791170916)
,p_name=>'enquiry button Authentication'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_enq varchar2(5);',
'begin',
'/*',
'select distinct ENQSTATS into v_enq from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_enq=''Y''  then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_error_message=>'Enquiry button Authentication'
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_api.component_end;
end;
/
