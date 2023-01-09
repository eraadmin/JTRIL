prompt --application/shared_components/user_interface/lovs/warehouse_with_costcode_for_emp_allocations1
begin
--   Manifest
--     WAREHOUSE WITH COSTCODE FOR EMP ALLOCATIONS1
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
 p_id=>wwv_flow_api.id(32016751893211108)
,p_lov_name=>'WAREHOUSE WITH COSTCODE FOR EMP ALLOCATIONS1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode, waredesc, costcode, warecode||'' - ''||waredesc d',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND nvl(wareflag,''N'') = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'WARECODE'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'WARECODE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32017168957211108)
,p_query_column_name=>'WARECODE'
,p_heading=>'Warecode'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32017597066211109)
,p_query_column_name=>'WAREDESC'
,p_heading=>'Waredesc'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32017901185211109)
,p_query_column_name=>'D'
,p_heading=>'Warehouse'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32018314877211109)
,p_query_column_name=>'COSTCODE'
,p_heading=>'Costcode'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
