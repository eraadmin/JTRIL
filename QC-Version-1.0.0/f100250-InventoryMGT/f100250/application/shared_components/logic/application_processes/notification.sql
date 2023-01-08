prompt --application/shared_components/logic/application_processes/notification
begin
--   Manifest
--     APPLICATION PROCESS: notification
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
 p_id=>wwv_flow_api.id(47306874501014493)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'notification'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_progname   VARCHAR2 (30) := :P1_PROGNAME;',
'   v_add_pageid number;',
'   v_mod_pageid number;',
'   v_add varchar2(1);',
'   v_mod varchar2(1);',
'   v_del varchar2(1);',
'   v_enq varchar2(1);',
'   v_add_d varchar2(10);',
'   v_mod_d varchar2(10);',
'   v_del_d varchar2(10);',
'   v_enq_d varchar2(10);',
'   v_doccunt number;',
'   v_buttonid number:= 0;',
'BEGIN',
'-- display products',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="1" border="0">',
'',
'<tbody>''',
'      );',
'',
'   FOR c1 IN (select BODY from messages )',
'   LOOP',
'    v_buttonid :=v_buttonid+1;',
'      SYS.HTP.p',
'         (   ''<tr><td style="padding-left: 5px;width: 80%;font-weight:bold;text-align:left;background-color:white">''',
'          || c1.BODY',
'          || ''</td></tr>''',
'         );',
'   END LOOP;',
'',
'   SYS.HTP.p (''</tbody></table>'');',
'   SYS.HTP.p (''</div>'');',
'--',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
'<tr><th style="text-align:left;">Message<span style="color:red;"></span></th></tr>',
'</thead>'))
);
wwv_flow_api.component_end;
end;
/
