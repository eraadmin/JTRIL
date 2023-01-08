prompt --application/shared_components/reports/report_queries/multiple_requsition_entry
begin
--   Manifest
--     WEB SERVICE: multiple_requsition_entry
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_shared_query(
 p_id=>wwv_flow_api.id(117583426912144576)
,p_name=>'multiple_requsition_entry'
,p_query_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPRQNTY, BRAND_CODE, COMMCODE, COMPCODE, COSTCODE, COSTRATE, DOCNUMBR, DOCTDATE, ',
'DOCTTYPE, ITEMCODE, ITEMDESC, MSLCAMNT, OPRSTAMP, ',
'PARTYCDE, REMARKSS, SALERATE, SMANCODE, STATUSCD, UPDOCNUM, UPDOCTYP ',
'from nmprocur'))
,p_report_layout_id=>wwv_flow_api.id(117583244332142526)
,p_format=>'PDF'
,p_output_file_name=>'multiple_requsition_entry'
,p_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_shared_query_stmnt(
 p_id=>wwv_flow_api.id(117591397488236727)
,p_shared_query_id=>wwv_flow_api.id(117583426912144576)
,p_sql_statement=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APPRQNTY, BRAND_CODE, COMMCODE, COMPCODE, COSTCODE, COSTRATE, DOCNUMBR, DOCTDATE, ',
'DOCTTYPE, ITEMCODE, ITEMDESC, MSLCAMNT, OPRSTAMP, ',
'PARTYCDE, REMARKSS, SALERATE, SMANCODE, STATUSCD, UPDOCNUM, UPDOCTYP ',
'from nmprocur'))
);
wwv_flow_api.component_end;
end;
/
