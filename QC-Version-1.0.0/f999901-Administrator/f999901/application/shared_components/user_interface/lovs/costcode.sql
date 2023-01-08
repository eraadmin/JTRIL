prompt --application/shared_components/user_interface/lovs/costcode
begin
--   Manifest
--     COSTCODE
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
 p_id=>wwv_flow_api.id(57331622931070728)
,p_lov_name=>'COSTCODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT costcode||'' - ''||costdesc d, costcode r',
'    FROM SYJOBMAS',
'   WHERE compcode = :compcode ',
'     AND NVL (Validity, ''N'') = ''Y''',
'ORDER BY LENGTH (costcode), costcode'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_api.component_end;
end;
/
