prompt --application/shared_components/logic/application_processes/get_ert_item_id
begin
--   Manifest
--     APPLICATION PROCESS: GET_ERT_ITEM_ID
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
 p_id=>wwv_flow_api.id(88611159578768157)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ERT_ITEM_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE  ',
'  l_sql VARCHAR2(32700);  ',
'BEGIN  ',
'  IF APEX_APPLICATION.G_x01 IS NOT NULL THEN  ',
'    APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', APEX_APPLICATION.G_x01);  ',
'    l_sql := ''',
'      select C.NMCODDES DIS,C.NMSOFCDE RET',
'from nmcodmas c',
'where C.COMPCODE = :COMPCODE',
'and C.NMHRDCDE = ''''COD''''',
'and :G_TEMP = ''''N''''',
'    '';  ',
'  APEX_UTIL.JSON_FROM_SQL(l_sql);  ',
'  ELSE  ',
'    HTP.prn(''{"row":[]}'');  ',
'  END IF;  ',
'  APEX_UTIL.SET_SESSION_STATE(''G_TEMP'', APEX_APPLICATION.G_x01);  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
