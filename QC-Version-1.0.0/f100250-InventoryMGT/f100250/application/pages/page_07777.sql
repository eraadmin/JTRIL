prompt --application/pages/page_07777
begin
--   Manifest
--     PAGE: 07777
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>7777
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Test Transaction Type'
,p_step_title=>'Test Transaction Type'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20180102124427'
);
wwv_flow_api.component_end;
end;
/
