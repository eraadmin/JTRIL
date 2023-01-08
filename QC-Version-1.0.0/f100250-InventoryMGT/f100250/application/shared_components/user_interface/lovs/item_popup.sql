prompt --application/shared_components/user_interface/lovs/item_popup
begin
--   Manifest
--     ITEM POPUP
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
 p_id=>wwv_flow_api.id(27095776306084723)
,p_lov_name=>'ITEM POPUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct dfn_itname(ITEMCODE) ITEMNAME, itemcode',
'  from nmwhimas',
' where compcode = :compcode',
'   and warecode = nvl(:P447_WARECODE, warecode)',
'   and batchnum = nvl(:P447_BATCHNUM, batchnum)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ITEMCODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ITEMNAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(27096282682091289)
,p_query_column_name=>'ITEMCODE'
,p_heading=>'Itemcode'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(27349960859563350)
,p_query_column_name=>'ITEMNAME'
,p_heading=>'Itemname'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
