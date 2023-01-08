prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'LOGIN_TEST'
,p_step_title=>'LOGIN_TEST'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(99942593400690137)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200218204353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115669263395284935)
,p_plug_name=>'RGIN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99985626328690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
