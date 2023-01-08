prompt --application/shared_components/user_interface/lovs/batchno
begin
--   Manifest
--     BATCHNO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(25950115997351028)
,p_lov_name=>'BATCHNO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT batchnum, warecode',
'    FROM nmwhimas',
'   WHERE compcode = :compcode',
'     AND warecode = NVL (:P447_WARECODE, warecode)',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'BATCHNUM'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(25950509124408476)
,p_query_column_name=>'BATCHNUM'
,p_heading=>'Batch No.'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(25950911221408476)
,p_query_column_name=>'WARECODE'
,p_heading=>'Warecode'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.component_end;
end;
/
