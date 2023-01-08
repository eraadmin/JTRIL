prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Year Closing'
,p_alias=>'YEAR-CLOSING'
,p_page_mode=>'MODAL'
,p_step_title=>'Year Closing'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RAZU'
,p_last_upd_yyyymmddhh24miss=>'20221101130947'
);
wwv_flow_api.component_end;
end;
/
