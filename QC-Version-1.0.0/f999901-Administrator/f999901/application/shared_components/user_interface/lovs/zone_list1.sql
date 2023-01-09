prompt --application/shared_components/user_interface/lovs/zone_list1
begin
--   Manifest
--     ZONE LIST1
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
 p_id=>wwv_flow_api.id(32019872189211110)
,p_lov_name=>'ZONE LIST1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT zonlcode,',
'         areacode,',
'         zonlcode||'' - ''||areacode DIS,',
'         INITCAP (area_name_tree) area_name_tree,',
'         whszonpk',
'    FROM vw_nmwhznmas',
'   WHERE compcode = :COMPCODE',
'     AND NVL (statuscd, ''N'') = ''Y''',
'     AND NVL (prod_type, ''0'') = NVL ( :PRODUCT_TYPE, NVL (prod_type, ''0''))',
'ORDER BY whszonpk'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'WHSZONPK'
,p_display_column_name=>'DIS'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32020210172211110)
,p_query_column_name=>'WHSZONPK'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32020689745211110)
,p_query_column_name=>'ZONLCODE'
,p_heading=>'Zone Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32021012859211111)
,p_query_column_name=>'AREACODE'
,p_heading=>'Area Code'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32021425359211111)
,p_query_column_name=>'AREA_NAME_TREE'
,p_heading=>'Area Name Tree'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(32021839965211111)
,p_query_column_name=>'DIS'
,p_heading=>'Dis'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.component_end;
end;
/
