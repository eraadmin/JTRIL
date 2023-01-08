prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
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
 p_id=>129
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Cost Negotiation'
,p_step_title=>'Cost Negotiation'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'hiliteJob(document.getElementById(''row_&P129_NEXTESTIMATION.''));',
'</script>'))
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function estimatedocnum(pThis)',
'{',
'    ',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'$(document).ready(function(){',
'  $(''#P129_E_DOCNUMBR'').trigger(''click'');',
'});',
'    if (html_GetElement(''f05_''+vRow).value === ""){',
'html_GetElement(''f05_''+vRow).value=',
'document.getElementById(''P129_E_DOCNUMBR'').value;',
'html_GetElement(''f10_''+vRow).value=',
'document.getElementById(''P129_E_DOCTDATE'').value;',
'    }',
'  document.getElementById(''P129_ID'').value = ''f17_''+vRow;  ',
'}',
'</script>',
'<script type="text/javascript">',
'function getid(pThis)',
'{',
'    ',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'    var y = document.getElementById(''P129_ID'').value;',
'   document.getElementById(''P129_ID'').value = y; ',
'  $(document).ready(function(){',
'  $(''#P129_ID'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function nmnegmaspd(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'var y = document.getElementById(''P129_C_NEGMASPK'').value;',
'if (html_GetElement(''f05_''+vRow).value === ""){     ',
'  html_GetElement(''f31_''+vRow).value = y;    ',
'for (i = 0; i <=vRow; i++)',
'{',
'  if(i != 1) {',
'      html_GetElement(''f31_''+vRow).value = y++;',
'  }',
'',
'};',
'}',
'}',
'</script>',
'<script type="text/javascript">',
'function estimatejobno(pThis)',
'{',
'    ',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'$(document).ready(function(){',
'  $(''#P129_ESTJOBNO'').trigger(''click'');',
'});',
'    if (html_GetElement(''f05_''+vRow).value === ""){',
'html_GetElement(''f22_''+vRow).value=',
'document.getElementById(''P129_ESTJOBNO'').value;',
'    }  ',
' ',
'}',
'</script>',
'<script type="text/javascript">',
'function tabularestimation(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'   document.getElementById(''P129_NEXTESTIMATE1'').value=html_GetElement(''f05_''+vRow).value; ',
'  $(document).ready(function(){',
'  $(''#P129_NEXTESTIMATE1'').trigger(''click'');',
'});',
'   ',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function estmjobno(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'',
'if (html_GetElement(''f22_''+vRow).value === ""){     ',
' window.document.getElementById(''P129_ESTJOBNO'').focus();   ',
'}',
'}',
'</script>',
'',
'<script type="text/javascript">',
' NS4 = (document.layers) ? true : false;',
' function f_filter_shuttle_item(pThis,pShuttle1,pShuttle2,event)',
'{ ',
' var code = 0;',
' if (NS4)',
' code = event.which;',
' else',
' code = event.keyCode;',
' if (code==13)',
' {',
'    var l_Return = null;',
'    var l_Select = html_GetElement(pShuttle1);',
'	',
'    var p_array = '''';',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=filter_shuttle_item'',0);',
'	',
'    for (i = 0; i < $x(pShuttle2).length; i++)',
'     {',
'  	  if (p_array == '''')',
'	  {',
'      p_array = $x(pShuttle2)[i].value;',
'	  }',
'	  else',
'	  {',
'      p_array = p_array + '':'' + $x(pShuttle2)[i].value;',
'	  }',
'     }',
'',
'    get.add(''SHUTTLE_ITEM_VALUE'', p_array);',
'    get.add(''FILTER_ITEM_VALUE'', pThis.value);',
'  ',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn && l_Select){',
'        var l_Count = gReturn.getElementsByTagName("option").length;',
'        l_Select.length = 0;',
'        for(var i=0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("option")[i];',
'            appendToSelect(l_Select, l_Opt_Xml.getAttribute(''value''), ',
'                                     l_Opt_Xml.firstChild.nodeValue)',
'        }',
'    }',
'    get = null;',
' }',
'}',
' ',
' function appendToSelect(pShuttle1, pValue, pContent) {',
'    var l_Opt = document.createElement("option");',
'    l_Opt.value = pValue;',
'    if(document.all)',
'	{',
'        pShuttle1.options.add(l_Opt);',
'        l_Opt.innerText = pContent;',
'	}',
'	else',
'	{',
'		l_Opt.appendChild(document.createTextNode(pContent));',
'	    pShuttle1.appendChild(l_Opt);',
'    }',
'',
'}',
'</script>',
'',
'',
'<script language="JavaScript" type="text/javascript">',
'<!--',
'',
'function run_my_ajax_process(){',
'var gReturn = null;',
'var get = null;',
'get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=my_ajax_process'',$v(''pFlowStepId''));',
'gReturn = get.get();',
'',
'if (gReturn == ''1''){',
'var x = confirm("Want to create estimation jobno?");',
'    if(x){      ',
'apex.item(''P129_ESTJOBNO'').setValue( "" );',
'$(document).ready(function(){',
'  $(''#P129_ESTJOBNO'').trigger(''click'');',
'});',
'  ',
'} ',
'    var gReturn = null;',
'var get = null;',
'get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=fpr_generate_bill_number'',$v(''pFlowStepId''));',
'gReturn = get.get();',
'',
'if (gReturn == ''4''){',
'var x = confirm(''Do You Want To Generate a BILL?'');',
'     if(x){',
'         if (document.getElementById(''P129_STARTDTE'').value =='''') {',
'          javascript:$(''#Switch'').dialog(',
'    {autoOpen: true,',
'        width:450,',
'        height: 300,',
'        modal: true',
'    }).dialog(''moveToTop'');   ',
'         }',
'  if (document.getElementById(''P129_SRVCSTRTFLG'').value ==''Y'') {',
'apex.item(''P129_JOBBILL'').setValue( "" );',
'$(document).ready(function(){',
'  $(''#P129_JOBBILL'').trigger(''click'');',
'});',
'',
'var y= apex.item(''P129_JOBBILL_MESSAGE'').getValue( );',
'    alert(''Generate a Bill Number 1'' +''  ''+ y + '' . '');',
'           }',
'     }',
'    else{',
'        javascript:apex.submit();',
'    }',
'}',
'}',
'    if (gReturn == ''5''){',
'var x = confirm(''Do You Want To Generate a BILL?'');',
'      if(x){',
'         if (document.getElementById(''P129_STARTDTE'').value =='''') {',
'          javascript:$(''#Switch'').dialog(',
'    {autoOpen: true,',
'        width:450,',
'        height: 300,',
'        modal: true',
'    }).dialog(''moveToTop'');   ',
'         }',
'  if (document.getElementById(''P129_SRVCSTRTFLG'').value ==''Y'') {',
'apex.item(''P129_JOBBILL'').setValue( "" );',
'$(document).ready(function(){',
'  $(''#P129_JOBBILL'').trigger(''click'');',
'});',
'',
'var y= apex.item(''P129_JOBBILL_MESSAGE'').getValue( );',
'    alert(''Generate a Bill Number 1'' +''  ''+ y + '' . '');',
'           }',
'     }',
'    }',
'if (gReturn == ''2''){',
'var x = confirm(''Receive Quantity is not found for this Item:  '');',
'}',
'if (gReturn == ''0'') {',
'var x = confirm(''Estimation job number alredy exist & bill number already generate, you are not change this estimation no.'');',
'    if(x){',
'apex.item(''P129_ESTJOBNO'').setValue( "1" );',
'}',
'}',
'}',
'</script> ',
'<script language="JavaScript" type="text/javascript">',
'function jobnumgenerate(){',
'if (document.getElementById(''P129_SRVCSTRTFLG'').value ==''Y'') {',
'apex.item(''P129_JOBBILL'').setValue( "" );',
'$(document).ready(function(){',
'  $(''#P129_JOBBILL'').trigger(''click'');',
'});',
'',
'var y= apex.item(''P129_JOBBILL_MESSAGE'').getValue( );',
'    alert(''Generate a Bill Number 1'' +''  ''+ y + '' . '');',
'           }',
'}',
'</script>',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
''))
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
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170316124304'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50414387107781798)
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
 p_id=>wwv_flow_api.id(50414800322781800)
,p_plug_name=>'mid'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>19
,p_plug_new_grid_column=>false
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51561987004099997)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(50414800322781800)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>81
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57290064441222074)
,p_plug_name=>'a'
,p_parent_plug_id=>wwv_flow_api.id(50414800322781800)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51331829554120496)
,p_name=>'Estimation Details'
,p_parent_plug_id=>wwv_flow_api.id(57290064441222074)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'"UPDOCTYP",',
'"UPSUBTYP",',
'"UPDOCNUM",',
'"UPDOCDTE",',
'"UPDOCSRL",',
'"DWDOCTYP",',
'"DWSUBTYP",',
'"DWDOCNUM",',
'"DWDOCDTE",',
'"DWDOCSRL",',
'"REMARKSS",',
'"POSTFLAG",',
'"PRNTFLAG",',
'"STATUSCD",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'CASE',
'         WHEN COMPLETE= ''N'' THEN ''unchecked="unchecked"''',
'         WHEN COMPLETE= ''Y'' THEN ''checked="checked"''',
'       END "COMPLETE",',
'"APRVFLAG",',
'"ESTJOBNO",',
'"SRVCNOFK",',
'"ADITIONL",',
'"NEGMASPK",',
'"TOTCHARG",',
'"TOTPAMNT",',
'"TOTALVAT",',
'"BILLNOFK",',
'"MODIFYDT",',
'CASE',
'         WHEN COMPLETE= ''N'' THEN ''unchecked="unchecked"''',
'         WHEN COMPLETE= ''Y'' THEN ''checked="checked"''',
'       END AS ADMIN_USER_CHECKBOX,',
'case when e.BILLNOFK is null then',
'Case when (select ',
'count(distinct NEGITMFK) Total_item',
'from NMNEGITM',
'where NEGITMFK=E.NEGMASPK',
'and SRVCNOFK=E.SRVCNOFK)=0 then',
'''<a id="f17_000#ROWNUM#" class="Spare" style="cursor: pointer;font-size: 10px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="blue";>'' || '' Add Parts''||''</font></a>''',
'else ''<a id="f17_000#ROWNUM#" class="Spare"style="cursor: pointer;font-size: 10px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="green";>''|| '' Modify Parts''||''</font></a>''',
'end',
'else null end Spare_parts,',
'case when e.BILLNOFK is null then',
'Case when (select ',
'count(distinct NEGCRGFK) Total_item',
'from NMNEGCRG',
'where NEGCRGFK=E.NEGMASPK',
'and SRVCNOFK=E.SRVCNOFK)=0 then',
'''<a id="f17_000#ROWNUM#" class="Charge"style="cursor: pointer;margin-left: 9%;font-size: 10px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="blue";>''|| ''  Add Charge ''||''</font></a>''',
'else ''<a id="f17_000#ROWNUM#" class="Charge"style="cursor: pointer;margin-left: 6%;font-size: 9px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="green";>''|| ''  Modify Charge''||''</font></a>''',
'end ',
'else null end Service_Charge,',
'Case when (select ',
'count(distinct DOCNUMBR) Total_item',
'from NMNEGMAS',
'where NEGMASPK=E.NEGMASPK',
'and SRVCNOFK=E.SRVCNOFK)>0 then',
'''<a id="f17_000#ROWNUM#" class="Preview"style="cursor: pointer;margin-left: 9%;font-size: 10px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="blue";>''|| ''  Preview ''||''</font></a>''',
'else ''<a id="f17_000#ROWNUM#" class="Preview"style="cursor: pointer;margin-left: 6%;font-size: 9px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="green";>''|| '' No  Preview ''||''</font></a>''',
'end preview,',
'Case when (select ',
'count(distinct NEGITMFK) Total_item',
'from NMNEGITM',
'where NEGITMFK=E.NEGMASPK',
'and SRVCNOFK=E.SRVCNOFK)>0 then',
'''<a id="f17_000#ROWNUM#" class="Request"style="cursor: pointer;margin-left: 1%;font-size: 10px;font-weight: bold;"onclick="tabularestimation(this);hiliteJob(this);"><font color="blue";>''|| '' Stock Transfer Request ''||''</font></a>''',
'else null',
'end Request',
'from "#OWNER#"."NMNEGMAS" "E"',
'where SRVCNOFK=:P129_SERVNO',
'order by DOCNUMBR',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_SERVNO'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51380122754120583)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51332419044120505)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51951063069464612)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51333240808120518)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51333653290120518)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51333976142120519)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_column_heading=>'Estimation<br>No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'readonly="readonly"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51334376342120519)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>11
,p_column_heading=>'Estimation<br>Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'onchange="estimatedocnum(this);nmnegmaspd(this);tabularestimation(this);hiliteJob(this);" '
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51334812598120519)
,p_query_column_id=>8
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>7
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51335217152120519)
,p_query_column_id=>9
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>8
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51335567494120521)
,p_query_column_id=>10
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>9
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51336045854120521)
,p_query_column_id=>11
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>10
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'UPDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51336446804120522)
,p_query_column_id=>12
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>12
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'UPSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51336784599120522)
,p_query_column_id=>13
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>13
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'UPDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51337170864120522)
,p_query_column_id=>14
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>14
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'UPDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51337610711120522)
,p_query_column_id=>15
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>15
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'UPDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51338012203120524)
,p_query_column_id=>16
,p_column_alias=>'DWDOCTYP'
,p_column_display_sequence=>16
,p_column_heading=>'Dwdoctyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DWDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51338431736120524)
,p_query_column_id=>17
,p_column_alias=>'DWSUBTYP'
,p_column_display_sequence=>17
,p_column_heading=>'Dwsubtyp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DWSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51338851154120524)
,p_query_column_id=>18
,p_column_alias=>'DWDOCNUM'
,p_column_display_sequence=>19
,p_column_heading=>'Dwdocnum'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DWDOCNUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51339263357120524)
,p_query_column_id=>19
,p_column_alias=>'DWDOCDTE'
,p_column_display_sequence=>21
,p_column_heading=>'Dwdocdte'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DWDOCDTE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51339617099120524)
,p_query_column_id=>20
,p_column_alias=>'DWDOCSRL'
,p_column_display_sequence=>20
,p_column_heading=>'Dwdocsrl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'DWDOCSRL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51340015009120524)
,p_query_column_id=>21
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>18
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'REMARKSS'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'onchange="estimatedocnum(this);nmnegmaspd(this);"',
'',
'onclick="tabularestimation(this);hiliteJob(this);"'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51340370716120524)
,p_query_column_id=>22
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>22
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'POSTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51340852479120524)
,p_query_column_id=>23
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>24
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'PRNTFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51341211648120526)
,p_query_column_id=>24
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>25
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51341587743120526)
,p_query_column_id=>25
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>26
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51342044599120526)
,p_query_column_id=>26
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>27
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51342375750120526)
,p_query_column_id=>27
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>28
,p_column_heading=>'Com<br>plete?'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#COMPLETE#" name="f27" id="f27_000#ROWNUM#" onclick="tabularestimation(this);" />'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_cattributes=>'onclick="tabularestimation(this);" '
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'COMPLETE'
,p_column_comment=>'onchange="estimatejobno(this);" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51342774845120526)
,p_query_column_id=>28
,p_column_alias=>'APRVFLAG'
,p_column_display_sequence=>29
,p_column_heading=>'Aprvflag'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'APRVFLAG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51343240059120526)
,p_query_column_id=>29
,p_column_alias=>'ESTJOBNO'
,p_column_display_sequence=>23
,p_column_heading=>'Estimation<br>JobNo.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_cattributes=>'readonly="readonly"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'ESTJOBNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51343610980120526)
,p_query_column_id=>30
,p_column_alias=>'SRVCNOFK'
,p_column_display_sequence=>30
,p_column_heading=>'Srvcnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'SRVCNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51343969721120526)
,p_query_column_id=>31
,p_column_alias=>'ADITIONL'
,p_column_display_sequence=>31
,p_column_heading=>'Aditionl'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'ADITIONL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51344375200120526)
,p_query_column_id=>32
,p_column_alias=>'NEGMASPK'
,p_column_display_sequence=>32
,p_column_heading=>'Negmaspk'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'NEGMASPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51344794986120529)
,p_query_column_id=>33
,p_column_alias=>'TOTCHARG'
,p_column_display_sequence=>33
,p_column_heading=>'Totcharg'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'TOTCHARG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51345229072120529)
,p_query_column_id=>34
,p_column_alias=>'TOTPAMNT'
,p_column_display_sequence=>34
,p_column_heading=>'Totpamnt'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'TOTPAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51345604073120529)
,p_query_column_id=>35
,p_column_alias=>'TOTALVAT'
,p_column_display_sequence=>35
,p_column_heading=>'Totalvat'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'TOTALVAT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51345981721120529)
,p_query_column_id=>36
,p_column_alias=>'BILLNOFK'
,p_column_display_sequence=>36
,p_column_heading=>'Billnofk'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'BILLNOFK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51346421155120529)
,p_query_column_id=>37
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>37
,p_column_heading=>'Modifydt'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMNEGMAS'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68775609944529434)
,p_query_column_id=>38
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>42
,p_column_heading=>'Admin User Checkbox'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#COMPLETE#" name="f50" id="f50_#ROWNUM#"/>'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57367011553750447)
,p_query_column_id=>39
,p_column_alias=>'SPARE_PARTS'
,p_column_display_sequence=>38
,p_column_heading=>'Spare<br>Parts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57424712960774722)
,p_query_column_id=>40
,p_column_alias=>'SERVICE_CHARGE'
,p_column_display_sequence=>39
,p_column_heading=>'Service<br>Charge&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_column_default=>'Add Parts'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(62088694983688084)
,p_query_column_id=>41
,p_column_alias=>'PREVIEW'
,p_column_display_sequence=>40
,p_column_heading=>'Preview&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(62209151332846011)
,p_query_column_id=>42
,p_column_alias=>'REQUEST'
,p_column_display_sequence=>41
,p_column_heading=>'Request&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57290407566224002)
,p_plug_name=>'b'
,p_parent_plug_id=>wwv_flow_api.id(50414800322781800)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52051121903579192)
,p_plug_name=>' b1'
,p_parent_plug_id=>wwv_flow_api.id(57290407566224002)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52188376608327429)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47595508514858189)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54280402635501937)
,p_plug_name=>' '
,p_region_name=>'Switch'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57307123484401388)
,p_plug_name=>'c'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>90
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57307467569404773)
,p_plug_name=>'c1'
,p_parent_plug_id=>wwv_flow_api.id(57307123484401388)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57308236089458346)
,p_name=>'Spare Parts Reports'
,p_parent_plug_id=>wwv_flow_api.id(57307467569404773)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR,DOCTDATE,',
'count(distinct ITEMCODE) Total_item,',
'sum(ORGNQNTY) Total_qty,',
'sum(MSFCAMNT) Amount',
'from NMNEGITM',
'where  SRVCNOFK=:P129_SRVCNOFK',
'group by DOCNUMBR,DOCTDATE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(58778097071363864)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Docnumbr'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(58778493960363864)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57308769303458357)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Total Item'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57309253688458360)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Total Qty'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57309598394458361)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57307936706407527)
,p_plug_name=>'c2'
,p_parent_plug_id=>wwv_flow_api.id(57307123484401388)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(57312312451520707)
,p_name=>'Service Charge Reports'
,p_parent_plug_id=>wwv_flow_api.id(57307936706407527)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR,DOCTDATE,',
'count(distinct TEXTCODE) Total_item,',
'sum(TRNSQNTY) Total_qty,',
'sum(TEXTAMNT) Amount',
'from NMNEGCRG',
'where  SRVCNOFK=:P129_SRVCNOFK',
'group by DOCNUMBR,DOCTDATE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(58780591048367843)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Docnumbr'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(58781003610367843)
,p_query_column_id=>2
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57312928425520710)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_ITEM'
,p_column_display_sequence=>3
,p_column_heading=>'Total Item'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57313363856520710)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Total Qty'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(57313709974520710)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>5
,p_column_heading=>'Amount'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62195888553895527)
,p_plug_name=>' .'
,p_region_name=>'Modal'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>140
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<iframe src="&P129_XURLDYNMC." width="925" height="825">',
'  <p>Your browser does not support iframes.</p>',
'</iframe>'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62206277836626132)
,p_plug_name=>' '
,p_region_name=>'Modal1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>150
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62366580856745152)
,p_plug_name=>'a'
,p_parent_plug_id=>wwv_flow_api.id(62206277836626132)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>151
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62367004818749319)
,p_plug_name=>'b'
,p_parent_plug_id=>wwv_flow_api.id(62206277836626132)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>152
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62388484178337632)
,p_plug_name=>'docnumer show'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>162
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
' NS4 = (document.layers) ? true : false;',
' function f_filter_shuttle_item(pThis,pShuttle1,pShuttle2,event)',
'{ ',
' var code = 0;',
' if (NS4)',
' code = event.which;',
' else',
' code = event.keyCode;',
' if (code==13)',
' {',
'    var l_Return = null;',
'    var l_Select = html_GetElement(pShuttle1);',
'	',
'    var p_array = '''';',
'    var get = new htmldb_Get(null,&APP_ID.,''APPLICATION_PROCESS=filter_shuttle_item'',0);',
'	',
'    for (i = 0; i < $x(pShuttle2).length; i++)',
'     {',
'  	  if (p_array == '''')',
'	  {',
'      p_array = $x(pShuttle2)[i].value;',
'	  }',
'	  else',
'	  {',
'      p_array = p_array + '':'' + $x(pShuttle2)[i].value;',
'	  }',
'     }',
'',
'    get.add(''SHUTTLE_ITEM_VALUE'', p_array);',
'    get.add(''FILTER_ITEM_VALUE'', pThis.value);',
'  ',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn && l_Select){',
'        var l_Count = gReturn.getElementsByTagName("option").length;',
'        l_Select.length = 0;',
'        for(var i=0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("option")[i];',
'            appendToSelect(l_Select, l_Opt_Xml.getAttribute(''value''), ',
'                                     l_Opt_Xml.firstChild.nodeValue)',
'        }',
'    }',
'    get = null;',
' }',
'}',
' ',
' function appendToSelect(pShuttle1, pValue, pContent) {',
'    var l_Opt = document.createElement("option");',
'    l_Opt.value = pValue;',
'    if(document.all)',
'	{',
'        pShuttle1.options.add(l_Opt);',
'        l_Opt.innerText = pContent;',
'	}',
'	else',
'	{',
'		l_Opt.appendChild(document.createTextNode(pContent));',
'	    pShuttle1.appendChild(l_Opt);',
'    }',
'',
'}',
'</script>',
'CHECKBOX List:',
' ',
'<div id="checkListDisp">&SHUTTLE_ITEM_VALUE.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62388785200338086)
,p_plug_name=>'Program name show'
,p_parent_plug_id=>wwv_flow_api.id(62388484178337632)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script></script>',
'<script>',
' ',
'  function spCheckChange1(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE1'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp1'').innerHTML=gReturn;',
'  }',
'</script>',
'CHECKBOX List:',
'<div id="checkListDisp1">&PROGNAME.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54281285578537341)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(54280402635501937)
,p_button_name=>'OK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ok'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_FLAG:Y'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54281639668542936)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(54280402635501937)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_FLAG:N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(62365394419668805)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(62367004818749319)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--large'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51357891582120544)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_comment=>'javascript:apex.widget.tabular.addRow();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59366637115788027)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'ADD_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Spare Parts'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:110::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(59366901386794713)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'ADD_CHARG'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--large'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Service Charge'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.:118::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and NEGMASPK=(SELECT    MAX(NEGMASPK)  FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO);',
'if  v_cunt  > 0 and :P129_TEST=1 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(54025471055097015)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Estimate'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51357623555120544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:129::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51357808093120544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51357746045120544)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(58034658120695355)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(51331829554120496)
,p_button_name=>'CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Changes'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51380520819120583)
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(51357746045120544)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50413253900781796)
,p_name=>'P129_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50413630197781798)
,p_name=>'P129_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50413971423781798)
,p_name=>'P129_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50415220836781801)
,p_name=>'P129_SERVCENO_DETAILS'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(50414800322781800)
,p_prompt=>'Service No. Details'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  srvcnopk||'' / ''||docnumbr ||'' / ''||TRUNC (doctdate)||'' / ''||',
'warecode||'' / ''||costcode||'' / ''||svcpkgfk D ',
'    FROM nmservce',
'   WHERE NVL (COMPLETE, ''N'') = ''N'' AND NVL (statuscd, ''NEW'') <> ''CAN''',
'    AND  costcode IN (  SELECT cabasecc',
'                                        FROM sycstacc',
'                                       WHERE compcode = :compcode ',
'                                         AND grupcode = :APP_USER)',
'and  srvcnopk=:P129_SERVNO',
'                                         ',
'ORDER BY dfn_char2number (docnumbr) DESC'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50420678939781846)
,p_name=>'P129_E_DOCNUMBR'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50421144256781846)
,p_name=>'P129_E_DOCTDATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50421557520781846)
,p_name=>'P129_E_DOCTTYPE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50421921667781846)
,p_name=>'P129_E_SUBTTYPE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50422269448781846)
,p_name=>'P129_E_COMPCODE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50422700458781846)
,p_name=>'P129_E_OPRSTAMP'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50423073424781846)
,p_name=>'P129_E_TIMSTAMP'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50423530123781846)
,p_name=>'P129_E_NEGMASPK'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50430292094781868)
,p_name=>'P129_P_DOCNUMBR'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50430747651781868)
,p_name=>'P129_P_DOCTTYPE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50431083059781868)
,p_name=>'P129_P_SUBTTYPE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50431551999781868)
,p_name=>'P129_P_NEGMASPK'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50431952607781870)
,p_name=>'P129_P_ITEMCODE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50432350776781870)
,p_name=>'P129_P_UNITOFMESURE'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50432694268781873)
,p_name=>'P129_P_ITEMDESC'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50433165541781873)
,p_name=>'P129_P_BRAND'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50433469605781874)
,p_name=>'P129_P_MODAL'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50433870590781874)
,p_name=>'P129_P_ISSUMTHD'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_item_default=>'&TEMPORARY_APPLICATION_ITEM.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50434335579781874)
,p_name=>'P129_P_ROWNUM'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50434763685781874)
,p_name=>'P129_P_NEGITMPK'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50435086148781874)
,p_name=>'P129_P_SERLNUMB'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50435534394781874)
,p_name=>'P129_P_ITEMTYPE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50435867766781876)
,p_name=>'P129_P_ITEMRATE'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50436341223781876)
,p_name=>'P129_P_CURRCODE'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50436707167781876)
,p_name=>'P129_P_EXCGRATE'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50437115229781876)
,p_name=>'P129_P_COSTCODE'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50437558708781876)
,p_name=>'P129_P_STATUSCD'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50437883780781876)
,p_name=>'P129_P_DOCTDATE'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50444685613781887)
,p_name=>'P129_C_DOCNUMBR'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50445109532781887)
,p_name=>'P129__C_DOCTDATE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50445468095781889)
,p_name=>'P129_C_DOCTTYPE'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50445947189781889)
,p_name=>'P129_C_SUBTTYPE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50446322013781890)
,p_name=>'P129_C_NEGMASPK'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50449468294781896)
,p_name=>'P129_C_ITEMCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50449942199781898)
,p_name=>'P129_C_PAINTFLG'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50450296220781898)
,p_name=>'P129_C_MODLCODE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50451144992781898)
,p_name=>'P129_SERVNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50451533904781901)
,p_name=>'P129_WARCD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
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
 p_id=>wwv_flow_api.id(50451941142781903)
,p_name=>'P129_SERDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50452324644781903)
,p_name=>'P129_RGSNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Registration No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50452752682781903)
,p_name=>'P129_CHASNO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Chasis No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50453096063781903)
,p_name=>'P129_S_SRVCNOPK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50453504136781904)
,p_name=>'P129_ROWID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50454311560781904)
,p_name=>'P129_S_ITEMCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Vehicle'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50454745471781906)
,p_name=>'P129_S_ITEMDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50455107612781906)
,p_name=>'P129_S_CUSTNAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50455471391781906)
,p_name=>'P129_S_CONTPERS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Contact Person'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50455891170781906)
,p_name=>'P129_S_CUSTADR1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Address [1-2]'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50456295070781906)
,p_name=>'P129_S_CUSTADR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50456718731781906)
,p_name=>'P129_S_CUSTADR3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Address [3-4]'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50457070469781907)
,p_name=>'P129_S_CUSTADR4'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50457479582781907)
,p_name=>'P129_S_CUSTMAIL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50457923700781907)
,p_name=>'P129_S_CUSTPHON'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50458303265781907)
,p_name=>'P129_S_CUSTMOBL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50458715335781907)
,p_name=>'P129_S_TEFAXNUM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(52051121903579192)
,p_prompt=>'Fax'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="color: blue;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50510991479795378)
,p_name=>'P129_RADIO'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52049119835514932)
,p_name=>'P129_COMPCODE'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53304653257606359)
,p_name=>'P129_DOCTTYPE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53304887813606363)
,p_name=>'P129_SUBTTYPE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53305326639606363)
,p_name=>'P129_DOCNUMBR'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53305730726606363)
,p_name=>'P129_PARTYCDE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53306106178606363)
,p_name=>'P129_SMANCODE'
,p_item_sequence=>660
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53306530806606363)
,p_name=>'P129_COSTCODE'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54280763340501949)
,p_name=>'P129_COMPCDE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(54280402635501937)
,p_item_default=>'Are you sure you want to create Estimation Jobno?'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: #0372F0;font-weight:bold;margin-top:0%;background-color: rgb(180, 190, 197);font-size: 16px;"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54282020149547159)
,p_name=>'P129_FLAG'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54284903152721955)
,p_name=>'P129_ESTJOBNO'
,p_item_sequence=>701
,p_item_plug_id=>wwv_flow_api.id(50414800322781800)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54462128090522584)
,p_name=>'P129_NEXTESTIMATION'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(50414800322781800)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_tag_attributes=>'readonly="readonly"'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54699676255023939)
,p_name=>'P129_NEXTESTIMATE1'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(50414800322781800)
,p_item_default=>'EST00001'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54702022877150819)
,p_name=>'P129_NEGMASPK'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(55613934469818316)
,p_name=>'P129_SRVCNOFK'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59455649365988618)
,p_name=>'P129_ID'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(59962630598286460)
,p_name=>'P129_PAGEID'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(51561987004099997)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62200406278020437)
,p_name=>'P129_XURLDYNMC'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(62195888553895527)
,p_prompt=>'Xurldynmc'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62206729502667602)
,p_name=>'P129_ESTIMATION_ITEM'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(62366580856745152)
,p_prompt=>'Estimation Item'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMDESC,ITEMCODE  from nmnegitm',
'where SRVCNOFK=:P129_SRVCNOFK',
'and DOCNUMBR=:P129_NEXTESTIMATION'))
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEMDESC,ITEMCODE  from nmnegitm',
'where SRVCNOFK=:P129_SRVCNOFK',
'and DOCNUMBR=:P129_NEXTESTIMATION',
'',
'select   ITEMDESC d ,ITEMCODE r  from nmitemas',
'where SRVCNOFK=:P129_SERVNO',
'and DOCNUMBR=:P129_NEXTESTIMATION'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(62370430297277225)
,p_name=>'P129_TEST'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69075446265689155)
,p_name=>'P129_ALERT'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69139032923960096)
,p_name=>'P129_JOBBILL'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69175952094052283)
,p_name=>'P129_STARTDTE'
,p_item_sequence=>810
,p_item_plug_id=>wwv_flow_api.id(54280402635501937)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69176241292052302)
,p_name=>'P129_ENDDDATE'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(54280402635501937)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69176569650052302)
,p_name=>'P129_NXTSRVDT'
,p_item_sequence=>830
,p_item_plug_id=>wwv_flow_api.id(54280402635501937)
,p_prompt=>'Next Srv. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69327920056440587)
,p_name=>'P129_JOBBILL_MESSAGE'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69447637328226664)
,p_name=>'P129_SRVCSTRTFLG'
,p_item_sequence=>850
,p_item_plug_id=>wwv_flow_api.id(51331829554120496)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50506434846782059)
,p_name=>'estimate docnumber generate on E_DOCNUM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_E_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50506937843782060)
,p_event_id=>wwv_flow_api.id(50506434846782059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P129_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'end;'))
,p_attribute_02=>'P129_SERVNO'
,p_attribute_03=>'P129_E_DOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50507299440782060)
,p_name=>'click highlight'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f05'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50507778449782060)
,p_event_id=>wwv_flow_api.id(50507299440782060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_RowHighlight(gCurrentRow,''pink'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50508247788782060)
,p_name=>'change on Itemcode'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f24'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50508719859782060)
,p_event_id=>wwv_flow_api.id(50508247788782060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_P_ITEMCODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.value'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50509157105782060)
,p_name=>'item description assign'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_P_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50509583906782062)
,p_event_id=>wwv_flow_api.id(50509157105782060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P129_P_UNITOFMESURE,:P129_P_ITEMDESC,:P129_P_BRAND,:P129_P_MODAL,:P129_P_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P129_P_ITEMCODE;',
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
'END;'))
,p_attribute_02=>'P129_P_ITEMCODE'
,p_attribute_03=>'P129_P_UNITOFMESURE,P129_P_ITEMDESC,P129_P_BRAND,P129_P_MODAL,P129_P_ISSUMTHD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50510028309782062)
,p_name=>'item description assign in tabular item'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name=''f24'']'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50510518300782062)
,p_event_id=>wwv_flow_api.id(50510028309782062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var row = $x_UpTill(this.triggeringElement, ''TR'');',
'',
'',
'var itemdesc= $(''input[name="f22"]'', row)[0];',
'var hum= $(''input[name="f25"]'', row)[0];',
'var srl= $(''input[name="f21"]'', row)[0];',
'var vRow =$(''#TR'').children().length;',
'',
'itemdesc.value = $x(''P129_P_ITEMDESC'').value; ',
'hum.value = $x(''P129_P_BRAND'').value; ',
'',
'srl.value =$(this.triggeringElement ).attr(''id'').substr(4);',
'',
'',
'',
'',
'',
''))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var row = $x_UpTill(this.triggeringElement, ''TR'');',
'',
'',
'var itemdesc= $(''input[name="f22"]'', row)[0];',
'var hum= $(''input[name="f25"]'', row)[0];',
'var srl= $(''input[name="f21"]'', row)[0];',
'var vRow =$(''#TR'').children().length;',
'',
'itemdesc.value = $x(''P103_P_ITEMDESC'').value; ',
'hum.value = $x(''P103_P_BRAND'').value; ',
'',
'--srl.value =$(this.triggeringElement ).attr(''id'').substr(4);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51437449367181612)
,p_name=>'add rows javascript'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51437838285181623)
,p_event_id=>wwv_flow_api.id(51437449367181612)
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
 p_id=>wwv_flow_api.id(51563129565138770)
,p_name=>'change on Service no'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51563547973138781)
,p_event_id=>wwv_flow_api.id(51563129565138770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT DOCNUMBR,DOCTTYPE,SUBTTYPE,NEGMASPK ',
'INTO :P129_P_DOCNUMBR,:P129_P_DOCTTYPE,:P129_P_SUBTTYPE,:P129_P_NEGMASPK',
'FROM NMNEGMAS ',
'WHERE COMPCODE=:COMPCODE',
'AND SRVCNOFK=:P129_SERVNO;',
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
'END;',
'',
'BEGIN',
'   SELECT DOCTDATE,WARECODE,COMPCODE,DOCTTYPE,SUBTTYPE,DOCNUMBR,PARTYCDE,SMANCODE,COSTCODE',
'INTO :P129_SERDATE,:P129_WARCD,:P129_COMPCODE,:P129_DOCTTYPE,:P129_SUBTTYPE,:P129_DOCNUMBR,:P129_PARTYCDE,:P129_SMANCODE,:P129_COSTCODE',
'FROM NMSERVCE',
'WHERE SRVCNOPK=:P129_SERVNO;',
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
'END;'))
,p_attribute_02=>'P129_SERVNO'
,p_attribute_03=>'P129_P_DOCNUMBR,P129_P_DOCTTYPE,P129_P_SUBTTYPE,P129_P_NEGMASPK,P129_SERDATE,P129_WARCD,P129_COMPCODE,P129_DOCTTYPE,P129_SUBTTYPE,P129_DOCNUMBR,P129_PARTYCDE,P129_SMANCODE,P129_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51565457365141845)
,p_name=>'estimate docnumber generate on E_DOCNUM'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_E_DOCNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51565790718141846)
,p_event_id=>wwv_flow_api.id(51565457365141845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P129_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'end;'))
,p_attribute_02=>'P129_SERVNO'
,p_attribute_03=>'P129_E_DOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52189064999498964)
,p_name=>'Call Spare Parts page from modal window'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Spare'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52189375060498966)
,p_event_id=>wwv_flow_api.id(52189064999498964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_SERVNO'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'85'
,p_attribute_09=>'95'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53005720929205614)
,p_name=>'Call Service Charge page from modal window'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Charge'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53006105768205614)
,p_event_id=>wwv_flow_api.id(53005720929205614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_SERVNO'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:118:&APP_SESSION.:::118:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'85'
,p_attribute_09=>'95'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54279641594485477)
,p_name=>'call switch window'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f27_NOSUBMIT"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54280045688485482)
,p_event_id=>wwv_flow_api.id(54279641594485477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Switch'').dialog(',
'    {',
'        autoOpen: true,',
'        width:500,',
'        height: 200,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54283061798583593)
,p_name=>'hide Estimation alert region'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54283400886583593)
,p_event_id=>wwv_flow_api.id(54283061798583593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(54280402635501937)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54285113315751504)
,p_name=>'Estimation jobno generate'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_FLAG'
,p_condition_element=>'P129_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54285484971751504)
,p_event_id=>wwv_flow_api.id(54285113315751504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P129_ESTJOBNO:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P129_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'END;'))
,p_attribute_02=>'P129_COMPCODE,P129_SERVNO'
,p_attribute_03=>'P129_ESTJOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69180272078489689)
,p_name=>'call job start '
,p_event_sequence=>192
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f27"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69180682899489705)
,p_event_id=>wwv_flow_api.id(69180272078489689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#Switch'').dialog(',
'    {',
'        autoOpen: true,',
'        width:500,',
'        height: 200,',
'        modal: true',
'    }).dialog(''moveToTop''); '))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54290373917922500)
,p_name=>'call confirm'
,p_event_sequence=>193
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f27"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54290856646922502)
,p_event_id=>wwv_flow_api.id(54290373917922500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'run_my_ajax_process();',
''))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkbox = event.target;',
' if (checkbox.checked) {',
'     var x = confirm(''Want to create estimation jobno?'');',
'if(x){',
'apex.item(''P129_ESTJOBNO'').setFocus();',
'',
'}',
'    } else {',
'        var x = confirm(''Estimation job number not generated'');',
'if(x){',
'apex.item(''P129_ESTJOBNO'').setValue( "" );',
'apex.item(''P129_ESTJOBNO'').setFocus();',
'',
'}',
'    }'))
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
 p_id=>wwv_flow_api.id(54291307828935328)
,p_event_id=>wwv_flow_api.id(54290373917922500)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P129_ESTJOBNO:=NULL;',
'END;'))
,p_attribute_02=>'P129_SERVNO,P129_COMPCODE'
,p_attribute_03=>'P129_ESTJOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69062762876269613)
,p_name=>'Update estimation job no'
,p_event_sequence=>195
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_ALERT'
,p_condition_element=>'P129_ALERT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69063071949269616)
,p_event_id=>wwv_flow_api.id(69062762876269613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_estimajob varchar2(20):=''EST'';',
'BEGIN',
'   IF :P129_ALERT = ''1''',
'   THEN',
'      UPDATE nmnegmas',
'         SET ESTJOBNO = v_estimajob, COMPLETE = ''Y''',
'       WHERE     SRVCNOFK = :P129_SERVNO',
'             AND COMPCODE = :P129_COMPCODE',
'             AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'',
'      COMMIT;',
'   ELSE',
'      UPDATE nmnegmas',
'         SET ESTJOBNO = '''', COMPLETE = ''N''',
'       WHERE     SRVCNOFK = :P129_SERVNO',
'             AND COMPCODE = :P129_COMPCODE',
'             AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'',
'      COMMIT;',
'   END IF;',
'END;'))
,p_attribute_02=>'P129_SERVNO,P129_COMPCODE,P129_NEXTESTIMATE1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69132310428534873)
,p_name=>'bill no generate'
,p_event_sequence=>196
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_JOBBILL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69132707762534878)
,p_event_id=>wwv_flow_api.id(69132310428534873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'v_cunt1 number;',
's_docnum varchar2(20);',
's_billnopk number;',
'alert_ret   number;',
'alert_ret1 number;',
'cursor cur_billnopk is',
'        select  (nvl(max(billnopk),0)+1)  from nmjobbil  where compcode = :compcode;',
'BEGIN',
'  ',
'    open cur_billnopk; fetch cur_billnopk into s_billnopk; close cur_billnopk;',
'   SELECT DISTINCT COUNT (ESTJOBNO)',
'     INTO v_cunt1',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1',
'          and COMPLETE=''Y'';',
'',
'   ',
'      IF v_cunt1=1',
'      THEN',
'         docnumber_generation(:compcode,''NM'',''BL'',1,trunc(sysdate),:P129_WARCD,''NM'',s_docnum); ',
':P129_JOBBILL_MESSAGE:=s_docnum;',
'         --HTP.prn (''5'');',
'         insert into nmjobbil(',
'                        compcode, docnumbr, docttype, subttype, doctdate, billnopk, ',
'                        billnofk, partsamt, chargamt, totalvat, rcvdamnt, remaning, ',
'                        raisedby, apprvdby, apprdate, remarkss, postflag, statuscd, ',
'                        timstamp, oprstamp,warecode,costcode) ',
'                        values',
'                        (:compcode,s_docnum,''BL'',1,trunc(sysdate),s_billnopk,',
'                        :P129_SERVNO,NULL,NULL,NULL,0,0,',
'                        :APP_USER,:APP_USER,trunc(sysdate),''Create Bill'',''N'',''NEW'',sysdate,:APP_USER,:P129_WARCD,:P129_COSTCODE);  ',
'',
'update nmnegmas set billnofk =s_billnopk',
'                       WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'if  s_billnopk is not null then',
'update nmservce set APRVFLAG=''Y'',',
'STARTDTE=trunc(sysdate),',
'ENDDDATE=trunc(sysdate),',
'STATUSCD=''APR''',
' WHERE     SRVCNOPK= :P129_SERVNO',
' AND COMPCODE = :P129_COMPCODE;',
'end if;',
'commit;',
'      END IF;',
'',
'END;'))
,p_attribute_02=>'P129_SERVNO,P129_WARCD,P129_COSTCODE'
,p_attribute_03=>'P129_JOBBILL_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54403167837345842)
,p_name=>'Flag mode in apply changes'
,p_event_sequence=>210
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51357623555120544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54403659455345842)
,p_event_id=>wwv_flow_api.id(54403167837345842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'rollback;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(54690585993093061)
,p_name=>'click estimation for estimation no'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_NEXTESTIMATE1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54691002246093061)
,p_event_id=>wwv_flow_api.id(54690585993093061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_NEXTESTIMATION:=:P129_NEXTESTIMATE1;',
':P129_SRVCNOFK:=:P129_SERVNO;',
'end;',
''))
,p_attribute_02=>'P129_NEXTESTIMATE1,P129_SERVNO'
,p_attribute_03=>'P129_NEXTESTIMATION,P129_SRVCNOFK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(54703546200198690)
,p_event_id=>wwv_flow_api.id(54690585993093061)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select max(NEGMASPK)  NEGMASPK',
'into :P129_NEGMASPK ',
'from nmnegmas',
'where SRVCNOFK=:P129_SERVNO',
'and DOCNUMBR=:P129_NEXTESTIMATION;',
'end;'))
,p_attribute_02=>'P129_SERVNO,P129_NEXTESTIMATION'
,p_attribute_03=>'P129_NEGMASPK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57945525487245368)
,p_name=>'Close modal window for refresh'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#cboxContent'
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE|DYNAMIC ACTION|modalpageclose'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57946833720249197)
,p_event_id=>wwv_flow_api.id(57945525487245368)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59415668408858031)
,p_name=>'call spare parts page from spare button'
,p_event_sequence=>240
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59366637115788027)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59416142918858041)
,p_event_id=>wwv_flow_api.id(59415668408858031)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_SERVNO'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'85'
,p_attribute_09=>'95'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59417120121867979)
,p_name=>'call service charge page from charge button'
,p_event_sequence=>250
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(59366901386794713)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59417471715867979)
,p_event_id=>wwv_flow_api.id(59417120121867979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_SERVNO'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:118:&APP_SESSION.:::118:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'85'
,p_attribute_09=>'95'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(59957127909997118)
,p_name=>'Refresh Cost'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#cboxClose'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(59957538786997120)
,p_event_id=>wwv_flow_api.id(59957127909997118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(60728784603294308)
,p_name=>'create estimation job no'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_ESTJOBNO'
,p_condition_element=>'P129_ESTJOBNO'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(60729203439294308)
,p_event_id=>wwv_flow_api.id(60728784603294308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'BEGIN',
'select distinct count(DOCNUMBR) into v_cunt  from nmnegmas',
'where SRVCNOFK=:P129_SERVNO',
'and COMPCODE=:P129_COMPCODE',
'and DOCNUMBR=:P129_NEXTESTIMATE1;',
'if :P129_ESTJOBNO is null and v_cunt  > 0  then',
':P129_ESTJOBNO:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P129_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'else',
':P129_ESTJOBNO:=NULL;',
'end if;',
'if :P129_ESTJOBNO is not null then',
'update nmnegmas set ESTJOBNO=:P129_ESTJOBNO ,',
'COMPLETE=''Y''',
'where SRVCNOFK=:P129_SERVNO',
'and COMPCODE=:P129_COMPCODE',
'and DOCNUMBR=:P129_NEXTESTIMATE1;',
'commit;',
'else ',
'update nmnegmas set ESTJOBNO='''' ,',
'COMPLETE=''N''',
'where SRVCNOFK=:P129_SERVNO',
'and COMPCODE=:P129_COMPCODE',
'and DOCNUMBR=:P129_NEXTESTIMATE1;',
'commit;',
'end if;',
'commit;',
'END;'))
,p_attribute_02=>'P129_SERVNO,P129_COMPCODE,P129_NEXTESTIMATE1'
,p_attribute_03=>'P129_ESTJOBNO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61956910727670365)
,p_event_id=>wwv_flow_api.id(60728784603294308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_ESTJOBNO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62196996075935521)
,p_name=>'call Report window'
,p_event_sequence=>290
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Preview'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62197438535935525)
,p_event_id=>wwv_flow_api.id(62196996075935521)
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
 p_id=>wwv_flow_api.id(62284523455963753)
,p_name=>'call Stock Transfer Request Window'
,p_event_sequence=>291
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Request'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62284875348963753)
,p_event_id=>wwv_flow_api.id(62284523455963753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_SERVNO'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:79:&APP_SESSION.:::79:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'60'
,p_attribute_09=>'50'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Modal1'').dialog(',
'    {',
'        autoOpen: true,',
'        width:700,',
'        height: 400,',
'        modal: true',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(62197783247944767)
,p_name=>'hide Modal region on page load'
,p_event_sequence=>300
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(62198267004944770)
,p_event_id=>wwv_flow_api.id(62197783247944767)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(62195888553895527)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63002932596938763)
,p_event_id=>wwv_flow_api.id(62197783247944767)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(62206277836626132)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65296327268161269)
,p_name=>'Before Page submit'
,p_event_sequence=>301
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65296746938161271)
,p_event_id=>wwv_flow_api.id(65296327268161269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_TEST:=1;',
'end;'))
,p_attribute_03=>'P129_TEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65288616882823040)
,p_name=>'disable button'
,p_event_sequence=>302
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and NEGMASPK=(SELECT    MAX(NEGMASPK)  FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
' and DOCNUMBR=:P129_NEXTESTIMATION);',
'if  v_cunt  > 0 and :P129_TEST=1 then',
'return true;',
'else ',
'return false;',
'end if;',
'end;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65289059727823043)
,p_event_id=>wwv_flow_api.id(65288616882823040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(59366637115788027)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65290334592877583)
,p_event_id=>wwv_flow_api.id(65288616882823040)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(59366901386794713)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65291837913909173)
,p_name=>'assign 0 in test item when click add row'
,p_event_sequence=>303
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51357891582120544)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65292251076909178)
,p_event_id=>wwv_flow_api.id(65291837913909173)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_TEST:=0;',
'end;'))
,p_attribute_03=>'P129_TEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65285939625606807)
,p_name=>'enable button'
,p_event_sequence=>305
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_TEST'
,p_condition_element=>'P129_TEST'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt number;',
'begin',
'SELECT    Count(DOCNUMBR) DOCNUMBR into v_cunt FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO',
'    and NEGMASPK=(SELECT    MAX(NEGMASPK)  FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE',
'    and SRVCNOFK=:P129_SERVNO);',
'if  v_cunt  > 0 and :P129_TEST=0 then',
'return false;',
'else ',
'return true;',
'end if;',
'end;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65286310253606818)
,p_event_id=>wwv_flow_api.id(65285939625606807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(59366637115788027)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65290760298881701)
,p_event_id=>wwv_flow_api.id(65285939625606807)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(59366901386794713)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(69447861422239514)
,p_name=>'Service Start flag on ok button'
,p_event_sequence=>315
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#B17126418452856847'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69449698022486239)
,p_event_id=>wwv_flow_api.id(69447861422239514)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P129_STARTDTE is null then',
' raise_application_error(-20001,''Start Date cannot be blank'');',
'end if;',
'if :P129_ENDDDATE is null then',
' raise_application_error(-20001,''End Date cannot be blank'');',
'end if;',
'if :P129_NXTSRVDT is null then',
'raise_application_error(-20001,''Next Service Date cannot be blank'');',
'end if;',
'end;'))
,p_attribute_02=>'P129_STARTDTE,P129_ENDDDATE,P129_NXTSRVDT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69448196659239515)
,p_event_id=>wwv_flow_api.id(69447861422239514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P129_SRVCSTRTFLG:=''Y'';',
'end;'))
,p_attribute_03=>'P129_SRVCSTRTFLG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69449328894445033)
,p_event_id=>wwv_flow_api.id(69447861422239514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'jobnumgenerate();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50498052357782045)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51368639972120569)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51331829554120496)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMNEGMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51357746045120544)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51369058169120572)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51331829554120496)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMNEGMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(51357808093120544)
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58034932253702969)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51331829554120496)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   FOR i IN 1 .. APEX_APPLICATION.g_f31.COUNT',
'   LOOP',
'      UPDATE nmnegmas',
'         SET COMPCODE = :COMPCODE,',
'             DOCTTYPE = :DOCTTYPE,',
'             SUBTTYPE = :SUBTTYPE,',
'             DOCNUMBR = apex_application.g_f05 (i),',
'             DOCTDATE = apex_application.g_f10 (i),',
'             REMARKSS = apex_application.g_f17 (i),',
'             OPRSTAMP = :OPRSTAMP,',
'             TIMSTAMP = :TIMSTAMP,',
'             COMPLETE = apex_application.g_f27 (i),',
'             ESTJOBNO = apex_application.g_f22 (i),',
'             SRVCNOFK = :P129_SERVNO,',
'             NEGMASPK = apex_application.g_f31 (i)',
'             WHERE SRVCNOFK = :P129_SERVNO',
'    and NEGMASPK = apex_application.g_f31(i);',
'    ',
'   END LOOP;',
'   COMMIT;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(58034658120695355)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Update Successfully........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62369735802914617)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate TRN Number'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'BEGIN',
'  --',
'  -- Convert the colon separated string of values into',
'  -- a PL/SQL array ',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P129_ESTIMATION_ITEM);',
'',
'  --',
'  -- Loop over array to insert department numbers and sysdate',
'  --',
'',
'  FOR i IN 1..l_selected.count ',
'  LOOP',
'    INSERT INTO report_audit_table (report_date, selected_department)',
'        VALUES (sysdate, l_selected(i));',
'  END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(62365394419668805)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Transfer Request Send With Trace No || v_boqref '
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*DECLARE',
'l_vc_arr    APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'v_boqref varchar2(200);',
'BEGIN',
'l_vc_arr := APEX_UTIL.STRING_TO_TABLE(:P129_ESTIMATION_ITEM);',
'select ''TRN''||LPAD(NVL(MAX(dfn_char2number(nvl(boqrefer,0)))+1,0),8,''0'') into v_boqref ',
'from nmnegitm',
'where negitmfk=136',
'and compcode=:compcode;',
'--and itemcode=:P129_ESTIMATION_ITEM;',
'',
':P129_TEST:=v_boqref;',
'insert into emp(ENAME)',
'values(l_vc_arr);',
'',
'FOR i IN 1..l_vc_arr.count LOOP',
'htp.p(l_vc_arr(i));',
'',
'',
'update nmnegitm',
'set boqrefer=v_boqref ',
'where SRVCNOFK=:P129_SERVNO',
'and DOCNUMBR=:P129_NEXTESTIMATION',
'and ITEMCODE =l_vc_arr(i);',
'commit;',
'END LOOP;',
'',
'',
'end;*/'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54408825311719628)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Flag mode in apply changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P129_FLAG is null then',
':P129_FLAG:=''A'';',
'else',
':P129_FLAG:=''M'';',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54048843507175559)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'negmaspk generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P129_C_NEGMASPK FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'   ',
'    ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54383294917117907)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Estimation docnumber jobnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P129_FLAG =''A'' then',
':P129_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P129_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'end if;',
'end;',
'BEGIN',
'if :P129_FLAG =''A'' then',
':P129_ESTJOBNO:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P129_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(54384003456139232)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into nmnegmas '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P129_FLAG =''A'' then',
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
'        VALUES (:P129_COMPCODE,',
'                ''ES'',',
'                1,',
'                :P129_E_DOCNUMBR,',
'                TRUNC(SYSDATE),',
'                :APP_USER,',
'                :APP_USER,',
'                SYSDATE,',
'                :P129_DOCTTYPE,',
'                :P129_SUBTTYPE,',
'                :P129_DOCNUMBR,',
'                :UPDOCDTE,',
'                :UPDOCSRL,',
'                :DWDOCTYP,',
'                :DWSUBTYP,',
'                :DWDOCNUM,',
'                :DWDOCDTE,',
'                :DWDOCSRL,',
'                :REMARKSS,',
'                :POSTFLAG,',
'                :PRNTFLAG,',
'                :STATUSCD,',
'                :APP_USER,',
'                SYSDATE,',
'                :COMPLETE,',
'                :APRVFLAG,',
'                :P129_ESTJOBNO,',
'                :P129_SERVNO,',
'                :ADITIONL,',
'                :P129_C_NEGMASPK,',
'                :TOTCHARG,',
'                :TOTPAMNT,',
'                :TOTALVAT,',
'                :BILLNOFK,',
'                :MODIFYDT);',
'  end if;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(62195285363874573)
,p_process_sequence=>70
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
'if :P116_PROGNM is not null then',
':P130_PROGNAME:=:P116_PROGNM;',
'end if;',
'select WEBDRPTH ',
'into V_path',
'from sysyspth',
'where PATHCODE=substr(UPPER(''nmjbcost''),1,2);',
'',
'select COMPCODE,PROGDESC',
'into V_comcde,V_prgnme',
'from symenmas',
'where UPPER(PROGNAME)=UPPER(''nmjbcost'');',
':P129_XURLDYNMC:=v_url||V_path||''nmjbcost.rdf''||''&P0=''||:COMPCODE||''&P14=''||''SV''||''&P15=''||1||''&P13=''||:P129_DOCNUMBR;',
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
 p_id=>wwv_flow_api.id(69072226806048939)
,p_process_sequence=>60
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'my_ajax_process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_stkrcv number;',
'v_cunt number;',
'v_cunt1 number;',
'v_cunt2 number;',
'v_estimajob varchar2(20);',
'cursor v_currcv is (select distinct (select  NVL (sum(m.trnsqnty), 0) ',
'  from nmstkrec m',
' where m.docttype(+) = ''IS''',
'and m.compcode(+)= e.compcode',
'and m.REFNUMBR(+)=e.REFNUMBR',
'and M.UPDOCNUM(+)=E.DOCNUMBR',
'and m.warecode(+)=e.warecode',
'AND m.itemcode(+)= E.ITEMCODE',
'group by m.docttype,m.itemcode,m.REFNUMBR,m.compcode) trnsqnty',
'from NMNEGITM e',
'where  SRVCNOFK=:P129_SERVNO',
'AND COMPCODE = :P129_COMPCODE',
'AND DOCNUMBR = :P129_NEXTESTIMATE1',
'AND BOQREFER is  null);',
'',
'v_curcnt v_currcv%rowtype;',
'v_cnt number;',
'v_itemcde  varchar2(1000);',
'begin',
'owa_util.mime_header(''text/xml'', FALSE );',
'htp.p(''Cache-Control: no-cache'');',
'htp.p(''Pragma: no-cache'');',
'owa_util.http_header_close;',
'open v_currcv;',
'select count(DOCNUMBR) cnt into v_cnt  from nmnegmas',
' WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'',
'for i in 1..v_cnt   loop',
'fetch v_currcv into v_curcnt;',
'',
'v_stkrcv:=v_curcnt.trnsqnty;',
'',
'if v_stkrcv is null then',
'htp.prn(''2'');',
'else ',
' SELECT DISTINCT COUNT (DOCNUMBR)',
'     INTO v_cunt',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'          SELECT DISTINCT COUNT (ESTJOBNO)',
'     INTO v_cunt1',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'          SELECT DISTINCT COUNT (BILLNOFK)',
'     INTO v_cunt2',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1;',
'          ',
'',
'   IF  v_cunt > 0 and v_cunt1 = 0 and v_cunt2=0',
'   THEN',
'     v_estimajob :=',
'         Drp_Primarykey_Generate (:P129_COMPCODE,',
'                                  ''NMNEGMAS'',',
'                                  ''ESTJOBNO'',',
'                                  ''SRVCNOFK='' || :P129_SERVNO,',
'                                  1,',
'                                  :MODLCODE,',
'                                  ''JB'',',
'                                  1,',
'                                  TRUNC (SYSDATE));',
'',
'   ELSE',
'     v_estimajob := '''';',
'   END IF;',
'',
'   IF  v_cunt > 0 and v_cunt1 = 0 and v_cunt2=0',
'   THEN',
'',
'--raise_application_error(-20001,''Receive Quantity is not found for this Item:  ''||v_itemcde);',
'',
'htp.prn(''1'');',
'ELSIF  v_cunt > 0 and v_cunt1 > 0 and v_cunt2=0',
'   THEN',
'   htp.prn(''5'');',
'   ELSE',
'  -- if v_cunt2=0 then',
'   htp.prn(''0'');',
'--end if;',
'   END IF;',
'  ',
'',
'   COMMIT;',
'end if;',
'dbms_output.put_line(v_stkrcv);',
'end loop;',
'close v_currcv;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69434858491338532)
,p_process_sequence=>61
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'statdate_and_enddate_service'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt1 number;',
'v_cunt2 number;',
'BEGIN',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'    ',
'   SELECT DISTINCT COUNT (STARTDTE)',
'     INTO v_cunt1',
'     FROM nmservce',
'    WHERE     SRVCNOPK= :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE;',
'',
'   ',
'      IF v_cunt1 =0',
'      THEN',
'         HTP.prn (''8'');',
'        ',
'      END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69129994047281528)
,p_process_sequence=>62
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'fpr_generate_bill_number'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_cunt1 number;',
'v_cunt2 number;',
'BEGIN',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'    ',
'   SELECT DISTINCT COUNT (ESTJOBNO)',
'     INTO v_cunt1',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1',
'          and COMPLETE=''Y'';',
'          SELECT DISTINCT COUNT (BILLNOFK)',
'     INTO v_cunt2',
'     FROM nmnegmas',
'    WHERE     SRVCNOFK = :P129_SERVNO',
'          AND COMPCODE = :P129_COMPCODE',
'          AND DOCNUMBR = :P129_NEXTESTIMATE1',
'          and COMPLETE=''Y'';',
'',
'   ',
'      IF v_cunt1=1 ',
'      THEN',
'         HTP.prn (''4'');',
'        ',
'      END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(58060699132887490)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(51331829554120496)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre update into nmnegmas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P129_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :OPRSTAMP := :APP_USER;',
'     :TIMSTAMP := SYSDATE;',
'  ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(58034658120695355)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51679659114377186)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(51331829554120496)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre insert into NMNEGMAS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     :COMPCODE:=:P129_COMPCODE;',
'     :DOCTTYPE:= ''ES'';',
'     :SUBTTYPE:= 1;',
'     :OPRSTAMP := :APP_USER;',
'     :TIMSTAMP := SYSDATE;',
'  ',
'',
'end;',
'',
'BEGIN',
'    SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P129_C_NEGMASPK FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'   ',
'    ',
'END;',
'',
'begin',
'--if :P129_FLAG =''A'' then',
':P129_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P129_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'--end if;',
'end;',
'BEGIN',
'--if :P129_FLAG =''A'' then',
':P129_ESTJOBNO:=Drp_Primarykey_Generate(:P129_COMPCODE,''NMNEGMAS'',''ESTJOBNO'',''SRVCNOFK=''||:P129_SERVNO,1,:MODLCODE,''JB'',1,Trunc(Sysdate));',
'--end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(54025471055097015)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
