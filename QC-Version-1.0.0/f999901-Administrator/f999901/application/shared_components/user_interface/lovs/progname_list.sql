prompt --application/shared_components/user_interface/lovs/progname_list
begin
--   Manifest
--     PROGNAME LIST
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
 p_id=>wwv_flow_api.id(74729350759698823)
,p_lov_name=>'PROGNAME LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 9/20/2020 1:53:40 PM (QP5 v5.149.1003.31008) */',
'  SELECT PROGDESC, PROGNAME',
'    FROM symenmas',
'   WHERE MODLCODE = :P111_MODLCODE',
'         AND progname NOT IN (SELECT progname',
'                                FROM symentre',
'                               WHERE modlcode = :P111_MODLCODE',
'                               )',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'ORBRGS_CVL'
,p_return_column_name=>'PROGNAME'
,p_display_column_name=>'PROGDESC'
);
wwv_flow_api.component_end;
end;
/
