prompt --application/shared_components/logic/application_processes/get_img
begin
--   Manifest
--     APPLICATION PROCESS: GET_IMG
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
 p_id=>wwv_flow_api.id(51786777094701048)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_IMG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_lob      BLOB;',
'  l_length   NUMBER;',
'  l_mimetype VARCHAR2(2000);',
'  l_filename VARCHAR2(2000);',
'BEGIN',
'--',
'  SELECT product_image,',
'    mimetype,',
'    filename',
'  INTO l_lob,',
'    l_mimetype,',
'    l_filename',
'  FROM demo_product_info',
'  WHERE product_id = :P101_PRODUCT_ID',
'  ;',
'  --',
'  l_length := DBMS_LOB.getlength(l_lob);',
'  --',
'  htp.flush;',
'  htp.init;',
'  --',
'  owa_util.mime_header(nvl(l_mimetype,''application/octet''), FALSE);',
' ',
'  htp.p(''Content-length:'' || l_length);',
'  htp.p(''Content-Disposition:inline;filename="'' || l_filename || ''"'');',
'  --',
'  -- close the headers',
'  owa_util.http_header_close;',
'  --',
'  -- download the BLOB',
'  wpg_docload.download_file(l_lob);',
'--',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
