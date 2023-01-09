prompt --application/shared_components/user_interface/lovs/doctype_list
begin
--   Manifest
--     DOCTYPE LIST
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
 p_id=>wwv_flow_api.id(23827570705441892)
,p_lov_name=>'DOCTYPE LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT TRANTYPE, SUBTTYPE',
'  FROM SYDOCMAS',
' WHERE COMPCODE = :COMPCODE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'TRANTYPE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'TRANTYPE'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(23828129234450778)
,p_query_column_name=>'TRANTYPE'
,p_heading=>'Doc. Type'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(23828537384450778)
,p_query_column_name=>'SUBTTYPE'
,p_heading=>'Sub. Type'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_api.component_end;
end;
/
