prompt --application/shared_components/navigation/lists/additional_reports
begin
--   Manifest
--     LIST: Additional Reports
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(2846596997470483703)
,p_name=>'Additional Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
