prompt --application/shared_components/user_interface/lovs/item_list
begin
--   Manifest
--     ITEM LIST
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
 p_id=>wwv_flow_api.id(14700990264493265)
,p_lov_name=>'ITEM LIST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT i.itemcode, i.itemdes1',
'    FROM vwnmitem i,',
'         (SELECT compcode, itemcode, vhclcode',
'            FROM vwnmitem e',
'           WHERE NVL (vhclcode, ''A'') =',
'                    NVL ( :P21_VHCLCODE, NVL (vhclcode, ''A''))) e',
'   WHERE     i.compcode = :compcode',
'         AND i.statuscd = ''ACT''',
'         AND i.itemcode = e.itemcode',
'         AND i.compcode = e.compcode',
'         AND i.finishgd = ''N''',
'ORDER BY i.itemcode'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ITEMCODE'
,p_display_column_name=>'ITEMCODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14702294167522590)
,p_query_column_name=>'ITEMCODE'
,p_heading=>'Item Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14702639190522590)
,p_query_column_name=>'ITEMDES1'
,p_heading=>'Item Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
