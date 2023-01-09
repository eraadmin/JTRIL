prompt --application/shared_components/user_interface/lovs/month_name_mm
begin
--   Manifest
--     MONTH NAME MM
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
 p_id=>wwv_flow_api.id(63257763097856825)
,p_lov_name=>'MONTH NAME MM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT month_display d, month_value r ',
' FROM wwv_flow_months_mon;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'R'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
