prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'manully create report'
,p_step_title=>'manully create report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65178245224321317)
,p_plug_name=>'manually report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<HTML>',
'<HEAD>',
'	<TITLE> Add/Remove dynamic rows in HTML table </TITLE>',
'	<SCRIPT language="javascript">',
'		function addRow(tableID) {',
'',
'			var table = document.getElementById(tableID);',
'',
'			var rowCount = table.rows.length;',
'			var row = table.insertRow(rowCount);',
'',
'			var colCount = table.rows[0].cells.length;',
'',
'			for(var i=0; i<colCount; i++) {',
'',
'				var newcell	= row.insertCell(i);',
'',
'				newcell.innerHTML = table.rows[0].cells[i].innerHTML;',
'				//alert(newcell.childNodes);',
'				switch(newcell.childNodes[0].type) {',
'					case "text":',
'							newcell.childNodes[0].value = "";',
'							break;',
'					case "checkbox":',
'							newcell.childNodes[0].checked = false;',
'							break;',
'					case "select-one":',
'							newcell.childNodes[0].selectedIndex = 0;',
'							break;',
'				}',
'			}',
'		}',
'',
'		function deleteRow(tableID) {',
'			try {',
'			var table = document.getElementById(tableID);',
'			var rowCount = table.rows.length;',
'',
'			for(var i=0; i<rowCount; i++) {',
'				var row = table.rows[i];',
'				var chkbox = row.cells[0].childNodes[0];',
'				if(null != chkbox && true == chkbox.checked) {',
'					if(rowCount <= 1) {',
'						alert("Cannot delete all the rows.");',
'						break;',
'					}',
'					table.deleteRow(i);',
'					rowCount--;',
'					i--;',
'				}',
'',
'',
'			}',
'			}catch(e) {',
'				alert(e);',
'			}',
'		}',
'',
'	</SCRIPT>',
'</HEAD>',
'<BODY>',
'',
'	<INPUT type="button" value="Add Row" onclick="addRow(''dataTable'')" />',
'',
'	<INPUT type="button" value="Delete Row" onclick="deleteRow(''dataTable'')" />',
'',
'	<TABLE id="dataTable" width="350px" border="1">',
'		<TR>',
'			<TD><INPUT type="checkbox" name="chk"/></TD>',
'			<TD><INPUT type="text" name="txt"/></TD>',
'			<TD>',
'				<SELECT name="country">',
'					<OPTION value="in">India</OPTION>',
'					<OPTION value="de">Germany</OPTION>',
'					<OPTION value="fr">France</OPTION>',
'					<OPTION value="us">United States</OPTION>',
'					<OPTION value="ch">Switzerland</OPTION>',
'				</SELECT>',
'			</TD>',
'		</TR>',
'	</TABLE>',
'',
'</BODY>',
'</HTML>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65178435312327927)
,p_plug_name=>'manually report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_cursor  INTEGER := dbms_sql.open_cursor;',
'  l_status  NUMBER;',
'  l_col_cnt NUMBER;',
'  l_desc_t  dbms_sql.desc_tab2;',
'  l_desc_c  dbms_sql.desc_tab;',
'  l_cvalue  VARCHAR2(32000);  ',
'  l_qry     VARCHAR2(32000) := ''SELECT * FROM emp'';  ',
'  l_table   VARCHAR2(32000) := ''<table class="t14Standard">'';',
'  l_th      VARCHAR2(32000) := ''<th class="t14ReportHeader">'';',
'  l_td      VARCHAR2(32000) := ''<td class="t14data">'';',
'BEGIN',
'  --',
'  dbms_sql.parse (l_cursor, l_qry, dbms_sql.native);',
'  dbms_sql.describe_columns( l_cursor, l_col_cnt, l_desc_c );',
'  --',
'  htp.p(l_table);',
'  htp.p(''<thead>'');',
'  htp.p(''<tr>'');',
'  --',
'  FOR i IN 1 .. l_desc_c.count',
'  LOOP',
'    htp.prn(l_th || l_desc_c(i).col_name || ''</th>'');',
'  END LOOP;',
'  --',
'  htp.p(''</tr>'');',
'  htp.p(''</thead>'');',
'  htp.p(''<tbody>'');',
'  --',
'  dbms_sql.describe_columns2( l_cursor, l_col_cnt, l_desc_t );',
'  --',
'  FOR i IN 1 .. l_desc_t.count',
'  LOOP',
'    dbms_sql.define_column( l_cursor, i, l_cvalue, 32765);',
'  END LOOP;',
'  --',
'  l_status := dbms_sql.execute( l_cursor );',
'  --',
'  LOOP',
'    EXIT',
'  WHEN (dbms_sql.fetch_rows( l_cursor ) <= 0 );',
'    --l_row_cnt      := l_row_cnt + 1;',
'    htp.p(''<tr>'');',
'    FOR i IN 1 .. l_desc_t.count',
'    LOOP',
'      dbms_sql.column_value( l_cursor, i, l_cvalue );',
'      htp.prn(l_td || l_cvalue || ''</td>'');',
'    END LOOP;',
'    htp.p(''</tr>'');',
'  END LOOP;',
'  --',
'  htp.p(''</tbody>'');',
'  htp.p(''</table>'');',
'  --',
'  IF dbms_sql.is_open(l_cursor) THEN',
'    dbms_sql.close_cursor(l_cursor);',
'  END IF;',
'EXCEPTION WHEN OTHERS THEN',
'  IF dbms_sql.is_open(l_cursor) THEN',
'    dbms_sql.close_cursor(l_cursor);',
'  END IF;',
'  RAISE;',
'END;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.component_end;
end;
/
