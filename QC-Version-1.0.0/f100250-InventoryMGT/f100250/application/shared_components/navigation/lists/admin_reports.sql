prompt --application/shared_components/navigation/lists/admin_reports
begin
--   Manifest
--     LIST: Admin Reports
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1003036092506878646)
,p_name=>'Admin Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
