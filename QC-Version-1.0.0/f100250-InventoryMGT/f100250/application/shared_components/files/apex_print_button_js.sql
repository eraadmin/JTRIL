prompt --application/shared_components/files/apex_print_button_js
begin
--   Manifest
--     APP STATIC FILES: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C666F726D3E0D0A3C696E70757420747970653D22627574746F6E222076616C75653D225072696E742074686973207061676522206F6E436C69636B3D2277696E646F772E7072696E742829223E0D0A3C2F666F726D3E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(40869322353227148)
,p_file_name=>'Apex_Print_Button.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
