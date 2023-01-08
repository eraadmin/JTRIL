prompt --application/shared_components/logic/application_processes/estimation_item_check
begin
--   Manifest
--     APPLICATION PROCESS: Estimation_item_check
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
 p_id=>wwv_flow_api.id(62395556108869895)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Estimation_item_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (1000) := apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :estimation_item_list IS NULL THEN',
'      :estimation_item_list := '':'' || v_item_val || '':'';',
'    ELSE',
'      :estimation_item_list :=  :estimation_item_list ||v_item_val || '':'';',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :estimation_item_list := REPLACE (:estimation_item_list, '':'' || v_item_val || '':'', '':'');',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:estimation_item_list);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (100):= apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :estimation_item_list IS NULL THEN',
'      :estimation_item_list:=  v_item_val ;',
'    ELSE',
'      :estimation_item_list:=  v_item_val;',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :estimation_item_list:=  v_item_val;',
'    ',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:estimation_item_list);',
'END;'))
);
wwv_flow_api.component_end;
end;
/
