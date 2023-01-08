prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 100100
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(100067909770690232)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
