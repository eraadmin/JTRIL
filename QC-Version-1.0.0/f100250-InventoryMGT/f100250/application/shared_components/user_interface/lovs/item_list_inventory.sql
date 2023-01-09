prompt --application/shared_components/user_interface/lovs/item_list_inventory
begin
--   Manifest
--     ITEM LIST INVENTORY
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
 p_id=>wwv_flow_api.id(70032010587950909)
,p_lov_name=>'ITEM LIST INVENTORY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP (I.ITEMDES1) , B.ITEMCODE --, B.BATCHNUM "Batch No."',
'    FROM AUDIT_STOCK B,',
'         VWNMITEM   I,',
'         NMWHSMAS   W,',
'         NMBTRATE   R',
'   WHERE     B.COMPCODE = :COMPCODE',
'         AND B.COMPCODE = I.COMPCODE',
'         AND B.COMPCODE = W.COMPCODE',
'         AND B.ITEMCODE = I.ITEMCODE',
'         AND B.WARECODE = W.WARECODE',
'         AND B.COMPCODE = R.COMPCODE',
'         AND B.ITEMCODE = R.ITEMCODE',
'         AND B.WARECODE = R.WARECODE',
'         AND B.BATCHNUM = R.BATCHNUM',
'         AND TRUNC (BATCHDTE) =',
'             (  SELECT MAX (TRUNC (BATCHDTE))     BATCHDTE',
'                  FROM NMBTRATE',
'                 WHERE     COMPCODE = R.COMPCODE',
'                       AND ITEMCODE = R.ITEMCODE',
'                       AND BATCHNUM = R.BATCHNUM',
'                       AND WARECODE = R.WARECODE',
'              GROUP BY COMPCODE,',
'                       ITEMCODE,',
'                       WARECODE,',
'                       BATCHNUM)',
'         AND B.WARECODE = :P451_WARECODE',
'         --AND B.BATCHNUM = NVL ( :CRQ2.S_BATCHNUM, B.BATCHNUM)',
'         AND B.PERIODCD = :P451_PERIODCD',
'         GROUP BY B.BATCHNUM, B.ITEMCODE, I.ITEMDES1',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ITEMCODE'
,p_display_column_name=>'ITEMCODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(71545196226662728)
,p_query_column_name=>'ITEMCODE'
,p_heading=>'Item Code'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(71545560417662729)
,p_query_column_name=>'INITCAP(I.ITEMDES1)'
,p_heading=>'Item Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
