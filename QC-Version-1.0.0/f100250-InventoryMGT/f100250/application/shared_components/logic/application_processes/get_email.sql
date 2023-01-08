prompt --application/shared_components/logic/application_processes/get_email
begin
--   Manifest
--     APPLICATION PROCESS: GET_EMAIL
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(54307557032768167)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_EMAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_userid varchar2(100);',
'  l_username varchar2(100);',
'  l_useradd1 varchar2(100);',
'  l_useradd2 varchar2(100);',
'  l_userphon varchar2(100);',
'  l_usermob varchar2(100);',
'  l_party varchar2(100);',
'  l_identify varchar2(100);',
'BEGIN',
'  l_usermob := wwv_flow.g_x01;',
'   SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.CUSTMOBL,r.PARTYCDE,r.IDENTIFY',
'   into l_userid,l_username,l_useradd1,l_useradd2,l_userphon,l_usermob,l_party,l_identify',
'--into :P303_CUSTOMERID,:P303_PRTYNAME,:P303_PARTYAD2,:P303_PARTYAD1,:P303_PHONENUM,:P303_MOBILENO,:P303_PARTYCDE',
'FROM  nmcusmas r',
'where r.compcode = :compcode',
'and r.CUSTMOBL=l_usermob;',
' /*  SELECT email',
'   into l_email',
'   FROM my_user_table',
'   WHERE upper(user_account) = upper(l_userid);*/',
'   ',
'apex_util.set_session_state(''P303_PRTYNAME'',l_username);',
'apex_util.set_session_state(''P303_CUSTOMERID'',l_userid);',
'apex_util.set_session_state(''P303_PARTYAD2'',l_useradd1);',
'apex_util.set_session_state(''P303_PARTYAD1'',l_useradd2);',
'apex_util.set_session_state(''P303_PHONENUM'',l_userphon);',
'apex_util.set_session_state(''P303_PARTYCDE'',l_party);',
'apex_util.json_from_items(''P303_PRTYNAME:P303_CUSTOMERID:P303_PARTYAD2:P303_PARTYAD1:P303_PHONENUM:P303_PARTYCDE'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
