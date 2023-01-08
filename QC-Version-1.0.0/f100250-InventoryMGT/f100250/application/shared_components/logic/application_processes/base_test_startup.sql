prompt --application/shared_components/logic/application_processes/base_test_startup
begin
--   Manifest
--     APPLICATION PROCESS: base test startup
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
 p_id=>wwv_flow_api.id(60773027865757785)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'base test startup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'/*BEGIN',
'  :add         := ''Y'';',
'  :query       := ''Y'';',
'  :mod         := ''Y'';',
'  :save        := ''Y'';',
'  :del         := ''Y'';',
'  :multiline   := ''Y'';',
'  :non_oracle  := ''N'';',
'  :compcode    := ''100'';',
'  :useridn     := ''TSUSER'';',
'  :module_name := ''Test Module'';',
'  :company_name:= ''ETA-ASCON GROUP'';',
'  :progname    := ''Test Module'';',
'  :progdesc    := ''Test Application'';',
'  :grupcode    := ''TSGRUP'';',
'  :cagrpcde    := ''001'';',
'  :modlcode    := ''NM'';',
'  :imagedir    := ''P:\SY\IMG\'';',
'  :numbsyst    := ''M'';',
'  :DATE := to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY'');',
'                               ',
'END;*/',
'BEGIN',
' -- :compcode    := ''100'';',
'  :modlcode    := ''NM'';',
'  :DATE := to_char(sysdate,''DD-MON-YYYY'');',
'                               ',
'END;',
'begin',
'--:compcode    := ''100'';',
':modlcode    := ''NM'';',
':DATE := to_char(sysdate,''DD-MON-YYYY'');',
'end;',
'',
'begin',
'  Select distinct initcap(NVL(NMCODDES,''''))  into :DESIGNATION',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    compcode=:compcode',
'                                And        PYEMPCDE=:APP_USER',
'                                );',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;',
'begin',
'select distinct s.COMPCODE||''-''||m.CACMPNAM as companyname,initcap(m.CAADDRS1||''''||m.CAADDRS2||'',''||m.CAADDRS3) companyaddress into ',
':COMPANY_NAME,:COMPANY_ADDRESS from syrights s,syparmas m',
'where s.COMPCODE=m.CACMPCDE',
'and USERCODE=:APP_USER',
'and s.COMPCODE=:COMPCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;',
'',
'begin',
'select distinct initcap(USERNAME) into :USERNAME from syusrmas m',
'where  USERCODE=:APP_USER;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
