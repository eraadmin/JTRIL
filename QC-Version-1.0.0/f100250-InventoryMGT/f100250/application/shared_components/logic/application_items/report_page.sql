prompt --application/shared_components/logic/application_items/report_page
begin
--   Manifest
--     APPLICATION ITEM: REPORT_PAGE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(28188592260546725)
,p_name=>'REPORT_PAGE'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
