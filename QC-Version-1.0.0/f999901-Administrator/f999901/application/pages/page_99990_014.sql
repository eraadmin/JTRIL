prompt --application/pages/page_99990_014
begin
--   Manifest
--     PAGE: 99990
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>99990114
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Product Security : Item Assign to Group'
,p_alias=>'PRODUCT-SECURITY-ITEM-ASSIGN-TO-GROUP'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Security : Item Assign to Group'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220616001148'
);
wwv_flow_api.component_end;
end;
/
