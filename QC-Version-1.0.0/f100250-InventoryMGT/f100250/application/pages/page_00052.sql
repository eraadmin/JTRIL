prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Sales Offer'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales Offer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> ',
'',
'',
'',
'<script type="text/javascript">',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f11_''+vRow).value =',
'    parseInt(html_GetElement(''f06_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f07_''+vRow).value, 10);',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f02_''.concat(y);',
'html_GetElement(''f02_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal1(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f11_''+vRow).value =',
'(parseInt(html_GetElement(''f06_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f07_''+vRow).value, 10))-',
'(parseInt(html_GetElement(''f06_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f07_''+vRow).value, 10))*',
'(parseInt(html_GetElement(''f09_''+vRow).value, 10)/100);',
'',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f11_''+vRow).value =',
'    parseInt(html_GetElement(''f06_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f07_''+vRow).value, 10)-parseInt(html_GetElement(''f10_''+vRow).value, 10);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P52_TABULARITEMCODE'').value=',
'    html_GetElement(''f03_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P52_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f04_''+vRow).value=',
'document.getElementById(''P52_TABITEMDESC'').value;',
'html_GetElement(''f06_''+vRow).value=',
'document.getElementById(''P52_TABITEMRATE'').value;',
'html_GetElement(''f08_''+vRow).value=',
'document.getElementById(''P52_TABITEMUNIT'').value',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal4(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'$(document).ready(function(){',
'  $(''#P52_CUSTOMERID'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<script language="JavaScript" type="text/javascript">',
'',
'function f_set_multi_items_tabular(pValue, pRow){',
'    var get = new htmldb_Get(null,html_GetElement(''pFlowId'').value,',
'''APPLICATION_PROCESS=Set_Multi_Items_Tabular'',0);',
'if(pValue){',
'get.add(''TEMPORARY_APPLICATION_ITEM'',pValue)',
'get.add(''T_ROWNUM'',pRow)',
'}else{',
'get.add(''TEMPORARY_APPLICATION_ITEM'',''null'')',
'}    ',
'',
'    gReturn = get.get(''XML'');',
'',
'    if(gReturn){',
'        var l_Count = gReturn.getElementsByTagName("item").length;',
'        for(var i = 0;i<l_Count;i++){',
'            var l_Opt_Xml = gReturn.getElementsByTagName("item")[i];',
'            var l_ID = l_Opt_Xml.getAttribute(''id'');',
'            var l_El = html_GetElement(l_ID);    ',
'            if(l_Opt_Xml.firstChild){',
'                var l_Value = l_Opt_Xml.firstChild.nodeValue;',
'            }else{',
'                var l_Value = '''';',
'            }',
'',
'            if(l_El){',
'                if(l_El.tagName == ''INPUT''){',
'                    l_El.value = l_Value;',
'                }else if(l_El.tagName == ''SPAN'' && l_El.className == ''grabber''){',
'                    l_El.parentNode.innerHTML = l_Value;',
'                    l_El.parentNode.id = l_ID;',
'                }else{',
'                    l_El.innerHTML = l_Value;',
'                }',
'            }',
'        }',
'    }',
'    get = null;',
'}',
'',
'</script>',
'',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function pad(n, width, z) {',
'  z = z || ''0'';',
'  n = n + '''';',
'  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}'))
,p_dialog_chained=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63685944987479639)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(63688946242479665)
,p_plug_name=>'Customer Details'
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
 p_id=>wwv_flow_api.id(63690736131479676)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(63688946242479665)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P52_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63692113752479681)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(63688946242479665)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:20%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63693933166479682)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(63688946242479665)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:80%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63694135722479684)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(63693933166479682)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63696536750479687)
,p_plug_name=>'OrderInformation'
,p_parent_plug_id=>wwv_flow_api.id(63693933166479682)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63698334155479689)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(63693933166479682)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(63808530528207285)
,p_name=>'Sales Offer'
,p_region_name=>'123'
,p_parent_plug_id=>wwv_flow_api.id(63693933166479682)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"SERLNUMB",',
'"ITEMCODE",',
'"SALERATE",',
'"LUOMCODE",',
'"WARECODE" ,',
'"COMPCODE", ',
'"SUBTTYPE", ',
'"DOCNUMBR", ',
'"DOCTDATE",',
'"SOFNUMBR", ',
'"DONUMBER", ',
'"BATCHNUM", ',
'"PARTYCDE", ',
'"SMANCODE", ',
'"RAISEDBY", ',
'"APPRVDBY", ',
'"APPRDATE", ',
'"REQDDATE", ',
'"COMMCODE", ',
'"ITEMTYPE", ',
'"ITEMDESC", ',
'"ITEMLONG", ',
'"ITEMRATE", ',
'"MARKPCNT", ',
'"DISCPCNT", ',
'"DISCAMNT", ',
'"SPLDISPC", ',
'"SPLDISNT", ',
'"HUOMCODE", ',
'"FACTRVAL", ',
'"ORGNQNTY", ',
'"APPRQNTY", ',
'"TRNSQNTY", ',
'"MSFCAMNT", ',
'"CURRCODE", ',
'"EXCGRATE", ',
'"MSLCAMNT", ',
'"REFNUMBR", ',
'"REFNDATE", ',
'"UPDOCTYP", ',
'"UPSUBTYP", ',
'"UPDOCNUM", ',
'"UPDOCDTE", ',
'"UPDOCSRL", ',
'"DWDOCTYP", ',
'"DWSUBTYP", ',
'"DWDOCNUM", ',
'"DWDOCDTE", ',
'"DWDOCSRL", ',
'"ACDOCTYP", ',
'"ACSUBTYP", ',
'"ACDOCNUM", ',
'"ACDOCDTE", ',
'"ACDOCSRL", ',
'"REMARKSS", ',
'"COSTCODE", ',
'"POSTFLAG", ',
'"PRNTFLAG", ',
'"PRICFLAG", ',
'"STATUSCD", ',
'"OPRSTAMP", ',
'"TIMSTAMP", ',
'"ITPICDIR", ',
'"ITFILDIR", ',
'"CLSGDATE", ',
'"ACCTCODE", ',
'"ACCTCATE", ',
'"BUDGCODE", ',
'"DELYDATE", ',
'"BALLPQTY", ',
'"PAYAMTFC", ',
'"PAYAMTLC", ',
'"LUOMDESC", ',
'"ITEMRATP", ',
'"ITRFDATE", ',
'"SALERATP", ',
'"INTREQNO", ',
'"COSTRATE", ',
'"DESIGNCD", ',
'"CUSTMRID", ',
'"TERMSCOD", ',
'"COLORCDE", ',
'"SLSOFRNO", ',
'"ITEMSIZE", ',
'"BANKNAME", ',
'"BRANCHNM", ',
'"ITMGRADE", ',
'"FROMPORT", ',
'"SENDPORT", ',
'"CNTRYORG", ',
'"SENDVHCL", ',
'"ARRIVEDT", ',
'"REGNUMBR", ',
'"ACNTNAME", ',
'"STEPRJADD", ',
'"STECONPER", ',
'"STECONPHN", ',
'"DISCTAMT", ',
'"DELVCOND", ',
'"OTHRAMNT",',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(200,ITEMCODE ,''SELECT DISTINCT ITEMCODE FROM apex_order_items1 where ORDER_ID=:P52_ORDER_ID'') empno,',
'APEX_ITEM.SELECT_LIST_FROM_QUERY(201,ITEMCODE ,''SELECT DISTINCT ITEMCODE FROM NMSLSOFR'') empno1',
'from "#OWNER#"."NMSLSOFR"',
'where DOCNUMBR=:P52_DOCNUMBR1',
'and DOCTDATE=:P52_DOCTDATE1',
'',
''))
,p_ajax_items_to_submit=>'P52_DOCNUMBR1,P52_DOCTDATE1'
,p_fixed_header=>'NONE'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63811019951207329)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63808824202207291)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'APEX_ORDER_ITEMS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63829621005112766)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63808926079207291)
,p_query_column_id=>4
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P52_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63809121881207291)
,p_query_column_id=>5
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>9
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63809231675207291)
,p_query_column_id=>6
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>4
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64098225619072785)
,p_query_column_id=>7
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>104
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861419766302787)
,p_query_column_id=>8
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>16
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861531565302787)
,p_query_column_id=>9
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>17
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861628186302787)
,p_query_column_id=>10
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>19
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861727779302787)
,p_query_column_id=>11
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>20
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861826880302787)
,p_query_column_id=>12
,p_column_alias=>'SOFNUMBR'
,p_column_display_sequence=>21
,p_column_heading=>'Sofnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63861945743302787)
,p_query_column_id=>13
,p_column_alias=>'DONUMBER'
,p_column_display_sequence=>22
,p_column_heading=>'Donumber'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862019670302787)
,p_query_column_id=>14
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>8
,p_column_heading=>'Batch<br>No.'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND w.warecode = :P52_WARECODE',
'                      AND b.itemcode = :P52_TABULARITEMCODE',
'                     ',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_show_nulls=>'NO'
,p_column_width=>8
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862129072302787)
,p_query_column_id=>15
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>23
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862229301302787)
,p_query_column_id=>16
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>24
,p_column_heading=>'Smancode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862337085302787)
,p_query_column_id=>17
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>25
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862434830302787)
,p_query_column_id=>18
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>26
,p_column_heading=>'Apprvdby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862537053302787)
,p_query_column_id=>19
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>27
,p_column_heading=>'Apprdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862616089302787)
,p_query_column_id=>20
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>30
,p_column_heading=>'Reqddate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862731891302787)
,p_query_column_id=>21
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>29
,p_column_heading=>'Commcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862831716302787)
,p_query_column_id=>22
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>28
,p_column_heading=>'Itemtype'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63862922712302787)
,p_query_column_id=>23
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>7
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863019989302787)
,p_query_column_id=>24
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>31
,p_column_heading=>'Itemlong'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863135395302787)
,p_query_column_id=>25
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>32
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863233464302787)
,p_query_column_id=>26
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>33
,p_column_heading=>'Markpcnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863334802302787)
,p_query_column_id=>27
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>12
,p_column_heading=>'Dis<br>(%)'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_cattributes=>'onchange="calculateTotal1(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863420277302787)
,p_query_column_id=>28
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>13
,p_column_heading=>'Dis<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_cattributes=>'onchange="calculateTotal2(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863545507302787)
,p_query_column_id=>29
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>34
,p_column_heading=>'Spldispc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863631168302787)
,p_query_column_id=>30
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>35
,p_column_heading=>'Spldisnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863735053302787)
,p_query_column_id=>31
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>36
,p_column_heading=>'Huomcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863833825302787)
,p_query_column_id=>32
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>18
,p_column_heading=>'Factrval'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63863915413302787)
,p_query_column_id=>33
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>37
,p_column_heading=>'Orgnqnty'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864027365302787)
,p_query_column_id=>34
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>10
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>6
,p_cattributes=>'onchange="calculateTotal(this);"'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864142186302787)
,p_query_column_id=>35
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>38
,p_column_heading=>'Trnsqnty'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864224731302787)
,p_query_column_id=>36
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>14
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864330263302787)
,p_query_column_id=>37
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>39
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864422497302787)
,p_query_column_id=>38
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>40
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864538926302787)
,p_query_column_id=>39
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>41
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864632889302787)
,p_query_column_id=>40
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>42
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864729260302787)
,p_query_column_id=>41
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>43
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864825240302790)
,p_query_column_id=>42
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>44
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63864930132302790)
,p_query_column_id=>43
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>45
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865020773302790)
,p_query_column_id=>44
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>46
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865126507302790)
,p_query_column_id=>45
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>47
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865220147302790)
,p_query_column_id=>46
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>48
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865333913302790)
,p_query_column_id=>47
,p_column_alias=>'DWDOCTYP'
,p_column_display_sequence=>49
,p_column_heading=>'Dwdoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865435410302790)
,p_query_column_id=>48
,p_column_alias=>'DWSUBTYP'
,p_column_display_sequence=>50
,p_column_heading=>'Dwsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865530854302790)
,p_query_column_id=>49
,p_column_alias=>'DWDOCNUM'
,p_column_display_sequence=>51
,p_column_heading=>'Dwdocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865639043302790)
,p_query_column_id=>50
,p_column_alias=>'DWDOCDTE'
,p_column_display_sequence=>52
,p_column_heading=>'Dwdocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865733379302790)
,p_query_column_id=>51
,p_column_alias=>'DWDOCSRL'
,p_column_display_sequence=>53
,p_column_heading=>'Dwdocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865820992302790)
,p_query_column_id=>52
,p_column_alias=>'ACDOCTYP'
,p_column_display_sequence=>54
,p_column_heading=>'Acdoctyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63865928285302790)
,p_query_column_id=>53
,p_column_alias=>'ACSUBTYP'
,p_column_display_sequence=>55
,p_column_heading=>'Acsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866040213302790)
,p_query_column_id=>54
,p_column_alias=>'ACDOCNUM'
,p_column_display_sequence=>56
,p_column_heading=>'Acdocnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866131379302790)
,p_query_column_id=>55
,p_column_alias=>'ACDOCDTE'
,p_column_display_sequence=>57
,p_column_heading=>'Acdocdte'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866242931302790)
,p_query_column_id=>56
,p_column_alias=>'ACDOCSRL'
,p_column_display_sequence=>58
,p_column_heading=>'Acdocsrl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866346276302790)
,p_query_column_id=>57
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>15
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>14
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866436753302790)
,p_query_column_id=>58
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>59
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866539245302790)
,p_query_column_id=>59
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>60
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866629423302790)
,p_query_column_id=>60
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>61
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866741074302790)
,p_query_column_id=>61
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>62
,p_column_heading=>'Pricflag'
,p_hidden_column=>'Y'
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
 p_id=>wwv_flow_api.id(63866814296302792)
,p_query_column_id=>62
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>63
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63866943589302792)
,p_query_column_id=>63
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>64
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867020728302792)
,p_query_column_id=>64
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>65
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867120555302792)
,p_query_column_id=>65
,p_column_alias=>'ITPICDIR'
,p_column_display_sequence=>66
,p_column_heading=>'Itpicdir'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867213918302792)
,p_query_column_id=>66
,p_column_alias=>'ITFILDIR'
,p_column_display_sequence=>67
,p_column_heading=>'Itfildir'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867344332302792)
,p_query_column_id=>67
,p_column_alias=>'CLSGDATE'
,p_column_display_sequence=>68
,p_column_heading=>'Clsgdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867432200302792)
,p_query_column_id=>68
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>69
,p_column_heading=>'Acctcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867545296302792)
,p_query_column_id=>69
,p_column_alias=>'ACCTCATE'
,p_column_display_sequence=>70
,p_column_heading=>'Acctcate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867618757302792)
,p_query_column_id=>70
,p_column_alias=>'BUDGCODE'
,p_column_display_sequence=>71
,p_column_heading=>'Budgcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867744155302792)
,p_query_column_id=>71
,p_column_alias=>'DELYDATE'
,p_column_display_sequence=>72
,p_column_heading=>'Delydate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867829776302792)
,p_query_column_id=>72
,p_column_alias=>'BALLPQTY'
,p_column_display_sequence=>73
,p_column_heading=>'Ballpqty'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63867928997302792)
,p_query_column_id=>73
,p_column_alias=>'PAYAMTFC'
,p_column_display_sequence=>74
,p_column_heading=>'Payamtfc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868020155302792)
,p_query_column_id=>74
,p_column_alias=>'PAYAMTLC'
,p_column_display_sequence=>75
,p_column_heading=>'Payamtlc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868117023302792)
,p_query_column_id=>75
,p_column_alias=>'LUOMDESC'
,p_column_display_sequence=>76
,p_column_heading=>'Luomdesc'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868241460302792)
,p_query_column_id=>76
,p_column_alias=>'ITEMRATP'
,p_column_display_sequence=>77
,p_column_heading=>'Itemratp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868329475302792)
,p_query_column_id=>77
,p_column_alias=>'ITRFDATE'
,p_column_display_sequence=>78
,p_column_heading=>'Itrfdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868432917302792)
,p_query_column_id=>78
,p_column_alias=>'SALERATP'
,p_column_display_sequence=>79
,p_column_heading=>'Saleratp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868530886302792)
,p_query_column_id=>79
,p_column_alias=>'INTREQNO'
,p_column_display_sequence=>80
,p_column_heading=>'Intreqno'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868618753302792)
,p_query_column_id=>80
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>81
,p_column_heading=>'Costrate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868733855302792)
,p_query_column_id=>81
,p_column_alias=>'DESIGNCD'
,p_column_display_sequence=>82
,p_column_heading=>'Designcd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868842284302792)
,p_query_column_id=>82
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>83
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63868927912302792)
,p_query_column_id=>83
,p_column_alias=>'TERMSCOD'
,p_column_display_sequence=>84
,p_column_heading=>'Termscod'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869028657302792)
,p_query_column_id=>84
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>85
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869127483302792)
,p_query_column_id=>85
,p_column_alias=>'SLSOFRNO'
,p_column_display_sequence=>86
,p_column_heading=>'Slsofrno'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869245432302794)
,p_query_column_id=>86
,p_column_alias=>'ITEMSIZE'
,p_column_display_sequence=>87
,p_column_heading=>'Itemsize'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869327193302794)
,p_query_column_id=>87
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>88
,p_column_heading=>'Bankname'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869429729302794)
,p_query_column_id=>88
,p_column_alias=>'BRANCHNM'
,p_column_display_sequence=>89
,p_column_heading=>'Branchnm'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869538315302794)
,p_query_column_id=>89
,p_column_alias=>'ITMGRADE'
,p_column_display_sequence=>90
,p_column_heading=>'Itmgrade'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869639020302794)
,p_query_column_id=>90
,p_column_alias=>'FROMPORT'
,p_column_display_sequence=>91
,p_column_heading=>'Fromport'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869723886302794)
,p_query_column_id=>91
,p_column_alias=>'SENDPORT'
,p_column_display_sequence=>92
,p_column_heading=>'Sendport'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869842193302794)
,p_query_column_id=>92
,p_column_alias=>'CNTRYORG'
,p_column_display_sequence=>93
,p_column_heading=>'Cntryorg'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63869928810302794)
,p_query_column_id=>93
,p_column_alias=>'SENDVHCL'
,p_column_display_sequence=>94
,p_column_heading=>'Sendvhcl'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870017297302794)
,p_query_column_id=>94
,p_column_alias=>'ARRIVEDT'
,p_column_display_sequence=>95
,p_column_heading=>'Arrivedt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870122061302794)
,p_query_column_id=>95
,p_column_alias=>'REGNUMBR'
,p_column_display_sequence=>96
,p_column_heading=>'Regnumbr'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870231132302794)
,p_query_column_id=>96
,p_column_alias=>'ACNTNAME'
,p_column_display_sequence=>97
,p_column_heading=>'Acntname'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870315198302794)
,p_query_column_id=>97
,p_column_alias=>'STEPRJADD'
,p_column_display_sequence=>98
,p_column_heading=>'Steprjadd'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870428901302794)
,p_query_column_id=>98
,p_column_alias=>'STECONPER'
,p_column_display_sequence=>99
,p_column_heading=>'Steconper'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870532282302794)
,p_query_column_id=>99
,p_column_alias=>'STECONPHN'
,p_column_display_sequence=>100
,p_column_heading=>'Steconphn'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870617850302794)
,p_query_column_id=>100
,p_column_alias=>'DISCTAMT'
,p_column_display_sequence=>101
,p_column_heading=>'Disctamt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870724008302794)
,p_query_column_id=>101
,p_column_alias=>'DELVCOND'
,p_column_display_sequence=>102
,p_column_heading=>'Delvcond'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63870829174302794)
,p_query_column_id=>102
,p_column_alias=>'OTHRAMNT'
,p_column_display_sequence=>103
,p_column_heading=>'Othramnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64120916843689343)
,p_query_column_id=>103
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>5
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64163133874904398)
,p_query_column_id=>104
,p_column_alias=>'EMPNO1'
,p_column_display_sequence=>6
,p_column_heading=>'Empno1'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(64203024889821778)
,p_name=>'Sales Offer from new orders'
,p_region_name=>'2505704029884282'
,p_parent_plug_id=>wwv_flow_api.id(63693933166479682)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'rowid,',
'htmldb_item.text(11,SERLNUMB,2,null,null,''f11_#ROWNUM#'') SERLNUMB, ',
'htmldb_item.text(1,itemcode,20,null,null,''f01_#ROWNUM#'') itemcode,',
'htmldb_item.text(2,itemdes1,30,null,null,''f02_#ROWNUM#'') itemdes1,',
'htmldb_item.text(3,salerate,10,null,null,''f03_#ROWNUM#'') salerate,',
'htmldb_item.text(4,LUOMCODE,4,null,null,''f04_#ROWNUM#'') LUOMCODE,',
'htmldb_item.text(5,BATCHNUM,7,null,null,''f05_#ROWNUM#'') BATCHNUM,',
'htmldb_item.text(6,APPRQNTY,5,null,null,''f06_#ROWNUM#'') APPRQNTY,',
'htmldb_item.text(7,DISCPCNT,2,null,null,''f07_#ROWNUM#'') DISCPCNT,',
'htmldb_item.text(8,DISCAMNT,6,null,null,''f08_#ROWNUM#'') DISCAMNT,',
'htmldb_item.text(9,MSFCAMNT,12,null,null,''f09_#ROWNUM#'') MSFCAMNT,',
'htmldb_item.text(10,REMARKSS,20,null,null,''f10_#ROWNUM#'') REMARKSS,',
'WARECODE, ORDER_ITEM_ID, ',
'ORDER_ID,  COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'PARTYCDE, SMANCODE, RAISEDBY, APPRVDBY, APPRDATE, REQDDATE, COMMCODE, ',
'ITEMTYPE, ITEMDESC, ITEMLONG, ITEMRATE, MARKPCNT,   ',
'SPLDISPC, SPLDISNT, HUOMCODE, FACTRVAL, ORGNQNTY,  TRNSQNTY, ',
'CURRCODE, EXCGRATE, MSLCAMNT, REFNUMBR, REFNDATE, UPDOCTYP, ',
'UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, DWDOCTYP, DWSUBTYP, DWDOCNUM, ',
'DWDOCDTE, DWDOCSRL, ACDOCTYP, ACSUBTYP, ACDOCNUM, ACDOCDTE, ACDOCSRL, ',
'COSTCODE, POSTFLAG, PRNTFLAG, PRICFLAG, STATUSCD, OPRSTAMP, ',
'TIMSTAMP, ITPICDIR, ITFILDIR, CLSGDATE, ACCTCODE, ACCTCATE, BUDGCODE, ',
'DELYDATE, BALLPQTY, PAYAMTFC, PAYAMTLC, LUOMDESC, ITEMRATP, ITRFDATE, ',
'SALERATP, INTREQNO, COSTRATE, DESIGNCD, CUSTMRID, TERMSCOD, COLORCDE, ',
'SLSOFRNO, ITEMSIZE, BANKNAME, BRANCHNM, ITMGRADE, FROMPORT, SENDPORT, ',
'CNTRYORG, SENDVHCL, ARRIVEDT, REGNUMBR, ACNTNAME, STEPRJADD, STECONPER, ',
'STECONPHN, DISCTAMT, DELVCOND, OTHRAMNT, SOFNUMBR, DONUMBER',
'',
'from apex_order_items1',
'where ORDER_ID=:P52_ORDER_ID',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P52_ORDER_ID'
,p_fixed_header=>'NONE'
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
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64236522974968971)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205520715952574)
,p_query_column_id=>2
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64203343851821807)
,p_query_column_id=>3
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64203428737821807)
,p_query_column_id=>4
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>4
,p_column_heading=>'Item Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64203535073821807)
,p_query_column_id=>5
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>6
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64203615995821807)
,p_query_column_id=>6
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>8
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64215125340952578)
,p_query_column_id=>7
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>5
,p_column_heading=>'Batch<br>No.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208038758952577)
,p_query_column_id=>8
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>7
,p_column_heading=>'Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207333381952575)
,p_query_column_id=>9
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>9
,p_column_heading=>'Dis<br>(%)'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207441714952577)
,p_query_column_id=>10
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>10
,p_column_heading=>'Dis<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208238184952577)
,p_query_column_id=>11
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>11
,p_column_heading=>'Total<br>Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210343506952577)
,p_query_column_id=>12
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>12
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'10'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205225574952574)
,p_query_column_id=>13
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>14
,p_column_heading=>'Warecode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205326819952574)
,p_query_column_id=>14
,p_column_alias=>'ORDER_ITEM_ID'
,p_column_display_sequence=>15
,p_column_heading=>'Order Item Id'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205416025952574)
,p_query_column_id=>15
,p_column_alias=>'ORDER_ID'
,p_column_display_sequence=>16
,p_column_heading=>'Order Id'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205629006952574)
,p_query_column_id=>16
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205724113952574)
,p_query_column_id=>17
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>17
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205816116952574)
,p_query_column_id=>18
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>19
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64205933228952575)
,p_query_column_id=>19
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>20
,p_column_heading=>'Docnumbr'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206044594952575)
,p_query_column_id=>20
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>18
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206133830952575)
,p_query_column_id=>21
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>21
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206227015952575)
,p_query_column_id=>22
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>22
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206325018952575)
,p_query_column_id=>23
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>23
,p_column_heading=>'Raisedby'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206429578952575)
,p_query_column_id=>24
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>24
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206541155952575)
,p_query_column_id=>25
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>25
,p_column_heading=>'Apprdate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206617731952575)
,p_query_column_id=>26
,p_column_alias=>'REQDDATE'
,p_column_display_sequence=>26
,p_column_heading=>'Reqddate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206715377952575)
,p_query_column_id=>27
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Commcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206834008952575)
,p_query_column_id=>28
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>28
,p_column_heading=>'Itemtype'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64206917586952575)
,p_query_column_id=>29
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>29
,p_column_heading=>'Itemdesc'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207039169952575)
,p_query_column_id=>30
,p_column_alias=>'ITEMLONG'
,p_column_display_sequence=>30
,p_column_heading=>'Itemlong'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207130506952575)
,p_query_column_id=>31
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>31
,p_column_heading=>'Itemrate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207233273952575)
,p_query_column_id=>32
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>32
,p_column_heading=>'Markpcnt'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207530138952577)
,p_query_column_id=>33
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>33
,p_column_heading=>'Spldispc'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207638702952577)
,p_query_column_id=>34
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>34
,p_column_heading=>'Spldisnt'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207734956952577)
,p_query_column_id=>35
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>35
,p_column_heading=>'Huomcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207823626952577)
,p_query_column_id=>36
,p_column_alias=>'FACTRVAL'
,p_column_display_sequence=>36
,p_column_heading=>'Factrval'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64207933133952577)
,p_query_column_id=>37
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>37
,p_column_heading=>'Orgnqnty'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208115317952577)
,p_query_column_id=>38
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>38
,p_column_heading=>'Trnsqnty'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208331427952577)
,p_query_column_id=>39
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>39
,p_column_heading=>'Currcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208427854952577)
,p_query_column_id=>40
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>40
,p_column_heading=>'Excgrate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208544008952577)
,p_query_column_id=>41
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>41
,p_column_heading=>'Mslcamnt'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208629897952577)
,p_query_column_id=>42
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>42
,p_column_heading=>'Refnumbr'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208718986952577)
,p_query_column_id=>43
,p_column_alias=>'REFNDATE'
,p_column_display_sequence=>43
,p_column_heading=>'Refndate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208835739952577)
,p_query_column_id=>44
,p_column_alias=>'UPDOCTYP'
,p_column_display_sequence=>44
,p_column_heading=>'Updoctyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64208932673952577)
,p_query_column_id=>45
,p_column_alias=>'UPSUBTYP'
,p_column_display_sequence=>45
,p_column_heading=>'Upsubtyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209043502952577)
,p_query_column_id=>46
,p_column_alias=>'UPDOCNUM'
,p_column_display_sequence=>46
,p_column_heading=>'Updocnum'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209120061952577)
,p_query_column_id=>47
,p_column_alias=>'UPDOCDTE'
,p_column_display_sequence=>47
,p_column_heading=>'Updocdte'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209221271952577)
,p_query_column_id=>48
,p_column_alias=>'UPDOCSRL'
,p_column_display_sequence=>48
,p_column_heading=>'Updocsrl'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209346224952577)
,p_query_column_id=>49
,p_column_alias=>'DWDOCTYP'
,p_column_display_sequence=>49
,p_column_heading=>'Dwdoctyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209422410952577)
,p_query_column_id=>50
,p_column_alias=>'DWSUBTYP'
,p_column_display_sequence=>50
,p_column_heading=>'Dwsubtyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209517404952577)
,p_query_column_id=>51
,p_column_alias=>'DWDOCNUM'
,p_column_display_sequence=>51
,p_column_heading=>'Dwdocnum'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209635050952577)
,p_query_column_id=>52
,p_column_alias=>'DWDOCDTE'
,p_column_display_sequence=>52
,p_column_heading=>'Dwdocdte'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209719887952577)
,p_query_column_id=>53
,p_column_alias=>'DWDOCSRL'
,p_column_display_sequence=>53
,p_column_heading=>'Dwdocsrl'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209835249952577)
,p_query_column_id=>54
,p_column_alias=>'ACDOCTYP'
,p_column_display_sequence=>54
,p_column_heading=>'Acdoctyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64209925196952577)
,p_query_column_id=>55
,p_column_alias=>'ACSUBTYP'
,p_column_display_sequence=>55
,p_column_heading=>'Acsubtyp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210023211952577)
,p_query_column_id=>56
,p_column_alias=>'ACDOCNUM'
,p_column_display_sequence=>56
,p_column_heading=>'Acdocnum'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210119810952577)
,p_query_column_id=>57
,p_column_alias=>'ACDOCDTE'
,p_column_display_sequence=>57
,p_column_heading=>'Acdocdte'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210216061952577)
,p_query_column_id=>58
,p_column_alias=>'ACDOCSRL'
,p_column_display_sequence=>58
,p_column_heading=>'Acdocsrl'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210437287952577)
,p_query_column_id=>59
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>59
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210538581952577)
,p_query_column_id=>60
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>60
,p_column_heading=>'Postflag'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210620674952577)
,p_query_column_id=>61
,p_column_alias=>'PRNTFLAG'
,p_column_display_sequence=>61
,p_column_heading=>'Prntflag'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
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
 p_id=>wwv_flow_api.id(64210740715952577)
,p_query_column_id=>62
,p_column_alias=>'PRICFLAG'
,p_column_display_sequence=>62
,p_column_heading=>'Pricflag'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210825841952577)
,p_query_column_id=>63
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>63
,p_column_heading=>'Statuscd'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64210937329952577)
,p_query_column_id=>64
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>64
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211019253952577)
,p_query_column_id=>65
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>65
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211128430952577)
,p_query_column_id=>66
,p_column_alias=>'ITPICDIR'
,p_column_display_sequence=>66
,p_column_heading=>'Itpicdir'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211238314952577)
,p_query_column_id=>67
,p_column_alias=>'ITFILDIR'
,p_column_display_sequence=>67
,p_column_heading=>'Itfildir'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211344991952577)
,p_query_column_id=>68
,p_column_alias=>'CLSGDATE'
,p_column_display_sequence=>68
,p_column_heading=>'Clsgdate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211430935952577)
,p_query_column_id=>69
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>69
,p_column_heading=>'Acctcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211514853952577)
,p_query_column_id=>70
,p_column_alias=>'ACCTCATE'
,p_column_display_sequence=>70
,p_column_heading=>'Acctcate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211616786952577)
,p_query_column_id=>71
,p_column_alias=>'BUDGCODE'
,p_column_display_sequence=>71
,p_column_heading=>'Budgcode'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211743361952577)
,p_query_column_id=>72
,p_column_alias=>'DELYDATE'
,p_column_display_sequence=>72
,p_column_heading=>'Delydate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211813800952577)
,p_query_column_id=>73
,p_column_alias=>'BALLPQTY'
,p_column_display_sequence=>73
,p_column_heading=>'Ballpqty'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64211932200952577)
,p_query_column_id=>74
,p_column_alias=>'PAYAMTFC'
,p_column_display_sequence=>74
,p_column_heading=>'Payamtfc'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212038863952577)
,p_query_column_id=>75
,p_column_alias=>'PAYAMTLC'
,p_column_display_sequence=>75
,p_column_heading=>'Payamtlc'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212138318952577)
,p_query_column_id=>76
,p_column_alias=>'LUOMDESC'
,p_column_display_sequence=>76
,p_column_heading=>'Luomdesc'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212221130952577)
,p_query_column_id=>77
,p_column_alias=>'ITEMRATP'
,p_column_display_sequence=>77
,p_column_heading=>'Itemratp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212324155952577)
,p_query_column_id=>78
,p_column_alias=>'ITRFDATE'
,p_column_display_sequence=>78
,p_column_heading=>'Itrfdate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212423549952577)
,p_query_column_id=>79
,p_column_alias=>'SALERATP'
,p_column_display_sequence=>79
,p_column_heading=>'Saleratp'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212545869952577)
,p_query_column_id=>80
,p_column_alias=>'INTREQNO'
,p_column_display_sequence=>80
,p_column_heading=>'Intreqno'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212637235952577)
,p_query_column_id=>81
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>81
,p_column_heading=>'Costrate'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212718314952577)
,p_query_column_id=>82
,p_column_alias=>'DESIGNCD'
,p_column_display_sequence=>82
,p_column_heading=>'Designcd'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212825464952577)
,p_query_column_id=>83
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>83
,p_column_heading=>'Custmrid'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64212932949952577)
,p_query_column_id=>84
,p_column_alias=>'TERMSCOD'
,p_column_display_sequence=>84
,p_column_heading=>'Termscod'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213036567952577)
,p_query_column_id=>85
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>85
,p_column_heading=>'Colorcde'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213141923952577)
,p_query_column_id=>86
,p_column_alias=>'SLSOFRNO'
,p_column_display_sequence=>86
,p_column_heading=>'Slsofrno'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213230950952577)
,p_query_column_id=>87
,p_column_alias=>'ITEMSIZE'
,p_column_display_sequence=>87
,p_column_heading=>'Itemsize'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213333123952577)
,p_query_column_id=>88
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>88
,p_column_heading=>'Bankname'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213439829952577)
,p_query_column_id=>89
,p_column_alias=>'BRANCHNM'
,p_column_display_sequence=>89
,p_column_heading=>'Branchnm'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213542036952577)
,p_query_column_id=>90
,p_column_alias=>'ITMGRADE'
,p_column_display_sequence=>90
,p_column_heading=>'Itmgrade'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213620999952577)
,p_query_column_id=>91
,p_column_alias=>'FROMPORT'
,p_column_display_sequence=>91
,p_column_heading=>'Fromport'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213718396952577)
,p_query_column_id=>92
,p_column_alias=>'SENDPORT'
,p_column_display_sequence=>92
,p_column_heading=>'Sendport'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213822688952577)
,p_query_column_id=>93
,p_column_alias=>'CNTRYORG'
,p_column_display_sequence=>93
,p_column_heading=>'Cntryorg'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64213922053952577)
,p_query_column_id=>94
,p_column_alias=>'SENDVHCL'
,p_column_display_sequence=>94
,p_column_heading=>'Sendvhcl'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214033729952577)
,p_query_column_id=>95
,p_column_alias=>'ARRIVEDT'
,p_column_display_sequence=>95
,p_column_heading=>'Arrivedt'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214142180952577)
,p_query_column_id=>96
,p_column_alias=>'REGNUMBR'
,p_column_display_sequence=>96
,p_column_heading=>'Regnumbr'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214240625952577)
,p_query_column_id=>97
,p_column_alias=>'ACNTNAME'
,p_column_display_sequence=>97
,p_column_heading=>'Acntname'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214333175952577)
,p_query_column_id=>98
,p_column_alias=>'STEPRJADD'
,p_column_display_sequence=>98
,p_column_heading=>'Steprjadd'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214441063952577)
,p_query_column_id=>99
,p_column_alias=>'STECONPER'
,p_column_display_sequence=>99
,p_column_heading=>'Steconper'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214538015952577)
,p_query_column_id=>100
,p_column_alias=>'STECONPHN'
,p_column_display_sequence=>100
,p_column_heading=>'Steconphn'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214632299952577)
,p_query_column_id=>101
,p_column_alias=>'DISCTAMT'
,p_column_display_sequence=>101
,p_column_heading=>'Disctamt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214736126952577)
,p_query_column_id=>102
,p_column_alias=>'DELVCOND'
,p_column_display_sequence=>102
,p_column_heading=>'Delvcond'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214827721952577)
,p_query_column_id=>103
,p_column_alias=>'OTHRAMNT'
,p_column_display_sequence=>103
,p_column_heading=>'Othramnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64214918471952577)
,p_query_column_id=>104
,p_column_alias=>'SOFNUMBR'
,p_column_display_sequence=>104
,p_column_heading=>'Sofnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(64215025422952577)
,p_query_column_id=>105
,p_column_alias=>'DONUMBER'
,p_column_display_sequence=>105
,p_column_heading=>'Donumber'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63701140531479690)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136848781208693754)
,p_plug_name=>'item region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63697746246479687)
,p_button_sequence=>1110
,p_button_plug_id=>wwv_flow_api.id(63696536750479687)
,p_button_name=>'P52_SHOWHIDE'
,p_button_static_id=>'P52_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63695718109479685)
,p_button_sequence=>1370
,p_button_plug_id=>wwv_flow_api.id(63694135722479684)
,p_button_name=>'P52_ADDINSTALL'
,p_button_static_id=>'P52_ADDINSTALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Install'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63809721967207313)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(63808530528207285)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63809439764207313)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'CANCEL1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:52::'
,p_button_condition=>'P52_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63809641470207313)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(63808530528207285)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63709336917479709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'HELP'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:52::'
,p_button_condition=>'P52_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63709531175479709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'HELP'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63709125910479709)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'HELP'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63809538693207313)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'SUBMIT1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63689146332479667)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63689332273479673)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63689533735479673)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63689724161479673)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition=>'P52_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(63709720426479709)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'CREATE_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64260127416305145)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(63688946242479665)
,p_button_name=>'NEW_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Order'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(64574727163138308)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(63808530528207285)
,p_button_name=>'ADD_MON'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Mon'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(65168219687917055)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(63808530528207285)
,p_button_name=>'QUERY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Query'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63720643676479742)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:52::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63809439764207313)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(63811126724207330)
,p_branch_action=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(63709720426479709)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63686134253479654)
,p_name=>'P52_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63686330628479662)
,p_name=>'P52_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63686522271479662)
,p_name=>'P52_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Oprstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63686734204479662)
,p_name=>'P52_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Timstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63686936026479662)
,p_name=>'P52_DOCTTYPE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Docttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63687133134479662)
,p_name=>'P52_SUBTTYPE'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63687326277479662)
,p_name=>'P52_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Serlnumb'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63687532282479664)
,p_name=>'P52_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Statuscd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63687730650479664)
,p_name=>'P52_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Itemlong 1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63687915135479664)
,p_name=>'P52_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Msfcamnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63688145360479664)
,p_name=>'P52_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63688335848479664)
,p_name=>'P52_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63688541387479664)
,p_name=>'P52_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Itemcode1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63688737434479664)
,p_name=>'P52_COMPCODE_APPLICATION'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct s.COMPCODE from syrights s,syparmas m',
'where s.COMPCODE=m.CACMPCDE',
'and USERCODE=:APP_USER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63689928368479673)
,p_name=>'P52_TRANTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63688946242479665)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   naration d, trantype||subttype r',
'    FROM sydocmas',
'   WHERE compcode = :COMPCODE AND trantype = ''SO''',
' AND MODLCODE = ''NM''',
'ORDER BY 2'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63690135476479674)
,p_name=>'P52_SALESTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63688946242479665)
,p_prompt=>'Salestype'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d ,NMSOFCDE r from nmcodmas',
'where NMHRDCDE = ''PAY''',
' AND COMPCODE =  :compcode',
' AND MODLCODE = ''NM'''))
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63690333236479674)
,p_name=>'P52_DOCNUMBR'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(63688946242479665)
,p_prompt=>'Invoice No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63690517589479674)
,p_name=>'P52_DOCTDATE'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(63688946242479665)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_CUSTOMERID'')"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
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
 p_id=>wwv_flow_api.id(63690920607479678)
,p_name=>'P52_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_prompt=>'Order No :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.docnumbr||''-''||s.partycde||''-''||s.doctdate d,s.docnumbr r',
'           FROM nmslsofr s,',
'                (SELECT   compcode, updoctyp, upsubtyp, updocnum, itemcode,',
'                          SUM (apprqnty) apprqnty',
'                     FROM nmsalrec',
'                 GROUP BY compcode, updoctyp, upsubtyp, updocnum, itemcode) sls',
'          WHERE s.compcode = :compcode ',
'            AND s.docttype = :P52_REQREFTYPE',
'            AND s.subttype = :P52_REQSUBTYPE',
'            AND s.doctdate <= :P52_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P52_REQREFTYPE,P52_REQSUBTYPE,P52_ORDERDATE'
,p_ajax_items_to_submit=>'P52_REQREFTYPE,P52_REQSUBTYPE,P52_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63691126864479679)
,p_name=>'P52_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63691328749479679)
,p_name=>'P52_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63691516087479679)
,p_name=>'P52_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63691730273479681)
,p_name=>'P52_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_prompt=>'Reqreftype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63691934224479681)
,p_name=>'P52_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(63690736131479676)
,p_prompt=>'Reqsubtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63692339827479681)
,p_name=>'P52_CUSADDRESS'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Customer Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63692524814479681)
,p_name=>'P52_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Zone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63692743564479681)
,p_name=>'P52_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63692940686479682)
,p_name=>'P52_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Last Purchase Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63693116704479682)
,p_name=>'P52_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Last Product'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63693326045479682)
,p_name=>'P52_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Last Pur.  Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63693521376479682)
,p_name=>'P52_AREACODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63693725799479682)
,p_name=>'P52_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(63692113752479681)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63694324397479684)
,p_name=>'P52_QUENTITY'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISCPCNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63694530849479684)
,p_name=>'P52_SALPRICE'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Sales Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63694740814479684)
,p_name=>'P52_DISAMOUNT'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Dis Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63694923635479684)
,p_name=>'P52_NETAMOUNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Net Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63695120792479684)
,p_name=>'P52_DISCPCNT'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Dis. %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISAMOUNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63695340253479685)
,p_name=>'P52_INSTALLNO'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'No. of Install.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63695540087479685)
,p_name=>'P52_INSTLLAMOUNT'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63695943112479685)
,p_name=>'P52_PERINSTALL'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Perinstall'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63696137248479685)
,p_name=>'P52_AMOUNT'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63696338660479685)
,p_name=>'P52_CLOSINGBALANCE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(63694135722479684)
,p_prompt=>'stock Qty.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>4
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63696717675479687)
,p_name=>'P52_CUSTOMTYPE'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas where NMSOFCDE in',
'(select distinct CUSTTYPE from nmcusmas)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''NM''',
'and NMHRDCDE=''CTY'';'))
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63696918612479687)
,p_name=>'P52_CUSTOMERID'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Customer Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onchange="calculateTotal4(this);"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63697113938479687)
,p_name=>'P52_SALMANID'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smanname,s.smancode',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P52_COSTCODE'))
,p_lov_cascade_parent_items=>'P52_COSTCODE'
,p_ajax_items_to_submit=>'P52_COSTCODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_ITEMCODE'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63697321298479687)
,p_name=>'P52_COSTCODE'
,p_item_sequence=>1220
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Cost Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_SALMANID'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63697524016479687)
,p_name=>'P52_WARECODE'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63697943493479687)
,p_name=>'P52_CUSTOMERNAME'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63698138712479689)
,p_name=>'P52_COSTCENTERNAME'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63698540711479689)
,p_name=>'P52_ITEMCODE'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_item_default=>':P52_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P52_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_cascade_parent_items=>'P52_WARECODE'
,p_ajax_items_to_submit=>'P52_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_BATCHNUM'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63698746369479689)
,p_name=>'P52_ITEMDESC'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63698927604479689)
,p_name=>'P52_BRAND'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63699116406479689)
,p_name=>'P52_MODAL'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63699337614479689)
,p_name=>'P52_UNITOFMESURE'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63699520019479689)
,p_name=>'P52_BATCHNUM'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P52_ITEMCODE',
'                      AND w.warecode = :P52_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P52_ITEMCODE,P52_WARECODE'
,p_ajax_items_to_submit=>'P52_ITEMCODE,P52_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_QUENTITY'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63699740285479689)
,p_name=>'P52_ISSUMTHD'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(63698334155479689)
,p_prompt=>'Issumthd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63699943276479689)
,p_name=>'P52_S_H_REGION'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63700122098479690)
,p_name=>'P52_TABULARITEMCODE'
,p_is_required=>true
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Tabularitemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onchange="pull_multi_value(this.value)";'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63700319176479690)
,p_name=>'P52_TABITEMDESC'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabitemdesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63700530159479690)
,p_name=>'P52_TABITEMRATE'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63700743022479690)
,p_name=>'P52_TABITEMUNIT'
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63700929586479690)
,p_name=>'P52_TABCLOSINGBALANCE'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63701336424479690)
,p_name=>'P52_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(63701140531479690)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63711117601479728)
,p_name=>'P52_SALMANTYPE'
,p_item_sequence=>1160
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(63721314073679381)
,p_name=>'P52_ORDER_ID'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Order Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64526638439442232)
,p_name=>'P52_DOCTDATE1'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(63685944987479639)
,p_prompt=>'Doctdate1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(65089619965852384)
,p_name=>'P52_LOVCUSTOMERID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Customer Id'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTMRID,CUSTNAME,CUSTADR1 from nmcusmas',
'where COMPCODE=:COMPCODE'))
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P52_CUSTOMERID'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65098119231959139)
,p_name=>'P52_LOVCOSTCODE'
,p_item_sequence=>1120
,p_item_plug_id=>wwv_flow_api.id(63696536750479687)
,p_prompt=>'Cost Center'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode, s.costdesc',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P52_COSTCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136849068976693754)
,p_name=>'P52_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(136848781208693754)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136849533148693757)
,p_name=>'P52_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(136848781208693754)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136849921319693759)
,p_name=>'P52_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(136848781208693754)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(63960637062467020)
,p_computation_sequence=>10
,p_computation_item=>'P52_CUSTOMERID'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct c.CUSTMRID',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and r.PARTYCDE=:P11_CUSTOMER_ID;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(63962026358639108)
,p_computation_sequence=>10
,p_computation_item=>'P52_CUSTOMERNAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRTYNAME from sycompty',
'where  PARTYCDE= :P11_CUSTOMER_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(63962642711677151)
,p_computation_sequence=>10
,p_computation_item=>'P52_CUSADDRESS'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PARTYAD1 from sycompty',
'where  PARTYCDE= :P11_CUSTOMER_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(63963319167733643)
,p_computation_sequence=>10
,p_computation_item=>'P52_PARTYCODE'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PARTYCDE from sycompty',
'where  PARTYCDE= :P11_CUSTOMER_ID'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(63810521864207318)
,p_tabular_form_region_id=>wwv_flow_api.id(63808530528207285)
,p_validation_name=>'SALERATE must be numeric'
,p_validation_sequence=>40
,p_validation=>'SALERATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(63809538693207313)
,p_associated_column=>'SALERATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64389921195829118)
,p_validation_name=>'Page Validation'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..htmldb_application.g_f01.count',
'loop',
'    if htmldb_application.g_f06(i) is null then',
'      return ''Qty. must have some value.'';',
'    end if;',
'',
'if htmldb_application.g_f03(i) is null then',
'      return ''Salerate must have some value.'';',
'    end if;',
'',
'',
'  ',
'end loop;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'Unable to insert'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(64260127416305145)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64390519002875672)
,p_validation_name=>'P52_COSTCODE'
,p_validation_sequence=>60
,p_validation=>'P52_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(63709720426479709)
,p_associated_item=>wwv_flow_api.id(63697321298479687)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64390843994894477)
,p_validation_name=>'P52_SALMANID'
,p_validation_sequence=>70
,p_validation=>'P52_SALMANID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(63709720426479709)
,p_associated_item=>wwv_flow_api.id(63697113938479687)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64403344511319718)
,p_validation_name=>'P52_CUSTOMERID'
,p_validation_sequence=>80
,p_validation=>'P52_CUSTOMERID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(63709720426479709)
,p_associated_item=>wwv_flow_api.id(63696918612479687)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(64403531572325716)
,p_validation_name=>'P52_DOCTDATE'
,p_validation_sequence=>90
,p_validation=>'P52_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(63709720426479709)
,p_associated_item=>wwv_flow_api.id(63690517589479674)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63713724566479735)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_CUSTOMERID'
,p_condition_element=>'P52_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63714030374479735)
,p_event_id=>wwv_flow_api.id(63713724566479735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct c.CUSTADR1,r.AREACODE,r.ZONLCODE,r.partycde,CUSTNAME',
'into :P52_CUSADDRESS,:P52_AREACODE,:P52_ZONE,:P52_PARTYCODE,:P52_CUSTOMERNAME',
'  FROM nmcusmas c, sycompty r',
' WHERE c.PARTYCDE = r.PARTYCDE(+) AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P52_CUSTOMERID;',
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
'END;'))
,p_attribute_02=>'P52_CUSTOMERID'
,p_attribute_03=>'P52_CUSADDRESS,P52_AREACODE,P52_ZONE,P52_PARTYCODE,P52_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63714117174479735)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_COSTCODE'
,p_condition_element=>'P52_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63714426696479737)
,p_event_id=>wwv_flow_api.id(63714117174479735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P52_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P52_COSTCODE)',
'     AND costcode = :P52_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P52_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P52_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P52_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P52_COSTCODE IS NOT NULL and :P52_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P52_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p52_docnumbr1',
'         AND DOCTDATE = :P52_DOCTDATE',
'         AND COSTCODE = :P52_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P52_COSTCODE,P52_DOCNUMBR1,P52_DOCTDATE'
,p_attribute_03=>'P52_WARECODE,P52_COSTCENTERNAME,P52_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63714541118479737)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ITEMCODE'
,p_condition_element=>'P52_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63714828360479737)
,p_event_id=>wwv_flow_api.id(63714541118479737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P52_UNITOFMESURE,:P52_ITEMDESC,:P52_BRAND,:P52_MODAL,:P52_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P52_ITEMCODE;',
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
'IF :P52_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P52_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P52_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P52_ITEMCODE;',
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
'IF :P52_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P52_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P52_WARECODE',
'            AND b.itemcode =:P52_ITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
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
'IF :P52_ITEMCODE1 IS NOT NULL and :P52_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P52_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p52_docnumbr1 AND s.itemcode = :p52_itemcode1',
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
,p_attribute_02=>'P52_ITEMCODE,P52_WARECODE,P52_ITEMCODE1,P52_DOCNUMBR1'
,p_attribute_03=>'P52_UNITOFMESURE,P52_ITEMDESC,P52_BRAND,P52_MODAL,P52_SALPRICE,P52_ISSUMTHD,P52_CLOSINGBALANCE,P52_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63714929336479737)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63715236302479737)
,p_event_id=>wwv_flow_api.id(63714929336479737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P52_REQREFTYPE,:P52_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P52_TRANTYPE;',
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
'',
'END;'))
,p_attribute_02=>'P52_TRANTYPE'
,p_attribute_03=>'P52_REQREFTYPE,P52_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63715333407479737)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63695718109479685)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63715621111479738)
,p_event_id=>wwv_flow_api.id(63715333407479737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P52_PERINSTALL:=(:P52_INSTLLAMOUNT/:P52_INSTALLNO);',
'end;'))
,p_attribute_02=>'P52_INSTLLAMOUNT,P52_INSTALLNO'
,p_attribute_03=>'P52_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63715843659479738)
,p_event_id=>wwv_flow_api.id(63715333407479737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'var tt = window.document.getElementById(''P52_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P52_PERINSTALL'').value;',
'',
'};',
'*/'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63715946285479738)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_QUENTITY'
,p_condition_element=>'P52_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63716230438479740)
,p_event_id=>wwv_flow_api.id(63715946285479738)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P52_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63716423868479740)
,p_event_id=>wwv_flow_api.id(63715946285479738)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p52_amount := :p52_salprice * :p52_quentity;',
'END;'))
,p_attribute_02=>'P52_SALPRICE,P52_QUENTITY'
,p_attribute_03=>'P52_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63716534115479740)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_DISCPCNT'
,p_condition_element=>'P52_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63716828497479740)
,p_event_id=>wwv_flow_api.id(63716534115479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P52_DISAMOUNT:=(:P52_AMOUNT*:P52_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P52_AMOUNT,P52_DISCPCNT'
,p_attribute_03=>'P52_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63716930579479740)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_AMOUNT,P52_DISCPCNT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63717222454479740)
,p_event_id=>wwv_flow_api.id(63716930579479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P52_NETAMOUNT:=nvl(:P52_AMOUNT,0)-nvl(:P52_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P52_AMOUNT,P52_DISAMOUNT'
,p_attribute_03=>'P52_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63717324869479740)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63717638763479740)
,p_event_id=>wwv_flow_api.id(63717324869479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 17:44 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF      :p52_itemcode1 IS NOT NULL',
'and :P52_DOCNUMBR1 is not null',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.DOCNUMBR,s.doctdate,',
'             s.serlnumb, s.partycde, s.itemcode, s.smancode,',
'             s.commcode, s.itemdesc, s.itemlong,',
'             s.discpcnt, s.discamnt, s.salerate, s.custmrid,',
'             s.costcode, s.warecode, s.batchnum,s.MSFCAMNT',
'        INTO :p52_compcode, :p52_docttype, :p52_subttype,:P52_DOCNUMBR, :p52_doctdate,',
'             :p52_serlnumb, :p52_partycode, :p52_itemcode, :p52_salmanid,',
'             :p52_unitofmesure, :p52_itemdesc, :p52_itemlong_1,',
'             :p52_discpcnt, :p52_disamount, :p52_salprice, :p52_customerid,',
'             :p52_costcode, :p52_warecode, :p52_batchnum,:P52_NETAMOUNT',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :p52_docnumbr1 AND s.itemcode = :p52_itemcode1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P52_DOCNUMBR1,P52_ITEMCODE1'
,p_attribute_03=>'P52_COMPCODE,P52_DOCTTYPE,P52_SUBTTYPE,P52_DOCNUMBR,P52_DOCTDATE,P52_SERLNUMB,P52_PARTYCODE,P52_ITEMCODE,P52_SALMANID,P52_UNITOFMESURE,P52_ITEMDESC,P52_ITEMLONG_1,P52_DISCPCNT,P52_DISAMOUNT,P52_SALPRICE,P52_CUSTOMERID,P52_COSTCODE,P52_WARECODE,P52_BA'
||'TCHNUM,P52_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63717724773479740)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63718025365479740)
,p_event_id=>wwv_flow_api.id(63717724773479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_WARECODE IS NOT NULL and :P52_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P52_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P52_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P52_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P52_DOCNUMBR1,P52_WARECODE'
,p_attribute_03=>'P52_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63718126270479740)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63718424243479740)
,p_event_id=>wwv_flow_api.id(63718126270479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_ITEMCODE IS NOT NULL and :P52_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P52_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P52_ITEMCODE',
'                      AND w.warecode = :P52_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                 --  HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC);',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P52_ITEMCODE,P52_DOCNUMBR,P52_WARECODE'
,p_attribute_03=>'P52_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63718523245479740)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_ITEMCODE1'
,p_condition_element=>'P52_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63718838048479740)
,p_event_id=>wwv_flow_api.id(63718523245479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_ITEMCODE1 IS NOT NULL and :P52_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE',
'        INTO :P52_SALESTYPE,:P52_TRANTYPE',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p52_docnumbr1 AND s.itemcode = :p52_itemcode1;',
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
,p_attribute_02=>'P52_DOCNUMBR1,P52_ITEMCODE1'
,p_attribute_03=>'P52_SALESTYPE,P52_TRANTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63718934661479740)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(63689146332479667)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P52_S_H_REGION'').value) == 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63719217354479740)
,p_event_id=>wwv_flow_api.id(63718934661479740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P52_S_H_REGION'').value = 1;',
'window.document.getElementById(''TR'').style.display="none";',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63719445610479740)
,p_event_id=>wwv_flow_api.id(63718934661479740)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P52_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''P52_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63713339093479735)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63713629369479735)
,p_event_id=>wwv_flow_api.id(63713339093479735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for (i = 0; i <=5; i++)',
'{',
'javascript:addRow();',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63720140648479742)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63720422710479742)
,p_event_id=>wwv_flow_api.id(63720140648479742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f04"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f04"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f04"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f08"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f08"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f08"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f11"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f11"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f11"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f06"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f06"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f06"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(63712139453479734)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TABULARITEMCODE'
,p_condition_element=>'P52_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(63712434627479735)
,p_event_id=>wwv_flow_api.id(63712139453479734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P52_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct LUOMCODE,ITEMDES1',
'into :P52_tabitemunit,:P52_TABITEMDESC',
'FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P52_TABULARITEMCODE ;',
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
'IF :P52_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P52_TABITEMRATE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P52_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P52_TABULARITEMCODE;',
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
'IF :P52_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P52_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P52_WARECODE',
'            AND b.itemcode =:P52_TABULARITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
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
'END;'))
,p_attribute_02=>'P52_TABULARITEMCODE'
,p_attribute_03=>'P52_TABITEMDESC,P52_TABCLOSINGBALANCE,P52_TABITEMRATE,P52_TABITEMUNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(64412237649747378)
,p_name=>'calculation'
,p_event_sequence=>220
,p_triggering_element_type=>'DOM_OBJECT'
,p_triggering_element=>'f06'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(64412531361747379)
,p_event_id=>wwv_flow_api.id(64412237649747378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'document.getElementById("P52_TABULARITEMCODE").value = 55;'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.getElementById("P52_TABULARITEMCODE").value = 1;',
'',
'begin',
':P52_TABULARITEMCODE := 1;',
'end;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65170426136259543)
,p_name=>'on page load for tabular query'
,p_event_sequence=>230
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65168219687917055)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65170721448259554)
,p_event_id=>wwv_flow_api.id(65170426136259543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function lpad_num()',
'{',
'var i = $(''[name="f10"]'').length;',
'',
'for ( var j = 1; j <= i; j++ ) {',
'$(''#f10_'' + lpad_num(j,4)).val(5000);',
'if (j >= 10 ) break ; ',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65172420369891862)
,p_name=>'alert'
,p_event_sequence=>240
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65172729979891865)
,p_event_id=>wwv_flow_api.id(65172420369891862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_today       VARCHAR2(200);',
'   v_emp_count   NUMBER;',
'BEGIN',
'   SELECT COUNT (*)',
'     INTO v_emp_count',
'     FROM emp;',
'for i in (SELECT COUNT(*) FROM emp) loop',
'v_today := TO_CHAR (SYSDATE, ''dd.mm.yyyy hh24:mi:ss'');',
'   HTP.p (''<script type="text/javascript">'');',
'/*   HTP.p (''alert(''''Today is ''',
'          || i||'' ''||v_today',
'          || ''.\n''',
'          || ''You have ''',
'          || v_emp_count',
'          || '' employees in your emp table. \n''',
'          || ''This is an alert generated by a PL/SQL block \n''',
'          || ''executing javascript code!'''');''HTP.P (''END loop'')'';',
'         );*/',
'   HTP.p (''</script>'');',
'end loop;',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63810623400207326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63808530528207285)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSLSOFR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63810846092207327)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63808530528207285)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMSLSOFR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63711537985479734)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(63709720426479709)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64260436907393003)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'sales offer for new order use collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..htmldb_application.g_f01.count',
'loop              ',
'    BEGIN',
'INSERT INTO nmslsofr',
'            (compcode, docttype, subttype,',
'             docnumbr,',
'             doctdate,',
'             serlnumb, partycde, smancode, raisedby, apprvdby,',
'             apprdate, reqddate, commcode, itemcode, itemtype, itemdesc,',
'             itemlong, itemrate, markpcnt, discpcnt, discamnt, spldispc,',
'             spldisnt, salerate, huomcode, factrval, luomcode, orgnqnty,',
'             apprqnty, trnsqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'             refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'             updocsrl, remarkss, costcode, warecode, postflag, prntflag,',
'             pricflag, statuscd, oprstamp, timstamp, batchnum, ',
'             bankname, colorcde, custmrid, termscod, costrate,SLSOFRNO',
'            )',
'     VALUES (:p52_compcode_application, :p52_docttype, :p52_subttype,',
'             :p52_docnumbr,',
'             TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'             APEX_Srlno_SEQ.nextval, :p52_partycode, :p52_salmanid, :app_user, :app_user,',
'             NULL, NULL,  htmldb_application.g_f04(i),  htmldb_application.g_f01(i), ''S'',  htmldb_application.g_f02(i),',
'             htmldb_application.g_f02(i), htmldb_application.g_f03(i), NULL, htmldb_application.g_f07(i),htmldb_application.g_f08(i), NULL,',
'             NULL,  htmldb_application.g_f03(i),  htmldb_application.g_f04(i), 1,  htmldb_application.g_f03(i),  htmldb_application.g_f06(i),',
'             htmldb_application.g_f06(i), htmldb_application.g_f06(i), (nvl(htmldb_application.g_f03(i),0)*nvl(htmldb_application.g_f06(i),0))-(nvl(htmldb_application.g_f03(i),0)*nvl(htmldb_application.g_f06(i),0))*(nvl(htmldb_application.g_f07(i),0)'
||'/100), NULL, NULL, NULL,',
'             NULL, NULL, NULL, NULL, NULL, NULL,',
'             NULL,htmldb_application.g_f10(i), :p52_costcode, :p52_warecode, NULL, NULL,',
'             NULL, ''APR'', :app_user, SYSDATE, htmldb_application.g_f05(i), ',
'             NULL, NULL, :p52_customerid, NULL, NULL,APEX_SLSOFR_SEQ.nextval',
'            );',
'END;',
'end loop;',
'',
'if :P52_DOCNUMBR is not null then',
'delete from apex_order_items1',
'where ORDER_ID=:P52_ORDER_ID;',
'--commit;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64260127416305145)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P52_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64560619105729080)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(63808530528207285)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert process for nmslsofr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'INSERT INTO nmslsofr',
'            (compcode, docttype, subttype,',
'             docnumbr,',
'             doctdate,',
'             serlnumb, partycde, smancode, raisedby, apprvdby,',
'             apprdate, reqddate, commcode, itemcode, itemtype, itemdesc,',
'             itemlong, itemrate, markpcnt, discpcnt, discamnt, spldispc,',
'             spldisnt, salerate, huomcode, factrval, luomcode, orgnqnty,',
'             apprqnty, trnsqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'             refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'             updocsrl, remarkss, costcode, warecode, postflag, prntflag,',
'             pricflag, statuscd, oprstamp, timstamp, batchnum, ',
'             bankname, colorcde, custmrid, termscod, costrate,SLSOFRNO',
'            )',
'     VALUES (''100'', ''SO'', 1,',
'            ''SO01245'',',
'             SYSDATE,',
'             ''0001'', ''A0001'', ''001'', ''RILADM'', ''RILADM'',',
'             NULL, NULL, ''PCS'', ''test'', ''S'', ''test'',',
'             ''test'', 12, NULL, 1, 2, NULL,',
'             NULL, 12, ''PCS'', 1, ''PCS'', 1,',
'             1, 1, 12, NULL, NULL, NULL,',
'             NULL, NULL, NULL, NULL, NULL, NULL,',
'             NULL, ''PCS'', ''003'', ''W01'', NULL, NULL,',
'             NULL, ''APR'', ''RILADM'', SYSDATE, ''PCS'', ',
'             NULL, NULL, ''012345'', NULL, NULL,2569',
'            );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64574727163138308)
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Sales Invoice No. : &P52_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(65171915447634900)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'asd'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_subject   nmitemas.ITEMCODE%TYPE;',
'   v_price     nmitemas.ITEMDES1%TYPE;',
'',
'   CURSOR cur_c',
'   IS',
'      select c001,c002 from apex_collections ',
'               where collection_name = ''ORDER'' group by c001,c002; ',
'BEGIN',
'   FOR c IN cur_c',
'   LOOP',
'      v_subject := c.c001;',
'      v_price := c.c002 ;',
'',
'   END LOOP;',
'',
'   OWA_UTIL.mime_header (''text/xml'', FALSE);',
'   HTP.p (''Cache-Control: no-cache'');',
'   HTP.p (''Pragma: no-cache'');',
'   OWA_UTIL.http_header_close;',
'   HTP.prn (''<body>'');',
'   HTP.prn (''<desc>this xml genericly sets multiple items</desc>'');',
'   HTP.prn (''<item id="f03_'' || :t_rownum || ''">'' || v_subject || ''</item>'');',
'   HTP.prn (''<item id="f04_'' || :t_rownum || ''">'' || v_price || ''</item>'');',
'   HTP.prn (''</body>'');',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63711918705479734)
,p_process_sequence=>11
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre  insert on nmslsofr for new order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P52_DOCTTYPE:=substr(:P52_TRANTYPE,1,2);',
':P52_SUBTTYPE:=substr(:P52_TRANTYPE,3,1);',
'docnumber_generation(:P52_COMPCODE_APPLICATION, ''NM'', :P52_DOCTTYPE,',
'                       :P52_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', newno);',
' ',
':P52_DOCNUMBR:= newno;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64260127416305145)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(63814414270353960)
,p_process_sequence=>60
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(63808530528207285)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process for tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(20);',
'docnum varchar2(500);',
'begin',
':P52_DOCTTYPE:=substr(:P52_TRANTYPE,1,2);',
':P52_SUBTTYPE:=substr(:P52_TRANTYPE,3,1);',
'docnumber_generation(:P52_COMPCODE_APPLICATION, ''NM'', :P52_DOCTTYPE,',
'                       :P52_SUBTTYPE, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),null,',
'                        ''NM'', newno);',
' ',
':P52_DOCNUMBR:= newno;  ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(64574727163138308)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(64575231628186890)
,p_process_sequence=>90
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(63808530528207285)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f03.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f03(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f03.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f03(j);',
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
,p_process_when_button_id=>wwv_flow_api.id(64574727163138308)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
