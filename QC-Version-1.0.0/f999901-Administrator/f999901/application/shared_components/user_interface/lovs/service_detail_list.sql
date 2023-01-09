prompt --application/shared_components/user_interface/lovs/service_detail_list
begin
--   Manifest
--     SERVICE DETAIL LIST
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
 p_id=>wwv_flow_api.id(14717586533212876)
,p_lov_name=>'SERVICE DETAIL LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT typdtlpk, srvtypnm, typdtlnm',
'    FROM vwsrvtyp',
'   WHERE compcode = :COMPCODE',
'ORDER BY dfn_char2number (typdtlpk) ASC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'TYPDTLPK'
,p_display_column_name=>'SRVTYPNM'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14718039366216882)
,p_query_column_name=>'TYPDTLPK'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14718461663216884)
,p_query_column_name=>'SRVTYPNM'
,p_heading=>'Service Type'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14718879425216884)
,p_query_column_name=>'TYPDTLNM'
,p_heading=>'Type Detail'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
