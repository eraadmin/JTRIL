prompt --application/pages/page_00332
begin
--   Manifest
--     PAGE: 00332
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>332
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'image'
,p_step_title=>'image'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170313164417'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51765879742038768)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'image load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_lob      BLOB;',
'   l_length   NUMBER;',
'BEGIN',
'SELECT USERSIGN',
'   --SELECT apex_web_service.clobbase642blob (IMAGE_DATA)',
'     INTO l_lob',
'     FROM syusrmas',
'    WHERE USERCODE= :REQUEST;',
'',
'',
'   --l_lob :=  BFILENAME(''MY_IMG_DIR'', :REQUEST);',
'   l_length := DBMS_LOB.getlength (l_lob);',
'   --',
'   HTP.flush;',
'   HTP.init;',
'   --',
'   HTP.p (''Content-length: '' || l_length);',
'   --',
'   HTP.p (''Content-Disposition: filename="&REQUEST."'');',
'   --',
'   -- close the headers',
'   OWA_UTIL.http_header_close;',
'   --',
'   -- download the BLOB',
'   WPG_DOCLOAD.download_file (l_lob);',
'--',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
