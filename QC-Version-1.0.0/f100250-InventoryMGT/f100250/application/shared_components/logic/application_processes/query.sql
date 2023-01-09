prompt --application/shared_components/logic/application_processes/query
begin
--   Manifest
--     APPLICATION PROCESS: query
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
 p_id=>wwv_flow_api.id(64192226481038820)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'query'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_deptno           VARCHAR2 (40)   := TO_NUMBER (apex_application.g_x01);',
'   v_id               VARCHAR2 (40)   := TO_NUMBER (apex_application.g_x02);',
'   v_ename            VARCHAR2 (4000) := ''{"KEY0": {"NAME":"- Select Employee -","VALUE":"","SELECTED":""},'';',
'   v_selected_empno   VARCHAR2 (40);',
'   v_count            NUMBER          := 1;',
'BEGIN',
'   IF v_id IS NOT NULL',
'   THEN',
'      SELECT empno',
'        INTO v_selected_empno',
'        FROM emp_log',
'       WHERE ID = v_id;',
'   END IF;',
'',
'   FOR c IN (SELECT ename, empno',
'               FROM emp',
'              WHERE deptno = v_deptno)',
'   LOOP',
'      v_ename :=',
'            v_ename',
'         || ''"KEY''',
'         || v_count',
'         || ''":{"NAME":"''',
'         || c.ename',
'         || ''","VALUE":"''',
'         || c.empno',
'         || ''","SELECTED":"''',
'         || CASE',
'               WHEN c.empno = v_selected_empno',
'                  THEN c.ename',
'               ELSE NULL',
'            END',
'         || ''"},'';',
'      v_count := v_count + 1;',
'   END LOOP;',
'',
'   v_ename := RTRIM (v_ename, '','');',
'   v_ename := v_ename || ''}'';',
'   HTP.p (v_ename);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
