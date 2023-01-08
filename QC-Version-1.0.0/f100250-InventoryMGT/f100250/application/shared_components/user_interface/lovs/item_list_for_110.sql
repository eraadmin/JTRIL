prompt --application/shared_components/user_interface/lovs/item_list_for_110
begin
--   Manifest
--     ITEM LIST FOR 110
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
 p_id=>wwv_flow_api.id(51027424297553073)
,p_lov_name=>'ITEM LIST FOR 110'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select itemcode||'' / ''||description||'' / ''||mhc||'' / ''||model||'' / ''||brand||'' / ''||product||'' / ''||warecode||'' / ''||costcode||'' / ''||stock  d,itemcode r',
'  from (select itemcode, itemdes1 description, usercode mhc, i.modelnam model, brand,  product,',
'           (select warecode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  stock',
'          from vwnmitem i',
'         where     compcode = :COMPCODE',
'               and nvl (statuscd, ''ACT'') = ''ACT''',
'               and nvl (finishgd, ''N'') = ''N''',
'               and nvl (paintflg, ''N'') = nvl (:PAINTFLG, ''N'')',
'               and nvl (paintflg, ''N'') = ''N''',
'               and i.modlcode = :MODLCODE',
'               and itemdes1 like ''%%''',
'        union',
'        select itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modelnam model,',
'               brand,',
'               product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  stock',
'          from vwnmitem i',
'         where     compcode = :COMPCODE',
'               and nvl (statuscd, ''ACT'') = ''ACT''',
'               and nvl (finishgd, ''N'') = ''N''',
'               and nvl (paintflg, ''N'') = nvl (:PAINTFLG, ''N'')',
'               and nvl (paintflg, ''N'') = ''N''',
'               and itemdes1 like ''%%''',
'        union',
'        select i.itemcode,',
'               itemdes1 description,',
'               usercode mhc,',
'               i.modlcode model,',
'               brand,',
'               i.product,',
'               (select warecode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  warecode,',
'               (select costcode',
'                  from nmwhsmas',
'                 where compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  costcode,',
'               (select nvl (sum (clbalqty), 0)',
'                  from nmwhimas',
'                 where     itemcode = i.itemcode',
'                       and compcode = :COMPCODE',
'                       and warecode = :WARECODE)',
'                  stock',
'          from vwnmitem i, nmitpart p',
'         where     i.compcode = p.compcode(+)',
'               and i.itemcode = p.itemcode(+)',
'               and i.compcode = :COMPCODE',
'               and nvl (statuscd, ''ACT'') = ''ACT''',
'               and nvl (paintflg, ''N'') = nvl (:PAINTFLG, ''N'')',
'               and nvl (paintflg, ''N'') = ''N''',
'               and i.modlcode = :MODLCODE)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
