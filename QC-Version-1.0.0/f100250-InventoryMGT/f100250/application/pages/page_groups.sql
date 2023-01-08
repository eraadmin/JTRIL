prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 100250
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1741072136129907643)
,p_group_name=>'Desktop'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1741072238553908352)
,p_group_name=>'Mobile'
);
wwv_flow_api.component_end;
end;
/
