prompt --application/shared_components/user_interface/lovs/card_type
begin
--   Manifest
--     CARD TYPE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(7999274134658166)
,p_lov_name=>'CARD TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(7999274134658166)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7999521319658167)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Visa Card'
,p_lov_return_value=>'VISA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(7999994852658168)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Master Card'
,p_lov_return_value=>'MASTER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8000313258658168)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'American Express Card'
,p_lov_return_value=>'AMEX'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(8000790462658169)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'DBBL Nexus Card'
,p_lov_return_value=>'NEXUS'
);
wwv_flow_api.component_end;
end;
/
