prompt --application/shared_components/user_interface/lovs/warehouse_popup
begin
--   Manifest
--     WAREHOUSE POPUP
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
 p_id=>wwv_flow_api.id(25945488097099375)
,p_lov_name=>'WAREHOUSE POPUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT warecode, waredesc',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :app_user)',
'ORDER BY warecode desc;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'WARECODE'
,p_display_column_name=>'WAREDESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(25945897866110262)
,p_query_column_name=>'WARECODE'
,p_heading=>'Warecode'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(25946289433110264)
,p_query_column_name=>'WAREDESC'
,p_heading=>'Waredesc'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
