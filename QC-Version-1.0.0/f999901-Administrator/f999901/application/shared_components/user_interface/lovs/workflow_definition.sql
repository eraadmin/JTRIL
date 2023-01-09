prompt --application/shared_components/user_interface/lovs/workflow_definition
begin
--   Manifest
--     WORKFLOW_DEFINITION
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
 p_id=>wwv_flow_api.id(37169487241169116)
,p_lov_name=>'WORKFLOW_DEFINITION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT TRANTYPE, SUBTTYPE, NARATION',
'    FROM sydocmas',
'   WHERE COMPCODE = :COMPCODE --AND TRANTYPE = ''MI''',
'GROUP BY TRANTYPE, SUBTTYPE, NARATION',
'ORDER BY 1 ASC;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'TRANTYPE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(37171052134172989)
,p_query_column_name=>'TRANTYPE'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(37171474227172992)
,p_query_column_name=>'SUBTTYPE'
,p_heading=>'Subttype'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(37171859931172992)
,p_query_column_name=>'NARATION'
,p_heading=>'Naration'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
