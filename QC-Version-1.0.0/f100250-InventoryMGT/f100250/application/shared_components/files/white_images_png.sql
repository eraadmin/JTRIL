prompt --application/shared_components/files/white_images_png
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
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001F5000000640803000000A8DB597100000003504C5445FFFFFFA7C41BC80000004849444154789CEDC13101000000C2A0F54F6D0D0FA0000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '000000000000000000000000000000000000000000E0CF00C41800018A8C1EAE0000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(40198423649480118)
,p_file_name=>'white images.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
