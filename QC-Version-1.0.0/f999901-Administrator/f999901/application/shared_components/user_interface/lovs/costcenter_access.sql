prompt --application/shared_components/user_interface/lovs/costcenter_access
begin
--   Manifest
--     COSTCENTER ACCESS
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
 p_id=>wwv_flow_api.id(139585892655351579)
,p_lov_name=>'COSTCENTER ACCESS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT costcode, costdesc, costcode||'' - ''||costdesc d',
'    FROM SYJOBMAS',
'   WHERE compcode = :COMPCODE ',
'     AND NVL (Validity, ''N'') = ''Y''  ',
'     /*',
'     AND costcode NOT IN (SELECT c003',
'                            FROM apex_collections',
'                           WHERE collection_name = ''ORDER_ITEMS2'')*/',
'ORDER BY LENGTH (costcode), costcode'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ORBRGS_CVL'
,p_return_column_name=>'COSTCODE'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(139603183902478765)
,p_query_column_name=>'COSTCODE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(139586675765358278)
,p_query_column_name=>'D'
,p_heading=>'D'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(139603534089478765)
,p_query_column_name=>'COSTDESC'
,p_heading=>'Costdesc'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
