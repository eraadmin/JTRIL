prompt --application/shared_components/logic/application_processes/set_multi_items_tabular_103
begin
--   Manifest
--     APPLICATION PROCESS: Set_Multi_Items_Tabular_103
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
 p_id=>wwv_flow_api.id(47855096059021985)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_Multi_Items_Tabular_103'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_itemdesc  nmitemas.ITEMDES1%TYPE;',
'   v_qty       NUMBER;',
'',
'   CURSOR cur_c',
'   IS',
'      SELECT ITEMDES1',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE =''100108V31-SNL-710B'';',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'      v_itemdesc := c.ITEMDES1;',
'',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   --HTP.p (''Cache-Control: no-cache'');',
'  -- HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="f22_'' || :t_rownum || ''">'' || v_itemdesc || ''</item>'');',
'   HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
