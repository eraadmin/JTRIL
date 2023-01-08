prompt --application/shared_components/user_interface/lovs/service_charge_list
begin
--   Manifest
--     SERVICE CHARGE LIST
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
 p_id=>wwv_flow_api.id(14943389885924835)
,p_lov_name=>'SERVICE CHARGE LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT srvcnopk,',
'       srvccode,',
'       srvsecnm,',
'       srvcname,',
'       vhclname,',
'       groupnm,',
'       sjobrate rate',
'  FROM nmsvchrg',
' WHERE compcode = :COMPCODE',
'   --AND NVL (vhclcode, ''A'') = NVL ( :P21_VHCLCODE, NVL (vhclcode, ''A''))  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SRVCCODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'SRVCNOPK'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14944047260931578)
,p_query_column_name=>'SRVCCODE'
,p_heading=>'Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14954568230476407)
,p_query_column_name=>'SRVCNAME'
,p_heading=>'Service Name'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14944466858931578)
,p_query_column_name=>'SRVSECNM'
,p_heading=>'Tools Desc'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14954963256476407)
,p_query_column_name=>'VHCLNAME'
,p_heading=>'Vehicle'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14955320997476407)
,p_query_column_name=>'GROUPNM'
,p_heading=>'Group'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14955769268476409)
,p_query_column_name=>'RATE'
,p_heading=>'Rate'
,p_display_sequence=>40
,p_data_type=>'NUMBER'
);
wwv_flow_api.component_end;
end;
/
