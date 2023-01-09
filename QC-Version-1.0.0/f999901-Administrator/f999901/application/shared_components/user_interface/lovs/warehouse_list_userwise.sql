prompt --application/shared_components/user_interface/lovs/warehouse_list_userwise
begin
--   Manifest
--     WAREHOUSE LIST (USERWISE)
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
 p_id=>wwv_flow_api.id(97785544052903914)
,p_lov_name=>'WAREHOUSE LIST (USERWISE)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ORBRGS_CVL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
