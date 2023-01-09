prompt --application/shared_components/logic/application_items/cnt_02
begin
--   Manifest
--     APPLICATION ITEM: CNT_02
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1532060522961574282)
,p_name=>'CNT_02'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
