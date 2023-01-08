prompt --application/pages/page_00286
begin
--   Manifest
--     PAGE: 00286
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
 p_id=>286
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'CustomerFeedback'
,p_step_title=>'CustomerFeedback'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'$(document).ready(function(){',
'  $(''#P86_SATISFCTYP'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal4(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_SRLNO'').value=',
'    html_GetElement(''f02_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P86_SRLNO'').trigger(''click'');',
'});',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal33(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_GRDCODE'').value=',
'    html_GetElement(''f04_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P86_GRDCODE'').trigger(''click'');',
'});',
'if (document.getElementById("P86_GRDCODE").value <=0){',
'document.getElementById(''P86_SATISFCTYP'').value=''008'';',
'}',
'else if (document.getElementById("P86_GRDCODE").value <=3){',
'document.getElementById(''P86_SATISFCTYP'').value=''002'';',
'}',
'else{',
'document.getElementById(''P86_SATISFCTYP'').value=''006'';',
'}',
'html_GetElement(''f12_''+vRow).value=',
'document.getElementById(''P86_SATISFCTYP'').value;',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal35(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_MESSAGE'').value=',
'    html_GetElement(''f17_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P86_MESSAGE'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal36(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL1'').value=',
'    html_GetElement(''f04_0001'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL1'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0001'').value === document.getElementById(''P86_COL1'').value){',
'html_GetElement(''f30_0001'').value=',
'html_GetElement(''f04_0001'').value;',
'}',
'',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal37(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL2'').value=',
'    html_GetElement(''f04_0002'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL2'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0002'').value === document.getElementById(''P86_COL2'').value){',
'html_GetElement(''f31_0002'').value=',
'html_GetElement(''f04_0002'').value;',
'}',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal38(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL3'').value=',
'    html_GetElement(''f04_0003'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL3'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0003'').value === document.getElementById(''P86_COL3'').value){',
'html_GetElement(''f32_0003'').value=',
'html_GetElement(''f04_0003'').value;',
'}',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal39(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL4'').value=',
'    html_GetElement(''f04_0004'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL4'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0004'').value === document.getElementById(''P86_COL4'').value){',
'html_GetElement(''f33_0004'').value=',
'html_GetElement(''f04_0004'').value;',
'}',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal40(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL5'').value=',
'    html_GetElement(''f04_0005'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL5'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0005'').value === document.getElementById(''P86_COL5'').value){',
'html_GetElement(''f34_0005'').value=',
'html_GetElement(''f04_0005'').value;',
'}',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal41(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P86_COL6'').value=',
'    html_GetElement(''f04_0006'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL6'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0006'').value === document.getElementById(''P86_COL6'').value){',
'html_GetElement(''f35_0006'').value=',
'html_GetElement(''f04_0006'').value;',
'}',
'document.getElementById(''P86_COL7'').value=',
'    html_GetElement(''f04_0007'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL7'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0007'').value === document.getElementById(''P86_COL7'').value){',
'html_GetElement(''f36_0007'').value=',
'html_GetElement(''f04_0007'').value;',
'}',
'',
'document.getElementById(''P86_COL8'').value=',
'    html_GetElement(''f04_0008'').value;',
'$(document).ready(function(){',
'  $(''#P86_COL8'').trigger(''click'');',
'});',
'if (html_GetElement(''f04_0008'').value === document.getElementById(''P86_COL8'').value){',
'html_GetElement(''f37_0008'').value=',
'html_GetElement(''f04_0008'').value;',
'}',
'}',
'</script>',
'',
'',
'<script type="text/javascript">',
'function moveUpDown(pThis, pEvent){',
'  var keynum;',
'  var current = document.getElementsByName( pThis.name ); ',
'  if(window.event) // IE',
'  { keynum = pEvent.keyCode; }',
'  else if(pEvent.which) // Netscape/Firefox/Opera',
'  { keynum = pEvent.which; }',
'  if (keynum == 40 || keynum == 38) // Key-Up or Key-Down',
'  { for (i=0;i < current.length;i++)',
'   { if ( current[i].id == pThis.id ) // This is current row',
'     { if (keynum == 40) // Move down',
'       { current[Math.min(current.length - 1,i+1)].focus(); }',
'      else  // Move up',
'       { current[Math.max(0,i-1)].focus(); }',
'     }',
'   }',
' }',
'}',
'</script>',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $tabs = $("#tabs_start_reg");',
'      $tabs.tabs();<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/redmond/jquery-ui.css" type="text/css" />',
' ',
'<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.js"> </script>',
'<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.js"> </script>',
' ',
' ',
'<script type="text/javascript">',
'$(function() {',
'    $("#tabs").tabs();',
'$("tabs").appendTo($("tabs-1").parent());',
' ',
'  $x("tabs").appendChild( $x("tabs-2"));',
'   $x("tabs").appendChild( $x("tabs-3"));',
'   ',
'});',
'</script>',
'      $tabs.parents(''td'').eq(0).removeAttr(''width'');',
'      $tabs.show(); ',
'',
'',
'',
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'',
'section.uRegionNoPadding>div.uRegionContent table.uReport {',
'  border-right: none;',
'  border-left: none;',
'  width: 75%;',
'}',
'',
'.stistype{',
' display: none; ',
'}'))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101794502317361753)
,p_plug_name=>'Service'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101797289011361756)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101797760703361756)
,p_plug_name=>'test'
,p_parent_plug_id=>wwv_flow_api.id(101797289011361756)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>'<div id="tabs-1">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(101803695044361759)
,p_name=>'Customer Feedback'
,p_parent_plug_id=>wwv_flow_api.id(101797760703361756)
,p_template=>wwv_flow_api.id(47568291304858133)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'rownum serial_no,',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"PARTYCDE",',
'"QUESTION",',
'"REMARKSS",',
'"SRVNOFK2",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"CUSTFDBK",',
'"SERLNUMB",',
'"GRDECDE",',
'"SRVCDATE",',
'"FEDBKTYP" ,',
'"COMPLNTDT" ,',
'"VOC" ,',
'"COMPLCLS" ,',
'"CMPLSUCLS" ,',
'"ACTINTKN" ,',
'"RSLUTNDT" ,',
'"RSLUTNMD" ,',
'"RSLUTPRS" ,',
'"POSTRSRT" ,',
'"STISNTRC" ,',
'"STISFTYP" ,',
'"CONTCTDT",',
'case ',
'when STISFTYP=''002'' then',
'''<Font color= #4B66A7>Show-Detail</Font>''',
'ELSE NULL',
'END edit,',
'(select SYCODDES from sycodmas',
'where COMPCODE=''999''',
'and MODLCODE=''NM''',
'and SYHRDCDE=''GRD''',
'and SYSOFCDE="S"."STISFTYP") satisfied',
'from "#OWNER#"."NMSRVCSI" "S"',
'where SRVNOFK2=:P286_SERVICE_INFO',
'and FEDBKTYP=:P286_QUSTYPE',
'and compcode=''100'''))
,p_ajax_items_to_submit=>'P286_SERVICE_INFO,P286_QUSTYPE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>11
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"COL1",',
'"COL2",',
'"COL3",',
'"COL4",',
'"COL5",',
'"COL6",',
'"COL7",',
'"COL8",'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101804093689361761)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101804486006361761)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>5
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101804940537361761)
,p_query_column_id=>3
,p_column_alias=>'SERIAL_NO'
,p_column_display_sequence=>3
,p_column_heading=>'Serial No'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101805365714361761)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101805713462361761)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101806103816361761)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101806504732361761)
,p_query_column_id=>7
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>9
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101806930486361761)
,p_query_column_id=>8
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>15
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101807309933361761)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>16
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101807715034361761)
,p_query_column_id=>10
,p_column_alias=>'QUESTION'
,p_column_display_sequence=>4
,p_column_heading=>'Question'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>80
,p_cattributes=>'readonly=true'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'QUESTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101808099570361761)
,p_query_column_id=>11
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>19
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_cattributes=>'onchange="calculateTotal35(this);calculateTotal3(this);calculateTotal4(this);"onkeyup="moveUpDown(this, event)"'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101808536375361761)
,p_query_column_id=>12
,p_column_alias=>'SRVNOFK2'
,p_column_display_sequence=>13
,p_column_heading=>'Srvnofk2'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'SRVNOFK2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101808958227361761)
,p_query_column_id=>13
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>18
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101809286223361761)
,p_query_column_id=>14
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>17
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101809692630361762)
,p_query_column_id=>15
,p_column_alias=>'CUSTFDBK'
,p_column_display_sequence=>6
,p_column_heading=>'Feedback'
,p_use_as_row_header=>'N'
,p_column_link_attr=>'class="mark" '
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_cattributes=>'onchange="calculateTotal33(this);calculateTotal3(this);calculateTotal4(this);" onkeyup="moveUpDown(this, event)"'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'CUSTFDBK'
,p_column_comment=>'calculateTotal36(this);calculateTotal37(this);calculateTotal38(this);calculateTotal39(this);calculateTotal40(this);calculateTotal41(this);'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101810093913361762)
,p_query_column_id=>16
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_column_heading=>'Serial #'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_cattributes=>'readonly=true'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101810550331361762)
,p_query_column_id=>17
,p_column_alias=>'GRDECDE'
,p_column_display_sequence=>11
,p_column_heading=>'Grade'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'GRDECDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101810941322361762)
,p_query_column_id=>18
,p_column_alias=>'SRVCDATE'
,p_column_display_sequence=>21
,p_column_heading=>'Srvcdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>7
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'SRVCDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101811305644361762)
,p_query_column_id=>19
,p_column_alias=>'FEDBKTYP'
,p_column_display_sequence=>23
,p_column_heading=>'Feedback<br>Type'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>4
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'FEDBKTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101811708711361762)
,p_query_column_id=>20
,p_column_alias=>'COMPLNTDT'
,p_column_display_sequence=>25
,p_column_heading=>'Date of<br>Complain'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101812132107361764)
,p_query_column_id=>21
,p_column_alias=>'VOC'
,p_column_display_sequence=>26
,p_column_heading=>'VOC'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101812510666361764)
,p_query_column_id=>22
,p_column_alias=>'COMPLCLS'
,p_column_display_sequence=>27
,p_column_heading=>'Complaint<br>Classification'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101812934658361764)
,p_query_column_id=>23
,p_column_alias=>'CMPLSUCLS'
,p_column_display_sequence=>28
,p_column_heading=>'Complaint<br>Sub-classification'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101813298682361764)
,p_query_column_id=>24
,p_column_alias=>'ACTINTKN'
,p_column_display_sequence=>29
,p_column_heading=>'Action<br>Taken'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101813724259361764)
,p_query_column_id=>25
,p_column_alias=>'RSLUTNDT'
,p_column_display_sequence=>30
,p_column_heading=>'Date of<br>Resolution'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101814121642361764)
,p_query_column_id=>26
,p_column_alias=>'RSLUTNMD'
,p_column_display_sequence=>33
,p_column_heading=>'Mode of<br>Resolution'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(101844983890361775)
,p_lov_show_nulls=>'NO'
,p_lov_null_text=>'......Select list......'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101814563106361764)
,p_query_column_id=>27
,p_column_alias=>'RSLUTPRS'
,p_column_display_sequence=>20
,p_column_heading=>'Attend<br>Person'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'RSLUTPRS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101814920641361764)
,p_query_column_id=>28
,p_column_alias=>'POSTRSRT'
,p_column_display_sequence=>31
,p_column_heading=>'Post Resolution<br>Rating'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_css_classes=>'5'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101815315579361764)
,p_query_column_id=>29
,p_column_alias=>'STISNTRC'
,p_column_display_sequence=>32
,p_column_heading=>'Satisfaction note<br>Received'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(101847214391361775)
,p_lov_show_nulls=>'NO'
,p_lov_null_text=>'......Select list......'
,p_column_width=>5
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101815731537361764)
,p_query_column_id=>30
,p_column_alias=>'STISFTYP'
,p_column_display_sequence=>14
,p_column_heading=>'Satisfaction<br>Type'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYCODDES d,SYSOFCDE r from sycodmas',
'where SYHRDCDE=''GRD''',
'and COMPCODE=:COMPCODE-- ''999''',
'and MODLCODE=''NM''',
''))
,p_lov_show_nulls=>'NO'
,p_lov_null_text=>'......Select list......'
,p_column_width=>5
,p_cattributes=>'disabled=disabled'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'STISFTYP'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'onchange="javascript:test(this);"',
'onchange="calculateTotal3(this);"',
'',
'onchange="calculateTotal3(this);html_ToogleCellColumn(''RSLUTPRS'');html_ToogleCellColumn(''FEDBKTYP'');html_ToogleCellColumn(''COMPLNTDT'');html_ToogleCellColumn(''VOC'');',
'html_ToogleCellColumn(''COMPLCLS'');html_ToogleCellColumn(''CMPLSUCLS'');html_ToogleCellColumn(''ACTINTKN'');html_ToogleCellColumn(''RSLUTNDT'');',
'html_ToogleCellColumn(''RSLUTNMD'');html_ToogleCellColumn(''POSTRSRT'');html_ToogleCellColumn(''STISNTRC'');"'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101816112669361764)
,p_query_column_id=>31
,p_column_alias=>'CONTCTDT'
,p_column_display_sequence=>12
,p_column_heading=>'Contact<br>date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSRVCSI'
,p_ref_column_name=>'CONTCTDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101816560510361764)
,p_query_column_id=>32
,p_column_alias=>'EDIT'
,p_column_display_sequence=>24
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:$s(''P86_SRLNO'',#SERLNUMB#);$(''#P86_SRLNO'').trigger(''click'');'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'class="show_modal" '
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_column_comment=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_QUSTYPE,P59_SERVICE_INFO,P59_SRLNO:#GRDECDE#,#SRVNOFK2#,#SERLNUMB#'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(101816947226361764)
,p_query_column_id=>33
,p_column_alias=>'SATISFIED'
,p_column_display_sequence=>22
,p_column_heading=>'Status'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101817299603361764)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101817698933361764)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101818094638361764)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:278:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101818545377361764)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'REFRESH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101818931093361764)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101819288674361764)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(101803695044361759)
,p_button_name=>'ADD_QUESTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Question'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(101844793908361775)
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101794908629361753)
,p_name=>'P286_SERVICE_INFO_LOV'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_prompt=>'Service Infornation'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   v.docnumbr, v.srvcnopk, v.doctdate, v.itemcode, v.itemdesc, v.brand,',
'         v.registno, v.chasisno',
'    FROM vwnmsvci v, nmjobbil j',
'   WHERE v.compcode = :compcode ',
'     AND j.compcode = v.compcode',
'     AND j.billnofk = v.srvcnopk',
'     AND v.srvcnopk NOT IN (',
'            SELECT DISTINCT srvnofk2',
'                       FROM nmsrvcsi c, nmsrvqus q',
'                      WHERE c.fedbktyp = q.questype',
'                            AND c.compcode = q.compcode',
'                   GROUP BY srvnofk2',
'                     HAVING wm_concat (DISTINCT fedbktyp) =',
'                               (SELECT   wm_concat',
'                                                 (wm_concat (DISTINCT questype)',
'                                                 )',
'                                    FROM nmsrvqus',
'                                GROUP BY questype))',
'ORDER BY srvcnopk DESC;'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_06=>'2'
,p_attribute_07=>'P286_SERVICE_INFO'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select docnumbr,SRVCNOPK,doctdate,itemcode,itemdesc,brand,registno,chasisno ',
' from vwnmsvci',
' where COMPCODE=''100''',
'order by srvcnopk desc'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101795332121361754)
,p_name=>'P286_SERVICE_INFO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_prompt=>'Service Info'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P286_QUSTYPE=''001'' then',
':P286_SERVICE_INFO:=:f_empno_list;',
'end if;',
'if :P286_QUSTYPE=''004'' then',
':P286_SERVICE_INFO:=:f_empno_list_1;',
'end if;',
'if :P286_QUSTYPE=''003'' then',
':P286_SERVICE_INFO:=:f_empno_list_3;',
'end if;',
'return (:P286_SERVICE_INFO);',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(101795749551361754)
,p_name=>'P286_QUSTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_prompt=>' '
,p_source=>'&P78_QUSTYP.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas',
'where compcode=''100''',
'and NMHRDCDE=''QTP''',
'and modlcode=''NM''',
'',
'',
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas',
'where compcode=''100''',
'and NMHRDCDE=''QTP''',
'and modlcode=''NM''',
'and NMSOFCDE not in( SELECT DISTINCT NVL(Max(FEDBKTYP),''001'')',
'                       FROM nmsrvcsi c, nmsrvqus q',
'                      WHERE c.fedbktyp = q.questype',
'                            AND c.compcode = q.compcode',
'                           and c.SRVNOFK2=:P286_SERVICE_INFO',
'                  GROUP BY FEDBKTYP);',
'',
''))
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
 p_id=>wwv_flow_api.id(101796075548361754)
,p_name=>'P286_QUESTYPEDETAIL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong   font-color:teal;>Feedback Type</strong>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas',
'where compcode=''100''',
'and NMHRDCDE=''QTP''',
'and modlcode=''NM''',
'and NMSOFCDE=:P286_QUSTYPE'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"'
,p_grid_column=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101796470722361754)
,p_name=>'P286_CONTACT_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101796938573361756)
,p_name=>'P286_SRVDETAIL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(101794502317361753)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<strong>Service Detail</strong>'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select docnumbr||'' \ ''||SRVCNOPK||'' \ ''||doctdate||'' \ ''||itemcode||'' : ''||itemdesc||'' \ ''||brand||'' \ ''||registno||'' \ ''||chasisno ',
' from vwnmsvci',
' where COMPCODE=:COMPCODE',
'and SRVCNOPK=:P286_SERVICE_INFO'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color:#6633FF;font-weight:bold;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101798133734361756)
,p_name=>'P286_SATISFCTYP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>' '
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onchange="html_ToogleCellColumn(''RSLUTPRS'');html_ToogleCellColumn(''FEDBKTYP'');html_ToogleCellColumn(''COMPLNTDT'');html_ToogleCellColumn(''VOC''); html_ToogleCellColumn(''COMPLCLS'');html_ToogleCellColumn(''CMPLSUCLS'');html_ToogleCellColumn(''ACTINTKN'');html'
||'_ToogleCellColumn(''RSLUTNDT''); html_ToogleCellColumn(''RSLUTNMD'');html_ToogleCellColumn(''POSTRSRT'');html_ToogleCellColumn(''STISNTRC'');'
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
 p_id=>wwv_flow_api.id(101798558252361756)
,p_name=>'P286_SRLNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Srlno'
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
 p_id=>wwv_flow_api.id(101798932058361758)
,p_name=>'P286_PASTESRLNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pastesrlno'
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
 p_id=>wwv_flow_api.id(101799272619361758)
,p_name=>'P286_MESSAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101799696300361758)
,p_name=>'P286_GRDCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Grdcode'
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
 p_id=>wwv_flow_api.id(101800094388361758)
,p_name=>'P286_COL1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101800550088361758)
,p_name=>'P286_COL2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col2'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101800873814361758)
,p_name=>'P286_COL3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col3'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101801294918361758)
,p_name=>'P286_COL4'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col4'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101801764685361758)
,p_name=>'P286_SATISFACTIONAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_api.id(101802123456361758)
,p_name=>'P286_COL5'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col5'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101802527092361758)
,p_name=>'P286_COL6'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col6'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101802948105361759)
,p_name=>'P286_COL7'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col7'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101803269631361759)
,p_name=>'P286_COL8'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(101797760703361756)
,p_prompt=>'Col8'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>5
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
 p_id=>wwv_flow_api.id(101821816312361767)
,p_computation_sequence=>10
,p_computation_item=>'P278_QUSTYP'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P278_QUSTYP.'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(101819824246361764)
,p_tabular_form_region_id=>wwv_flow_api.id(101803695044361759)
,p_validation_name=>'QUESTION not null'
,p_validation_sequence=>80
,p_validation=>'QUESTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(101817698933361764)
,p_associated_column=>'QUESTION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(101820219242361765)
,p_tabular_form_region_id=>wwv_flow_api.id(101803695044361759)
,p_validation_name=>'CUSTFDBK must be numeric'
,p_validation_sequence=>130
,p_validation=>'CUSTFDBK'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>'custfdbk'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_associated_column=>'CUSTFDBK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(101820603126361765)
,p_tabular_form_region_id=>wwv_flow_api.id(101803695044361759)
,p_validation_name=>'compare feedback no with 5'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'qusmrk number;',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f04.COUNT',
'   LOOP',
'    ',
'qusmrk := apex_application.g_f04 (i);',
'',
'if qusmrk > 5 then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Question Mark cannot be more than Five ''',
'            || qusmrk ',
'            ||''>'' ',
'            ||5;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'mark1'
,p_validation_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101823838988361768)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_SERVICE_INFO'
,p_condition_element=>'P286_SERVICE_INFO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101824363926361768)
,p_event_id=>wwv_flow_api.id(101823838988361768)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_QUSTYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101824811335361768)
,p_event_id=>wwv_flow_api.id(101823838988361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101825351919361768)
,p_event_id=>wwv_flow_api.id(101823838988361768)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_MESSAGE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101825814881361768)
,p_event_id=>wwv_flow_api.id(101823838988361768)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_QUSTYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101826261087361768)
,p_name=>'add rows javascript'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101826753878361768)
,p_event_id=>wwv_flow_api.id(101826261087361768)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P286_CONTACT_DATE is null then',
'select distinct CONTCTDT into :P286_CONTACT_DATE from nmsrvcsi',
'WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND COMPCODE = ''100'';',
'end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P286_SERVICE_INFO,P286_QUSTYPE'
,p_attribute_03=>'P286_CONTACT_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101827252622361768)
,p_event_id=>wwv_flow_api.id(101826261087361768)
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
'for (i = 0; i <=2; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'document.getElementById(''STISFTYP'').readOnly = true;',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101827569844361768)
,p_name=>'on page load hide item'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101828147021361768)
,p_event_id=>wwv_flow_api.id(101827569844361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'test(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101828508225361768)
,p_name=>'clik srlno'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_SRLNO'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101829033548361768)
,p_event_id=>wwv_flow_api.id(101828508225361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P286_PASTESRLNO:=:P286_SRLNO;',
'end;'))
,p_attribute_02=>'P286_SRLNO'
,p_attribute_03=>'P286_PASTESRLNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101829369540361768)
,p_name=>'modal window'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_SATISFCTYP'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'document.getElementById("P286_SATISFCTYP").value==''002'''
,p_bind_type=>'live'
,p_bind_event_type=>'click'
,p_da_event_comment=>'document.getElementById("P86_SATISFCTYP").value==''Dis-Satisfied'''
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101829885484361768)
,p_event_id=>wwv_flow_api.id(101829369540361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_QUSTYPE,P59_SERVICE_INFO:&P286_QUSTYPE.,&P286_SERVICE_INFO.'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'55'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101830330371361768)
,p_name=>'add question'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_QUSTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101830834346361768)
,p_event_id=>wwv_flow_api.id(101830330371361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
' s_docnumbr varchar2(20);',
' CURSOR CUR_SRVC IS',
' select docnumbr,doctdate,itemcode,itemdesc,brand,registno,chasisno,partycde,SRVCNOPK',
' from vwnmsvci',
' where srvcnopk=:P286_SERVICE_INFO',
' AND COMPCODE=''100'';',
' srvc_rec cur_srvc%rowtype;',
' cunt number;',
' begin',
' select count(distinct DOCNUMBR) into cunt from nmsrvcsi',
' where SRVNOFK2=:P286_SERVICE_INFO',
' and FEDBKTYP=:P286_QUSTYPE;',
' ',
' if cunt=0 then ',
' Docnumber_Generation(''100'', ''NM'', ''QU'',1, TRUNC(SYSDATE,''dd''), NULL, ''NM'', s_docnumbr);',
' ',
' open cur_srvc; fetch cur_srvc into srvc_rec;close cur_srvc;',
'                     ',
' for q in (select COMPCODE, DEFPOINT, GRDECODE, OPRSTAMP, QUESTION, REMARKSS, SERLNUMB,TYPDTLFK from nmsrvqus',
' where compcode=''100'' ',
' --TYPDTLFK=nvl(:P_TYPDTLFK,TYPDTLFK)',
' and QUESTYPE=:P286_QUSTYPE',
' order by serlnumb) ',
' loop',
'                       ',
' insert into NMSRVCSI',
' (COMPCODE, CUSTFDBK, DOCNUMBR, DOCTDATE,   DOCTTYPE,SUBTTYPE, GRDECDE, OPRSTAMP, QUESTION, REMARKSS,partycde, SERLNUMB, SRVNOFK2,FEDBKTYP)',
'  values (''100'',Q.DEFPOINT,s_docnumbr,  trunc(sysdate),''QU'',1,      NULL,:APP_USER, Q.QUESTION,NULL,srvc_rec.partycde,Q.SERLNUMB,:P286_SERVICE_INFO,:P286_QUSTYPE);',
' end loop;',
'  commit;',
'  else ',
'  :P286_MESSAGE:=''This service code already exist'';',
'  end if;',
' END;'))
,p_attribute_02=>'P286_SERVICE_INFO,P286_QUSTYPE'
,p_attribute_03=>'P286_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101831257065361768)
,p_name=>'Mark validation on tabular form'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_GRDCODE'
,p_condition_element=>'P286_GRDCODE'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'5'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101831707100361768)
,p_event_id=>wwv_flow_api.id(101831257065361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit(''mark1'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101832086386361768)
,p_name=>'call modal window click edit link'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.show_modal'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101832625667361768)
,p_event_id=>wwv_flow_api.id(101832086386361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::P59_QUSTYPE,P59_SERVICE_INFO,P59_SRLNO:&P286_QUSTYPE.,&P286_SERVICE_INFO.,&P286_PASTESRLNO.'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'55'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101832979315361768)
,p_name=>'submit page '
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpagemanualclose'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101833518920361770)
,p_event_id=>wwv_flow_api.id(101832979315361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:apex.submit();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101833886013361770)
,p_name=>'update statement on feedback mark on tabular form'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f04"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101834463381361770)
,p_event_id=>wwv_flow_api.id(101833886013361770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P286_GRDCODE<=5 then',
'UPDATE NMSRVCSI',
'   SET ',
'       CUSTFDBK = :P286_GRDCODE,',
'       STISFTYP = :P286_SATISFCTYP',
' WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND SERLNUMB = :P286_PASTESRLNO',
'   AND COMPCODE = ''100'';',
'commit;',
'end if;',
'',
'end;',
'',
'begin',
'if :P286_GRDCODE>3 then',
'UPDATE NMSRVCSI',
'   SET ',
'       CUSTFDBK = :P286_GRDCODE,',
'       STISFTYP = :P286_SATISFCTYP,',
'       COMPLNTDT = '''',',
'       VOC       ='''',',
'      COMPLCLS ='''',',
'      CMPLSUCLS='''',',
'      ACTINTKN='''',',
'      RSLUTNDT='''',',
'      RSLUTNMD='''',',
'      RSLUTPRS='''',',
'      POSTRSRT='''',',
'      STISNTRC='''',',
'      CONTCTDT=''''',
' WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND SERLNUMB = :P286_PASTESRLNO',
'   AND COMPCODE = ''100'';',
'commit;',
'end if;',
'end;'))
,p_attribute_02=>'P286_GRDCODE,P286_SATISFCTYP,P286_SERVICE_INFO,P286_QUSTYPE,P286_PASTESRLNO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
',',
'       COL1     = :P86_GRDCODE,',
'       COL1     = :P86_COL1,',
'       COL2     = :P86_COL2,',
'       COL3     = :P86_COL3,',
'       COL4     = :P86_COL4,',
'       COL5     = :P86_COL5,',
'       COL6     = :P86_COL6,',
'       COL7     = :P86_COL7,',
'       COL8     = :P86_COL8'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101834851873361770)
,p_name=>'close modal window'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpagemanualclose'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101835315606361770)
,p_event_id=>wwv_flow_api.id(101834851873361770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101835707660361770)
,p_name=>'update statement on Remarks on tabular form'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f17"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101836244070361770)
,p_event_id=>wwv_flow_api.id(101835707660361770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'UPDATE NMSRVCSI',
'   SET ',
'       REMARKSS = :P286_MESSAGE',
' WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND SERLNUMB = :P286_PASTESRLNO',
'   AND COMPCODE = ''100'';',
'commit;',
'end;',
'',
'',
''))
,p_attribute_02=>'P286_SERVICE_INFO,P286_QUSTYPE,P286_PASTESRLNO,P286_MESSAGE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101836614479361770)
,p_name=>'Satisfaction name set'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_SATISFCTYP'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101837074044361770)
,p_event_id=>wwv_flow_api.id(101836614479361770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select SYCODDES ',
'into :P286_SATISFACTIONAME',
'from sycodmas',
'where COMPCODE=''999''',
'and MODLCODE=''NM''',
'and SYHRDCDE=''GRD''',
'and SYSOFCDE=:P286_SATISFCTYP;',
'end;'))
,p_attribute_02=>'P286_SATISFCTYP'
,p_attribute_03=>'P286_SATISFACTIONAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101837519466361770)
,p_name=>'clear column1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL2'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101837991997361772)
,p_event_id=>wwv_flow_api.id(101837519466361770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101822942112361768)
,p_name=>'clear column2'
,p_event_sequence=>151
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL3'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101823450164361768)
,p_event_id=>wwv_flow_api.id(101822942112361768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL2'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101841106965361773)
,p_name=>'clear column3'
,p_event_sequence=>161
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL4'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101841587026361773)
,p_event_id=>wwv_flow_api.id(101841106965361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL3'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101842038234361773)
,p_name=>'clear column4'
,p_event_sequence=>171
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL5'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101842487526361773)
,p_event_id=>wwv_flow_api.id(101842038234361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL4'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101842868021361773)
,p_name=>'clear column5'
,p_event_sequence=>181
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL6'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101843371255361773)
,p_event_id=>wwv_flow_api.id(101842868021361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL5'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101843845992361773)
,p_name=>'clear column6'
,p_event_sequence=>191
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL7'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101844286333361773)
,p_event_id=>wwv_flow_api.id(101843845992361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL6'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101838452529361772)
,p_name=>'clear column7'
,p_event_sequence=>201
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL8'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101838938670361772)
,p_event_id=>wwv_flow_api.id(101838452529361772)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL7'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101839268271361773)
,p_name=>'clear column8'
,p_event_sequence=>211
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P286_COL1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101839851989361773)
,p_event_id=>wwv_flow_api.id(101839268271361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P286_COL8'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101840181798361773)
,p_name=>'Update Contact Date when add contact Date'
,p_event_sequence=>221
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(101818545377361764)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101840713326361773)
,p_event_id=>wwv_flow_api.id(101840181798361773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P286_CONTACT_DATE IS NOT NULL then',
'UPDATE NMSRVCSI',
'   SET ',
'       CONTCTDT = :P286_CONTACT_DATE',
' WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND COMPCODE = ''100'';',
'commit;',
'else',
'UPDATE NMSRVCSI',
'   SET ',
'       CONTCTDT = ''''',
' WHERE SRVNOFK2 = :P286_SERVICE_INFO',
'   AND FEDBKTYP = :P286_QUSTYPE',
'   AND COMPCODE = ''100'';',
'end if;',
'end;'))
,p_attribute_02=>'P286_CONTACT_DATE,P286_SERVICE_INFO,P286_QUSTYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101820884604361767)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(101803695044361759)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSRVCSI'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101817698933361764)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'request=expression1',
'JQUERY_SELECTOR'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101821352751361767)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(101803695044361759)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSRVCSI'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101822149285361767)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add_question'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' s_docnumbr varchar2(20);',
' CURSOR CUR_SRVC IS',
' select docnumbr,doctdate,itemcode,itemdesc,brand,registno,chasisno,partycde,SRVCNOPK',
' from vwnmsvci',
' where srvcnopk=:P286_SERVICE_INFO',
' AND COMPCODE=''100'';',
' srvc_rec cur_srvc%rowtype;',
' begin',
'  ',
' Docnumber_Generation(''100'', ''NM'', ''QU'',1, TRUNC(SYSDATE,''dd''), NULL, ''NM'', s_docnumbr);',
' ',
' open cur_srvc; fetch cur_srvc into srvc_rec;close cur_srvc;',
'                     ',
' for q in (select COMPCODE, DEFPOINT, GRDECODE, OPRSTAMP, QUESTION, REMARKSS, SERLNUMB,TYPDTLFK from nmsrvqus',
' where compcode=''100'' ',
' --TYPDTLFK=nvl(:P_TYPDTLFK,TYPDTLFK)',
' and QUESTYPE=:P286_QUSTYPE',
' order by serlnumb) ',
' loop',
'                       ',
' insert into NMSRVCSI',
' (COMPCODE, CUSTFDBK, DOCNUMBR, DOCTDATE,   DOCTTYPE,SUBTTYPE, GRDECDE, OPRSTAMP, QUESTION, REMARKSS,partycde, SERLNUMB, SRVNOFK2,FEDBKTYP)',
'  values (''100'',Q.DEFPOINT,s_docnumbr,  trunc(sysdate),''QU'',1,      NULL,:APP_USER, Q.QUESTION,NULL,srvc_rec.partycde,Q.SERLNUMB,:P286_SERVICE_INFO,:P286_QUSTYPE);',
' end loop;',
'  commit;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(101819288674361764)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101822547491361767)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add feedback Question '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' ',
' s_docnumbr varchar2(20);',
' CURSOR CUR_SRVC IS',
' select docnumbr,doctdate,itemcode,itemdesc,brand,registno,chasisno,partycde,SRVCNOPK',
' from vwnmsvci',
' where srvcnopk=:P286_SERVICE_INFO',
' AND COMPCODE=''100'';',
' srvc_rec cur_srvc%rowtype;',
' cunt number;',
' begin',
' select count(distinct DOCNUMBR) into cunt from nmsrvcsi',
' where SRVNOFK2=:P286_SERVICE_INFO',
'and FEDBKTYP=:P286_QUSTYP;',
' ',
' if cunt=0 then ',
' Docnumber_Generation(''100'', ''NM'', ''QU'',1, TRUNC(SYSDATE,''dd''), NULL, ''NM'', s_docnumbr);',
' ',
' open cur_srvc; fetch cur_srvc into srvc_rec;close cur_srvc;',
'                     ',
' for q in (select COMPCODE, DEFPOINT, GRDECODE, OPRSTAMP, QUESTION, REMARKSS, SERLNUMB,TYPDTLFK from nmsrvqus',
' where compcode=''100''',
' --TYPDTLFK=nvl(:P_TYPDTLFK,TYPDTLFK)',
' and QUESTYPE=:P286_QUSTYP',
' order by serlnumb) ',
'',
' loop',
'                       ',
' insert into NMSRVCSI',
' (COMPCODE, CUSTFDBK, DOCNUMBR, DOCTDATE,   DOCTTYPE,SUBTTYPE, GRDECDE, OPRSTAMP, QUESTION, REMARKSS,partycde, SERLNUMB, SRVNOFK2,FEDBKTYP)',
'  values (''100'',Q.DEFPOINT,s_docnumbr,  trunc(sysdate),''QU'',1,      NULL,:APP_USER, Q.QUESTION,NULL,srvc_rec.partycde,Q.SERLNUMB,:P286_SERVICE_INFO,:P286_QUSTYP);',
'',
' end loop;',
'',
'  commit;',
'  else ',
'null;',
' -- :P93_MESSAGE:=''This service code already exist'';',
'  end if;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
' END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
