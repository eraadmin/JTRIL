prompt --application/shared_components/user_interface/lovs/urgency
begin
--   Manifest
--     URGENCY
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
 p_id=>wwv_flow_api.id(2744260023862745750)
,p_lov_name=>'URGENCY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select URGENCY_NAME as display_value, ID as return_value ',
'  from EBA_INTRACK_URGENCY',
' order by display_sequence'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
