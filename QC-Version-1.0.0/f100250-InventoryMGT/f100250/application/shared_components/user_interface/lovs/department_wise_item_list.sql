prompt --application/shared_components/user_interface/lovs/department_wise_item_list
begin
--   Manifest
--     DEPARTMENT WISE ITEM LIST
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
 p_id=>wwv_flow_api.id(60656568685373232)
,p_lov_name=>'DEPARTMENT WISE ITEM LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT a.itemdes1 d, a.itemcode r',
'   FROM nmitemas a',
'  WHERE compcode = :COMPCODE',
'    AND statuscd = ''ACT''',
'  --AND nvl(finishgd,''N'')= ''N''',
'    AND EXISTS  (SELECT 1',
'                   FROM nmwrkftr',
'                  WHERE compcode = :COMPCODE',
'                    AND trdoctyp = :DOCTTYPE',
'                    AND trsubtyp = :SUBTTYPE',
'                    AND catgrycd = a.category)',
'ORDER BY itemcode;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(60657223734394198)
,p_query_column_name=>'R'
,p_heading=>'Item Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(60656924525394195)
,p_query_column_name=>'D'
,p_heading=>'Item Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
