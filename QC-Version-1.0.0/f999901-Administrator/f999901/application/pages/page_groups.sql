prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 999901
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293095811797833647)
,p_group_name=>'ACL'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(3177305615464873232)
,p_group_name=>'Administration'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096594959838296)
,p_group_name=>'Assignees'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096492535837602)
,p_group_name=>'Customers'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293095913529834157)
,p_group_name=>'Help'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096015260834644)
,p_group_name=>'Home'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293098095221857291)
,p_group_name=>'Login'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096117684835432)
,p_group_name=>'Mobile'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1296000401706151250)
,p_group_name=>'Other'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096800154839791)
,p_group_name=>'Reports'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(1293096423918837208)
,p_group_name=>'Tickets'
);
wwv_flow_api.component_end;
end;
/
