prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Spare Parts'
,p_page_mode=>'MODAL'
,p_step_title=>'Spare Parts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function pad(n, width, z) {',
'  z = z || ''0'';',
'  n = n + '''';',
'  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;',
'}',
'    ',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'    Number(html_GetElement(''f20_''+vRow).value).toPrecision() *',
'    Number(html_GetElement(''f21_''+vRow).value).toPrecision();',
'var y = document.getElementById(''P110_P_NEGITMPK'').value;',
'',
'var str = vRow;',
'str = str.replace(/^0+/, ''''); ',
'    ',
' if(str == 1){           ',
'',
' if (html_GetElement(''f02_''+vRow).value == ""){',
'      html_GetElement(''f02_''+vRow).value = (y-1)+parseInt(str);',
'      html_GetElement(''f08_''+vRow).value = parseInt(str);',
' }',
'    }',
'    else{',
'        var prev = (parseInt(vRow)-1);',
'        ',
'        prev = pad(prev, 4);',
'        var id = ''f02_''.concat(prev);',
'        var uuu = document.getElementById(id).value;',
'        uuu++;',
'        html_GetElement(''f02_''+vRow).value = uuu;',
'        html_GetElement(''f08_''+vRow).value = parseInt(str);',
'        ',
'      }',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P110_P_ITEMCODE'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P110_P_ITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f16_''+vRow).value=',
'document.getElementById(''P110_P_ITEMDESC'').value;',
'html_GetElement(''f19_''+vRow).value=',
'document.getElementById(''P110_SALERATE'').value;',
'html_GetElement(''f20_''+vRow).value=',
'document.getElementById(''P110_P_UNITOFMESURE'').value;',
'html_GetElement(''f26_''+vRow).value=',
'document.getElementById(''P110_SALERATE'').value;',
'    ',
'}',
'</script>',
'<script type="text/javascript">',
'function clearrow(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f18_''+vRow).value="";',
'html_GetElement(''f24_''+vRow).value="";',
'html_GetElement(''f26_''+vRow).value="";',
'html_GetElement(''f28_''+vRow).value="";',
'html_GetElement(''f30_''+vRow).value="";',
'html_GetElement(''f33_''+vRow).value="";',
'    ',
'}',
'</script>',
'<script type="text/javascript">',
'function Batchnum(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P110_BATCHNUM'').value=',
'    html_GetElement(''f18_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P110_BATCHNUM'').trigger(''click'');',
'});',
'html_GetElement(''f37_''+vRow).value=',
'document.getElementById(''P110_STOCKQTY'').value;    ',
'}',
'</script>',
'<script type="text/javascript">',
'function changediscount(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f30_''+vRow).value =',
'Number((Number(html_GetElement(''f24_''+vRow).value).toFixed(2)) *',
'    Number(html_GetElement(''f26_''+vRow).value).toFixed(2)*',
'(Number(html_GetElement(''f28_''+vRow).value).toFixed(2)/100)).toFixed(1);',
'html_GetElement(''f33_''+vRow).value =',
'   Number(html_GetElement(''f24_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f26_''+vRow).value).toFixed(2)-Number(html_GetElement(''f30_''+vRow).value).toFixed(2);',
'}',
'</script>',
'<script type="text/javascript">',
'function changedisamnt(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f33_''+vRow).value =',
'    Number(html_GetElement(''f24_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f26_''+vRow).value).toFixed(2)-Number(html_GetElement(''f30_''+vRow).value).toFixed(2);',
'html_GetElement(''f28_''+vRow).value =',
'    Number((Number(html_GetElement(''f30_''+vRow).value).toFixed(2) *',
'100)/(Number(html_GetElement(''f24_''+vRow).value).toFixed(2)*',
'Number(html_GetElement(''f26_''+vRow).value).toFixed(2))).toFixed(2);',
'}',
'</script>',
'<script type="text/javascript">',
'function changesalrate(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f33_''+vRow).value =',
'    Number(html_GetElement(''f24_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f26_''+vRow).value).toFixed(2);',
'}',
'</script>',
'',
''))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170316123311'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50547215053969964)
,p_name=>'Spare Parts'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"NEGITMPK",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"PARTYCDE",',
'"RAISEDBY",',
'"APPRDATE",',
'"REQDDATE",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMTYPE",',
'"ITEMDESC",',
'"ITEMLONG",',
'"ITEMRATE",',
'"DISCPCNT",',
'"DISCAMNT",',
'"SALERATE",',
'"HUOMCODE",',
'"FACTRVAL",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"MSFCAMNT",',
'"CURRCODE",',
'"EXCGRATE",',
'"MSLCAMNT",',
'"REFNUMBR",',
'"REMARKSS",',
'"COSTCODE",',
'"WARECODE",',
'"STATUSCD",',
'"BOQREFER",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"BATCHNUM",',
'"BATCHDTE",',
'"SRVCNOFK",',
'"NEGITMFK",',
'"NEGITMFK1",',
'"COSTRATE",',
'"SALEPERC",',
'NULL "Stockqty",',
'NULL "Recvqty",',
'NULL "Suggslrate",',
'APEX_ITEM.CHECKBOX2(',
'p_idx => 40,',
'p_value => NEGITMPK,',
'p_checked_values => ''Y'') AS "Mark"',
'from "#OWNER#"."NMNEGITM"',
'where NEGITMFK=:P110_NEGITMFK',
'and SRVCNOFK=:P110_SERVNO',
'and DOCNUMBR=:P110_NEXTESTIMATION',
'order by SERLNUMB',
'',
'',
''))
,p_ajax_items_to_submit=>'P110_SERVNO,P110_NEGITMFK'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"NEGITMPK",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"PARTYCDE",',
'"RAISEDBY",',
'"APPRDATE",',
'"REQDDATE",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMTYPE",',
'"ITEMDESC",',
'"ITEMLONG",',
'"ITEMRATE",',
'"DISCPCNT",',
'"DISCAMNT",',
'"SALERATE",',
'"HUOMCODE",',
'"FACTRVAL",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"MSFCAMNT",',
'"CURRCODE",',
'"EXCGRATE",',
'"MSLCAMNT",',
'"REFNUMBR",',
'"REMARKSS",',
'"COSTCODE",',
'"WARECODE",',
'"STATUSCD",',
'"BOQREFER",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"BATCHNUM",',
'"BATCHDTE",',
'"SRVCNOFK",',
'"NEGITMFK",',
'"NEGITMFK1",',
'"COSTRATE",',
'"SALEPERC",',
'NULL "Stockqty",',
'NULL "Recvqty",',
'NULL "Suggslrate",',
'NULL "Mark"',
'from "#OWNER#"."NMNEGITM"',
'where NEGITMPK is null',
'',
'APEX_ITEM.CHECKBOX2(',
'p_idx => 40,',
'p_value => NEGITMPK,',
'p_checked_values => ''Y'')',
'',
''))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50615340107971122)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50547818715970119)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>3
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50548128368970169)
,p_query_column_id=>3
,p_column_alias=>'NEGITMPK'
,p_column_display_sequence=>2
,p_column_heading=>'p'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'NEGITMPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50548506922970169)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50548948468970169)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50549292174970169)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50549751038970170)
,p_query_column_id=>7
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50550080070970217)
,p_query_column_id=>8
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50550486593970217)
,p_query_column_id=>9
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50550965443970217)
,p_query_column_id=>10
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>10
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50551354567970217)
,p_query_column_id=>11
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>11
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50551668547970219)
,p_query_column_id=>12
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>12
,p_column_heading=>'Apprdate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50552119938970219)
,p_query_column_id=>13
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>13
,p_column_heading=>'Reqddate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50552511823970219)
,p_query_column_id=>14
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Commcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50552880050970219)
,p_query_column_id=>15
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Itemcode : ''||itemcode||'' | Item Name : ''||description||'' | Machine : ''||mhc||'' | Model : ''||model||'' | Brand : ''||brand||'' | Product : ''||product||'' | Warecode : ''||warecode||'' | Costcode : ''||costcode||'' | Stock :  ''||stock  d,itemcode r',
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
'               /*And I.Modlcode IS NULL*/',
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
,p_lov_show_nulls=>'YES'
,p_column_width=>22
,p_cattributes=>'onchange="calculateTotal(this);calculateTotal3(this);clearrow(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50553300377970220)
,p_query_column_id=>16
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>16
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50553705083970220)
,p_query_column_id=>17
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>17
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>22
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50554117100970220)
,p_query_column_id=>18
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>18
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMLONG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50554546609970220)
,p_query_column_id=>19
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>20
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50554949487970220)
,p_query_column_id=>20
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>29
,p_column_heading=>'Discount<br>(%)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_cattributes=>'onchange="changediscount(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DISCPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50555339154970222)
,p_query_column_id=>21
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>31
,p_column_heading=>'Discount<br>Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_cattributes=>'onchange="changedisamnt(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DISCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50555720412970222)
,p_query_column_id=>22
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>27
,p_column_heading=>'Sale Rate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'onchange="changesalrate(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50556114583970222)
,p_query_column_id=>23
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>21
,p_column_heading=>'UOM'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50556543253970222)
,p_query_column_id=>24
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>22
,p_column_heading=>'Factrval'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'FACTRVAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50556877190970233)
,p_query_column_id=>25
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>24
,p_column_heading=>'Luomcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50557345751970233)
,p_query_column_id=>26
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>25
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_cattributes=>'onchange="changesalrate(this);Batchnum(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50557734675970233)
,p_query_column_id=>27
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>26
,p_column_heading=>'Apprqnty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50558084385970234)
,p_query_column_id=>28
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>28
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50558535004970234)
,p_query_column_id=>29
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>34
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50558891934970234)
,p_query_column_id=>30
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>30
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50559316530970234)
,p_query_column_id=>31
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>32
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50559756232970234)
,p_query_column_id=>32
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>33
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50560166641970234)
,p_query_column_id=>33
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>35
,p_column_heading=>'Refnumbr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>15
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REFNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50560480045970236)
,p_query_column_id=>34
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>36
,p_column_heading=>'Remarkss'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50560879928970348)
,p_query_column_id=>35
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>37
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50561282091970348)
,p_query_column_id=>36
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>39
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50561754030970348)
,p_query_column_id=>37
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>42
,p_column_heading=>'Statuscd'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50562155733970348)
,p_query_column_id=>38
,p_column_alias=>'BOQREFER'
,p_column_display_sequence=>43
,p_column_heading=>'Boqrefer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BOQREFER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50562495308970350)
,p_query_column_id=>39
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>44
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50562882224970350)
,p_query_column_id=>40
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>45
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50563307258970350)
,p_query_column_id=>41
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>19
,p_column_heading=>'Batch'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT compcode||'' / ''||batchnum||'' / ''||costrate||'' / ''||s_salerate||'' / ''||SUM (clbalqty) d ,batchnum r',
'    FROM (SELECT DISTINCT w.batchnum,',
'                 ROUND (r.costrate) costrate,',
'                 CASE',
'                    WHEN NVL (i.saleperc, 0) > 0',
'                    THEN',
'                       ROUND (r.costrate * (i.saleperc / 100) + r.costrate)',
'                    ELSE',
'                       ROUND (r.salerate)',
'                 END',
'                    s_salerate, NVL (w.clbalqty, 0) clbalqty,w.compcode',
'            FROM nmwhimas w, nmbtrate r, nmitemas i',
'           WHERE     w.compcode = :P110_COMPCODE',
'                 AND w.compcode = r.compcode',
'                 AND w.compcode = i.compcode',
'                 AND w.itemcode = r.itemcode',
'                 AND w.itemcode = i.itemcode',
'                 AND w.warecode = r.warecode',
'                 AND w.batchnum = r.batchnum',
'                 AND w.itemcode = :P110_P_ITEMCODE',
'                 AND w.clbalqty > 0',
'                 AND w.warecode = :P110_WARCD',
'                 AND TRUNC (r.batchdte) =',
'                        (SELECT MAX (TRUNC (batchdte))',
'                           FROM nmbtrate',
'                          WHERE     compcode = :P110_COMPCODE',
'                                AND itemcode = :P110_P_ITEMCODE',
'                                AND warecode =:P110_WARCD',
'                                AND batchnum = w.batchnum))',
'GROUP BY compcode,batchnum,costrate, s_salerate',
''))
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_cattributes=>'onchange="Batchnum(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BATCHNUM'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50563706327970350)
,p_query_column_id=>42
,p_column_alias=>'BATCHDTE'
,p_column_display_sequence=>46
,p_column_heading=>'Batchdte'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BATCHDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50564920070970351)
,p_query_column_id=>43
,p_column_alias=>'SRVCNOFK'
,p_column_display_sequence=>47
,p_column_heading=>'Srvcnofk'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SRVCNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50565347769970351)
,p_query_column_id=>44
,p_column_alias=>'NEGITMFK'
,p_column_display_sequence=>48
,p_column_heading=>'Negitmfk'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'NEGITMFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50565765923970351)
,p_query_column_id=>45
,p_column_alias=>'NEGITMFK1'
,p_column_display_sequence=>49
,p_column_heading=>'Negitmfk1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'NEGITMFK1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50566071080970392)
,p_query_column_id=>46
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>50
,p_column_heading=>'Costrate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COSTRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50566485205970392)
,p_query_column_id=>47
,p_column_alias=>'SALEPERC'
,p_column_display_sequence=>51
,p_column_heading=>'Saleperc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SALEPERC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52527043801553779)
,p_query_column_id=>48
,p_column_alias=>'Stockqty'
,p_column_display_sequence=>38
,p_column_heading=>'Stock<br>Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52527436335553779)
,p_query_column_id=>49
,p_column_alias=>'Recvqty'
,p_column_display_sequence=>40
,p_column_heading=>'Receive<br>Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52527792370553779)
,p_query_column_id=>50
,p_column_alias=>'Suggslrate'
,p_column_display_sequence=>23
,p_column_heading=>'Suggested<br>Sale Rate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52528223189553779)
,p_query_column_id=>51
,p_column_alias=>'Mark'
,p_column_display_sequence=>41
,p_column_heading=>'<input id="tcheckbox" type="checkbox" name="tcheckbox" />'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_inline_lov=>'STATIC:Yes;Y,No;N'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_column_comment=>'<input type="checkbox" #Mark# value="#ROWNUM#" name="f50" id="f50_#ROWNUM#"/>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52107232723725480)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(50547215053969964)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50978996187286397)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>25
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52196169752568124)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>45
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62394747504853245)
,p_plug_name=>'docnumer show'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>55
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
' ',
'  function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=Estimation_item_check'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
' ',
'  }',
'   ',
'</script>',
'CHECKBOX List:',
' ',
'<div id="checkListDisp">&ESTIMATION_ITEM_LIST.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51081694940717056)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(52196169752568124)
,p_button_name=>'ADD_ROW1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BELOW_BOX'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50581407306970571)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50581230567970571)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52208821240919440)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Parts'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGITM',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P110_SERVNO',
'    and DOCNUMBR=:P110_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(55905251941969284)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGITM',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P110_SERVNO',
'    and DOCNUMBR=:P110_NEXTESTIMATION;',
'if  v_cunt  > 0 then',
'return true;',
'else ',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50581078314970571)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50581326355970571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(62523000745294620)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(50547215053969964)
,p_button_name=>'TRANSFER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Transfer'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50615699134971122)
,p_branch_action=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:110::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52208821240919440)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(59962947710301876)
,p_branch_name=>'pagid pass'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_PAGEID:1'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52208821240919440)
,p_branch_sequence=>11
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(60057407916767396)
,p_branch_name=>'clear page'
,p_branch_action=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:110::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(55905251941969284)
,p_branch_sequence=>21
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51082110838717062)
,p_name=>'P110_P_DOCNUMBR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_item_default=>'&P129_E_DOCNUMBR.'
,p_prompt=>'P docnumbr'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51082488982717073)
,p_name=>'P110_P_DOCTTYPE'
,p_item_sequence=>270
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P docttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51082908619717073)
,p_name=>'P110_P_SUBTTYPE'
,p_item_sequence=>280
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51083338612717073)
,p_name=>'P110_P_NEGMASPK'
,p_item_sequence=>290
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P negmaspk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51083729731717075)
,p_name=>'P110_P_ITEMCODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_prompt=>'P itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51084096612717075)
,p_name=>'P110_P_UNITOFMESURE'
,p_item_sequence=>380
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P unitofmesure'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51084492786717075)
,p_name=>'P110_P_ITEMDESC'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_prompt=>'P itemdesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51084922097717076)
,p_name=>'P110_P_BRAND'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_prompt=>'P brand'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51085324297717076)
,p_name=>'P110_P_MODAL'
,p_item_sequence=>410
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P modal'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51085693342717076)
,p_name=>'P110_P_ISSUMTHD'
,p_item_sequence=>420
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_item_default=>'&TEMPORARY_APPLICATION_ITEM.'
,p_prompt=>'P issumthd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51086069416717076)
,p_name=>'P110_P_ROWNUM'
,p_item_sequence=>430
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P Rownum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51086524386717076)
,p_name=>'P110_P_NEGITMPK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'P negitmpk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51086914078717078)
,p_name=>'P110_P_SERLNUMB'
,p_item_sequence=>460
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P serlnumb'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51087346899717078)
,p_name=>'P110_P_ITEMTYPE'
,p_item_sequence=>470
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P itemtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51087702205717078)
,p_name=>'P110_P_ITEMRATE'
,p_item_sequence=>480
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P itemrate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51088119095717078)
,p_name=>'P110_P_CURRCODE'
,p_item_sequence=>490
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P currcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51088561947717080)
,p_name=>'P110_P_EXCGRATE'
,p_item_sequence=>500
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P excgrate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51088881909717081)
,p_name=>'P110_P_COSTCODE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_item_default=>'&P129_COSTCODE.'
,p_prompt=>'P costcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51089273169717081)
,p_name=>'P110_P_STATUSCD'
,p_item_sequence=>520
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'P statuscd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51089685812717081)
,p_name=>'P110_P_DOCTDATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52111289022003285)
,p_name=>'P110_COMPCODE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_item_default=>'&P129_COMPCODE.'
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52196469371568127)
,p_name=>'P110_SERVNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_SRVCNOFK.'
,p_prompt=>'Service No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52196948588568129)
,p_name=>'P110_WARCD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_item_default=>'&P129_WARCD.'
,p_prompt=>'Warecode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52197279889568129)
,p_name=>'P110_SERDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'Service Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52197719735568129)
,p_name=>'P110_RGSNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'Registration No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52198134976568129)
,p_name=>'P110_CHASNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'Chasis No.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52198524461568129)
,p_name=>'P110_S_SRVCNOPK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'Srvcnopk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52198887278568129)
,p_name=>'P110_ROWID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52862973915782380)
,p_name=>'P110_C_NEGMASPK'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(52196169752568124)
,p_prompt=>'C negmaspk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53583456121405647)
,p_name=>'P110_SALERATE'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_prompt=>'Salerate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53583709317416620)
,p_name=>'P110_STOCKQTY'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_prompt=>'Stockqty'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53664180689637833)
,p_name=>'P110_BATCHNUM'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_prompt=>'Batchnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53892530478299289)
,p_name=>'P110_DISCPCNT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(52107232723725480)
,p_item_default=>'100'
,p_prompt=>'Discpcnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54690224070062158)
,p_name=>'P110_NEXTESTIMATION'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEXTESTIMATION.'
,p_prompt=>'Estimation'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54704544297227054)
,p_name=>'P110_NEGITMFK'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_NEGMASPK.'
,p_prompt=>'Negitmfk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54738337818368006)
,p_name=>'P110_ESTIMATIONDETAILS'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimation Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOPK d ',
'from nmservce',
'where SRVCNOPK=:P110_SERVNO;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE||'' / ''||SRVCNOFK||'' / ''||NEGMASPK d ',
'from nmnegmas',
'where NEGMASPK=:P110_NEGITMFK',
'and SRVCNOFK=:P110_SERVNO;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54744507820681630)
,p_name=>'P110_SRVCNOFK'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P129_SRVCNOFK.'
,p_prompt=>'Srvcnofk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59797140793887115)
,p_name=>'P110_NEGMASPK_MAS'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Negmaspk Mas'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59797460205887118)
,p_name=>'P110_DOCNUMBR_MAS'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_prompt=>'Docnumbr Mas'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59797774736887118)
,p_name=>'P110_ESTJOBNO_MAS'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_prompt=>'Estjobno Mas'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60118483289326979)
,p_name=>'P110_TEST'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(50547215053969964)
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52202030840652171)
,p_computation_sequence=>10
,p_computation_item=>'P129_SRVCNOFK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_SRVCNOFK.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52202844508677167)
,p_computation_sequence=>10
,p_computation_item=>'P129_WARCD'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_WARCD.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52203784470690892)
,p_computation_sequence=>10
,p_computation_item=>'P129_E_DOCTDATE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_E_DOCTDATE.'
,p_computation_error_message=>'no date'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(52208122865896338)
,p_computation_sequence=>10
,p_computation_item=>'P129_COMPCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COMPCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(53890806164204105)
,p_computation_sequence=>10
,p_computation_item=>'P129_COSTCODE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_COSTCODE.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(54691932120142455)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEXTESTIMATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEXTESTIMATION.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(54704246002218840)
,p_computation_sequence=>10
,p_computation_item=>'P129_NEGMASPK'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_NEGMASPK.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(65358376128318154)
,p_computation_sequence=>10
,p_computation_item=>'P129_DOCNUMBR'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P129_DOCNUMBR.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53410127874228620)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison costrate and salerate  validation for insert'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f26.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f26 (i);',
'item := apex_application.g_f19 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53582185553369740)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'ITEMCODE validation for insert'
,p_validation_sequence=>40
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53582563643373728)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'ORGNQNTY validation for insert'
,p_validation_sequence=>50
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53582798149376726)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'BATCHNUM validation for insert'
,p_validation_sequence=>60
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53583077318380523)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'SALERATE validation for insert'
,p_validation_sequence=>70
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53713113890866039)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison discount percent with 100 for insert'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'discprcnt VARCHAR2 (4000);',
'disamount number;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f28.COUNT',
'   LOOP',
'    ',
'discprcnt := apex_application.g_f28 (i);',
'disamount := :P110_DISCPCNT;',
'if discprcnt > disamount then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Discount Percent cannot be gater than 100''',
'            || discprcnt ',
'            ||''>'' ',
'            || disamount ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'DISCPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(53894063860417482)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison Stock Qunatiy and Sale Quantity  validation for insert'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'stckqty NUMBER;',
'salqty NUMBER;',
'qty    NUMBER := 0;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f37.COUNT',
'   LOOP',
'    ',
'stckqty := apex_application.g_f37 (i);',
'salqty := apex_application.g_f24 (i);',
'if stckqty < salqty then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Stock Quantity not available''',
'            || stckqty ',
'            ||''>'' ',
'            || salqty ;',
'end if;',
'if salqty = 0 then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Quantity Cannot be ''',
'            || stckqty;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56063067495312921)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison costrate and salerate  validation for update'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f26.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f26 (i);',
'item := apex_application.g_f19 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56063450942315765)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'ITEMCODE validation for update'
,p_validation_sequence=>110
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56063699119318264)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'ORGNQNTY validation for update'
,p_validation_sequence=>120
,p_validation=>'ORGNQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56063984669320745)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'BATCHNUM validation for update'
,p_validation_sequence=>130
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56064355227323068)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'SALERATE validation for update'
,p_validation_sequence=>140
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56064583439325595)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison discount percent with 100 for update'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'discprcnt VARCHAR2 (4000);',
'disamount number;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f28.COUNT',
'   LOOP',
'    ',
'discprcnt := apex_application.g_f28 (i);',
'disamount := :P110_DISCPCNT;',
'if discprcnt > disamount then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Discount Percent cannot be gater than 100''',
'            || discprcnt ',
'            ||''>'' ',
'            || disamount ;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'DISCPCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(56064940569335832)
,p_tabular_form_region_id=>wwv_flow_api.id(50547215053969964)
,p_validation_name=>'Comparison Stock Qunatiy and Sale Quantity  validation for update'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'stckqty NUMBER;',
'salqty NUMBER;',
'qty    NUMBER := 0;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f37.COUNT',
'   LOOP',
'    ',
'stckqty := apex_application.g_f37 (i);',
'salqty := apex_application.g_f24 (i);',
'if stckqty < salqty then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Stock Quantity not available''',
'            || stckqty ',
'            ||''>'' ',
'            || salqty ;',
'end if;',
'if salqty = 0 then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Quantity Cannot be ''',
'            || stckqty;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ORGNQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50674843979088811)
,p_name=>'add rows javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50675233184089778)
,p_event_id=>wwv_flow_api.id(50674843979088811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=6; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51211993529943980)
,p_name=>'change on itemcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_P_ITEMCODE'
,p_condition_element=>'P110_P_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51212460601943980)
,p_event_id=>wwv_flow_api.id(51211993529943980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P110_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P110_UNITOFMESURE,:P110_ITEMDESC,:P110_BRAND,:P110_MODAL,:P110_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P110_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P110_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P110_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P110_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P110_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P110_ITEMCODE1 IS NOT NULL and :P110_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P110_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :P110_docnumbr1 AND s.itemcode = :P110_itemcode1',
'     AND S.ITEMCODE=e.ITEMCODE',
'AND S.DOCNUMBR=e.UPDOCNUM',
'AND NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P110_ITEMCODE,P110_WARECODE,P110_ITEMCODE1,P110_DOCNUMBR1'
,p_attribute_03=>'P110_UNITOFMESURE,P110_ITEMDESC,P110_BRAND,P110_MODAL,P110_SALPRICE,P110_ISSUMTHD,P110_CLOSINGBALANCE,P110_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52108068340797832)
,p_name=>'item description assign'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_P_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52108547308797834)
,p_event_id=>wwv_flow_api.id(52108068340797832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P110_P_ITEMCODE is not null then',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P110_P_UNITOFMESURE,:P110_P_ITEMDESC,:P110_P_BRAND,:P110_P_MODAL,:P110_P_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :P110_COMPCODE',
'            AND ITEMCODE = :P110_P_ITEMCODE;',
' end if;       ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'END;',
'',
'  BEGIN',
'if :P110_P_ITEMCODE is not null then',
'select distinct SALERATE',
'into :P110_SALERATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:P110_COMPCODE',
'and ITEMCODE= :P110_P_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:P110_COMPCODE',
'and ITEMCODE= :P110_P_ITEMCODE;',
'end if;        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P110_SALERATE :=''NO'';',
' WHEN too_many_rows',
'         THEN',
'             :P110_SALERATE :=''TOO'';',
' WHEN others',
'         THEN',
'              :P110_SALERATE :=''Others'';',
'      END;'))
,p_attribute_02=>'P110_P_ITEMCODE,P110_COMPCODE'
,p_attribute_03=>'P110_P_UNITOFMESURE,P110_P_ITEMDESC,P110_P_BRAND,P110_P_MODAL,P110_P_ISSUMTHD,P110_SALERATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53408184746211145)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53408591156211161)
,p_event_id=>wwv_flow_api.id(53408184746211145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f08"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f08"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f08"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f16"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f16"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f16"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f22"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f22"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f22"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f33"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f33"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f33"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f37"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f37"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f37"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f39"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f39"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f39"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53664387731665470)
,p_name=>'Change on batchnum on tabular item'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_BATCHNUM'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53664770270665473)
,p_event_id=>wwv_flow_api.id(53664387731665470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   IF :P110_BATCHNUM IS NOT NULL',
'   THEN',
'      BEGIN',
'           SELECT DISTINCT SUM (clbalqty) clsbln',
'             INTO :P110_STOCKQTY',
'             FROM nmitemas a, nmwhimas b',
'            WHERE     a.compcode = :P110_COMPCODE',
'                  AND b.compcode = a.compcode',
'                  AND a.statuscd = ''ACT''',
'                  AND a.itemcode = b.itemcode',
'                  AND NVL (a.finishgd, ''N'') = ''Y''',
'                  AND b.warecode = :P110_WARCD',
'                  AND b.itemcode = :P110_P_ITEMCOD',
'                  AND b.BATCHNUM = :P110_BATCHNUM',
'                  AND NVL (b.clbalqty, 0) > 0',
'         GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            :P110_STOCKQTY:=0;',
'         WHEN TOO_MANY_ROWS',
'         THEN',
'            NULL;',
'         WHEN OTHERS',
'         THEN',
'            NULL;',
'      END;',
'   END IF;',
'END;'))
,p_attribute_02=>'P110_BATCHNUM,P110_COMPCODE,P110_WARCD,P110_P_ITEMCOD'
,p_attribute_03=>'P110_STOCKQTY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54022905071983684)
,p_name=>'Check All'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54023362735983686)
,p_event_id=>wwv_flow_api.id(54022905071983684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_SERVNO'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#tcheckbox'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f40_NOSUBMIT]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f40_NOSUBMIT]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54744696119694294)
,p_name=>'change on service no'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54745104180694300)
,p_event_id=>wwv_flow_api.id(54744696119694294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P110_SRVCNOFK:=:P110_SERVNO;',
'end;'))
,p_attribute_02=>'P110_SERVNO'
,p_attribute_03=>'P110_SRVCNOFK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50600312146970907)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMNEGITM'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(50581230567970571)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50600676189970941)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMNEGITM'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59826798821138313)
,p_process_sequence=>25
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'v_cunt1 number;',
'BEGIN',
'select count(DOCNUMBR) into v_cunt from nmnegmas',
'where NEGMASPK=(select distinct NEGITMFK from nmnegitm',
'where ITEMCODE=:P110_P_ITEMCODE',
'and SRVCNOFK=:P110_SERVNO',
'and DOCNUMBR=:P110_NEXTESTIMATION);',
'select ',
'count(distinct DOCNUMBR) docnum into v_cunt1',
'from NMNEGMAS',
'where SRVCNOFK=:P110_SERVNO',
'and DOCNUMBR=:P110_NEXTESTIMATION;',
'if v_cunt1=0 then',
'if v_cunt=0 and :P110_P_ITEMCODE is not null then',
'   INSERT INTO nmnegmas (COMPCODE,',
'                         DOCTTYPE,',
'                         SUBTTYPE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         RAISEDBY,',
'                         APPRVDBY,',
'                         APPRDATE,',
'                         UPDOCTYP,',
'                         UPSUBTYP,',
'                         UPDOCNUM,',
'                         UPDOCDTE,',
'                         UPDOCSRL,',
'                         DWDOCTYP,',
'                         DWSUBTYP,',
'                         DWDOCNUM,',
'                         DWDOCDTE,',
'                         DWDOCSRL,',
'                         REMARKSS,',
'                         POSTFLAG,',
'                         PRNTFLAG,',
'                         STATUSCD,',
'                         OPRSTAMP,',
'                         TIMSTAMP,',
'                         COMPLETE,',
'                         APRVFLAG,',
'                         ESTJOBNO,',
'                         SRVCNOFK,',
'                         ADITIONL,',
'                         NEGMASPK,',
'                         TOTCHARG,',
'                         TOTPAMNT,',
'                         TOTALVAT,',
'                         BILLNOFK,',
'                         MODIFYDT)',
'        VALUES (:P110_COMPCODE,',
'                ''ES'',',
'                1,',
'                :P110_DOCNUMBR_MAS,',
'                TRUNC(SYSDATE),',
'                :APP_USER,',
'                :APP_USER,',
'                SYSDATE,',
'                :P110_DOCTTYPE,',
'                :P110_SUBTTYPE,',
'                :P110_DOCNUMBR,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                :APP_USER,',
'                SYSDATE,',
'                NULL,',
'                NULL,',
'                :P110_ESTJOBNO_MAS,',
'                :P110_SERVNO,',
'                NULL,',
'                :P110_NEGMASPK_MAS,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL,',
'                NULL);',
'',
'end if;',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52208821240919440)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52209529585976939)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmnegitm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'',
'INSERT INTO nmnegitm',
'                  (negitmpk, compcode, docttype,',
'                   subttype, DOCNUMBR,',
'                   doctdate, serlnumb,',
'                   partycde, raisedby, apprvdby, apprdate, reqddate,',
'                   commcode, itemcode, itemtype, mcserial, cmserial,',
'                   itemdesc, itemlong,',
'                   itemrate, discpcnt,',
'                   discamnt, spldispc, spldisnt,',
'                   salerate, huomcode,',
'                   factrval, luomcode,',
'                   orgnqnty, apprqnty, trnsqnty, trnsqty2, msfcamnt,',
'                   currcode, excgrate, mslcamnt, adjamtlc, refnumbr,',
'                   refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                   updocsrl, dwdoctyp, dwsubtyp, dwdocnum, dwdocdte,',
'                   dwdocsrl, acdoctyp, acsubtyp, acdocnum, acdocdte,',
'                   acdocsrl, remarkss, costcode, warecode, postflag,',
'                   prntflag, pricflag, printcnt, balnflag, ratvflag,',
'                   statuscd, tcstpcnt, divncode, technicn, engineer,',
'                   amendsrl, matltype, boqrefer, mfrgdate, mfrgtime,',
'                   parntitm, indtflag, oprstamp, timstamp,',
'                   batchnum, batchexp, batchdte, normrate, custacpt,',
'                   aditionl, custaprv, addicode, srvcnofk, negitmfk,',
'                   negitmfk1, costrate, avrgrate, saleperc, modifydt',
'                  )',
'           VALUES (:NEGITMPK, :COMPCODE, :DOCTTYPE,',
'                   :subttype, :P110_NEXTESTIMATION,',
'                   :DOCTDATE , :serlnumb ,',
'                   NULL, :app_user, NULL, :DOCTDATE, :DOCTDATE,',
'                   NULL, :itemcode , ''S'', NULL, NULL,',
'                   :itemdesc , :itemdesc,',
'                   :salerate , :discpcnt ,',
'                  :discamnt , NULL, NULL,',
'                   :salerate, :huomcode ,',
'                   NULL, :huomcode ,',
'                   :orgnqnty , :orgnqnty, NULL, NULL, :msfcamnt,',
'                   ''BDT'', 1, :msfcamnt, NULL, :P129_DOCNUMBR,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, :P110_P_COSTCODE, :P110_WARCD, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   ''NEW'', NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, :app_user, SYSDATE,',
'                   :batchnum , NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, :P110_SERVNO, :P110_NEGMASPK_MAS,',
'                   NULL, :salerate, NULL, NULL, NULL',
'                  );',
'',
' ',
'commit;',
'  END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Insert successfully......'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  BEGIN',
'  for i in 1..apex_application.g_f05.count loop ',
'INSERT INTO nmnegitm',
'                  (negitmpk, compcode, docttype,',
'                   subttype, docnumbr,',
'                   doctdate, serlnumb,',
'                   partycde, raisedby, apprvdby, apprdate, reqddate,',
'                   commcode, itemcode, itemtype, mcserial, cmserial,',
'                   itemdesc, itemlong,',
'                   itemrate, discpcnt,',
'                   discamnt, spldispc, spldisnt,',
'                   salerate, huomcode,',
'                   factrval, luomcode,',
'                   orgnqnty, apprqnty, trnsqnty, trnsqty2, msfcamnt,',
'                   currcode, excgrate, mslcamnt, adjamtlc, refnumbr,',
'                   refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                   updocsrl, dwdoctyp, dwsubtyp, dwdocnum, dwdocdte,',
'                   dwdocsrl, acdoctyp, acsubtyp, acdocnum, acdocdte,',
'                   acdocsrl, remarkss, costcode, warecode, postflag,',
'                   prntflag, pricflag, printcnt, balnflag, ratvflag,',
'                   statuscd, tcstpcnt, divncode, technicn, engineer,',
'                   amendsrl, matltype, boqrefer, mfrgdate, mfrgtime,',
'                   parntitm, indtflag, oprstamp, timstamp,',
'                   batchnum, batchexp, batchdte, normrate, custacpt,',
'                   aditionl, custaprv, addicode, srvcnofk, negitmfk,',
'                   negitmfk1, costrate, avrgrate, saleperc, modifydt',
'                  )',
'           VALUES (:P110_P_NEGITMPK, :COMPCODE, :DOCTTYPE,',
'                   :subttype, :DOCNUMBR,',
'                   :DOCTDATE , :serlnumb ,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, :itemcode , ''S'', NULL, NULL,',
'                   :itemdesc , :itemdesc,',
'                   :salerate , :discpcnt ,',
'                  :discamnt , NULL, NULL,',
'                   :salerate, :huomcode ,',
'                   NULL, :huomcode ,',
'                   :orgnqnty , NULL, NULL, NULL, NULL,',
'                   ''BDT'', 1, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, ''003'', ''E01'', NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   ''APR'', NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, :app_user, SYSDATE,',
'                   :batchnum , NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL,',
'                   NULL, NULL, NULL, NULL, NULL',
'                  );',
'end loop;',
' ',
'commit;',
'  END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(55905523940975036)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmnegitm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_negitmpk   NUMBER;',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'   LOOP',
'      DECLARE',
'         CURSOR v_cur',
'         IS',
'            SELECT NEGITMPK',
'              FROM nmnegitm',
'             WHERE NEGITMPK = APEX_APPLICATION.g_f02 (i);',
'',
'         v_negitmpk1   NUMBER;',
'         v_app_pk      VARCHAR2 (20);',
'      BEGIN',
'         FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'         LOOP',
'            OPEN v_cur;',
'',
'            FETCH v_cur INTO v_negitmpk1;',
'',
'            CLOSE v_cur;',
'',
'            IF APEX_APPLICATION.g_f02 (i) = v_negitmpk1',
'            THEN',
'            :P110_TEST:=APEX_APPLICATION.g_f08 (i);',
'               UPDATE nmnegitm',
'                  SET negitmpk = APEX_APPLICATION.g_f02 (i),',
'                      compcode = :compcode,',
'                      docttype = :docttype,',
'                      subttype = :subttype,',
'                      docnumbr = :docnumbr,',
'                      doctdate = :doctdate,',
'                      serlnumb = APEX_APPLICATION.g_f08 (i),',
'                      partycde = :partycde,',
'                      raisedby = :APP_USER,',
'                      apprvdby = :APP_USER,',
'                      apprdate = :apprdate,',
'                      reqddate = :reqddate,',
'                      commcode = :commcode,',
'                      itemcode = APEX_APPLICATION.g_f14 (i),',
'                      itemtype = APEX_APPLICATION.g_f15 (i),',
'                      itemdesc = APEX_APPLICATION.g_f16 (i),',
'                      itemlong = APEX_APPLICATION.g_f16 (i),',
'                      itemrate = APEX_APPLICATION.g_f19 (i),',
'                      discpcnt = APEX_APPLICATION.g_f28 (i),',
'                      discamnt = APEX_APPLICATION.g_f30 (i),',
'                      salerate = APEX_APPLICATION.g_f26 (i),',
'                      huomcode = APEX_APPLICATION.g_f20 (i),',
'                      factrval = :factrval,',
'                      luomcode = APEX_APPLICATION.g_f20 (i),',
'                      orgnqnty = APEX_APPLICATION.g_f24 (i),',
'                      msfcamnt = APEX_APPLICATION.g_f33 (i),',
'                      currcode = APEX_APPLICATION.g_f29 (i),',
'                      excgrate = APEX_APPLICATION.g_f31 (i),',
'                      mslcamnt = APEX_APPLICATION.g_f33 (i),',
'                      remarkss = :remarkss,',
'                      costcode = APEX_APPLICATION.g_f36 (i),',
'                      warecode = APEX_APPLICATION.g_f38 (i),',
'                      postflag = :postflag,',
'                      statuscd = APEX_APPLICATION.g_f40 (i),',
'                      tcstpcnt = :tcstpcnt,',
'                      boqrefer = APEX_APPLICATION.g_f41 (i),',
'                      oprstamp = :APP_USER,',
'                      timstamp = SYSDATE,',
'                      batchnum = APEX_APPLICATION.g_f18 (i),',
'                      srvcnofk = :P110_SRVCNOFK,',
'                      negitmfk = :negitmfk,',
'                      costrate = :costrate',
'                WHERE     NEGITMFK = :P110_NEGITMFK',
'                      AND SRVCNOFK = :P110_SRVCNOFK',
'                      AND negitmpk = APEX_APPLICATION.g_f02 (i)',
'                      AND serlnumb = APEX_APPLICATION.g_f08 (i);',
'            END IF;',
'         END LOOP;',
'      END;',
'',
'      ',
'   END LOOP;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'      COMMIT;',
'END;',
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'   LOOP',
'      DECLARE',
'         CURSOR v_cur1',
'         IS',
'            SELECT NEGITMPK',
'              FROM nmnegitm',
'             WHERE NEGITMPK = APEX_APPLICATION.g_f02 (i);',
'',
'         v_negitmpk2   NUMBER;',
'         v_app_pk      VARCHAR2 (20);',
'      BEGIN',
'         FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'         LOOP',
'            OPEN v_cur1;',
'',
'            FETCH v_cur1 INTO v_negitmpk2;',
'',
'            CLOSE v_cur1;',
'',
'            IF APEX_APPLICATION.g_f02 (i) <> v_negitmpk2',
'            THEN',
'               INSERT INTO nmnegitm (negitmpk,',
'                                     compcode,',
'                                     docttype,',
'                                     subttype,',
'                                     docnumbr,',
'                                     doctdate,',
'                                     serlnumb,',
'                                     partycde,',
'                                     raisedby,',
'                                     apprvdby,',
'                                     apprdate,',
'                                     reqddate,',
'                                     commcode,',
'                                     itemcode,',
'                                     itemtype,',
'                                     mcserial,',
'                                     cmserial,',
'                                     itemdesc,',
'                                     itemlong,',
'                                     itemrate,',
'                                     discpcnt,',
'                                     discamnt,',
'                                     spldispc,',
'                                     spldisnt,',
'                                     salerate,',
'                                     huomcode,',
'                                     factrval,',
'                                     luomcode,',
'                                     orgnqnty,',
'                                     apprqnty,',
'                                     trnsqnty,',
'                                     trnsqty2,',
'                                     msfcamnt,',
'                                     currcode,',
'                                     excgrate,',
'                                     mslcamnt,',
'                                     adjamtlc,',
'                                     refnumbr,',
'                                     refndate,',
'                                     updoctyp,',
'                                     upsubtyp,',
'                                     updocnum,',
'                                     updocdte,',
'                                     updocsrl,',
'                                     dwdoctyp,',
'                                     dwsubtyp,',
'                                     dwdocnum,',
'                                     dwdocdte,',
'                                     dwdocsrl,',
'                                     acdoctyp,',
'                                     acsubtyp,',
'                                     acdocnum,',
'                                     acdocdte,',
'                                     acdocsrl,',
'                                     remarkss,',
'                                     costcode,',
'                                     warecode,',
'                                     postflag,',
'                                     prntflag,',
'                                     pricflag,',
'                                     printcnt,',
'                                     balnflag,',
'                                     ratvflag,',
'                                     statuscd,',
'                                     tcstpcnt,',
'                                     divncode,',
'                                     technicn,',
'                                     engineer,',
'                                     amendsrl,',
'                                     matltype,',
'                                     boqrefer,',
'                                     mfrgdate,',
'                                     mfrgtime,',
'                                     parntitm,',
'                                     indtflag,',
'                                     oprstamp,',
'                                     timstamp,',
'                                     batchnum,',
'                                     batchexp,',
'                                     batchdte,',
'                                     normrate,',
'                                     custacpt,',
'                                     aditionl,',
'                                     custaprv,',
'                                     addicode,',
'                                     srvcnofk,',
'                                     negitmfk,',
'                                     negitmfk1,',
'                                     costrate,',
'                                     avrgrate,',
'                                     saleperc,',
'                                     modifydt)',
'                    VALUES (:NEGITMPK,',
'                            :COMPCODE,',
'                            :DOCTTYPE,',
'                            :subttype,',
'                            :DOCNUMBR,',
'                            :DOCTDATE,',
'                            :serlnumb,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :itemcode,',
'                            ''S'',',
'                            NULL,',
'                            NULL,',
'                            :itemdesc,',
'                            :itemdesc,',
'                            :salerate,',
'                            :discpcnt,',
'                            :discamnt,',
'                            NULL,',
'                            NULL,',
'                            :salerate,',
'                            :huomcode,',
'                            NULL,',
'                            :huomcode,',
'                            :orgnqnty,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :msfcamnt,',
'                            ''BDT'',',
'                            1,',
'                            :msfcamnt,',
'                            NULL,',
'                            :P129_DOCNUMBR,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :P110_P_COSTCODE,',
'                            :P110_WARCD,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            ''APR'',',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :app_user,',
'                            SYSDATE,',
'                            :batchnum,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            :P110_SERVNO,',
'                            :P110_NEGITMFK,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL,',
'                            NULL);',
'            END IF;',
'         END LOOP;',
'      END;',
'   END LOOP;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'      COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(55905251941969284)
,p_process_when=>'P110_NEGITMFK'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Update Successfully...........'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'for i in 1..apex_application.g_f02.count loop  ',
'   UPDATE nmnegitm',
'      SET negitmpk = apex_application.g_f02(i),',
'          compcode = :compcode,',
'          docttype = :docttype,',
'          subttype = :subttype,',
'          docnumbr = :docnumbr,',
'          doctdate = :doctdate,',
'          serlnumb = apex_application.g_f08(i),',
'          partycde = :partycde,',
'          raisedby = :raisedby,',
'          apprvdby = :apprvdby,',
'          apprdate = :apprdate,',
'          reqddate = :reqddate,',
'          commcode = :commcode,',
'          itemcode = apex_application.g_f14(i),',
'          itemtype = :itemtype,',
'          mcserial = :mcserial,',
'          cmserial = :cmserial,',
'          itemdesc = apex_application.g_f16(i),',
'          itemlong = apex_application.g_f16(i),',
'          itemrate = :itemrate,',
'          discpcnt = apex_application.g_f28(i),',
'          discamnt = apex_application.g_f30(i),',
'          spldispc = :spldispc,',
'          spldisnt = :spldisnt,',
'          salerate = apex_application.g_f26(i),',
'          huomcode = apex_application.g_f20(i),',
'          factrval = :factrval,',
'          luomcode = apex_application.g_f20(i),',
'          orgnqnty = apex_application.g_f24(i),',
'          apprqnty = :apprqnty,',
'          trnsqnty = :trnsqnty,',
'          trnsqty2 = :trnsqty2,',
'          msfcamnt = apex_application.g_f33(i),',
'          currcode = :currcode,',
'          excgrate = :excgrate,',
'          mslcamnt = apex_application.g_f33(i),',
'          adjamtlc = :adjamtlc,',
'          refnumbr = :refnumbr,',
'          refndate = :refndate,',
'          updoctyp = :updoctyp,',
'          upsubtyp = :upsubtyp,',
'          updocnum = :updocnum,',
'          updocdte = :updocdte,',
'          updocsrl = :updocsrl,',
'          dwdoctyp = :dwdoctyp,',
'          dwsubtyp = :dwsubtyp,',
'          dwdocnum = :dwdocnum,',
'          dwdocdte = :dwdocdte,',
'          dwdocsrl = :dwdocsrl,',
'          acdoctyp = :acdoctyp,',
'          acsubtyp = :acsubtyp,',
'          acdocnum = :acdocnum,',
'          acdocdte = :acdocdte,',
'          acdocsrl = :acdocsrl,',
'          remarkss = :remarkss,',
'          costcode = :costcode,',
'          warecode = :warecode,',
'          postflag = :postflag,',
'          prntflag = :prntflag,',
'          pricflag = :pricflag,',
'          printcnt = :printcnt,',
'          balnflag = :balnflag,',
'          ratvflag = :ratvflag,',
'          statuscd = :statuscd,',
'          tcstpcnt = :tcstpcnt,',
'          divncode = :divncode,',
'          technicn = :technicn,',
'          engineer = :engineer,',
'          amendsrl = :amendsrl,',
'          matltype = :matltype,',
'          boqrefer = :boqrefer,',
'          mfrgdate = :mfrgdate,',
'          mfrgtime = :mfrgtime,',
'          parntitm = :parntitm,',
'          indtflag = :indtflag,',
'          oprstamp = :oprstamp,',
'          timstamp = :timstamp,',
'          batchnum = apex_application.g_f18(i),',
'          batchexp = :batchexp,',
'          batchdte = :batchdte,',
'          normrate = :normrate,',
'          custacpt = :custacpt,',
'          aditionl = :aditionl,',
'          custaprv = :custaprv,',
'          addicode = :addicode,',
'          srvcnofk = :srvcnofk,',
'          negitmfk = :negitmfk,',
'          negitmfk1 = :negitmfk1,',
'          costrate = :costrate,',
'          avrgrate = :avrgrate,',
'          saleperc = :saleperc,',
'          modifydt = :modifydt',
'    WHERE NEGITMFK = :P110_NEGITMFK ',
'    AND SRVCNOFK = :P110_SERVNO',
'    and negitmpk = apex_application.g_f02(i)',
'    and serlnumb = apex_application.g_f08(i);',
'end loop',
'   COMMIT;',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62523352270312484)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update nmnegitm'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f17.COUNT',
'    LOOP',
'        APEX_Application.g_f17(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f17(APEX_Application.g_f30(ii)) := ''APR'';',
'    END LOOP;',
'END;',
'',
'DECLARE',
'',
'v_boqref varchar2(200);',
'BEGIN',
'select ''TRN''||LPAD(NVL(MAX(dfn_char2number(nvl(boqrefer,0)))+1,0),8,''0'') into v_boqref ',
'from nmnegitm',
'where negitmfk=136',
'and compcode=:compcode;',
'--and itemcode=:P129_ESTIMATION_ITEM;',
'',
'',
'update nmnegitm',
'set boqrefer=v_boqref ',
'where SRVCNOFK=:P110_SERVNO',
'and DOCNUMBR=''EST00001''',
'and NEGITMPK IN (to_number(replace(trim('':'' FROM :estimation_item_list) ,'':'','','')));',
'commit;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(62523000745294620)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'insert succe'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62678712105966944)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update BOQREFER colum'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_boqref   VARCHAR2 (200);',
'   vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'BEGIN',
'   SELECT ''TRN''',
'          || LPAD (NVL (MAX (dfn_char2number (NVL (boqrefer, 0))) + 1, 0),',
'                   8,',
'                   ''0'')',
'     INTO v_boqref',
'     FROM nmnegitm',
'    WHERE negitmfk = :P110_NEGITMFK AND compcode = :compcode;',
'',
'   --and itemcode=:P129_ESTIMATION_ITEM;',
'BEGIN',
'',
'   FOR j IN 1 .. APEX_APPLICATION.g_f40.COUNT',
'   LOOP',
'      FOR i IN 1 .. APEX_APPLICATION.g_f02.COUNT',
'      LOOP',
'         IF APEX_APPLICATION.g_f40 (j) = APEX_APPLICATION.g_f02 (i)',
'         THEN',
'            FOR k IN 1 .. APEX_APPLICATION.g_f41.COUNT',
'            LOOP',
'            vAccNo1  := APEX_APPLICATION.g_f41(k);',
'            FOR l IN 1 .. APEX_APPLICATION.g_f41.COUNT',
'            LOOP',
'            vAccNo2  := APEX_APPLICATION.g_f41(l);',
'',
'               IF vAccNo1 is null and vAccNo2 is null',
'               THEN',
'                  UPDATE nmnegitm',
'                     SET boqrefer = v_boqref',
'                   WHERE     NEGITMFK = :P110_NEGITMFK',
'                         AND SRVCNOFK = :P110_SERVNO',
'                         AND negitmpk = APEX_APPLICATION.g_f02 (i)',
'                         AND serlnumb = APEX_APPLICATION.g_f08 (i);',
'                   ELSE',
'                     RAISE_APPLICATION_ERROR(-20010,''Transfer Request is  found for All Item.You Cannot send Request Again.''||vAccNo1  );',
'                  ',
'               END IF;',
'             END LOOP;  ',
'            END LOOP;',
'         END IF;',
'      END LOOP;',
'   END LOOP;',
'  ',
'END;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(62523000745294620)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52848483173971885)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate negitmpk an negcrgpk'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' BEGIN',
'    SELECT 	NVL(MAX(negitmpk),0)+1 INTO :P110_P_NEGITMPK FROM NMNEGITM',
'	WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'begin',
'    ',
' 	SELECT 	NVL(MAX(negcrgpk),0) +1',
'	INTO :P110_C_NEGMASPK ',
'	  FROM NMNEGCRG',
'	 WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59827714375148743)
,p_process_sequence=>25
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*begin',
'     :COMPCODE:=:P110_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :OPRSTAMP := :APP_USER;',
'     :TIMSTAMP := SYSDATE;',
'  ',
'',
'end;*/',
'',
'BEGIN',
'if :P110_NEGITMFK is not null then',
'   :P110_NEGMASPK_MAS:=:P110_NEGITMFK;',
'    else ',
'     SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P110_NEGMASPK_MAS FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    end if;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'   ',
'    ',
'END;',
'',
'begin',
'--if :P129_FLAG =''A'' then',
':P110_DOCNUMBR_MAS:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P110_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'--end if;',
'end;',
'BEGIN',
'--if :P129_FLAG =''A'' then',
'--:P110_ESTJOBNO_MAS:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P110_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'--end if;',
':P110_ESTJOBNO_MAS:=NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52208821240919440)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52110483249989804)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert into NMNEGITM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P110_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :DOCNUMBR:=:P110_NEXTESTIMATION;',
'     :DOCTDATE:=:P110_P_DOCTDATE;',
'     :NEGITMFK:=:P110_NEGITMFK;',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53409002580218313)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular for insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f14.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f14(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f14.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f14(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Itemcode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(52208821240919440)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59847116213632990)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre update into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P110_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :DOCNUMBR:=:P110_NEXTESTIMATION;',
'     :DOCTDATE:=:P110_P_DOCTDATE;',
'     :NEGITMFK:=:P110_NEGITMFK;',
'   ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(57150995154453990)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(50547215053969964)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular for update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f14.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f14(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f14.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f14(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Itemcode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(55905251941969284)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
