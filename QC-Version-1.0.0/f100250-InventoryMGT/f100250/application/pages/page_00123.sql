prompt --application/pages/page_00123
begin
--   Manifest
--     PAGE: 00123
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
 p_id=>123
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Transfer for Service'
,p_step_title=>'Stock Transfer for Service'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function getBatchnoClosigqty(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P123_ITEMCODE'').value=',
'    html_GetElement(''f03_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P123_ITEMCODE'').trigger(''click'');',
'});',
'',
'}',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'',
'function clearBatch(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'    html_GetElement(''f05_''+vRow).value='''';',
'}'))
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard {',
'border:1px solid rgb(159, 160, 160);',
'}',
'',
'',
'.report-standard td.data {padding: 0px 0px !important;}',
'table.formlayout td {padding-bottom:0px !important;}',
'table {',
'border-collapse: collapse;',
'}',
'',
'    html_GetElement(''f06_''+vRow).value=document.getElementById(''P123_CLOSING_QTY'').value;',
'    document.getElementById(''P123_BATCHNO'').value= html_GetElement(''f05_''+vRow).value;',
'',
'function getBatchnoClosigqty(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'    document.getElementById(''P123_ITEMCODE'').value= html_GetElement(''f03_''+vRow).value;',
'    $(document).ready(function(){',
'        $(''#P123_ITEMCODE'').trigger(''click'');',
'    });',
'}',
''))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44987916684017295)
,p_plug_name=>'Stock Transfer Doc. Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44801322403903287)
,p_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(44987916684017295)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"E"."ROWID",',
'"E"."NEGITMPK",',
'"E"."COMPCODE",',
'"E"."DOCNUMBR",',
'"E"."SERLNUMB",',
'"E"."PARTYCDE",',
'"E"."RAISEDBY",',
'"E"."APPRVDBY",',
'"E"."APPRDATE",',
'"E"."REQDDATE",',
'"E"."COMMCODE",',
'"E"."ITEMCODE",',
'"E"."ITEMTYPE",',
'"E"."ITEMDESC",',
'"E"."ITEMRATE",',
'"E"."SALERATE",',
'"E"."HUOMCODE",',
'"E"."FACTRVAL",',
'"E"."LUOMCODE",',
'"E"."ORGNQNTY",',
'"E"."APPRQNTY",',
'"E"."TRNSQNTY",',
'"E"."MSFCAMNT",',
'"E"."CURRCODE",',
'"E"."EXCGRATE",',
'"E"."MSLCAMNT",',
'"E"."REFNUMBR",',
'"E"."REFNDATE",',
'"E"."REMARKSS",',
'"E"."COSTCODE",',
'"E"."WARECODE",',
'"E"."POSTFLAG",',
'"E"."STATUSCD",',
'"E"."TECHNICN",',
'"E"."ENGINEER",',
'"E"."BOQREFER",',
'"E"."OPRSTAMP",',
'"E"."TIMSTAMP",',
'"E"."BATCHNUM",',
'"E"."BATCHDTE",',
'"E"."NORMRATE",',
'"E"."SRVCNOFK",',
'"E"."NEGITMFK",',
'"E"."COSTRATE",',
'(SELECT s.clbalqty',
'  FROM nmbtrate r, nmwhimas s',
' WHERE r.itemcode = s.itemcode',
'   AND r.compcode = s.compcode',
'   AND r.warecode = s.warecode',
'   AND r.batchnum = s.batchnum',
'   AND r.itemcode = E.ITEMCODE',
'   AND r.warecode = e.warecode',
'   AND r.compcode = e.compcode',
'   AND TRUNC (r.batchdte) =',
'          (SELECT TRUNC (MAX (batchdte))',
'             FROM nmbtrate',
'            WHERE itemcode = E.ITEMCODE',
'              AND warecode = e.warecode',
'              AND compcode = e.compcode',
')) "CURRENT STOCK",',
'(select NVL (sum(distinct r.apprqnty), 0)- NVL (sum(m.trnsqnty), 0) apprqnty',
'  from  nmreqapr r,nmstkrec m',
' where   r.compcode= m.compcode(+)',
' and r.DOCNUMBR=m.REFNUMBR(+)',
'AND r.itemcode = m.ITEMCODE(+)',
'AND m.docttype(+) = ''IS''',
'and r.compcode= e.compcode',
'and  r.compcode=:COMPCODE',
' and r.UPDOCNUM=e.DOCNUMBR',
'and r.DOCNUMBR=e.REFNUMBR',
'and r.warecode=e.warecode',
'AND r.itemcode = E.ITEMCODE',
'group by m.docttype,m.itemcode,m.REFNUMBR,m.compcode) "Approved_Qty.",',
'(select NVL (sum(distinct r.apprqnty), 0)- NVL (sum(m.trnsqnty), 0) apprqnty',
'  from  nmreqapr r,nmstkrec m',
' where   r.compcode= m.compcode(+)',
' and r.DOCNUMBR=m.REFNUMBR(+)',
'AND r.itemcode = m.ITEMCODE(+)',
'AND m.docttype(+) = ''IS''',
'and r.compcode= e.compcode',
'and  r.compcode=:COMPCODE',
' and r.UPDOCNUM=e.DOCNUMBR',
'and r.DOCNUMBR=e.REFNUMBR',
'and r.warecode=e.warecode',
'AND r.itemcode = E.ITEMCODE',
'group by m.docttype,m.itemcode,m.REFNUMBR,m.compcode) "Approved_Qty1"',
'from "#OWNER#"."NMNEGITM" "E",(select e.docttype,e.itemcode,e.REFNUMBR,e.compcode,e.warecode,m.UPDOCNUM,NVL (sum(m.trnsqnty), 0) trnsqnty',
'  from  nmstkrec m,nmnegitm e',
' where    m.docttype(+) = ''IS''',
'and m.compcode(+)= e.compcode',
'and  m.compcode(+)=:COMPCODE',
'and m.REFNUMBR(+)=e.REFNUMBR',
'and m.warecode(+)=e.warecode',
'AND m.itemcode(+) = E.ITEMCODE',
'and e.REFNUMBR(+)=:REFNUMBR',
'group by e.docttype,e.itemcode,e.REFNUMBR,e.compcode,e.warecode,m.UPDOCNUM) S',
'where E.compcode=:compcode',
'and e.warecode=s.warecode(+)',
'AND e.itemcode = s.ITEMCODE(+)',
'AND s.docttype(+) = ''IS''',
'and E.docnumbr=:P123_ESTIMATION_NO',
'and E.doctdate=:P123_ESTIMATION_DATE',
'and E.REFNUMBR=:P123_SERVICE_NO',
'and E.warecode=:P123_WARE_CODE',
'and (nvl(e.apprqnty,0)-nvl(s.trnsqnty,0))>0',
'order by E.SERLNUMB',
''))
,p_ajax_items_to_submit=>'P123_ESTIMATION_NO,P123_ESTIMATION_DATE,P123_SERVICE_NO,P123_SERVICE_DATE,P123_WARE_CODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44868830763903353)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Check$01'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44802035221903295)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44802388387903295)
,p_query_column_id=>3
,p_column_alias=>'NEGITMPK'
,p_column_display_sequence=>15
,p_column_heading=>'Negitmpk'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'NEGITMPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44802814227903295)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44804064320903296)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>17
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44804832755903296)
,p_query_column_id=>6
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44805177208903296)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>18
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44805648345903296)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>19
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44805983845903300)
,p_query_column_id=>9
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>20
,p_column_heading=>'Apprvdby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44806406512903300)
,p_query_column_id=>10
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>21
,p_column_heading=>'Apprdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44806824401903300)
,p_query_column_id=>11
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>22
,p_column_heading=>'Reqddate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REQDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44807188279903300)
,p_query_column_id=>12
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>23
,p_column_heading=>'Commcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44807591683903300)
,p_query_column_id=>13
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Item Code'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>20
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44807992651903300)
,p_query_column_id=>14
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>24
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44808448700903300)
,p_query_column_id=>15
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44809255604903300)
,p_query_column_id=>16
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>25
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44809598111903300)
,p_query_column_id=>17
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>26
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44809978075903301)
,p_query_column_id=>18
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Huomcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44810419285903301)
,p_query_column_id=>19
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>28
,p_column_heading=>'Factrval'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'FACTRVAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44810814814903301)
,p_query_column_id=>20
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Luomcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44811252826903301)
,p_query_column_id=>21
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>8
,p_column_heading=>'Qnty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44811568417903301)
,p_query_column_id=>22
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>9
,p_column_heading=>'Appr.<br>Qnty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44812022447903301)
,p_query_column_id=>23
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>29
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44812804728903301)
,p_query_column_id=>24
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>30
,p_column_heading=>'Msfcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44813248992903301)
,p_query_column_id=>25
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>33
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44813640424903303)
,p_query_column_id=>26
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>34
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44814031285903303)
,p_query_column_id=>27
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>35
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44814378347903303)
,p_query_column_id=>28
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>36
,p_column_heading=>'Refnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REFNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44814803938903303)
,p_query_column_id=>29
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>37
,p_column_heading=>'Refndate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REFNDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44815193613903303)
,p_query_column_id=>30
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>38
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44815577212903303)
,p_query_column_id=>31
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44816010398903303)
,p_query_column_id=>32
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>10
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44816455648903303)
,p_query_column_id=>33
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>14
,p_column_heading=>'Postflag'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'POSTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44816839123903303)
,p_query_column_id=>34
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>12
,p_column_heading=>'Statuscd'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>3
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44817217337903303)
,p_query_column_id=>35
,p_column_alias=>'TECHNICN'
,p_column_display_sequence=>39
,p_column_heading=>'Technicn'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'TECHNICN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44817571774903303)
,p_query_column_id=>36
,p_column_alias=>'ENGINEER'
,p_column_display_sequence=>40
,p_column_heading=>'Engineer'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'ENGINEER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44818063934903303)
,p_query_column_id=>37
,p_column_alias=>'BOQREFER'
,p_column_display_sequence=>41
,p_column_heading=>'Boqrefer'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BOQREFER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44818369380903304)
,p_query_column_id=>38
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>42
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44818813390903304)
,p_query_column_id=>39
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>43
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44819194183903304)
,p_query_column_id=>40
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>6
,p_column_heading=>'Batch No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT batchnum, batchnum',
'  FROM nmwhimas',
' WHERE compcode = :compcode',
' and ITEMCODE =:P123_ITEMCODE',
' AND warecode = :P123_WARE_CODE',
' --  AND clbalqty > 0'))
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_cattributes=>'onmouseover="getBatchnoClosigqty(this);"'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BATCHNUM'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'onchange="getBatchnoClosigqty(this)" onclick="getBatchnoClosigqty(this)"',
'',
'onmouseover="getBatchnoClosigqty(this);"'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44819598317903304)
,p_query_column_id=>41
,p_column_alias=>'BATCHDTE'
,p_column_display_sequence=>44
,p_column_heading=>'Batchdte'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'BATCHDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44820023138903306)
,p_query_column_id=>42
,p_column_alias=>'NORMRATE'
,p_column_display_sequence=>45
,p_column_heading=>'Normrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'NORMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44820454197903306)
,p_query_column_id=>43
,p_column_alias=>'SRVCNOFK'
,p_column_display_sequence=>46
,p_column_heading=>'Srvcnofk'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'SRVCNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44820780326903306)
,p_query_column_id=>44
,p_column_alias=>'NEGITMFK'
,p_column_display_sequence=>48
,p_column_heading=>'Negitmfk'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGITM'
,p_ref_column_name=>'NEGITMFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47272648881589064)
,p_query_column_id=>45
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>47
,p_column_heading=>'Costrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47340521846659342)
,p_query_column_id=>46
,p_column_alias=>'CURRENT STOCK'
,p_column_display_sequence=>7
,p_column_heading=>'Current<br>Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66584479040003293)
,p_query_column_id=>47
,p_column_alias=>'Approved_Qty.'
,p_column_display_sequence=>31
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(66525876478991813)
,p_query_column_id=>48
,p_column_alias=>'Approved_Qty1'
,p_column_display_sequence=>32
,p_column_heading=>'Approved<br>Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49321724838976120)
,p_plug_name=>'host name url'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65854060040305528)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(65854927960340235)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(69426285216254242)
,p_plug_name=>' '
,p_region_name=>'Modal'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P123_XURLDYNMC." width="925" height="825">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44835962095903317)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44801322403903287)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44835689714903317)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44801322403903287)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44835575222903317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44987916684017295)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:123::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44835768313903317)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(44801322403903287)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45183887758851773)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(44987916684017295)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save (Issue)'
,p_button_position=>'DELETE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49321247790946729)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(44801322403903287)
,p_button_name=>'RUN_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Run Report'
,p_button_position=>'TOP'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44869257966903353)
,p_branch_action=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44835689714903317)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988024126017296)
,p_name=>'P123_ESTIMATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Estimation no'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_cHeight=>1
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988092201017297)
,p_name=>'P123_ESTIMATION_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Estimation date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988188935017298)
,p_name=>'P123_SERVICE_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Service no'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988303866017299)
,p_name=>'P123_WARE_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Source Warehouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988395509017300)
,p_name=>'P123_WARE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988487741017301)
,p_name=>'P123_SERVICE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Service date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988644669017302)
,p_name=>'P123_CUST_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988700289017303)
,p_name=>'P123_CUST_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>37
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44988990513017306)
,p_name=>'P123_DEST_WARE_CODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Dest. Warehouse'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_label_alignment=>'LEFT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44989126718017307)
,p_name=>'P123_DEST_WARE_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT DISTINCT b.warecode, b.waredesc,',
'                   b.costcode',
'              FROM nmwhsmas b',
'             WHERE b.compcode = :COMPCODE',
'               AND NVL (srvcwflg, ''N'') = ''Y''',
'               AND b.swprntcd = :P123_WARE_CODE'))
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P123_DEST_WARE_CODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44989177936017308)
,p_name=>'P123_DEST_COST_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45703918134721903)
,p_name=>'P123_COST_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45704183139721912)
,p_name=>'P123_REMARKS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>44
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47032827938450767)
,p_name=>'P123_DOC_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47033076030450770)
,p_name=>'P123_BATCHNO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47033477893450770)
,p_name=>'P123_ITEMCODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47033937946450770)
,p_name=>'P123_CLOSING_QTY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47034268122450770)
,p_name=>'P123_COST_RATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47797311261727821)
,p_name=>'P123_ISSUE_NO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Issue No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47797604554727821)
,p_name=>'P123_RECEIVE_NO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49322102692984837)
,p_name=>'P123_HOSTNAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(49321724838976120)
,p_prompt=>'Hostname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49325394532361900)
,p_name=>'P123_URL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(49321724838976120)
,p_prompt=>'Url'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(66316175053588560)
,p_name=>'P123_TEST'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(44987916684017295)
,p_prompt=>'Test'
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
 p_id=>wwv_flow_api.id(67440681676521796)
,p_name=>'P123_ITEMCODE1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(44801322403903287)
,p_prompt=>'Itemcode1'
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
 p_id=>wwv_flow_api.id(69426596052254262)
,p_name=>'P123_XURLDYNMC'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(69426285216254242)
,p_prompt=>'Xurldynmc'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47748820688305656)
,p_validation_name=>'P123_DEST_WARE_CODE not null'
,p_validation_sequence=>490
,p_validation=>'P123_DEST_WARE_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Destination Warehouse Can''t be Blank.'
,p_when_button_pressed=>wwv_flow_api.id(45183887758851773)
,p_associated_item=>wwv_flow_api.id(44988990513017306)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47749273202312882)
,p_validation_name=>'P123_WARE_CODE not null'
,p_validation_sequence=>500
,p_validation=>'P123_WARE_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(44835689714903317)
,p_associated_item=>wwv_flow_api.id(44988303866017299)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(47749651025320162)
,p_tabular_form_region_id=>wwv_flow_api.id(44801322403903287)
,p_validation_name=>'BATCHNUM not null'
,p_validation_sequence=>510
,p_validation=>'BATCHNUM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'BATCHNUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(66813589387159466)
,p_tabular_form_region_id=>wwv_flow_api.id(44801322403903287)
,p_validation_name=>'Compariso costrate and salerate  validation for tabular'
,p_validation_sequence=>520
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f02.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f30 (i);',
'item := apex_application.g_f31 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ',
'            ||apex_application.g_f02.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(45183887758851773)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'COSTRATE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44988799670017304)
,p_name=>'fetch dest warehouse'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44988924503017305)
,p_event_id=>wwv_flow_api.id(44988799670017304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT DISTINCT b.warecode, b.waredesc,',
'                   b.costcode',
'              INTO :P123_DEST_WARE_CODE, :P123_DEST_WARE_NAME,',
'                   :P123_DEST_COST_CODE',
'              FROM nmwhsmas b',
'             WHERE b.compcode = :COMPCODE',
'               AND NVL (srvcwflg, ''N'') = ''Y''',
'               AND b.swprntcd = :P123_WARE_CODE;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      NULL;',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P123_WARE_CODE'
,p_attribute_03=>'P123_DEST_WARE_CODE,P123_DEST_WARE_NAME,P123_DEST_COST_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47290328311635120)
,p_name=>'get closing qty'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47290726284635120)
,p_event_id=>wwv_flow_api.id(47290328311635120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT s.batchnum, s.clbalqty, r.costrate',
'  INTO :p123_batchno, :p123_closing_qty, :p123_cost_rate',
'  FROM nmbtrate r, nmwhimas s',
' WHERE r.itemcode = s.itemcode',
'   AND r.compcode = s.compcode',
'   AND r.warecode = s.warecode',
'   AND r.batchnum = s.batchnum',
'   AND r.itemcode = :p123_itemcode',
'   AND r.batchnum = :p123_batchno',
'   AND r.warecode = :p123_ware_code',
'   AND r.compcode = :compcode',
'   AND TRUNC (r.batchdte) =',
'          (SELECT TRUNC (MAX (batchdte))',
'             FROM nmbtrate',
'            WHERE itemcode = :p123_itemcode',
'              AND batchnum = :p123_batchno',
'              AND warecode = :p123_ware_code',
'              AND compcode = :compcode',
'              AND TRUNC (batchdte) <= :p123_doc_date);',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'WHEN TOO_MANY_ROWS THEN',
'NULL;',
'END;'))
,p_attribute_02=>'P123_DOC_DATE,P123_WARE_CODE,P123_BATCHNO,P123_ITEMCODE'
,p_attribute_03=>'P123_BATCHNO,P123_CLOSING_QTY,P123_COST_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47716260612951947)
,p_name=>'fetch cost code'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_WARE_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47716660085951947)
,p_event_id=>wwv_flow_api.id(47716260612951947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select costcode',
'into :p123_cost_code',
' from nmwhsmas',
' where compcode=:compcode',
'and warecode=:p123_ware_code;'))
,p_attribute_02=>'P123_WARE_CODE'
,p_attribute_03=>'P123_COST_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49322450194007954)
,p_name=>'get host name'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49321247790946729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49322772426007957)
,p_event_id=>wwv_flow_api.id(49322450194007954)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_HOSTNAME'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49325640733384696)
,p_name=>'set url to p123_url'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49321247790946729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49325987048384698)
,p_event_id=>wwv_flow_api.id(49325640733384696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P123_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'',
'   v_url        VARCHAR2 (500);',
'  v_doctype  VARCHAR2 (2) :=''BL'';',
'',
'BEGIN',
'v_url :=''http://'' || :P123_HOSTNAME|| '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paraform=NO&report=D:\Orbrgs_Web\nm\bin\nmindprt.rdf&p13='' || :P123_ISSUE_NO || ''&p14=IS&p15=11'';',
'',
'',
'return v_url;',
'  ',
'END;'))
,p_attribute_07=>'P123_HOSTNAME'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'     -- v_url := v_url || ''&p13='' || :P125_SERVICE_NO || ''&p14='' || :P125_SERVICE_DOCTYPE || ''&p15='' ||:P125_SERVICE_SUBTYPE||''&p75=''||:P125_DOCNUMBR;'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49332916374416720)
,p_name=>'assign url to modal page'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49321247790946729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49333342717416720)
,p_event_id=>wwv_flow_api.id(49332916374416720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P123_URL;',
'end;'))
,p_attribute_02=>'P123_URL'
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49338498734450042)
,p_name=>'call modal page'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49321247790946729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49338937451450043)
,p_event_id=>wwv_flow_api.id(49338498734450042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:65:&APP_SESSION.:::65:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'AUTO'
,p_attribute_08=>'100'
,p_attribute_09=>'100'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65630043862242967)
,p_name=>'add rows javascript'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65630444560242981)
,p_event_id=>wwv_flow_api.id(65630043862242967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f05_0001");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=1; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(66768583209107516)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(66768993224107531)
,p_event_id=>wwv_flow_api.id(66768583209107516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f03"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f03"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f03"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f04"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f04"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f04"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f06"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f06"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f06"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67440878926529582)
,p_name=>'clic item'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P123_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67441288143529587)
,p_event_id=>wwv_flow_api.id(67440878926529582)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P123_ITEMCODE1:=:P123_ITEMCODE;',
'end;'))
,p_attribute_02=>'P123_ITEMCODE'
,p_attribute_03=>'P123_ITEMCODE1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69427052634261560)
,p_name=>'call Report window'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(49321247790946729)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69427398187261568)
,p_event_id=>wwv_flow_api.id(69427052634261560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal'').dialog(',
'    {',
'        autoOpen: true,',
'        width:950,',
'        height: 850,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69427829745264981)
,p_name=>'hide Modal region on page load'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69428178939264984)
,p_event_id=>wwv_flow_api.id(69427829745264981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(69426285216254242)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44853281586903324)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44801322403903287)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMNEGITM'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44835689714903317)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44853696995903326)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44801322403903287)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMNEGITM'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45183568267841412)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44801322403903287)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert issue receive record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'     :P123_TEST:=''123'';                 ',
'   INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''IS'', 11, :P123_ISSUE_NO, SYSDATE, :SERLNUMB,',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, :ITEMCODE, :ITEMTYPE, :MCSERIAL, :CMSERIAL,',
'                :ITEMDESC, :ITEMDESC, :ITEMRATE, :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, :SALERATE, :HUOMCODE, :FACTRVAL,',
'                :LUOMCODE, :ORGNQNTY, :APPRQNTY, :Approved_Qty1, :TRNSQTY2,',
'                :MSFCAMNT, :CURRCODE, :EXCGRATE, :MSLCAMNT, :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, :UPDOCTYP, :UPSUBTYP, :UPDOCNUM,',
'                :UPDOCDTE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, :P123_REMARKS, :P123_COST_CODE, :P123_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG, :STATUSCD, :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, :BOQREFER, :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                :BATCHNUM, :BATCHEXP, :BATCHDTE, :NORMRATE, :P123_SERVICE_NO,',
'                :DGNITMFK, :NEGITMFK, :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               ); ',
'              ',
'               INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''RC'', 4, :P123_RECEIVE_NO, SYSDATE, :SERLNUMB,',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, :ITEMCODE, :ITEMTYPE, :MCSERIAL, :CMSERIAL,',
'                :ITEMDESC, :ITEMDESC, :ITEMRATE, :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, :SALERATE, :HUOMCODE, :FACTRVAL,',
'                :LUOMCODE, :ORGNQNTY, :APPRQNTY, :Approved_Qty1, :TRNSQTY2,',
'                :MSFCAMNT, :CURRCODE, :EXCGRATE, :MSLCAMNT, :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, ''IS'', 11, :P123_ISSUE_NO,',
'                SYSDATE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, :P123_REMARKS, :P123_DEST_COST_CODE, :P123_DEST_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG, :STATUSCD, :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, :BOQREFER, :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                :BATCHNUM, :BATCHEXP, :BATCHDTE, :NORMRATE, :P123_SERVICE_NO,',
'                :DGNITMFK, :NEGITMFK, :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               );',
'               ',
'EXCEPTION',
'WHEN OTHERS THEN',
'raise_application_error(-20001,sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Can''t Issue Successfully!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45183887758851773)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Items Issued Successfully||&P123_ISSUE_NO.<br>',
'Items Received Successfully||&P123_RECEIVE_NO.'))
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
 p_id=>wwv_flow_api.id(66316985879613576)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44801322403903287)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmstkrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f14.COUNT',
'   LOOP',
'      DECLARE',
'         CURSOR v_cur1',
'         IS',
'            SELECT NEGITMPK',
'              FROM nmnegitm',
'             WHERE NEGITMPK = APEX_APPLICATION.g_f14 (i);',
'',
'         v_negitmpk2   NUMBER;',
'         v_app_pk      VARCHAR2 (20);',
'      BEGIN',
'         FOR i IN 1 .. APEX_APPLICATION.g_f14.COUNT',
'         LOOP',
'            OPEN v_cur1;',
'',
'            FETCH v_cur1 INTO v_negitmpk2;',
'',
'            CLOSE v_cur1;',
'',
'            IF APEX_APPLICATION.g_f14 (i) = v_negitmpk2',
'            THEN',
'              INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''IS'', 11, :P123_ISSUE_NO, TRUNC(SYSDATE), APEX_APPLICATION.G_F02 (I),',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, APEX_APPLICATION.G_F03 (I), :ITEMTYPE, :MCSERIAL, :CMSERIAL,',
'                APEX_APPLICATION.G_F04 (I), APEX_APPLICATION.G_F04 (I), APEX_APPLICATION.G_F24 (I), :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, APEX_APPLICATION.G_F25 (I), :HUOMCODE, :FACTRVAL,',
'                :LUOMCODE, APEX_APPLICATION.G_F07 (I), APEX_APPLICATION.G_F08 (I), APEX_APPLICATION.G_F31 (I), :TRNSQTY2,',
'                APEX_APPLICATION.G_F29 (I), :CURRCODE, :EXCGRATE, APEX_APPLICATION.G_F29 (I), :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, :UPDOCTYP, :UPSUBTYP, :UPDOCNUM,',
'                :UPDOCDTE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, APEX_APPLICATION.G_F37 (I), :P123_COST_CODE, :P123_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG,  APEX_APPLICATION.G_F11 (I), :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, :BOQREFER, :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                APEX_APPLICATION.G_F05 (I), :BATCHEXP, :BATCHDTE, :NORMRATE, :P123_SERVICE_NO,',
'                :DGNITMFK, :NEGITMFK, :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               ); ',
'               ELSE NULL;',
'            END IF;',
'',
'         END LOOP;',
'     EXIT WHEN APEX_APPLICATION.g_f14 (i) <> v_negitmpk2;                          ',
'      END;',
'        ',
'      END LOOP;',
'      END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Items Issued Successfully||&P123_ISSUE_NO.<br>',
'Items Received Successfully||&P123_RECEIVE_NO.'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67635930090318693)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into nmstkrec 12'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   L_ERROR   VARCHAR2 (4000);',
'BEGIN',
'   :P123_TEST:=''123'';',
'   FOR I IN 1 .. APEX_APPLICATION.G_F14.COUNT',
'   LOOP    ',
'',
'   INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''IS'', 11, :P123_ISSUE_NO, TRUNC(SYSDATE), APEX_APPLICATION.G_F02 (I),',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, APEX_APPLICATION.G_F03 (I), APEX_APPLICATION.G_F23 (I), :MCSERIAL, :CMSERIAL,',
'                APEX_APPLICATION.G_F04 (I), APEX_APPLICATION.G_F04 (I), APEX_APPLICATION.G_F24 (I), :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, APEX_APPLICATION.G_F25 (I), APEX_APPLICATION.G_F26 (I), :FACTRVAL,',
'                APEX_APPLICATION.G_F12 (I), APEX_APPLICATION.G_F07 (I), APEX_APPLICATION.G_F08 (I), APEX_APPLICATION.G_F31 (I), :TRNSQTY2,',
'                APEX_APPLICATION.G_F29 (I), APEX_APPLICATION.G_F32 (I), APEX_APPLICATION.G_F33 (I), APEX_APPLICATION.G_F29 (I), :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, ''ES'', 1, :P123_ESTIMATION_NO,',
'                :UPDOCDTE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, APEX_APPLICATION.G_F37 (I), :P123_COST_CODE, :P123_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG,  APEX_APPLICATION.G_F11 (I), :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, APEX_APPLICATION.G_F40 (I), :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                APEX_APPLICATION.G_F05 (I), :BATCHEXP, :BATCHDTE, :NORMRATE, :P123_SERVICE_NO,',
'                :DGNITMFK, APEX_APPLICATION.G_F46 (I), :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               ); ',
'',
'END LOOP;',
'FOR J IN 1 .. APEX_APPLICATION.G_F14.COUNT',
'   LOOP ',
'               INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM , BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''RC'', 4, :P123_RECEIVE_NO, TRUNC(SYSDATE), APEX_APPLICATION.G_F02 (J),',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, APEX_APPLICATION.G_F03 (J), APEX_APPLICATION.G_F23 (J), :MCSERIAL, :CMSERIAL,',
'                APEX_APPLICATION.G_F04 (J), APEX_APPLICATION.G_F04 (J), APEX_APPLICATION.G_F24 (J), :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, APEX_APPLICATION.G_F25 (J), APEX_APPLICATION.G_F26 (J), :FACTRVAL,',
'                APEX_APPLICATION.G_F12 (J), APEX_APPLICATION.G_F07 (J), APEX_APPLICATION.G_F08 (J), APEX_APPLICATION.G_F31 (J), :TRNSQTY2,',
'                APEX_APPLICATION.G_F29 (J), APEX_APPLICATION.G_F32 (J), APEX_APPLICATION.G_F33 (J),APEX_APPLICATION.G_F29 (J), :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, ''IS'', 11, :P123_ISSUE_NO,',
'                SYSDATE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, APEX_APPLICATION.G_F37 (J), :P123_DEST_COST_CODE, :P123_DEST_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG, APEX_APPLICATION.G_F11 (J), :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, APEX_APPLICATION.G_F40 (J), :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                APEX_APPLICATION.G_F05 (J), :BATCHEXP, :BATCHDTE, :NORMRATE, :P123_SERVICE_NO,',
'                :DGNITMFK, APEX_APPLICATION.G_F46 (J), :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               );',
'',
'END LOOP;               ',
'EXCEPTION',
'WHEN OTHERS THEN',
'RAISE_APPLICATION_ERROR(-20001,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45183887758851773)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Items Issued Successfully.....&P123_ISSUE_NO.<br>',
'Items Received Successfully......&P123_RECEIVE_NO.'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69426040764250716)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_path varchar2(100);',
'V_comcde varchar2(5);',
'V_prgnme varchar2(500);',
'v_url varchar2(500);',
'v_ip varchar2(50);',
'begin',
'select REPTURLL ',
'into v_ip',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' v_url :=',
'         v_ip ',
'         || ''/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'',
'/*if :P116_PROGNM is not null then',
':P130_PROGNAME:=:P116_PROGNM;',
'end if;*/',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(''nmindprt''),1,2);',
'',
'select COMPCODE,PROGDESC',
'into V_comcde,V_prgnme',
'from symenmas',
'where UPPER(PROGNAME)=UPPER(''nmindprt'');',
':P123_XURLDYNMC:=v_url||V_path||''nmindprt.rdf''||''&P0=''||:COMPCODE||''&P14=''||''IS''||''&P15=''||11||''&P13=''||:P123_ISSUE_NO||''&P29=''||:P123_WARE_CODE;',
'',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47800640556766016)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate issue no'
,p_process_sql_clob=>'docnumber_generation(:compcode, ''NM'', ''IS'', 11,SYSDATE,:P123_WARE_CODE,''NM'', :P123_ISSUE_NO);'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(45183887758851773)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47800144916757107)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate receive no'
,p_process_sql_clob=>'docnumber_generation(:compcode, ''NM'', ''RC'', 4,SYSDATE,:P123_WARE_CODE,''NM'', :P123_RECEIVE_NO);'
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(45183887758851773)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47688137599872600)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(44801322403903287)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert receive record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'                        ',
'   INSERT INTO NMSTKREC',
'               (COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SERLNUMB,',
'                PARTYCDE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE,',
'                COMMCODE, ITEMCODE, ITEMTYPE, MCSERIAL, CMSERIAL,',
'                ITEMDESC, ITEMLONG, ITEMRATE, DISCPCNT, DISCAMNT,',
'                SPLDISPC, SPLDISNT, SALERATE, HUOMCODE, FACTRVAL,',
'                LUOMCODE, ORGNQNTY, APPRQNTY, TRNSQNTY, TRNSQTY2,',
'                MSFCAMNT, CURRCODE, EXCGRATE, MSLCAMNT, ADJAMTLC,',
'                REFNUMBR, REFNDATE, UPDOCTYP, UPSUBTYP, UPDOCNUM,',
'                UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM,',
'                DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM,',
'                ACDOCDTE, ACDOCSRL, REMARKSS, COSTCODE, WARECODE,',
'                POSTFLAG, PRNTFLAG, PRICFLAG, PRINTCNT, BALNFLAG,',
'                RATVFLAG, STATUSCD, TCSTPCNT, DIVNCODE, TECHNICN,',
'                ENGINEER, AMENDSRL, MATLTYPE, BOQREFER, MFRGDATE,',
'                MFRGTIME, PARNTITM, INDTFLAG, OPRSTAMP, TIMSTAMP,',
'                BATCHNUM, BATCHEXP, BATCHDTE, NORMRATE, SRVCTRCN,',
'                DGNITMFK, STKRCFK1, COSTRATE, AVRGRATE, SERIALST,',
'                SERIALEN, BOM_NO, COLORCDE, SRCWRECD, SNDPERSN,',
'                INVNUMFK, SRCCMPCD',
'               )',
'        VALUES (:COMPCODE, ''RC'', 4, :P123_RECEIVE_NO, SYSDATE, :SERLNUMB,',
'                :P123_CUST_CODE, :RAISEDBY, :APPRVDBY, :APPRDATE, :REQDDATE,',
'                :COMMCODE, :ITEMCODE, :ITEMTYPE, :MCSERIAL, :CMSERIAL,',
'                :ITEMDESC, :ITEMDESC, :ITEMRATE, :DISCPCNT, :DISCAMNT,',
'                :SPLDISPC, :SPLDISNT, :SALERATE, :HUOMCODE, :FACTRVAL,',
'                :LUOMCODE, :ORGNQNTY, :APPRQNTY, :TRNSQNTY, :TRNSQTY2,',
'                :MSFCAMNT, :CURRCODE, :EXCGRATE, :MSLCAMNT, :ADJAMTLC,',
'                :P123_SERVICE_NO, :REFNDATE, :UPDOCTYP, :UPSUBTYP, :UPDOCNUM,',
'                :UPDOCDTE, :UPDOCSRL, :DWDOCTYP, :DWSUBTYP, :DWDOCNUM,',
'                :DWDOCDTE, :DWDOCSRL, :ACDOCTYP, :ACSUBTYP, :ACDOCNUM,',
'                :ACDOCDTE, :ACDOCSRL, :P123_REMARKS, :P123_DEST_COST_CODE, :P123_DEST_WARE_CODE,',
'                :POSTFLAG, :PRNTFLAG, :PRICFLAG, :PRINTCNT, :BALNFLAG,',
'                :RATVFLAG, :STATUSCD, :TCSTPCNT, :DIVNCODE, :TECHNICN,',
'                :ENGINEER, :AMENDSRL, :MATLTYPE, :BOQREFER, :MFRGDATE,',
'                :MFRGTIME, :PARNTITM, :INDTFLAG, :APP_USER, SYSDATE,',
'                :BATCHNUM, :BATCHEXP, :BATCHDTE, :NORMRATE, :SRVCTRCN,',
'                :DGNITMFK, :STKRCFK1, :COSTRATE, :AVRGRATE, :SERIALST,',
'                :SERIALEN, :BOM_NO, :COLORCDE, :SRCWRECD, :SNDPERSN,',
'                :INVNUMFK, :SRCCMPCD',
'               );',
'EXCEPTION',
'WHEN OTHERS THEN',
'raise_application_error(-20001,sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45183887758851773)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
