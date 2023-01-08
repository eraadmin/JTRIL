prompt --application/shared_components/logic/application_processes/get_item
begin
--   Manifest
--     APPLICATION PROCESS: GET_ITEM
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
 p_id=>wwv_flow_api.id(54661995093872954)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_ITEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_itemcode varchar2(100);',
'  l_itemdesc varchar2(100);',
'  l_itemunit varchar2(100);',
'  l_itemtype varchar2(100);',
'  l_salperc varchar2(100);',
'  l_commgrup varchar2(100);',
'  l_batchno varchar2(100);',
'BEGIN',
'  l_itemcode := wwv_flow.g_x01;',
'SELECT DISTINCT a.ITEMCODE,a.LUOMCODE,a.ITEMDES1,a.ITEMTYPE,a.SALEPERC,a.COMMGRUP--,b.BATCHNUM',
'into l_itemcode,l_itemunit,l_itemdesc,l_itemtype,l_salperc,l_commgrup--,l_batchno',
'           FROM nmitemas a, nmenudtl b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            and a.itemcode=l_itemcode;',
'   ',
'apex_util.set_session_state(''P303_TABULARITEMCODE'',l_itemcode);',
'apex_util.set_session_state(''P303_UNITOFMESURE'',l_itemunit);',
'apex_util.set_session_state(''P303_TABITEMDESC'',l_itemdesc);',
'apex_util.set_session_state(''P303_TABITEMTYPE'',l_itemtype);',
'apex_util.set_session_state(''P303_TABSALEPERC'',l_salperc);',
'apex_util.set_session_state(''P303_TABCOMMGRUP'',l_commgrup);',
'--apex_util.set_session_state(''P303_BATCHNUM'',l_batchno);',
'--apex_util.json_from_items(''P303_TABULARITEMCODE'');',
'apex_util.json_from_items(''P303_TABULARITEMCODE:P303_UNITOFMESURE:P303_TABITEMDESC:P303_TABITEMTYPE:P303_TABSALEPERC:P303_TABCOMMGRUP'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
