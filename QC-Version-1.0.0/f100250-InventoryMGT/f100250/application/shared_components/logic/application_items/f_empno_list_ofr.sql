prompt --application/shared_components/logic/application_items/f_empno_list_ofr
begin
--   Manifest
--     APPLICATION ITEM: F_EMPNO_LIST_OFR
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
 p_id=>wwv_flow_api.id(50747276138972095)
,p_name=>'F_EMPNO_LIST_OFR'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
