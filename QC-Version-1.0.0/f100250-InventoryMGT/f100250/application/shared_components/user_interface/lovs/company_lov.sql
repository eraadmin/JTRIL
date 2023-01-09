prompt --application/shared_components/user_interface/lovs/company_lov
begin
--   Manifest
--     COMPANY_LOV
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(51565784872731449)
,p_lov_name=>'COMPANY_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM d, A.CACMPCDE r',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And lower(B.USERCODE) = lower(:APP_USER)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
