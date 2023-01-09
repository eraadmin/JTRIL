prompt --application/shared_components/logic/application_processes/get_barcode
begin
--   Manifest
--     APPLICATION PROCESS: get barcode
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
 p_id=>wwv_flow_api.id(41720313756735721)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get barcode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   barcode_pr (:t_code_text, :t_code_label, :t_code_height, :t_code_width);',
'   apex_application.g_unrecoverable_error := true;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'GET_BARCODE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
