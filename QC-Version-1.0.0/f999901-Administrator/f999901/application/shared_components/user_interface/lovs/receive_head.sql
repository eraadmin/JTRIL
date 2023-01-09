prompt --application/shared_components/user_interface/lovs/receive_head
begin
--   Manifest
--     RECEIVE HEAD
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
 p_id=>wwv_flow_api.id(7945195125741175)
,p_lov_name=>'RECEIVE HEAD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nmsofcde || '' - '' || INITCAP (nmcoddes) d, nmsofcde r, nmacctcd',
'    FROM nmcodmas',
'   WHERE compcode = :compcode ',
'     AND modlcode = ''NM'' ',
'     AND nmhrdcde = ''EXP''',
'ORDER BY nmcoddes'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(7945550014750512)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(7945949046750513)
,p_query_column_name=>'D'
,p_heading=>'Head Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(7946321643750513)
,p_query_column_name=>'NMACCTCD'
,p_heading=>'Account Code'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
