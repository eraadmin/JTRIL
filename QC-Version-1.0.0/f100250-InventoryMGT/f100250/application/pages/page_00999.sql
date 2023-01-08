prompt --application/pages/page_00999
begin
--   Manifest
--     PAGE: 00999
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
 p_id=>999
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Transaction type'
,p_alias=>'NMTYPSEC'
,p_page_mode=>'MODAL'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'/*',
'    function blinker(id){',
'var background = document.getElementById(id).style.color;',
'//alert(background);',
'  if(background == "rgb(204, 204, 204)")',
'  {',
'  document.getElementById(id).style.color = "green";',
'  }',
'  if(background == "green")',
'  {',
'    document.getElementById(id).style.color = "rgb(204, 204, 204)";',
'  } ',
'}',
'  */',
'',
'    function blinker(id){',
'//var cnt = $(''.class1'').length;',
'  /*  cnt = parseInt(cnt) + parseInt($(''.class1'').length);',
'     alert(cnt);*/',
'        $(''#''+id).addClass(''class1'');',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(id).style.background = "yellow";',
'        ',
'        $(".class1").each(function(){',
'    var tmpid = $(this).attr(''id'');',
'         //   alert(tmpid+id);',
'    if (tmpid != id){',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(tmpid).style.color = "blue";',
'        document.getElementById(tmpid).style.background = "white";',
'          //  $(tmpid).addClass(''class1'');',
'    }',
'           /* else{',
'            $(tmpid).addClass(''class2'');    ',
'            }*/',
'});',
'       ',
'        /*',
'var ide=''#'';         ',
'        for(i=1; i<=cnt; i++){',
'            ide= ide+i;',
'            if (id == i){',
'                id = ''#''+id;',
'             $(id).addClass(''class2'');   ',
'            }',
'            else{',
'             $(ide).addClass(''class1'');',
'            ide= ''#'';',
'        }        ',
'    }           ',
'     */   ',
'}',
'    </script>',
'<script type="text/javascript">',
' function blinker1(id){',
'        $(''#''+id).addClass(''class2'');',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(id).style.background = "yellow";',
'        ',
'        $(".class2").each(function(){',
'    var tmpid = $(this).attr(''id'');',
'    if (tmpid != id){',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(tmpid).style.color = "#ccc";',
'        document.getElementById(tmpid).style.background = "linear-gradient(#888, #555)";',
'    }',
'});',
' }',
'</script>',
'<script type="text/javascript">',
'     function blinker2(id){',
'        $(''#''+id).addClass(''class3'');',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(id).style.background = "yellow";',
'        ',
'        $(".class3").each(function(){',
'    var tmpid = $(this).attr(''id'');',
'    if (tmpid != id){',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(tmpid).style.color = "#ccc";',
'        document.getElementById(tmpid).style.background = "linear-gradient(#888, #555)";',
'    }',
'});',
' }',
'</script>',
'<script type="text/javascript">',
'     function blinker3(id){',
'        $(''#''+id).addClass(''class4'');',
'        document.getElementById(id).style.color = "red";',
'         document.getElementById(id).style.background = "yellow";',
'        ',
'        $(".class4").each(function(){',
'    var tmpid = $(this).attr(''id'');',
'    if (tmpid != id){',
'        document.getElementById(id).style.color = "red";',
'        document.getElementById(tmpid).style.color = "#ccc";',
'        document.getElementById(tmpid).style.background = "linear-gradient(#888, #555)";',
'    }',
'});',
' }',
'</script>',
'',
'',
'<script type="text/javascript">',
'function hidehtmlelement(id) {',
'    var v_add=document.getElementById(''P999_ADD'').value; ',
'    var v_mod=document.getElementById(''P999_MOD'').value; ',
'    var v_del=document.getElementById(''P999_DEL'').value; ',
'    var v_enq=document.getElementById(''P999_ENQ'').value; ',
'     if(v_add==''Y''){',
'         alert(v_add);',
'        document.getElementById(id).style.visibility = ''visible'';',
'    }',
'    else {',
'        ',
'        document.getElementById(id).style.visibility = ''hidden'';',
'    }',
'    if(v_mod==''Y''){',
'        document.getElementById(id).style.visibility = ''visible'';',
'    }',
'    else {',
'        document.getElementById(id).style.visibility = ''hidden'';',
'    }',
'    if(v_del==''Y''){',
'        document.getElementById(id).style.visibility = ''hidden'';',
'    }',
'    else {',
'        document.getElementById(id).style.visibility = ''visible'';',
'    }',
'    if(v_enq==''Y''){',
'        document.getElementById(id).style.visibility = ''visible'';',
'    }',
'    else {',
'        document.getElementById(id).style.visibility = ''hidden'';',
'    }',
'    ',
'   ',
'}',
'</script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'  $(''#apex_dialog_1'').dialog({',
'  position: { my: "left bottom", at: "left bottom", of: ''body'' }',
'});',
'  //  alert("123456");',
'});',
'function getCount(parent, getChildrensChildren){',
'    var relevantChildren = 0;',
'    var children = parent.childNodes.length;',
'    for(var i=0; i < children; i++){',
'        if(parent.childNodes[i].nodeType != 3){',
'            if(getChildrensChildren)',
'                relevantChildren += getCount(parent.childNodes[i],true);',
'            relevantChildren++;',
'        }',
'    }',
'    return relevantChildren;',
'}',
'function getAllElementsWithAttribute(attribute)',
'{',
'  var matchingElements = [];',
'  var allElements = document.getElementsByTagName(''*'');',
'  for (var i = 0, n = allElements.length; i < n; i++)',
'  {',
'    if (allElements[i].getAttribute(attribute) !== null)',
'    {',
'      // Element exists with attribute. Add to array.',
'      matchingElements.push(allElements[i]);',
'    }',
'  }',
'  return matchingElements;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-LinksList-item.is-current>a {',
'    font-weight: bold !important;',
'    font-size: 18px !important;',
'    line-height: 2rem !important;',
'}',
'.t-Form--noPadding t-Form--stretchInputs t-Form--leftLabels lto54418042768297803_0{',
'    font-size: 0.0rem !important;',
'    line-height: 1rem !important;',
'}',
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'    background-color: #77b1f0;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}',
'div.sideCartItem{padding:8px 8px 0 8px;font:normal 11px/14px Arial,sans-serif;} ',
'div.sideCartItem a{color:#000;} ',
'div.sideCartItem strong,div.sideCartItem span{display:block;text-align:right;padding:8px 0 0 0;} ',
'div.sideCartItem span{padding:4px 0 0 0;} ',
'div.sideCartItem span.subtotal{font-weight:bold;} ',
'div.sideCartItem p{margin:4px 0 0 0;padding:0 0 8px 0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartItem p span{padding:0;font-weight:bold;text-align: right;} ',
'div.sideCartTotal{border-top:1px solid #FFF;margin-top:8px;padding:8px;border-top:1px dotted #AAA;} ',
'div.sideCartTotal span{display:block;text-align:right;font:normal 11px/14px Arial,sans-serif;padding:0 0 4px 0;} ',
'div.sideCartTotal p{padding:0;margin:0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartTotal p.sideCartTotal{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p.sideCartTotal span{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p span{padding:0;position:absolute;right:0;top:0;} ',
'div.demoCustomerInfo{}',
'div.demoCustomerInfo strong{font:bold 12px/16px Arial,sans-serif;display:block;width:120px;}',
'div.demoCustomerInfo p{display:block;margin:0; font: normal 12px/16px Arial, sans-serif;}',
'div.demoProducts{clear:both;margin:16px 0 0 0;padding:0 8px 0 0;}',
'div.demoProducts table{border:1px solid #CCC;border-bottom:none;}',
'div.demoProducts table th{background-color:#DDD;color:#000;font:bold 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;border-bottom:1px solid #CCC;}',
'div.demoProducts table td{border-bottom:1px solid #CCC;font:normal 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;}',
'div.demoProducts table td a{color:#000;}',
'div.demoProducts .left{text-align:left;}',
'div.demoCurrentOrder{margin:16px 0 0 0; border-left: 1px solid #CCC; padding: 0 0 0 8px}',
'strong.demoTitle{font:bold 12px/16px Arial,sans-serif;display:block;padding: 4px 10px; background-color: #DDD; border: 1px solid #CCC}',
'a.demoAddtoCart {',
'display: block;',
'float: right;',
'padding: 2px 6px;',
'background-color: #CCC;',
'color: #FFF;',
'text-decoration: none;',
'-moz-border-radius: 4px;',
'-webkit-border-radius: 4px;',
'	}',
'a.demoAddtoCart:hover {background-color: #80A2BB; color: #FFF}'))
,p_page_css_classes=>'#PAGE_CSS_CLASSES#'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'style="top: 80px;left: 103px;"',
'position:''left-20 top+35''',
'&PAGE_TITLE.',
'',
'position:''left-1 top+35'''))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180904123205'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36782554109033262)
,p_plug_name=>'Doctype'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-LinksList--nowrap:t-LinksList--showBadge:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>3
,p_list_id=>wwv_flow_api.id(58724055500836033)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47041749480358137)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>14
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58367313428819736)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--pill'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47592898119858189)
,p_plug_display_sequence=>1
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(47631212475858359)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116808337250905957)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(116746674246932568)
,p_name=>'Transaction Type'
,p_parent_plug_id=>wwv_flow_api.id(116808337250905957)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRANTYPE,SUBTTYPE,NARATION,PRDOCTYP,PRSUBTYP,''<button type="button"><font size="3">ADD</font></button>'' add_button,',
'''<button type="button"><font size="3">MOD</font></button>'' mod_button,',
'''<button type="button"><font size="3">DEL</font></button>'' del_button,',
'''<button type="button"><font size="3">ENQ</font></button>'' enq_button',
' from sydocmas a,nmwrkflw b',
'where a.compcode=:compcode',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(:PROGNAME),1,2)',
'and TRANTYPE=(select NMTRNTYP from symenmas where PROGNAME=:PROGNAME)',
'order by SUBTTYPE'))
,p_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(116747342624932653)
,p_query_column_id=>1
,p_column_alias=>'TRANTYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Trantype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116747698870932658)
,p_query_column_id=>2
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116748143073932661)
,p_query_column_id=>3
,p_column_alias=>'NARATION'
,p_column_display_sequence=>3
,p_column_heading=>'Naration'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116835396487233346)
,p_query_column_id=>4
,p_column_alias=>'PRDOCTYP'
,p_column_display_sequence=>8
,p_column_heading=>'Prdoctyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116835817941233349)
,p_query_column_id=>5
,p_column_alias=>'PRSUBTYP'
,p_column_display_sequence=>9
,p_column_heading=>'Prsubtyp'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116748504406932661)
,p_query_column_id=>6
,p_column_alias=>'ADD_BUTTON'
,p_column_display_sequence=>4
,p_column_heading=>'ADD'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(1);',
'begin',
'select ADDSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116748909203932661)
,p_query_column_id=>7
,p_column_alias=>'MOD_BUTTON'
,p_column_display_sequence=>5
,p_column_heading=>'MODIFY'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.::P89_TRANTYPE,P89_SUBTTYPE,P89_ITEMCODE:#TRANTYPE#,#SUBTTYPE#,#NARATION#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(1);',
'begin',
'select MODSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116749277382932661)
,p_query_column_id=>8
,p_column_alias=>'DEL_BUTTON'
,p_column_display_sequence=>6
,p_column_heading=>'DELETE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(1);',
'begin',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116749718377932663)
,p_query_column_id=>9
,p_column_alias=>'ENQ_BUTTON'
,p_column_display_sequence=>7
,p_column_heading=>'ENQUIRY'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(1);',
'begin',
'select ENQSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116850233800456513)
,p_plug_name=>'a'
,p_parent_plug_id=>wwv_flow_api.id(116808337250905957)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_progname   VARCHAR2 (30) := :P999_PROGNAME;',
'   v_add_pageid number;',
'   v_mod_pageid number;',
'   v_add varchar2(1);',
'   v_mod varchar2(1);',
'   v_del varchar2(1);',
'   v_enq varchar2(1);',
'   v_add_d varchar2(10);',
'   v_mod_d varchar2(10);',
'   v_del_d varchar2(10);',
'   v_enq_d varchar2(10);',
'   v_doccunt number;',
'   v_addid number:= 0;',
'   v_modid number;',
'   v_delid number:= 0;',
'   v_enqid number:= 0;',
'   ',
'BEGIN',
'select  count(distinct a.SUBTTYPE) into v_modid',
' from sydocmas a,nmwrkflw b,nmwrkftr c,doctype_security d',
'where a.compcode=:compcode',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and a.compcode=c.compcode(+)',
'and a.TRANTYPE=c.TRDOCTYP(+)',
'and a.SUBTTYPE=c.TRSUBTYP(+)',
'and a.compcode=d.compcode(+)',
'and a.TRANTYPE=d.TRDOCTYP(+)',
'and a.SUBTTYPE=d.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(:P999_PROGNAME),1,2)',
'and TRANTYPE IN (select distinct regexp_substr(NMTRNTYP,''[^,]+'', 1, level) from symenmas where PROGNAME=:P999_PROGNAME',
'  connect by regexp_substr(NMTRNTYP, ''[^,]+'', 1, level) is not null )',
'    order by a.SUBTTYPE;',
'',
'',
'select nvl(count(TRDOCTYP||TRSUBTYP),0) into v_doccunt',
' from doctype_security  ',
'where TRDOCTYP =(select distinct NMTRNTYP from symenmas a,syrights b where a.PROGNAME=b.PROGNAME and b.compcode=:compcode and b.USERCODE=:APP_USER and b.PROGNAME=:PROGNAME);',
'',
'select distinct PAGEID,MOD_PAGEID ',
'into v_add_pageid,v_mod_pageid ',
'from symenmas ',
'where PROGNAME=:PROGNAME;',
'',
'/*begin',
' select decode(ADDSTATS,''Y'',''block'',''none''),decode(MODSTATS,''Y'',''block'',''none''),decode(DELSTATS,''Y'',''block'',''none''),decode(ENQSTATS,''Y'',''block'',''none'') into v_add_d,v_mod_d,v_del_d,v_enq_d from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'end;*/',
'',
'',
'--',
'-- display customer information',
'--',
'   SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'',
'   IF :P999_PROGNAME IS NOT NULL',
'   THEN',
'      FOR x IN (select count(SUBTTYPE)',
' from sydocmas a,nmwrkflw b',
'where a.compcode=:compcode',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(:P999_PROGNAME),1,2)',
'and TRANTYPE=(select NMTRNTYP from symenmas where PROGNAME=:P999_PROGNAME))',
'      LOOP',
'         SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'         ',
'      END LOOP;',
'   ELSE',
'      SYS.HTP.p (''<strong>Customer:</strong>'');',
'      SYS.HTP.p (''<p>'');',
'      SYS.HTP.p (   apex_escape.html (''Purchase Requisition Entry'')',
'                   );',
'      SYS.HTP.p (''</p>'');',
'   END IF;',
'',
'   SYS.HTP.p (''</div>'');',
'--',
'-- display products',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="120%" cellspacing="0" cellpadding="1" border="0">',
'<thead>',
'<tr><th style="text-align:left;color:red;">&PAGE_TITLE.</th><th></th></tr>',
'</thead>',
'<tbody>''',
'      );',
'if v_doccunt>0 then',
'   FOR c1 IN (select distinct a.compcode,a.TRANTYPE,a.SUBTTYPE,initcap(a.NARATION) NARATION,b.PRDOCTYP,b.PRSUBTYP,c.CATGRYCD',
' from sydocmas a,nmwrkflw b,nmwrkftr c,doctype_security d',
'where a.compcode=:compcode',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and a.compcode=c.compcode(+)',
'and a.TRANTYPE=c.TRDOCTYP(+)',
'and a.SUBTTYPE=c.TRSUBTYP(+)',
'and a.compcode=d.compcode',
'and a.TRANTYPE=d.TRDOCTYP',
'and a.SUBTTYPE=d.TRSUBTYP',
'and Upper(modlcode)=substr(Upper(:PROGNAME),1,2)',
'and TRANTYPE IN (select distinct regexp_substr(NMTRNTYP,''[^,]+'', 1, level) from symenmas where PROGNAME=:PROGNAME',
'  connect by regexp_substr(NMTRNTYP, ''[^,]+'', 1, level) is not null )',
'    order by a.SUBTTYPE)',
'   LOOP',
'     v_addid :=v_addid+1;',
'     v_modid :=v_modid+1;',
'     v_delid :=v_modid+v_modid+1;',
'     v_enqid :=v_modid+v_modid+v_modid+1;',
'      SYS.HTP.p',
'         (   ''<tr><td style="padding-left: 1px;width: 255px;font-weight:bold;text-align:left;background-color:white"><a id="''||v_addid||''" value="''||v_addid||''" onclick="blinker(''||v_addid||'')" style="padding-left: 1px;text-align:left;color:blue;" hr'
||'ef="''',
'          || apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||v_mod_pageid',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ENQ:NO:''',
'                                    ||v_mod_pageid',
'                                    ||'':P''',
'                                    ||v_mod_pageid',
'                                    ||''_TRANTYPE,P''',
'                                    ||v_mod_pageid',
'                                    ||''_SUBTTYPE,P''',
'                                    ||v_mod_pageid',
'                                    ||''_PRDOCTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_PRSUBTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_NARATION:''',
'                                    ||c1.TRANTYPE',
'                                    ||'','' ',
'                                    ||c1.SUBTTYPE',
'                                    ||'','' ',
'                                    ||c1.PRDOCTYP',
'                                    ||'','' ',
'                                    ||c1.PRSUBTYP',
'                                    ||'','' ',
'                                    ||c1.NARATION',
'                                    ||'':''',
'                                   )',
'          || ''">''|| c1.NARATION||''</a></td><td style="padding-left: 1px;width: 5px;font-weight:bold;text-align:left;background-color:white">''',
'          || ''(''||c1.TRANTYPE||''/''||c1.SUBTTYPE||'')''',
'          || ''</td></tr>''',
'         );',
'   END LOOP;',
'    ELSE',
'   FOR c1 IN (select distinct a.compcode,a.TRANTYPE,a.SUBTTYPE,initcap(a.NARATION) NARATION,b.PRDOCTYP,b.PRSUBTYP,c.CATGRYCD',
' from sydocmas a,nmwrkflw b,nmwrkftr c,doctype_security d',
'where a.compcode=:compcode',
'and a.compcode=b.compcode(+)',
'and a.TRANTYPE=b.TRDOCTYP(+)',
'and a.SUBTTYPE=b.TRSUBTYP(+)',
'and a.compcode=c.compcode(+)',
'and a.TRANTYPE=c.TRDOCTYP(+)',
'and a.SUBTTYPE=c.TRSUBTYP(+)',
'and a.compcode=d.compcode(+)',
'and a.TRANTYPE=d.TRDOCTYP(+)',
'and a.SUBTTYPE=d.TRSUBTYP(+)',
'and Upper(modlcode)=substr(Upper(:PROGNAME),1,2)',
'and TRANTYPE IN (select distinct regexp_substr(NMTRNTYP,''[^,]+'', 1, level) from symenmas where PROGNAME=:PROGNAME',
'  connect by regexp_substr(NMTRNTYP, ''[^,]+'', 1, level) is not null )',
'    order by a.SUBTTYPE)',
'   LOOP',
'     v_addid :=v_addid+1;',
'     v_modid :=v_modid+1;',
'     v_delid :=v_modid+v_modid+1;',
'     v_enqid :=v_modid+v_modid+v_modid+1;',
'      SYS.HTP.p',
'         (   ''<tr><td style="padding-left: 1px;width: 255px;font-weight:bold;text-align:left;background-color:white"><a id="''||v_addid||''" value="''||v_addid||''" onclick="blinker(''||v_addid||'')" style="padding-left: 1px;text-align:left;color:blue;" hr'
||'ef="''',
'          || apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||v_mod_pageid',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ENQ:NO:''',
'                                    ||v_mod_pageid',
'                                    ||'':P''',
'                                    ||v_mod_pageid',
'                                    ||''_TRANTYPE,P''',
'                                    ||v_mod_pageid',
'                                    ||''_SUBTTYPE,P''',
'                                    ||v_mod_pageid',
'                                    ||''_PRDOCTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_PRSUBTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_NARATION:''',
'                                    ||c1.TRANTYPE',
'                                    ||'','' ',
'                                    ||c1.SUBTTYPE',
'                                    ||'','' ',
'                                    ||c1.PRDOCTYP',
'                                    ||'','' ',
'                                    ||c1.PRSUBTYP',
'                                    ||'','' ',
'                                    ||c1.NARATION',
'                                    ||'':''',
'                                   )',
'          || ''">''|| c1.NARATION||''</a></td><td style="padding-left: 1px;width: 5px;font-weight:bold;text-align:left;background-color:white">''',
'          || ''(''||c1.TRANTYPE||''/''||c1.SUBTTYPE||'')''',
'          || ''</td></tr>''',
'         );',
'    ',
'   END LOOP;',
'  ',
'END IF;',
'   SYS.HTP.p (''</tbody></table>'');',
'   SYS.HTP.p (''</div>'');',
'/*EXCEPTION',
' WHEN NO_DATA_FOUND THEN',
'v_doccunt:=0;',
'when too_many_rows then',
'null;',
'when others then',
'null;*/',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>'A'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116884098638306967)
,p_plug_name=>'aa'
,p_parent_plug_id=>wwv_flow_api.id(116808337250905957)
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#77b1f0"'
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_progname   VARCHAR2 (30) := :P999_PROGNAME;',
'   v_add_pageid number;',
'   v_mod_pageid number;',
'BEGIN',
'select distinct PAGEID,MOD_PAGEID ',
'into v_add_pageid,v_mod_pageid ',
'from symenmas ',
'where PROGNAME=:P999_PROGNAME;',
'--',
'-- display customer information',
'--',
'   SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'',
'   IF :P999_PROGNAME IS NOT NULL',
'   THEN',
'      FOR x IN (Select count(s.trantype)',
'From SYDOCMAS s',
'Where s.compcode = :compcode ',
'And s.trantype||s.subttype in (',
'   SELECT  distinct  TRDOCTYP||TRSUBTYP',
'          FROM nmusrlev v',
'        WHERE v.trdoctyp in (SELECT distinct TRDOCTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'          AND v.trsubtyp in (SELECT distinct TRSUBTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'        and v.COMPCODE = :compcode',
'        and v.USERCODE=:APP_USER',
')',
')',
'      LOOP',
'         SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'         ',
'      END LOOP;',
'   ELSE',
'      SYS.HTP.p (''<strong>Customer:</strong>'');',
'      SYS.HTP.p (''<p>'');',
'      SYS.HTP.p (   apex_escape.html (''Purchase Requisition Entry'')',
'                   );',
'      SYS.HTP.p (''</p>'');',
'   END IF;',
'',
'   SYS.HTP.p (''</div>'');',
'--',
'-- display products',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th style="text-align:center;">Description</th><th class="left">Tran Type</th><th class="left">Qty</th><th></th></tr>',
'</thead>',
'<tbody>''',
'      );',
'',
'   FOR c1 IN ( Select Distinct Initcap(naration)||''  (''||s.trantype||''/''||subttype||'')'' as naration  ,s.trantype,subttype  ,''(''||(select count(count(Distinct Docnumbr)) Docnumbr from nmreqapr',
'where DOCTTYPE=s.trantype ',
'and SUBTTYPE=s.subttype',
'and COMPCODE=s.compcode',
'and USERCODE=:APP_USER',
'and STATUSCD=''NEW''',
'group by DOCNUMBR)||'')'' as docnum',
'From SYDOCMAS s',
'Where s.compcode = :compcode ',
'and s.TRANTYPE IN (',
'  select distinct regexp_substr(NMTRNTYP,''[^,]+'', 1, level) from symenmas where PROGNAME=:P999_PROGNAME',
'  connect by regexp_substr(NMTRNTYP, ''[^,]+'', 1, level) is not null )',
'And s.trantype||s.subttype in (',
'   SELECT  distinct  TRDOCTYP||TRSUBTYP',
'          FROM nmusrlev v',
'        WHERE v.trdoctyp in (SELECT distinct TRDOCTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'          AND v.trsubtyp in (SELECT distinct TRSUBTYP',
'        FROM nmwrkflw w',
'       WHERE w.compcode = :compcode',
'         and APPRNEED=''Y''',
'         and TRDOCTYP is not null',
'         and TRSUBTYP is not null)',
'         ',
'        and v.COMPCODE = :compcode',
'        and v.USERCODE=:APP_USER',
')',
'order by subttype',
')',
'   LOOP',
'      SYS.HTP.p',
'         (   ''<tr><td style="padding-left: 10px;font-weight:bold;text-align:left;background-color:#ADD8E6">''',
'          || c1.NARATION',
'          || ''</td><td class="left" style="padding-left: 0px;font-weight:bold;text-align:center;background-color:#ADD8E6">''',
'          || ''(''||c1.TRANTYPE||''/''||c1.SUBTTYPE||'')''',
'          || ''</td><td style="padding-left: 10px;font-weight:bold;text-align:left;background-color:#ADD8E6">''',
'          || c1.docnum',
'          || ''</td><td style="padding-left: 10px;font-weight:bold;background-color:#ADD8E6"><a href="''',
'          || apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||v_mod_pageid',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||v_mod_pageid',
'                                    ||'':P''',
'                                    ||v_mod_pageid',
'                                    ||''_S_DOCTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_S_SUBTYP,P''',
'                                    ||v_mod_pageid',
'                                    ||''_DOCDESC:''',
'                                    ||c1.TRANTYPE',
'                                    ||'','' ',
'                                    ||c1.SUBTTYPE',
'                                    ||'','' ',
'                                    ||c1.NARATION',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Approve Request</button><i class="iR"></i></span></a></td></tr>''',
'         );',
'   END LOOP;',
'',
'   SYS.HTP.p (''</tbody></table>'');',
'   SYS.HTP.p (''</div>'');',
'--',
'',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
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
 p_id=>wwv_flow_api.id(116808642235907488)
,p_plug_name=>'3'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_plug_display_column=>11
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(119888495053074094)
,p_plug_name=>'News Ticker'
,p_region_name=>'TICKER'
,p_plug_display_sequence=>1
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<DIV ID="TICKER" style="color: blue;',
'    font-size: 25px;',
'    height: 55px;',
'    margin: 16px;',
'    margin-left: 250px;',
'    font-weight: bold;" >',
'    <span>&PAGE_TITLE.</span>',
'</DIV>',
''))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47041689540358136)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47041749480358137)
,p_button_name=>'BACK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back Home'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-home'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116753578148025905)
,p_name=>'P999_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116873862158273516)
,p_name=>'P999_PROGDESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116887628365384229)
,p_name=>'P999_REQUEST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_item_default=>'&REQUEST.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116897783340668357)
,p_name=>'P999_COMPCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116898089248668357)
,p_name=>'P999_APP_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_item_default=>'&APP_USER.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117300613566583325)
,p_name=>'P999_TEST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117303359157386803)
,p_name=>'P999_ADD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117303612582386803)
,p_name=>'P999_MOD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117304020455386803)
,p_name=>'P999_DEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117304435718386804)
,p_name=>'P999_ENQ'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(128681796477884602)
,p_name=>'P999_TITLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(116808337250905957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>':PAGE_TITLE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117307640839461342)
,p_name=>'page load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117308061732461343)
,p_event_id=>wwv_flow_api.id(117307640839461342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' select ADDSTATS,MODSTATS,DELSTATS,ENQSTATS into :P999_ADD,:P999_MOD,:P999_DEL,:P999_ENQ from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:P999_PROGNAME;',
'end;'))
,p_attribute_02=>'P999_PROGNAME'
,p_attribute_03=>'P999_ADD,P999_MOD,P999_DEL,P999_ENQ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(58559629507762125)
,p_name=>'button click'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#page999'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(58559857407762127)
,p_event_id=>wwv_flow_api.id(58559629507762125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_redirect_url VARCHAR2(1000) := ''f?p=105:1'';',
'BEGIN',
'--if :P101_USERNAME is  null then',
'htp.init();',
'owa_util.redirect_url(l_redirect_url); --- Redirect',
'apex_application.g_unrecoverable_error := true;   --- stops all further page processing',
'--end if;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47041856433358138)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47041689540358136)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47041923278358139)
,p_event_id=>wwv_flow_api.id(47041856433358138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49210514735946698)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'--:PAGE_TITLE := :P999_TITLE;',
'--:P999_TITLE:=:PAGE_TITLE;',
'--:PAGE_TITLE := :P999_PROGDESC;',
'   select Upper(PROGDESC) PROGDESC, Upper(PROGDESC) PROG into :P999_PROGDESC,:PROGDESC from symenmas',
'where  PROGNAME=:PROGNAME;',
'   SELECT cacmpnam,',
'          INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  )',
'     INTO :p1_compname,',
'          :p1_compadd',
'     FROM syparmas',
'    WHERE cacmpcde = :COMPCODE;',
'',
'   dpr_random_quotes (:p1_msg);',
'',
'   DELETE FROM stglobtm',
'         WHERE UPPER (colmc2) = UPPER (:app_user);',
'',
'   SELECT username, username, :app_user',
'     INTO :p1_user_name, :fx_username, :p1_user_id',
'     FROM syusrmas',
'    WHERE usercode = :APP_USER;',
'',
'   FOR c1 IN (SELECT DISTINCT a.compcode, a.usercode, a.parentnm, a.progname,',
'                              a.menuleaf',
'                         FROM syrights a',
'                        WHERE a.compcode = :COMPCODE',
'                          AND a.usercode = :app_user',
'              UNION',
'              SELECT DISTINCT :COMPCODE compcode, :app_user usercode,',
'                              a.parentnm, a.progname, a.menuleaf',
'                         FROM syrights a',
'                        WHERE compcode = :COMPCODE',
'                              AND a.usercode = :app_user',
'              UNION',
'              SELECT :COMPCODE compcode, :app_user usercode, ''ROOTP'',',
'                     ''ROOT'' progname, ''M'' menuleaf',
'                FROM DUAL',
'               WHERE :COMPCODE IS NOT NULL)',
'   LOOP',
'      v_link := NULL;',
'',
'      IF c1.menuleaf = ''L''',
'      THEN',
'         BEGIN',
'            SELECT pageid, progtype',
'              INTO v_pageid, v_progtype',
'              FROM symenmas b',
'             WHERE progname = c1.progname;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               v_pageid := NULL;',
'               v_progtype := ''F'';',
'         END;',
'',
'         IF v_pageid IS NOT NULL AND v_progtype IN (''R'', ''F'')',
'         THEN',
'            v_link :=',
'                  ''javascript:change_page(''''''',
'               || c1.progname',
'               || '''''',''',
'               || v_pageid',
'               || '',''''''',
'               || c1.parentnm',
'               || '''''',''''''',
'               || v_progtype',
'               || '''''')'';',
'         END IF;',
'      ELSE',
'         v_progtype := ''F'';',
'      END IF;',
'',
'      INSERT INTO stglobtm',
'                  (colmc1, colmc2, colmc3, colmc4,',
'                   colmc5, colmc7',
'                  )',
'           VALUES (c1.compcode, c1.usercode, c1.parentnm, c1.progname,',
'                   c1.menuleaf, v_link',
'                  );',
'   END LOOP;',
'  ',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :P1_COMPNAME := ''Please Select Your Company'';',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_comment=>'P1_CACMPNAM'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49210997777962854)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cookie  OWA_COOKIE.cookie;',
'comcde varchar2(5);',
'v varchar2(255) := null;',
'c owa_cookie.cookie;',
'begin',
':P101_USERNAME:= apex_authentication.get_login_username_cookie;',
'',
'c := owa_cookie.get(''APEX_AT_WORK_COOKIE'');',
' -- :P1_COMPCODE := c.vals(1);',
'  if :P1_COMPCDE is null then',
'  :COMPCODE := c.vals(1);',
'  else',
'  :COMPCODE := :P1_COMPCDE;',
'  end if;',
'exception',
'   when others then',
'      null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
