prompt --application/shared_components/logic/application_processes/checkbox_change_compcode
begin
--   Manifest
--     APPLICATION PROCESS: CHECKBOX_CHANGE_COMPCODE
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
 p_id=>wwv_flow_api.id(51181367683802973)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECKBOX_CHANGE_COMPCODE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (100):= apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :COMPCODE1 IS NULL THEN',
'      :COMPCODE1:=  v_item_val ;',
'    ELSE',
'      :COMPCODE1:=  v_item_val;',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :COMPCODE1:=  v_item_val;',
'    ',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:COMPCODE1);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
