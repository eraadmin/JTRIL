prompt --application/shared_components/user_interface/lovs/salesman_list
begin
--   Manifest
--     SALESMAN LIST
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
 p_id=>wwv_flow_api.id(31959534080135486)
,p_lov_name=>'SALESMAN LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT smancode, INITCAP (smanname) smanname, username, smancode||'' - ''||INITCAP (smanname) smandesc',
'    FROM nmsmnmas',
'   WHERE compcode = :compcode',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'SMANCODE'
,p_display_column_name=>'SMANDESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(31959812455135489)
,p_query_column_name=>'SMANCODE'
,p_heading=>'Salesman Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(31960238369135490)
,p_query_column_name=>'SMANDESC'
,p_heading=>'Smandesc'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(31960644318135490)
,p_query_column_name=>'SMANNAME'
,p_heading=>'Salesman Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(31961006904135490)
,p_query_column_name=>'USERNAME'
,p_heading=>'User Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
