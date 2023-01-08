prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
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
 p_id=>150
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Dashboard'
,p_page_mode=>'NON_MODAL'
,p_step_title=>'Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript">',
'function printPage() {',
'    ',
'    var printContents = document.getElementById("printableArea").innerHTML;',
'    var originalContents = document.body.innerHTML;',
'if(document.all) {',
'document.all.divButtons.style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.all.divButtons.style.visibility = ''visible'';',
'} else {',
'document.getElementById(''divButtons'').style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.getElementById(''divButtons'').style.visibility = ''visible'';',
'}',
'}',
'</script>',
'<script language="JavaScript">',
'function printPage1() {',
'    ',
'    var printContents = document.getElementById("printableArea1").innerHTML;',
'    var originalContents = document.body.innerHTML;',
'if(document.all) {',
'document.all.divButtons1.style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.all.divButtons1.style.visibility = ''visible'';',
'} else {',
'document.getElementById(''divButtons1'').style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.getElementById(''divButtons1'').style.visibility = ''visible'';',
'}',
'}',
'</script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ul.aChartList li .uLabel {',
'    border-top: 1px solid rgba(255, 255, 255, 0.65);',
'    color: #404040;',
'    display: block;',
'    font-size: 12px !important;',
'    font-weight: bold;',
'    line-height: 20px !important;',
'    padding: 0px 0 !important;',
'    text-align: center;',
'}',
'',
'ul.aChartList.smallChart li.aNumber .uValue {',
'    font-size: 17px !important;',
'    line-height: 4px !important;',
'}',
'.t-Report-cell, .t-Report-colHead {',
'    font-size: 1.2rem !important;',
'    line-height: 0.6rem !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_dialog_width=>'2500'
,p_protection_level=>'C'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180415102537'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39803002845738546)
,p_plug_name=>'button Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128230935181254736)
,p_plug_name=>'Location wise Customer Profile Summary'
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
'v_prev_bnk number := ''333333333'';',
' --v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_rows3    number := 0;',
' v_bank_rows4    number := 0;',
' v_bank_total    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'/*for c1 in (select  DISTINCT S.compcode,s.NMZONEFK brand,s.NMZONEFK,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_RML.nmsalrec S,ORBRGS_RML.NMSMNMAS M,ORBRGS_RML.vwnmitem c,ORBRGS_RML.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_RML.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'            AND A.FINISHGD =''Y''',
'            ) ',
'--AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P1_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P1_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode,S.NMZONEFK',
'          UNION ALL',
'          select  DISTINCT S.compcode,s.NMZONEFK brand,s.NMZONEFK,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_CVL.nmsalrec S,ORBRGS_CVL.NMSMNMAS M,ORBRGS_CVL.vwnmitem c,ORBRGS_CVL.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_CVL.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'            AND A.FINISHGD =''Y''',
'            ) ',
'--AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P1_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P1_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode, S.NMZONEFK',
'                   order by 2',
'',
'                )',
'Loop',
'*/',
' v_cnt := v_cnt + 1;',
' ',
'  --  If v_prev_bnk <> c1.Brand then',
'      ',
'--htp.p(initcap(c1.Brand));',
'htp.p(''<div id="divButtons" name="divButtons" style="align:right;">',
'    <input type="button" id="button" name="Booking" onclick="printPage()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) '
||'100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; '
||'text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'');',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 16px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Location</td>',
'                <td>FTU</td>',
'                <td>Lower Retail</td>',
'                <td>Upper Retail</td>',
'                <td>Strategic</td>',
'                <td>Super Strategic</td>',
'                <td>Total</td>',
'              </tr>'');',
'                 For c2 in (select AREANAME AREANAME,sum(SUPER_STRATEGIC) SUPER_STRATEGIC,',
'sum(STRATEGIC) STRATEGIC,',
'sum(UPPER_RETAIL) UPPER_RETAIL,',
'sum(LOWER_RETAIL) LOWER_RETAIL,',
'sum(FTU) FTU,',
'sum(SUPER_STRATEGIC)+sum(STRATEGIC)+sum(UPPER_RETAIL)+sum(LOWER_RETAIL)+sum(FTU) Amount from(select  AREANAME,',
' case when nvl(m.ETBCUSTM,0)+nvl(m.CMPETION,0)>50 then',
'       1',
'       else 0',
'       end SUPER_STRATEGIC, ',
'       case when nvl(m.ETBCUSTM,0)+nvl(m.CMPETION,0) between 11 and 50 then',
'       1',
'       else 0',
'       end STRATEGIC,  ',
'       case when nvl(m.ETBCUSTM,0)+nvl(m.CMPETION,0) between 6 and 10 then',
'      1',
'       else 0',
'       end UPPER_RETAIL, ',
'       case when nvl(m.ETBCUSTM,0)+nvl(m.CMPETION,0) between 2 and 5 then',
'      1',
'       else 0',
'       end LOWER_RETAIL,',
'       case when nvl(m.ETBCUSTM,0)+nvl(m.CMPETION,0) <2 then',
'       1',
'       else 0',
'       end FTU                                                                                             ',
'from nmcusvlg m,nmwhznms b',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK)',
'group by AREANAME                            ',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 30%;text-align:center;font-size: 10px;">''||initcap(c2.AREANAME)||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.FTU||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.LOWER_RETAIL||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.UPPER_RETAIL||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.STRATEGIC||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.SUPER_STRATEGIC||''</td>',
'    <td style="width: 20%;text-align:right;font-size: 10px;">''||c2.Amount||''</td>',
'  </tr>',
''');',
' v_bank_rows := v_bank_rows +c2.FTU;',
' v_bank_rows1 := v_bank_rows1 +c2.LOWER_RETAIL;',
' v_bank_rows2 := v_bank_rows2 +c2.UPPER_RETAIL;',
' v_bank_rows3 := v_bank_rows3 +c2.STRATEGIC;',
' v_bank_rows4 := v_bank_rows4 +c2.SUPER_STRATEGIC;',
' v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'              ',
' end loop;',
' ',
' --  End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Summary</td>',
'                <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows3||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows4||''</td>',
'                <td style="width: 40%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'            v_bank_rows2 := 0;',
'            v_bank_rows3 := 0;',
'            v_bank_rows4 := 0;',
'          v_bank_total1 := 0;',
'--End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128231058868254737)
,p_plug_name=>'Location wise Pipeline Status Summary'
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
'v_prev_bnk number := ''333333333'';',
' --v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_rows1    number := 0;',
' v_bank_rows2    number := 0;',
' v_bank_rows3    number := 0;',
' v_bank_rows4    number := 0;',
' v_bank_rows5    number := 0;',
' v_bank_total    number := 0;',
' v_bank_total1   number := 0;',
'Begin',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGeneratorbrndcat {',
'    margin:0px;padding:0px;',
'    width:100%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGeneratorbrndcat table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    margin:0px;padding:0px;',
'    overflow: scroll;',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGeneratorbrndcat table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGeneratorbrndcat tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGeneratorbrndcat td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGeneratorbrndcat tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGeneratorbrndcat tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGeneratorbrndcat tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGeneratorbrndcat tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGeneratorbrndcat tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'',
'',
'/*for c1 in (select  DISTINCT S.compcode,s.NMZONEFK brand,s.NMZONEFK,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_RML.nmsalrec S,ORBRGS_RML.NMSMNMAS M,ORBRGS_RML.vwnmitem c,ORBRGS_RML.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_RML.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'            AND A.FINISHGD =''Y''',
'            ) ',
'--AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P1_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P1_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode,S.NMZONEFK',
'          UNION ALL',
'          select  DISTINCT S.compcode,s.NMZONEFK brand,s.NMZONEFK,count(S.ITEMCODE) no_of_item,sum(S.MSLCAMNT) Amount',
'from ORBRGS_CVL.nmsalrec S,ORBRGS_CVL.NMSMNMAS M,ORBRGS_CVL.vwnmitem c,ORBRGS_CVL.nmwhznms d',
'where S.COMPCODE=M.COMPCODE',
'AND S.SMANCODE=M.SMANCODE',
'and s.compcode=c.compcode',
'AND s.ITEMCODE=c.ITEMCODE',
'and s.COMMCODE=c.COMMGRUP',
'AND S.compcode=decode(:COMPCODE,''A'',S.compcode,:COMPCODE)',
'and s.compcode=d.compcode',
'and S.NMZONEFK=d.WHSZONPK',
'            AND   EXISTS (SELECT DISTINCT a.ITEMCODE  from ORBRGS_CVL.nmitemas a',
'            where a.compcode=decode(:COMPCODE,''A'',a.compcode,:COMPCODE)',
'            AND A.compcode=S.compcode',
'            AND A.ITEMCODE=S.ITEMCODE',
'            and a.ITEMMODL=c.ITEMMODL',
'            AND A.FINISHGD =''Y''',
'            ) ',
'--AND trunc(S.DOCTDATE) BETWEEN TO_DATE(:P1_FROM_DATE_SEARCH,''DD-MM-RRRR'') AND TO_DATE(:P1_TO_DATE_SEARCH,''DD-MM-RRRR'')',
'--and LOCATYPE=''UPZ''',
'          group by S.compcode, S.NMZONEFK',
'                   order by 2',
'',
'                )',
'Loop',
'*/',
' v_cnt := v_cnt + 1;',
' ',
'  --  If v_prev_bnk <> c1.Brand then',
'      ',
'--htp.p(initcap(c1.Brand));',
'htp.p(''<div id="divButtons1" name="divButtons1" style="align:right;">',
'    <input type="button" id="button1" name="Booking" onclick="printPage1()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158'
||') 100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none'
||'; text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'');',
'htp.p(''<div class="brandcategory"  id="ex11"style="line-height: 16px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableArea1" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Location</td>',
'                <td>Pending(P)</td>',
'                <td>Confirmed(C)</td>',
'                <td>Finance Awaited(FA)</td>',
'                <td>Finance Cleared(FC)</td>',
'                <td>Retail(R)</td>',
'                <td>Lost(L)</td>',
'                <td>Total</td>',
'              </tr>'');',
'                 For c2 in (select AREANAME AREANAME,sum(SUPER_STRATEGIC) SUPER_STRATEGIC,',
'sum(STRATEGIC) STRATEGIC,',
'sum(UPPER_RETAIL) UPPER_RETAIL,',
'sum(LOWER_RETAIL) LOWER_RETAIL,',
'sum(FTU) FTU,',
'sum(FTU1) FTU1,',
'sum(SUPER_STRATEGIC)+sum(STRATEGIC)+sum(UPPER_RETAIL)+sum(LOWER_RETAIL)+sum(FTU)+sum(FTU1) Amount from(select  AREANAME,PIPLNSTS,',
'case when PIPLNSTS=''001'' then',
'       1',
'       else 0',
'       end SUPER_STRATEGIC, ',
'       case when PIPLNSTS=''002'' then',
'       1',
'       else 0',
'       end STRATEGIC,  ',
'       case when PIPLNSTS=''003'' then',
'      1',
'       else 0',
'       end UPPER_RETAIL, ',
'       case when PIPLNSTS=''004'' then',
'      1',
'       else 0',
'       end LOWER_RETAIL,',
'       case when PIPLNSTS=''005'' then',
'       1',
'       else 0',
'       end FTU,',
'        case when PIPLNSTS=''006'' then',
'       1',
'       else 0',
'       end FTU1',
'from nmcusvlg m,nmwhznms b,nmcodmas c',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK',
'and m.compcode=c.COMPCODE',
'and m.PIPLNSTS=c.NMSOFCDE',
'and C.NMHRDCDE = ''PIP'')',
'group by AREANAME                         ',
'                )',
'Loop',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'    <td style="width: 30%;text-align:center;font-size: 10px;">''||initcap(c2.AREANAME)||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.SUPER_STRATEGIC||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.STRATEGIC||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.UPPER_RETAIL||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.LOWER_RETAIL||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.FTU||''</td>',
'    <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.FTU1||''</td>',
'    <td style="width: 20%;text-align:right;font-size: 10px;">''||c2.Amount||''</td>',
'  </tr>',
''');',
' v_bank_rows := v_bank_rows +c2.SUPER_STRATEGIC;',
' v_bank_rows1 := v_bank_rows1 +c2.STRATEGIC;',
' v_bank_rows2 := v_bank_rows2 +c2.UPPER_RETAIL;',
' v_bank_rows3 := v_bank_rows3 +c2.LOWER_RETAIL;',
' v_bank_rows4 := v_bank_rows4 +c2.FTU;',
' v_bank_rows5 := v_bank_rows5 +c2.FTU1;',
' v_bank_total1 := v_bank_total1 + c2.AMOUNT;',
'              ',
' end loop;',
' ',
' --  End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'              htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Summary</td>',
'                <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows1||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows3||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows4||''</td>',
'                    <td style="width: 40%;text-align:center;font-size: 10px;">''||v_bank_rows5||''</td>',
'                <td style="width: 40%;text-align:right;font-size: 10px;">''||to_char(v_bank_total1,''99,99,99,99,99,99,999.99'')||''</td>',
'              </tr>              ',
'            '');',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'            v_bank_rows2 := 0;',
'            v_bank_rows3 := 0;',
'            v_bank_rows4 := 0;',
'            v_bank_rows5 := 0;',
'          v_bank_total1 := 0;',
'--End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128535164998525769)
,p_plug_name=>'Summery2'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128535222051525770)
,p_plug_name=>'Source Wise Enquires'
,p_parent_plug_id=>wwv_flow_api.id(128535164998525769)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(128534775058525765)
,p_name=>'Source Wise Enquires'
,p_parent_plug_id=>wwv_flow_api.id(128535222051525770)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>52
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--noPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) SYCODDES,count(SRCOFENQ) CONTACT_MODE ',
' from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.SRCOFENQ=b.NMSOFCDE',
'and b.NMHRDCDE=''ENQ''',
'and b.MODLCODE=''NM''',
' AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'      OR a.SMANCODE IN',
'          (SELECT P.smancode',
'             FROM VW_SMAN_PRODUCT P',
'            WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'              AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                     P.',
'                                                                      STARTDATE,',
'                                                                     ''dd-mon-yyyy'')',
'                                                              AND NVL (',
'                                                                     TO_DATE (',
'                                                                        P.',
'                                                                         ENDDATE,',
'                                                                        ''dd-mon-yyyy''),',
'                                                                     TRUNC (',
'                                                                        SYSDATE))',
'              AND P.PRODUCT_TYPE = a.NMPRDTYP',
'              AND a.compcode = P.compcode)',
'        OR :APP_USER IN',
'          (SELECT USERCODE',
'             FROM syusrmas',
'            WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'group by NMSOFCDE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48100407242150670)
,p_query_column_id=>1
,p_column_alias=>'SYCODDES'
,p_column_display_sequence=>1
,p_column_heading=>'Enquiry Source'
,p_column_link=>'f?p=&APP_ID.:260:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#SYCODDES#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48100720824150670)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_MODE'
,p_column_display_sequence=>2
,p_column_heading=>'No. of Enquiries generated'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128535520123525773)
,p_plug_name=>'Application Wise Enquires'
,p_parent_plug_id=>wwv_flow_api.id(128535164998525769)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(128535645040525774)
,p_name=>'Application Wise Enquires'
,p_parent_plug_id=>wwv_flow_api.id(128535520123525773)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>62
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) NMCODDES,count(USGSEGMT) CONTACT_MODE ',
' from nmcusvlg a, nmcodmas b',
'    where a.compcode=:COMPCODE',
'    and a.USGSEGMT=b.NMSOFCDE',
'    and b.NMHRDCDE=''AMT''',
'    and b.MODLCODE=''NM''',
'    AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'          OR a.SMANCODE IN',
'              (SELECT P.smancode',
'                 FROM VW_SMAN_PRODUCT P',
'                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                  AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                         P.',
'                                                                          STARTDATE,',
'                                                                         ''dd-mon-yyyy'')',
'                                                                  AND NVL (',
'                                                                         TO_DATE (',
'                                                                            P.',
'                                                                             ENDDATE,',
'                                                                            ''dd-mon-yyyy''),',
'                                                                         TRUNC (',
'                                                                            SYSDATE))',
'                  AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                  AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                      (SELECT USERCODE',
'                         FROM syusrmas',
'                        WHERE NVL (OPERFLAG,''N'') = ''Y'' AND DIVNCODE = :compcode))',
'    group by NMSOFCDE',
'    ',
'/*select Wm_concat(distinct b.NMCODDES) NMCODDES,count(USGSEGMT) CONTACT_MODE ',
'    from nmcusvlg a, nmcodmas b',
'    where a.compcode=:COMPCODE',
'    and a.USGSEGMT=b.NMSOFCDE',
'    and b.NMHRDCDE=''AMT''',
'    and b.MODLCODE=''NM''',
'   group by NMSOFCDE*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'0'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48101815434150672)
,p_query_column_id=>1
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>1
,p_column_heading=>'Usage Segment/Application'
,p_column_link=>'f?p=&APP_ID.:261:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#NMCODDES#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48102092458150675)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_MODE'
,p_column_display_sequence=>2
,p_column_heading=>'No. of Enquiries generated'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131737036733142048)
,p_plug_name=>'Lost Deal Analysis'
,p_parent_plug_id=>wwv_flow_api.id(128535164998525769)
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>250
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(131737161650142049)
,p_name=>'Lost Deal Analysis'
,p_parent_plug_id=>wwv_flow_api.id(131737036733142048)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>62
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) NMCODDES,count(RESNFLST) CONTACT_MODE from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.RESNFLST=b.NMSOFCDE',
'and b.NMHRDCDE=''COD''',
'and b.MODLCODE=''NM''',
'and nvl(a.CONFIRMC,''N'') = ''N''',
' AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'group by NMSOFCDE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48103076129150678)
,p_query_column_id=>1
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>1
,p_column_heading=>'Lost Deal Reason'
,p_column_link=>'f?p=&APP_ID.:263:&SESSION.::&DEBUG.:RP::'
,p_column_linktext=>'#NMCODDES#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48103495876150678)
,p_query_column_id=>2
,p_column_alias=>'CONTACT_MODE'
,p_column_display_sequence=>2
,p_column_heading=>'No. of Lost Cases'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128692252350592029)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39802384011738539)
,p_plug_name=>'Cufflink'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>82
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 url,''No. of Customer'' Head,count(*)total from nmcusvlg where DOCTDATE=trunc(sysdate)',
'union all',
'(select 2 url,''New Customer'' Head,0 total from dual',
'union all',
'select 2 url,''New Customer'' Head,count(*)total from nmcusvlg ',
'where DOCTDATE=trunc(sysdate)  having count(CUSTMRID)  = 1)',
'union all',
'(select 3 url,''Old Customer'' Head,0 total from dual',
'union all',
'select 3 url,''Old Customer'' Head,count(*)total from nmcusvlg ',
'where DOCTDATE=trunc(sysdate)  having count(CUSTMRID)  > 1)',
'',
'',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'HEAD'
,p_attribute_02=>'TOTAL'
,p_attribute_03=>'TOTAL'
,p_attribute_04=>'f?p=&APP_ID.:355:&SESSION.:#URL#:&DEBUG.:RP::'
,p_attribute_05=>'3'
,p_attribute_06=>'S'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39803166991738547)
,p_plug_name=>' At a galance'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>42
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT label, VALUE, url',
'    FROM (WITH DATA',
'                  AS (SELECT t.leads, s.propect, s.REF',
'                        FROM (SELECT COUNT (*) propect,',
'                                     NULL REF,',
'                                     v.NMPRDTYP,',
'                                     v.ITEMCODE,',
'                                     v.DOCTDATE',
'                                FROM nmcusvlg v',
'                               WHERE PURCHASE_TYPE = ''H''',
'                                     AND (v.SMANCODE IN',
'                                           (SELECT S.SMANCODE',
'                                              FROM nmsmnmas s',
'                                             WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'                                         OR v.SMANCODE IN',
'                                              (SELECT P.smancode',
'                                                 FROM VW_SMAN_PRODUCT P',
'                                                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                                                      AND TO_DATE (v.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                                                         P.',
'                                                                                                          STARTDATE,',
'                                                                                                         ''dd-mon-yyyy'')',
'                                                                                                  AND NVL (',
'                                                                                                         TO_DATE (',
'                                                                                                            P.',
'                                                                                                             ENDDATE,',
'                                                                                                            ''dd-mon-yyyy''),',
'                                                                                                         TRUNC (',
'                                                                                                            SYSDATE))',
'                                                      AND P.PRODUCT_TYPE = v.NMPRDTYP',
'                                                      AND v.compcode = P.compcode)',
'                                                       OR :APP_USER IN',
'                                                                      (SELECT USERCODE',
'                                                                         FROM syusrmas',
'                                                                        WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))) s,',
'                             (SELECT COUNT (*) leads,',
'                                     g.NMPRDTYP,',
'                                     g.ITEMCODE,',
'                                     g.DOCTDATE',
'                                FROM nmcusvlg g',
'                               WHERE (g.SMANCODE IN',
'                                       (SELECT S.SMANCODE',
'                                          FROM nmsmnmas s',
'                                         WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'                                     OR g.SMANCODE IN',
'                                          (SELECT P.smancode',
'                                             FROM VW_SMAN_PRODUCT P',
'                                            WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                                                  AND TO_DATE (g.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                                                     P.',
'                                                                                                      STARTDATE,',
'                                                                                                     ''dd-mon-yyyy'')',
'                                                                                              AND NVL (',
'                                                                                                     TO_DATE (',
'                                                                                                        P.',
'                                                                                                         ENDDATE,',
'                                                                                                        ''dd-mon-yyyy''),',
'                                                                                                     TRUNC (',
'                                                                                                        SYSDATE))',
'                                                  AND P.PRODUCT_TYPE = g.NMPRDTYP',
'                                                  AND g.compcode = P.compcode)',
'                                                   OR :APP_USER IN',
'                                                          (SELECT USERCODE',
'                                                             FROM syusrmas',
'                                                            WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))) t),',
'               rws AS (    SELECT LEVEL r',
'                             FROM DUAL',
'                       CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,  1, ''No of Leads'',  2, ''No of Prospect"(Hot)'') label,',
'                 DECODE (rws.r,  1, DATA.leads,  2, DATA.propect) VALUE,',
'                 DECODE (',
'                    rws.r,',
'                    1,    ''f?p=''',
'                       || :app_id',
'                       || '':355:''',
'                       || :app_session',
'                       || '':::355,RIR:'',',
'                    2,    ''f?p=''',
'                       || :app_id',
'                       || '':355:''',
'                       || :app_session',
'                       || '':::355,RIR:IR_MARQUEE_CUSTOMER:Yes'')',
'                    url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order,',
'                 ''Today''''s  No. of Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE TRUNC (DOCTDATE) =TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'          UNION ALL',
'          (select 4 display_order,''Today''''s  New Customer'' label,0 value,''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url from dual',
'UNION ALL',
'          SELECT 4 display_order,',
'                 ''Today''''s  New Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    having count(CUSTMRID)  = 1)',
'          UNION ALL',
'            (select 5 display_order,''Today''''s  Old Customer'' label,0 value,''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url from dual',
'UNION ALL',
'          SELECT 5 display_order,',
'                 ''Today''''s  Old Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    having count(CUSTMRID)  > 1)',
'            UNION ALL',
'          SELECT 6 display_order,',
'                 ''Today''''s  Product Available'' label,',
'                 COUNT (NMPRDTYP) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE TRUNC (DOCTDATE) =TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'          AND FEEDBACK1=''Y''',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'          UNION ALL',
'          SELECT 7 display_order,',
'                 ''Today''''s  Product Un-Available'' label,',
'                 COUNT (NMPRDTYP) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'          AND FEEDBACK1=''N''',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                  --  having count(CUSTMRID)  = 1',
'          )',
'ORDER BY display_order',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'f?p=&APP_ID.:355:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url from (',
'with data as (',
'select t.total,s.service,s.ref from ',
'    (select  count(*) service,   null  ref from nmservce where to_char(sysdate,''RRRR'')=TO_CHAR(DOCTDATE,''RRRR''))s,',
'    (select count(*)total from nmmrkpty where PARTYTYP in (''CU'',''CV''))t',
'),',
'rws as (',
'    select level r from dual connect by level < 3',
')',
'',
'select rws.r display_order,',
'    decode(rws.r, 1, ''No of Customer'',    2, ''No of Service'' )  label,',
'    decode(rws.r, 1, data.total, 2, data.service) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                  ) url',
'from data, rws',
'union all',
'select 3 display_order,',
'    ''No of Sales in Period'' label,',
'    count(distinct itemcode) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::44,RIR'' url',
'from nmsalrec',
'union all',
'select 4 display_order,',
'    ''Total Service Taken'' label,',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmservce',
'union all',
'select 5 display_order,',
'    ''Waiting for Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmsalrec',
'where partycde not in (select partycde from nmservce union select partycde from NMSRVNDR)',
'union all',
'select 6 display_order,',
'    ''Total Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where FSTFLWUP is null',
'UNION ALL',
'select 7 display_order,',
'    ''Today''''s Followup'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(sysdate) in (FSTRMNDT, SNDRMNDT, TRDRMNDT, FURRMNDT, FVERMNDT)',
'union all',
'select 8 display_order,',
'    ''Total Followed Today'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(FSTFLWUP)=trunc(sysdate)',
')',
'order by display_order'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40648140903464407)
,p_plug_name=>'Today''s Information'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>22
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT label, VALUE, url',
'    FROM (',
'          SELECT 3 display_order,',
'                 ''No. of Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':3::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE TRUNC (DOCTDATE) =TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'          UNION ALL',
'          (select 4 display_order,''New Customer'' label,0 value,''f?p='' || :app_id || '':355:'' || :app_session || '':4::355,RIR''',
'                    url from dual',
'UNION ALL',
'          SELECT 4 display_order,',
'                 ''New Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':4::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    having count(CUSTMRID)  = 1)',
'          UNION ALL',
'            (select 5 display_order,''Old Customer'' label,0 value,''f?p='' || :app_id || '':355:'' || :app_session || '':5::355,RIR''',
'                    url from dual',
'UNION ALL',
'          SELECT 5 display_order,',
'                 ''Old Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':5::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    having count(CUSTMRID)  > 1)',
'            UNION ALL',
'          SELECT 6 display_order,',
'                 ''Product Available'' label,',
'                 COUNT (NMPRDTYP) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':6::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE TRUNC (DOCTDATE) =TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'          AND FEEDBACK1=''Y''',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'        /*  UNION ALL',
'          SELECT 7 display_order,',
'                 ''Product Un-Available'' label,',
'                 COUNT (NMPRDTYP) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':7::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE u.DOCTDATE = TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'          AND FEEDBACK1=''N''',
'            AND  (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                  --  having count(CUSTMRID)  = 1*/',
'          )',
'ORDER BY display_order',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'4'
,p_attribute_06=>'S'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url from (',
'with data as (',
'select t.total,s.service,s.ref from ',
'    (select  count(*) service,   null  ref from nmservce where to_char(sysdate,''RRRR'')=TO_CHAR(DOCTDATE,''RRRR''))s,',
'    (select count(*)total from nmmrkpty where PARTYTYP in (''CU'',''CV''))t',
'),',
'rws as (',
'    select level r from dual connect by level < 3',
')',
'',
'select rws.r display_order,',
'    decode(rws.r, 1, ''No of Customer'',    2, ''No of Service'' )  label,',
'    decode(rws.r, 1, data.total, 2, data.service) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                  ) url',
'from data, rws',
'union all',
'select 3 display_order,',
'    ''No of Sales in Period'' label,',
'    count(distinct itemcode) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::44,RIR'' url',
'from nmsalrec',
'union all',
'select 4 display_order,',
'    ''Total Service Taken'' label,',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmservce',
'union all',
'select 5 display_order,',
'    ''Waiting for Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmsalrec',
'where partycde not in (select partycde from nmservce union select partycde from NMSRVNDR)',
'union all',
'select 6 display_order,',
'    ''Total Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where FSTFLWUP is null',
'UNION ALL',
'select 7 display_order,',
'    ''Today''''s Followup'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(sysdate) in (FSTRMNDT, SNDRMNDT, TRDRMNDT, FURRMNDT, FVERMNDT)',
'union all',
'select 8 display_order,',
'    ''Total Followed Today'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(FSTFLWUP)=trunc(sysdate)',
')',
'order by display_order'))
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
 p_id=>wwv_flow_api.id(40648441647464410)
,p_plug_name=>'Feedback''s'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>32
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT label, VALUE, url',
'    FROM (',
'          SELECT 3 display_order,',
'                 ''No. Satisfied Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':3::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE  (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    and FEEDBACK1=''Y''',
'          UNION ALL',
'          (',
'          SELECT 4 display_order,',
'                 ''No. Dis-Satisfied Customer'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':4::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE   (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                    and FEEDBACK1=''N'')',
'                    ',
'          UNION ALL',
'            (',
'          SELECT 5 display_order,',
'                 ''Happiness'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':5::355,RIR''',
'                    url',
'            FROM nmcusvlg u',
'           WHERE   (u.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR u.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (u.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = u.NMPRDTYP',
'                      AND u.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'                     and FEEDBACK3=''Y'')',
'            UNION ALL',
'          SELECT 6 display_order,',
'                 ''Product Looking Customer'' label,',
'                 COUNT (NMPRDTYP) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':6::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE  FEEDBACK5=''Y''',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'       ',
'          )',
'ORDER BY display_order',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'4'
,p_attribute_06=>'S'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url from (',
'with data as (',
'select t.total,s.service,s.ref from ',
'    (select  count(*) service,   null  ref from nmservce where to_char(sysdate,''RRRR'')=TO_CHAR(DOCTDATE,''RRRR''))s,',
'    (select count(*)total from nmmrkpty where PARTYTYP in (''CU'',''CV''))t',
'),',
'rws as (',
'    select level r from dual connect by level < 3',
')',
'',
'select rws.r display_order,',
'    decode(rws.r, 1, ''No of Customer'',    2, ''No of Service'' )  label,',
'    decode(rws.r, 1, data.total, 2, data.service) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                  ) url',
'from data, rws',
'union all',
'select 3 display_order,',
'    ''No of Sales in Period'' label,',
'    count(distinct itemcode) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::44,RIR'' url',
'from nmsalrec',
'union all',
'select 4 display_order,',
'    ''Total Service Taken'' label,',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmservce',
'union all',
'select 5 display_order,',
'    ''Waiting for Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmsalrec',
'where partycde not in (select partycde from nmservce union select partycde from NMSRVNDR)',
'union all',
'select 6 display_order,',
'    ''Total Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where FSTFLWUP is null',
'UNION ALL',
'select 7 display_order,',
'    ''Today''''s Followup'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(sysdate) in (FSTRMNDT, SNDRMNDT, TRDRMNDT, FURRMNDT, FVERMNDT)',
'union all',
'select 8 display_order,',
'    ''Total Followed Today'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(FSTFLWUP)=trunc(sysdate)',
')',
'order by display_order'))
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44975287380917100)
,p_name=>'Anniversary Reminder'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>52
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''1'' id,''>Today No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE=trunc(sysdate)',
'union all',
'select ''2'' id,''<30 No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE between trunc(sysdate)+1 and (trunc(sysdate))+29',
'union all',
'select ''3'' id,''>30 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE between (trunc(sysdate))+30 and (trunc(sysdate)+29)+29 ',
'union all',
'select ''4'' id,''>60 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE between (trunc(sysdate)+29)+30 and ((trunc(sysdate)+29)+30)+29',
'union all',
'select ''5'' id, ''>90 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE between ((trunc(sysdate)+29)+30)+30 and (((trunc(sysdate)+29)+30)+30)+29',
'union all',
'select ''6'' id, ''>180 Days No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where ANNIVERSARY_DATE between  (((trunc(sysdate)+29)+30)+30)+30 and (((trunc(sysdate)+29)+30)+30)+365',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
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
,p_prn_height=>11
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
 p_id=>wwv_flow_api.id(39801122787738527)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39800999282738526)
,p_query_column_id=>2
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40128836669902722)
,p_query_column_id=>3
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_report_column_width=>50
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(49828932103442023)
,p_name=>'Birthday Reminder'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>62
,p_region_css_classes=>'m250'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width: 550; height=350;"'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''1'' id,''>Today No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE=trunc(sysdate)',
'union all',
'select ''2'' id,''<30 No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE between trunc(sysdate)+1 and (trunc(sysdate))+29',
'union all',
'select ''3'' id,''>30 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE between (trunc(sysdate))+30 and (trunc(sysdate)+29)+29 ',
'union all',
'select ''4'' id,''>60 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE between (trunc(sysdate)+29)+30 and ((trunc(sysdate)+29)+30)+29',
'union all',
'select ''5'' id, ''>90 Days. No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE between ((trunc(sysdate)+29)+30)+30 and (((trunc(sysdate)+29)+30)+30)+29',
'union all',
'select ''6'' id, ''>180 Days No of Customer'' label,count(DOCNUMBR) total from nmcusvlg where DOCTDATE between  (((trunc(sysdate)+29)+30)+30)+30 and (((trunc(sysdate)+29)+30)+30)+365',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'COMPUTED_BUT_NOT_DISPLAYED'
,p_query_row_count_max=>10
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
,p_prn_height=>11
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
 p_id=>wwv_flow_api.id(40192090034289326)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40192807066289326)
,p_query_column_id=>2
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(40192430548289326)
,p_query_column_id=>3
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50730482613607730)
,p_plug_name=>'Product type'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h220:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>72
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.nmcoddes,nvl(S.no_of_query,0) "no_of_query",nvl(S.no_of_availabe,0) "no_of_availabe",round((nvl(S.no_of_availabe,0)/nullif(S.no_of_query,0))*100,2) "%" FROM',
'    (select  a.compcode,a.NMPRDTYP,no_of_query,no_of_availabe  from(SELECT COMPCODE,a.NMPRDTYP,count(NMPRDTYP) no_of_query FROM nmcusvlg a',
'           WHERE compcode=:COMPCODE',
'                    group by  a.compcode,a.NMPRDTYP) a,',
'           ( select COMPCODE,a.NMPRDTYP,count(NMPRDTYP) no_of_availabe FROM nmcusvlg a',
'           WHERE compcode=:COMPCODE',
'            AND FEEDBACK1=''Y''',
'                    group by  a.compcode,a.NMPRDTYP) b',
'            where a.compcode=b.compcode',
'            and a.NMPRDTYP=b.NMPRDTYP)S,(SELECT nmcoddes, nmsofcde NMPRDTYP ',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE)DT',
'                    WHERE S.NMPRDTYP(+)=DT.NMPRDTYP',
'                    order by CASE WHEN dt.NMPRDTYP=001 THEN 1',
'           WHEN dt.NMPRDTYP=002 THEN 2',
'           WHEN dt.NMPRDTYP=003 THEN 3',
'           WHEN dt.NMPRDTYP=004 THEN 4',
'           WHEN dt.NMPRDTYP=005 THEN 5',
'           WHEN dt.NMPRDTYP=006 THEN 6',
'           WHEN dt.NMPRDTYP=007 THEN 7',
'           WHEN dt.NMPRDTYP=008 THEN 8',
'           WHEN dt.NMPRDTYP=009 THEN 9',
'           WHEN dt.NMPRDTYP=010 THEN 10',
'           WHEN dt.NMPRDTYP=011 THEN 11',
'            end'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(749661267395245)
,p_region_id=>wwv_flow_api.id(50730482613607730)
,p_chart_type=>'bar'
,p_height=>'200'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(749918482395245)
,p_chart_id=>wwv_flow_api.id(749661267395245)
,p_seq=>10
,p_name=>'Product Type'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(749748012395245)
,p_chart_id=>wwv_flow_api.id(749661267395245)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(749894871395245)
,p_chart_id=>wwv_flow_api.id(749661267395245)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186868099143532040)
,p_plug_name=>' At a galance'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT label, VALUE, url',
'    FROM (WITH DATA',
'                  AS (SELECT t.leads, s.propect, s.REF',
'                        FROM (SELECT COUNT (*) propect,',
'                                     NULL REF,',
'                                     v.NMPRDTYP,',
'                                     v.ITEMCODE,',
'                                     v.DOCTDATE',
'                                FROM nmcusvlg v',
'                               WHERE PURCHASE_TYPE = ''H''',
'                                     AND (v.SMANCODE IN',
'                                           (SELECT S.SMANCODE',
'                                              FROM nmsmnmas s',
'                                             WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'                                         OR v.SMANCODE IN',
'                                              (SELECT P.smancode',
'                                                 FROM VW_SMAN_PRODUCT P',
'                                                WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                                                      AND TO_DATE (v.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                                                         P.',
'                                                                                                          STARTDATE,',
'                                                                                                         ''dd-mon-yyyy'')',
'                                                                                                  AND NVL (',
'                                                                                                         TO_DATE (',
'                                                                                                            P.',
'                                                                                                             ENDDATE,',
'                                                                                                            ''dd-mon-yyyy''),',
'                                                                                                         TRUNC (',
'                                                                                                            SYSDATE))',
'                                                      AND P.PRODUCT_TYPE = v.NMPRDTYP',
'                                                      AND v.compcode = P.compcode)',
'                                                       OR :APP_USER IN',
'                                                                      (SELECT USERCODE',
'                                                                         FROM syusrmas',
'                                                                        WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))) s,',
'                             (SELECT COUNT (*) leads,',
'                                     g.NMPRDTYP,',
'                                     g.ITEMCODE,',
'                                     g.DOCTDATE',
'                                FROM nmcusvlg g',
'                               WHERE (g.SMANCODE IN',
'                                       (SELECT S.SMANCODE',
'                                          FROM nmsmnmas s',
'                                         WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'                                     OR g.SMANCODE IN',
'                                          (SELECT P.smancode',
'                                             FROM VW_SMAN_PRODUCT P',
'                                            WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                                                  AND TO_DATE (g.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                                                     P.',
'                                                                                                      STARTDATE,',
'                                                                                                     ''dd-mon-yyyy'')',
'                                                                                              AND NVL (',
'                                                                                                     TO_DATE (',
'                                                                                                        P.',
'                                                                                                         ENDDATE,',
'                                                                                                        ''dd-mon-yyyy''),',
'                                                                                                     TRUNC (',
'                                                                                                        SYSDATE))',
'                                                  AND P.PRODUCT_TYPE = g.NMPRDTYP',
'                                                  AND g.compcode = P.compcode)',
'                                                   OR :APP_USER IN',
'                                                          (SELECT USERCODE',
'                                                             FROM syusrmas',
'                                                            WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))) t),',
'               rws AS (    SELECT LEVEL r',
'                             FROM DUAL',
'                       CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,  1, ''No of Leads'',  2, ''No of Prospect"(Hot)'') label,',
'                 DECODE (rws.r,  1, DATA.leads,  2, DATA.propect) VALUE,',
'                 DECODE (',
'                    rws.r,',
'                    1,    ''f?p=''',
'                       || :app_id',
'                       || '':355:''',
'                       || :app_session',
'                       || '':1::355,RIR:'',',
'                    2,    ''f?p=''',
'                       || :app_id',
'                       || '':355:''',
'                       || :app_session',
'                       || '':2::355,RIR:'')',
'                    url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order,',
'                 ''No. of Sale'' label,',
'                 COUNT (*) VALUE,',
'                 ''f?p='' || :app_id || '':355:'' || :app_session || '':3::355,RIR''',
'                    url',
'            FROM nmcusvlg a',
'           WHERE TRUNC (DOCTDATE) =TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')',
'            AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'         ',
'          )',
'ORDER BY display_order',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'3'
,p_attribute_06=>'S'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select label, value, url from (',
'with data as (',
'select t.total,s.service,s.ref from ',
'    (select  count(*) service,   null  ref from nmservce where to_char(sysdate,''RRRR'')=TO_CHAR(DOCTDATE,''RRRR''))s,',
'    (select count(*)total from nmmrkpty where PARTYTYP in (''CU'',''CV''))t',
'),',
'rws as (',
'    select level r from dual connect by level < 3',
')',
'',
'select rws.r display_order,',
'    decode(rws.r, 1, ''No of Customer'',    2, ''No of Service'' )  label,',
'    decode(rws.r, 1, data.total, 2, data.service) value,',
'    decode(rws.r, 1, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:'',',
'                  2, ''f?p=''||:APP_ID||'':1:''||:APP_SESSION||'':::1,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                  ) url',
'from data, rws',
'union all',
'select 3 display_order,',
'    ''No of Sales in Period'' label,',
'    count(distinct itemcode) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::44,RIR'' url',
'from nmsalrec',
'union all',
'select 4 display_order,',
'    ''Total Service Taken'' label,',
'    count(*) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmservce',
'union all',
'select 5 display_order,',
'    ''Waiting for Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from nmsalrec',
'where partycde not in (select partycde from nmservce union select partycde from NMSRVNDR)',
'union all',
'select 6 display_order,',
'    ''Total Reminder'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where FSTFLWUP is null',
'UNION ALL',
'select 7 display_order,',
'    ''Today''''s Followup'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(sysdate) in (FSTRMNDT, SNDRMNDT, TRDRMNDT, FURRMNDT, FVERMNDT)',
'union all',
'select 8 display_order,',
'    ''Total Followed Today'' label,',
'    count(distinct partycde) value,',
'    ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||'':::2,RIR'' url',
'from NMSRVNDR',
'where trunc(FSTFLWUP)=trunc(sysdate)',
')',
'order by display_order'))
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
 p_id=>wwv_flow_api.id(44792682822434282416)
,p_plug_name=>'Activity Calendar'
,p_parent_plug_id=>wwv_flow_api.id(128692252350592029)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>92
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select P.DOCNUMBR,',
'  ''Follow Up: '' || p.REMARKSS  description,',
'  project_color_rml(''G'') css_class,',
'P.FOLLOWDT start_date,',
'p.FOLLOWDT end_date/*,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url*/',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.FOLLOWDT is not null',
' and (p.SMANCODE IN (select S.SMANCODE',
'                      from nmsmnmas s',
'                      where S.COMPCODE = :compcode',
'                       and S.USERNAME = :app_user)',
' or p.SMANCODE in (select v.smancode',
'                     from VW_SMAN_PRODUCT v',
'                    where p.smancode like v.SMANCODE_TREE||''%''',
'                     and v.REPORTNG = :APP_USER',
'                     and to_date(p.DOCTDATE,''dd-mon-yyyy'') between to_date(v.STARTDATE,''dd-mon-yyyy'') ',
'                                                           and nvl(to_date(v.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                     and v.PRODUCT_TYPE = p.NMPRDTYP',
'                     and p.compcode = v.compcode))',
'union all',
'select P.DOCNUMBR,',
'''First Reminder: '' || p.FLWSUBCT  description,',
'  project_color_rml(''B'') css_class,',
'P.FSTRMNDT start_date,',
'p.FSTRMNDT end_date',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.FSTRMNDT is not null --p.FSTFLWUP ',
'and (p.SMANCODE IN (select S.SMANCODE',
'                      from nmsmnmas s',
'                      where S.COMPCODE = :compcode',
'                       and S.USERNAME = :app_user)',
' or p.SMANCODE in (select v.smancode',
'                     from VW_SMAN_PRODUCT v',
'                    where p.smancode like v.SMANCODE_TREE||''%''',
'                     and v.REPORTNG = :APP_USER',
'                     and to_date(p.DOCTDATE,''dd-mon-yyyy'') between to_date(v.STARTDATE,''dd-mon-yyyy'') ',
'                                                           and nvl(to_date(v.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                     and v.PRODUCT_TYPE = p.NMPRDTYP',
'                     and p.compcode = v.compcode))',
'union all',
'select P.DOCNUMBR,',
'''Second Reminder: '' || p.SNDSUBCT  description,',
'  project_color_rml(''Y'') css_class,',
'P.SNDFLWUP start_date,',
'p.SNDFLWUP end_date/*,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url*/',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.SNDFLWUP is not null',
'and (p.SMANCODE IN (select S.SMANCODE',
'                      from nmsmnmas s',
'                      where S.COMPCODE = :compcode',
'                       and S.USERNAME = :app_user)',
' or p.SMANCODE in (select v.smancode',
'                     from VW_SMAN_PRODUCT v',
'                    where p.smancode like v.SMANCODE_TREE||''%''',
'                     and v.REPORTNG = :APP_USER',
'                     and to_date(p.DOCTDATE,''dd-mon-yyyy'') between to_date(v.STARTDATE,''dd-mon-yyyy'') ',
'                                                           and nvl(to_date(v.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                     and v.PRODUCT_TYPE = p.NMPRDTYP',
'                     and p.compcode = v.compcode))',
'union all',
'select P.DOCNUMBR,',
'''Third Reminder: '' || p.TRDSUBCT  description,',
'  project_color_rml(''O'') css_class,',
'P.TRDFLWUP start_date,',
'p.TRDFLWUP end_date/*,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url*/',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.TRDFLWUP is not null',
'and (p.SMANCODE IN (select S.SMANCODE',
'                      from nmsmnmas s',
'                      where S.COMPCODE = :compcode',
'                       and S.USERNAME = :app_user)',
' or p.SMANCODE in (select v.smancode',
'                     from VW_SMAN_PRODUCT v',
'                    where p.smancode like v.SMANCODE_TREE||''%''',
'                     and v.REPORTNG = :APP_USER',
'                     and to_date(p.DOCTDATE,''dd-mon-yyyy'') between to_date(v.STARTDATE,''dd-mon-yyyy'') ',
'                                                           and nvl(to_date(v.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                     and v.PRODUCT_TYPE = p.NMPRDTYP',
'                     and p.compcode = v.compcode))',
'union all',
'select P.DOCNUMBR,',
'''Appointment: '' || p.REMARKSS  description,',
'  project_color_rml(''R'') css_class,',
'P.STARTDATE start_date,',
'p.STARTDATE end_date/*,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url*/',
'from NM_MRK_APPOINT p',
'where p.STARTDATE is not null',
'and (p.SMANCODE IN (select S.SMANCODE',
'                      from nmsmnmas s',
'                      where S.COMPCODE = :compcode',
'                       and S.USERNAME = :app_user)',
' or p.SMANCODE in (select v.smancode',
'                     from VW_SMAN_PRODUCT v',
'                    where p.smancode like v.SMANCODE_TREE||''%''',
'                     and v.REPORTNG = :APP_USER',
'                     and to_date(p.DOCTDATE,''dd-mon-yyyy'') between to_date(v.STARTDATE,''dd-mon-yyyy'') ',
'                                                           and nvl(to_date(v.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                     and v.PRODUCT_TYPE = p.NMPRDTYP',
'                     and p.compcode = v.compcode))',
'',
'',
'',
'',
'',
'/*select P.DOCNUMBR,',
'  ''Follow Up: '' || p.REMARKSS  description,',
'  project_color_rml(''G'') css_class,',
'P.FOLLOWDT start_date,',
'p.FOLLOWDT end_date,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.FOLLOWDT is not null',
'union all',
'select P.DOCNUMBR,',
'''First Reminder: '' || p.FLWSUBCT  description,',
'  project_color_rml(''B'') css_class,',
'P.FSTFLWUP start_date,',
'p.FSTFLWUP end_date,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.FSTFLWUP is not null',
'union all',
'select P.DOCNUMBR,',
'''Second Reminder: '' || p.SNDSUBCT  description,',
'  project_color_rml(''Y'') css_class,',
'P.SNDFLWUP start_date,',
'p.SNDFLWUP end_date,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.SNDFLWUP is not null',
'union all',
'select P.DOCNUMBR,',
'''Third Reminder: '' || p.TRDSUBCT  description,',
'  project_color_rml(''O'') css_class,',
'P.TRDFLWUP start_date,',
'p.TRDFLWUP end_date,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url',
'from NM_MRK_SCH_FOLLOWUP p',
'where p.TRDFLWUP is not null',
'union all',
'select P.DOCNUMBR,',
'''Appointment: '' || p.REMARKSS  description,',
'  project_color_rml(''R'') css_class,',
'P.STARTDATE start_date,',
'p.STARTDATE end_date,',
'''f?p=&APP_ID.:5:&APP_SESSION.:::::'' link_url',
'from NM_MRK_APPOINT p',
'where p.STARTDATE is not null',
'',
'*/',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'/*select p.id',
', ''Project: '' || p.name name',
', ''[Project] Project Lead: '' || (select full_name from eba_demo_proj_team_members tm where p.project_lead = tm.id) ||',
'  ''; Description: '' || p.description  description',
', eba_demo_projects_color_pkg.project_color',
'  ( p_project_id => p.id',
'   , p_completed_date => p.completed_date',
'  ) css_class',
', p.completed_date start_date',
', p.completed_date end_date',
', ''f?p=&APP_ID.:5:&APP_SESSION.::::P5_ID:'' || p.id link_url',
'from eba_demo_projects p',
'where p.completed_date is not null',
'and p.id = nvl(:P150_PROJECT_ID, p.id)',
'and instr(:P150_SHOW, ''P'') > 0',
'UNION ALL',
'select m.id',
', ''Milestone: '' || m.name name',
', ''[Project] '' || p.name ||',
'  ''<br>[Milestone] Description: '' || m.description description',
', eba_demo_projects_color_pkg.milestone_color',
'  ( p_milestone_id => m.id',
'   , p_due_date => m.due_date',
'  ) css_class',
', m.due_date start_date',
', m.due_date end_date',
', ''f?p=&APP_ID.:7:&APP_SESSION.::::P7_ID:'' || m.id link_url',
'from eba_demo_proj_milestones m',
',    eba_demo_projects p',
'where p.id = m.project_id',
'and m.project_id = nvl(:P150_PROJECT_ID, m.project_id)',
'and m.id = nvl(:P150_MILESTONE_ID, m.id)',
'and instr(:P150_SHOW, ''M'') > 0',
'UNION ALL ',
'select t.id',
', ''Task: '' || t.name name',
', ''[Project] '' || p.name ||',
'  ''<br>[Task] Assignee: '' || (select full_name from eba_demo_proj_team_members tm where t.assignee = tm.id) ||',
'  ''; Complete? '' || decode(t.is_complete_yn, ''Y'', ''Yes'', ''No'') ||',
'  ''; Description: '' || t.description description',
', eba_demo_projects_color_pkg.task_color',
'  ( p_task_id => t.id',
'   , p_completed_date => p.completed_date',
'   , p_due_date => null',
'  ) css_class',
', t.start_date start_date',
', t.end_date end_date',
', ''f?p=&APP_ID.:9:&APP_SESSION.::::P9_ID:'' || t.id link_url',
'from eba_demo_proj_tasks t',
', eba_demo_projects p',
'where p.id = t.project_id',
'and t.project_id = nvl(:P150_PROJECT_ID, t.project_id)',
'and t.milestone_id is null',
'and instr(:P150_SHOW, ''T'') > 0',
'UNION ALL',
'select t.id',
', ''Task: '' || t.name name',
', ''[Project] '' || p.name ||',
'  ''<br>[Milestone] '' || m.name ||',
'  ''; Due Date: '' || m.due_date ||',
'  ''<br>[Task] Assignee: '' || (select full_name from eba_demo_proj_team_members tm where t.assignee = tm.id) ||',
'  ''; Complete? '' || decode(t.is_complete_yn, ''Y'', ''Yes'', ''No'') ||',
'  ''; Description: '' || t.description description',
', eba_demo_projects_color_pkg.task_color',
'  ( p_task_id => t.id',
'   , p_completed_date => null',
'   , p_due_date => m.due_date',
'  ) css_class',
', t.start_date start_date',
', t.end_date end_date',
', ''f?p=&APP_ID.:9:&APP_SESSION.::::P9_ID:'' || t.id link_url',
'from eba_demo_proj_tasks t',
', eba_demo_proj_milestones m',
', eba_demo_projects p',
'where p.id = t.project_id',
'and m.id = t.milestone_id',
'and t.project_id = nvl(:P150_PROJECT_ID, t.project_id)',
'and t.milestone_id = nvl(:P150_MILESTONE_ID, t.milestone_id)',
'and instr(:P150_SHOW, ''T'') > 0',
'*/',
'',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P150_PROJECT_ID,P150_MILESTONE_ID,P150_SHOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'START_DATE'
,p_attribute_02=>'END_DATE'
,p_attribute_03=>'DESCRIPTION'
,p_attribute_05=>'&LINK_URL.'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>'&DESCRIPTION.'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129106725801962559)
,p_plug_name=>'Sourch Wise Enquires Chart'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(48105038049150683)
,p_region_id=>wwv_flow_api.id(129106725801962559)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(48105576721150683)
,p_chart_id=>wwv_flow_api.id(48105038049150683)
,p_seq=>10
,p_name=>'Chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null link,Wm_concat(distinct b.NMCODDES) LABEL,count(SRCOFENQ) VALUE ',
' from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.SRCOFENQ=b.NMSOFCDE',
'and b.NMHRDCDE=''ENQ''',
'and b.MODLCODE=''NM''',
'and (a.SMANCODE IN (select S.SMANCODE',
'                              from nmsmnmas s',
'                              where S.COMPCODE = :compcode',
'                               and S.USERNAME = :app_user)',
'     or a.SMANCODE in (select P.smancode',
'                             from VW_SMAN_PRODUCT P ',
'                            where a.smancode like P.SMANCODE_TREE||''%''',
'                             and p.REPORTNG = :APP_USER',
'                             and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(P.STARTDATE,''dd-mon-yyyy'') ',
'                                                                   and nvl(to_date(P.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                             and P.PRODUCT_TYPE = a.NMPRDTYP',
'                             and a.compcode = P.compcode))',
'group by NMSOFCDE'))
,p_series_name_column_name=>'LABEL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129107851083962571)
,p_plug_name=>'Application Wise Enquires Chart'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(48106489207150684)
,p_region_id=>wwv_flow_api.id(129107851083962571)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(48106940910150684)
,p_chart_id=>wwv_flow_api.id(48106489207150684)
,p_seq=>10
,p_name=>'chart deal'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) label,count(USGSEGMT) value from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.USGSEGMT=b.NMSOFCDE',
'and b.NMHRDCDE=''AMT''',
'and b.MODLCODE=''NM''',
'and (a.SMANCODE IN (select S.SMANCODE',
'                              from nmsmnmas s',
'                              where S.COMPCODE = :compcode',
'                               and S.USERNAME = :APP_USER)',
'     or a.SMANCODE in (select P.smancode',
'                             from VW_SMAN_PRODUCT P ',
'                            where a.smancode like P.SMANCODE_TREE||''%''',
'                             and p.REPORTNG = :APP_USER',
'                             and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(P.STARTDATE,''dd-mon-yyyy'') ',
'                                                                   and nvl(to_date(P.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                             and P.PRODUCT_TYPE = a.NMPRDTYP',
'                             and a.compcode = P.compcode))',
'group by NMSOFCDE'))
,p_series_name_column_name=>'LABEL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129108397991962576)
,p_plug_name=>'Lost Deal Analysis Chart'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(48107854016150684)
,p_region_id=>wwv_flow_api.id(129108397991962576)
,p_chart_type=>'pie'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(48108390325150684)
,p_chart_id=>wwv_flow_api.id(48107854016150684)
,p_seq=>10
,p_name=>'Chart Lost'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) NMCODDES,count(CONFIRMC) CONTACT_MODE from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.USGSEGMT=b.NMSOFCDE',
'and b.NMHRDCDE=''COD''',
'and b.MODLCODE=''NM''',
'group by NMSOFCDE'))
,p_items_value_column_name=>'CONTACT_MODE'
,p_items_label_column_name=>'NMCODDES'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129603239560128976)
,p_plug_name=>'Location wise Customer Profile Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h260:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129600786047128951)
,p_plug_name=>'Location wise Customer Profile Summary'
,p_parent_plug_id=>wwv_flow_api.id(129603239560128976)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>222
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM',
'(',
'  SELECT b.AREA_NAME_TREE_TYPE AREANAME,case when m.PROFILEE=''001'' then',
'       ''Super Strategic'' ',
'       when m.PIPLNSTS=''002'' then',
'       ''Strategic''  ',
'       when m.PIPLNSTS=''003'' then',
'       ''Upper Retail'' ',
'       when m.PIPLNSTS=''004'' then',
'       ''Lower Retail''',
'       when m.PIPLNSTS=''005'' then',
'       ''-''',
'       when m.PIPLNSTS=''006'' then',
'       ''FTU''',
'       end profle,  m.SMANCODE,s.SMANNAME,m.NMPRDTYP,',
'       (select distinct s.nmcoddes',
'        from nmcodmas s ',
'        where s.compcode=:compcode',
'        and s.modlcode=''NM''',
'        and S.NMHRDCDE = ''PRD''',
'        and S.NMSOFCDE = m.NMPRDTYP) ProductType',
'  FROM nmcusvlg m,VW_NMWHZNMAS b,nmsmnmas s  ',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK',
'and M.SMANCODE=S.SMANCODE',
'and M.COMPCODE=S.COMPCODE',
'AND (m.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'      OR m.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (m.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = m.NMPRDTYP',
'                      AND m.compcode = P.compcode)',
'        OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL(OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode)))',
'PIVOT',
'(',
'  COUNT(profle)',
'  FOR profle IN ( ''Super Strategic'',''Strategic'',''Upper Retail'',''Lower Retail'',''-'',''FTU'')',
')',
'ORDER BY AREANAME',
'',
'',
'/*  SELECT AREA_NAME_TREE_TYPE AREANAME,',
'         SMANCODE,',
'         SMANNAME,',
'         SUM (SUPER_STRATEGIC) SUPER_STRATEGIC,',
'         SUM (STRATEGIC) STRATEGIC,',
'         SUM (UPPER_RETAIL) UPPER_RETAIL,',
'         SUM (LOWER_RETAIL) LOWER_RETAIL,',
'         SUM (FTU) FTU,',
'           SUM (SUPER_STRATEGIC)',
'         + SUM (STRATEGIC)',
'         + SUM (UPPER_RETAIL)',
'         + SUM (LOWER_RETAIL)',
'         + SUM (FTU)',
'            Amount',
'    FROM (SELECT AREA_NAME_TREE_TYPE,',
'                 m.SMANCODE,',
'                 S.SMANNAME,',
'                 CASE',
'                    WHEN NVL (m.ETBCUSTM, 0) + NVL (m.CMPETION, 0) > 50 THEN 1',
'                    ELSE 0',
'                 END',
'                    SUPER_STRATEGIC,',
'                 CASE',
'                    WHEN NVL (m.ETBCUSTM, 0) + NVL (m.CMPETION, 0) BETWEEN 11',
'                                                                       AND 50',
'                    THEN',
'                       1',
'                    ELSE',
'                       0',
'                 END',
'                    STRATEGIC,',
'                 CASE',
'                    WHEN NVL (m.ETBCUSTM, 0) + NVL (m.CMPETION, 0) BETWEEN 6',
'                                                                       AND 10',
'                    THEN',
'                       1',
'                    ELSE',
'                       0',
'                 END',
'                    UPPER_RETAIL,',
'                 CASE',
'                    WHEN NVL (m.ETBCUSTM, 0) + NVL (m.CMPETION, 0) BETWEEN 2',
'                                                                       AND 5',
'                    THEN',
'                       1',
'                    ELSE',
'                       0',
'                 END',
'                    LOWER_RETAIL,',
'                 CASE',
'                    WHEN NVL (m.ETBCUSTM, 0) + NVL (m.CMPETION, 0) < 2 THEN 1',
'                    ELSE 0',
'                 END',
'                    FTU',
'            FROM nmcusvlg m, VW_NMWHZNMAS b, nmsmnmas s, VW_SMAN_PRODUCT v ',
'           WHERE     m.compcode = b.COMPCODE',
'                 AND m.WHSZONFK = b.WHSZONPK',
'                 AND M.SMANCODE = S.SMANCODE',
'                 and (m.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :APP_USER)',
'                 or (m.SMANCODE like V.SMANCODE_TREE||''%''',
'                 and v.REPORTNG = :APP_USER))',
'                 and to_date(m.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                 and V.PRODUCT_TYPE = nvl(m.NMPRDTYP,V.PRODUCT_TYPE)',
'                 and v.WHSZONFK = m.WHSZONFK',
'                 and m.compcode = v.compcode)',
'                 ',
'GROUP BY AREA_NAME_TREE_TYPE, SMANCODE, SMANNAME*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(129600890162128952)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>100
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SYSADM'
,p_internal_uid=>161947273231530296
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48109591090150688)
,p_db_column_name=>'AREANAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48109932911150688)
,p_db_column_name=>'SMANCODE'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Sales Executive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48110389858150689)
,p_db_column_name=>'SMANNAME'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>'Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48110740359150689)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>40
,p_column_identifier=>'J'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48111210054150689)
,p_db_column_name=>'PRODUCTTYPE'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48111562123150689)
,p_db_column_name=>'''Super Strategic'''
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Super strategic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48111990070150689)
,p_db_column_name=>'''Strategic'''
,p_display_order=>70
,p_column_identifier=>'M'
,p_column_label=>'Strategic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48112352899150692)
,p_db_column_name=>'''Upper Retail'''
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Upper retail'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48112731319150695)
,p_db_column_name=>'''Lower Retail'''
,p_display_order=>90
,p_column_identifier=>'O'
,p_column_label=>'Lower retail'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48113141221150697)
,p_db_column_name=>'''-'''
,p_display_order=>100
,p_column_identifier=>'P'
,p_column_label=>'-'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48113546980150700)
,p_db_column_name=>'''FTU'''
,p_display_order=>110
,p_column_identifier=>'Q'
,p_column_label=>'FTU'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(129708500699083663)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'804603'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREANAME:SMANCODE:SMANNAME:PRODUCTTYPE:''Super Strategic'':''Strategic'':''Upper Retail'':''Lower Retail'':''-'':''FTU'':'
,p_sum_columns_on_break=>'FTU:LOWER_RETAIL:UPPER_RETAIL:STRATEGIC:SUPER_STRATEGIC:AMOUNT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129603394060128977)
,p_plug_name=>'Location wise Pipeline Status Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h260:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129601633949128960)
,p_plug_name=>'Location wise Pipeline Status Summary'
,p_parent_plug_id=>wwv_flow_api.id(129603394060128977)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>232
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM',
'(',
'  SELECT b.AREA_NAME_TREE_TYPE AREANAME,case when m.PIPLNSTS=''001'' then',
'       ''Pending'' ',
'       when m.PIPLNSTS=''002'' then',
'       ''Confirmed''  ',
'       when m.PIPLNSTS=''003'' then',
'       ''Finance Awaited(FA)'' ',
'       when m.PIPLNSTS=''004'' then',
'       ''Finance Cleared(FC)''',
'       when m.PIPLNSTS=''005'' then',
'       ''Retail(R)''',
'       when m.PIPLNSTS=''006'' then',
'       ''Lost(L)''',
'       end pipe,  m.SMANCODE,s.SMANNAME,m.NMPRDTYP,',
'       (select distinct s.nmcoddes',
'        from nmcodmas s ',
'        where s.compcode=:compcode',
'        and s.modlcode=''NM''',
'        and s.nmhrdcde = ''PRD''',
'        and S.NMSOFCDE = m.NMPRDTYP) "Product Type",',
'       ''nmpiptrc'' report_name,',
'       m.SALES_POTENTIAL SALES_POTENTIAL',
'  FROM nmcusvlg m,VW_NMWHZNMAS b,nmsmnmas s  ',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK',
'and M.SMANCODE=S.SMANCODE',
'and M.COMPCODE=S.COMPCODE',
'  AND (m.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'            OR m.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                          AND TO_DATE (m.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                          AND P.PRODUCT_TYPE = m.NMPRDTYP',
'                          AND m.compcode = P.compcode)',
'            OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode)))',
'PIVOT',
'(',
'  COUNT(pipe) Status,sum(SALES_POTENTIAL) Potential',
'  FOR pipe IN ( ''Pending'',''Confirmed'',''Finance Awaited(FA)'',''Finance Cleared(FC)'',''Retail(R)'',''Lost(L)'')',
')',
'ORDER BY AREANAME',
'/*commented for not finding sales potential summary*/',
'/*SELECT * FROM',
'(',
'  SELECT b.AREA_NAME_TREE_TYPE AREANAME,case when m.PIPLNSTS=''001'' then',
'       ''Pending'' ',
'       when m.PIPLNSTS=''002'' then',
'       ''Confirmed''  ',
'       when m.PIPLNSTS=''003'' then',
'       ''Finance Awaited(FA)'' ',
'       when m.PIPLNSTS=''004'' then',
'       ''Finance Cleared(FC)''',
'       when m.PIPLNSTS=''005'' then',
'       ''Retail(R)''',
'       when m.PIPLNSTS=''006'' then',
'       ''Lost(L)''',
'       end pipe,  m.SMANCODE,s.SMANNAME,m.NMPRDTYP,',
'       (select distinct s.nmcoddes',
'        from nmcodmas s ',
'        where s.compcode=:compcode',
'        and s.modlcode=''NM''',
'        and s.nmhrdcde = ''PRD''',
'        and S.NMSOFCDE = m.NMPRDTYP) "Product Type"',
'  FROM nmcusvlg m,VW_NMWHZNMAS b,nmsmnmas s  ',
'where m.compcode=b.COMPCODE',
'and m.WHSZONFK=b.WHSZONPK',
'and M.SMANCODE=S.SMANCODE',
'and M.COMPCODE=S.COMPCODE',
' AND (m.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'   OR m.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (m.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = m.NMPRDTYP',
'                      AND m.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode)))',
'PIVOT',
'(',
'  COUNT(pipe)',
'  FOR pipe IN ( ''Pending'',''Confirmed'',''Finance Awaited(FA)'',''Finance Cleared(FC)'',''Retail(R)'',''Lost(L)'')',
')',
'ORDER BY AREANAME',
'*/'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(129601772637128961)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>100
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SYSADM'
,p_internal_uid=>161948155706530305
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48114958324150706)
,p_db_column_name=>'AREANAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48115339295150708)
,p_db_column_name=>'SMANCODE'
,p_display_order=>20
,p_column_identifier=>'O'
,p_column_label=>'Sales Executive'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48115757331150708)
,p_db_column_name=>'SMANNAME'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48116566995150708)
,p_db_column_name=>'Product Type'
,p_display_order=>40
,p_column_identifier=>'Z'
,p_column_label=>'Product type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48116160188150708)
,p_db_column_name=>'NMPRDTYP'
,p_display_order=>140
,p_column_identifier=>'Q'
,p_column_label=>'Nmprdtyp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48116977904150711)
,p_db_column_name=>'REPORT_NAME'
,p_display_order=>150
,p_column_identifier=>'AA'
,p_column_label=>'Report name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48117405817150711)
,p_db_column_name=>'''Pending''_STATUS'
,p_display_order=>160
,p_column_identifier=>'AB'
,p_column_label=>'Pending'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48117757479150711)
,p_db_column_name=>'''Pending''_POTENTIAL'
,p_display_order=>170
,p_column_identifier=>'AC'
,p_column_label=>'Pending Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48118169916150713)
,p_db_column_name=>'''Confirmed''_STATUS'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48118521861150716)
,p_db_column_name=>'''Confirmed''_POTENTIAL'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'Confirmed Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48118990286150719)
,p_db_column_name=>'''Finance Awaited(FA)''_STATUS'
,p_display_order=>200
,p_column_identifier=>'AF'
,p_column_label=>'Finance awaited(FA)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48119392435150723)
,p_db_column_name=>'''Finance Awaited(FA)''_POTENTIA'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'(FA) Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48119789532150727)
,p_db_column_name=>'''Finance Cleared(FC)''_STATUS'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'Finance cleared(FC)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48120170373150730)
,p_db_column_name=>'''Finance Cleared(FC)''_POTENTIA'
,p_display_order=>230
,p_column_identifier=>'AI'
,p_column_label=>'(FC) Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48120531035150734)
,p_db_column_name=>'''Retail(R)''_STATUS'
,p_display_order=>240
,p_column_identifier=>'AJ'
,p_column_label=>'Retail(r)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48120917550150739)
,p_db_column_name=>'''Retail(R)''_POTENTIAL'
,p_display_order=>250
,p_column_identifier=>'AK'
,p_column_label=>'Retail(r) Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48121322308150742)
,p_db_column_name=>'''Lost(L)''_STATUS'
,p_display_order=>260
,p_column_identifier=>'AL'
,p_column_label=>'Lost(l)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48121781136150745)
,p_db_column_name=>'''Lost(L)''_POTENTIAL'
,p_display_order=>270
,p_column_identifier=>'AM'
,p_column_label=>'Lost(l) Potential'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(129712836175110984)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'804685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREANAME:SMANCODE:SMANNAME:Product Type:REPORT_NAME:''Pending''_STATUS:''Pending''_POTENTIAL:''Confirmed''_STATUS:''Confirmed''_POTENTIAL:''Finance Awaited(FA)''_STATUS:''Finance Awaited(FA)''_POTENTIA:''Finance Cleared(FC)''_STATUS:''Finance Cleared(FC)''_POTENTIA:'
||'''Retail(R)''_STATUS:''Retail(R)''_POTENTIAL:''Lost(L)''_STATUS:''Lost(L)''_POTENTIAL'
,p_sum_columns_on_break=>'PENDING:CONFIRMED:FINANCE_AWAITED:FINANCE_CLEARED:RETAIL:LOST:AMOUNT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(129828323407858233)
,p_plug_name=>'Summery_chart'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130920285877346733)
,p_plug_name=>'Sourch Wise Enquires Chart'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  null,DT.nmcoddes,nvl(S.no_of_query,0) "no_of_query",nvl(S.no_of_availabe,0) "no_of_availabe",round((nvl(S.no_of_availabe,0)/nullif(S.no_of_query,0))*100,2) "%" FROM',
'    (select  a.compcode,a.NMPRDTYP,no_of_query,no_of_availabe  from(SELECT COMPCODE,a.NMPRDTYP,count(NMPRDTYP) no_of_query FROM nmcusvlg a',
'           WHERE compcode=:COMPCODE',
'                    group by  a.compcode,a.NMPRDTYP) a,',
'           ( select COMPCODE,a.NMPRDTYP,count(NMPRDTYP) no_of_availabe FROM nmcusvlg a',
'           WHERE compcode=:COMPCODE',
'            AND FEEDBACK1=''Y''',
'                    group by  a.compcode,a.NMPRDTYP) b',
'            where a.compcode=b.compcode',
'            and a.NMPRDTYP=b.NMPRDTYP)S,(SELECT nmcoddes, nmsofcde NMPRDTYP ',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE)DT',
'                    WHERE S.NMPRDTYP(+)=DT.NMPRDTYP',
'                    order by CASE WHEN dt.NMPRDTYP=001 THEN 1',
'           WHEN dt.NMPRDTYP=002 THEN 2',
'           WHEN dt.NMPRDTYP=003 THEN 3',
'           WHEN dt.NMPRDTYP=004 THEN 4',
'           WHEN dt.NMPRDTYP=005 THEN 5',
'           WHEN dt.NMPRDTYP=006 THEN 6',
'           WHEN dt.NMPRDTYP=007 THEN 7',
'           WHEN dt.NMPRDTYP=008 THEN 8',
'           WHEN dt.NMPRDTYP=009 THEN 9',
'           WHEN dt.NMPRDTYP=010 THEN 10',
'           WHEN dt.NMPRDTYP=011 THEN 11',
'            end'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(750482489395245)
,p_region_id=>wwv_flow_api.id(130920285877346733)
,p_chart_type=>'pie'
,p_width=>'300'
,p_height=>'210'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'N'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>false
,p_show_label=>false
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(750574305395245)
,p_chart_id=>wwv_flow_api.id(750482489395245)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130949655826552353)
,p_plug_name=>'Application Wise Enquires'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>105
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null link,Wm_concat(distinct b.NMCODDES) label,count(USGSEGMT) value from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.USGSEGMT=b.NMSOFCDE',
'and b.NMHRDCDE=''AMT''',
'and b.MODLCODE=''NM''',
' AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'group by NMSOFCDE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(750288438395245)
,p_region_id=>wwv_flow_api.id(130949655826552353)
,p_chart_type=>'pie'
,p_width=>'300'
,p_height=>'210'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(750374222395245)
,p_chart_id=>wwv_flow_api.id(750288438395245)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130952062091584499)
,p_plug_name=>'Lost Deal Analysis Chart'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>115
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null link,Wm_concat(distinct b.NMCODDES) label,count(RESNFLST) value from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.RESNFLST=b.NMSOFCDE',
'and b.NMHRDCDE=''COD''',
'and b.MODLCODE=''NM''',
'and nvl(a.CONFIRMC,''N'') = ''N''',
' AND (a.SMANCODE IN',
'               (SELECT S.SMANCODE',
'                  FROM nmsmnmas s',
'                 WHERE S.COMPCODE = :compcode AND S.USERNAME = :APP_USER)',
'              OR a.SMANCODE IN',
'                  (SELECT P.smancode',
'                     FROM VW_SMAN_PRODUCT P',
'                    WHERE P.SMANCODE_TREE LIKE :APP_USER || ''%''',
'                      AND TO_DATE (a.DOCTDATE, ''dd-mon-yyyy'') BETWEEN TO_DATE (',
'                                                                             P.',
'                                                                              STARTDATE,',
'                                                                             ''dd-mon-yyyy'')',
'                                                                      AND NVL (',
'                                                                             TO_DATE (',
'                                                                                P.',
'                                                                                 ENDDATE,',
'                                                                                ''dd-mon-yyyy''),',
'                                                                             TRUNC (',
'                                                                                SYSDATE))',
'                      AND P.PRODUCT_TYPE = a.NMPRDTYP',
'                      AND a.compcode = P.compcode)',
'                OR :APP_USER IN',
'                  (SELECT USERCODE',
'                     FROM syusrmas',
'                    WHERE NVL (OPERFLAG, ''N'') = ''Y'' AND DIVNCODE = :compcode))',
'group by NMSOFCDE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(750022060395245)
,p_region_id=>wwv_flow_api.id(130952062091584499)
,p_chart_type=>'pie'
,p_width=>'210'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_zoom_direction=>'auto'
,p_initial_zooming=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_pie_selection_effect=>'highlight'
,p_no_data_found_message=>'No data found.'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>180
,p_gauge_angle_extent=>180
,p_show_gauge_value=>true
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(750148725395245)
,p_chart_id=>wwv_flow_api.id(750022060395245)
,p_seq=>10
,p_name=>'Series 1'
,p_max_row_count=>15
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'"3"'
,p_items_label_column_name=>'"2"'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
,p_series_comment=>'Automatically upgraded from AnyChart, applying positional column mappings. Links not automatically handled. Review series column mappings and links.'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134946138590918787)
,p_plug_name=>'Pipeline Tracker'
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>120
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(134946263507918788)
,p_plug_name=>'Pipeline Tracker'
,p_parent_plug_id=>wwv_flow_api.id(134946138590918787)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>62
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Wm_concat(distinct b.NMCODDES) NMCODDES,null modelnam,count(CURRENT_MODEL) CONTACT_MODE from nmcusvlg a, nmcodmas b',
'where a.compcode=:COMPCODE',
'and a.USGSEGMT=b.NMSOFCDE',
'and b.NMHRDCDE=''AMT''',
'and b.MODLCODE=''NM''',
'group by NMSOFCDE',
'UNION ALL',
'select null NMCODDES,Wm_concat(distinct b.modelnam) modelnam,count(a.CURRENT_MODEL) CONTACT_MODE from nmcusvlg a, (select modelnam ,modlcode',
'from vwnmitem',
'where compcode = :compcode ',
'and nvl(commgrup,''0'') in (SELECT nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''AMT'')',
'order by 1) b',
'where a.compcode=:COMPCODE',
'and a.CURRENT_MODEL=b.modlcode',
'group by modlcode'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(129259199534687295)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SYSADM'
,p_internal_uid=>161605582604088639
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48126811860150762)
,p_db_column_name=>'NMCODDES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Segment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48127142578150762)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Contact mode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48127546400150764)
,p_db_column_name=>'MODELNAM'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Modelnam'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(129608521150687738)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'804743'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NMCODDES:CONTACT_MODE:MODELNAM'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(129615311996855128)
,p_report_id=>wwv_flow_api.id(129608521150687738)
,p_pivot_columns=>'MODELNAM'
,p_row_columns=>'NMCODDES'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(48128644177150766)
,p_pivot_id=>wwv_flow_api.id(129615311996855128)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'CONTACT_MODE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Total'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186858965737531989)
,p_plug_name=>'Column 5'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>150
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186859337618531997)
,p_plug_name=>'CURRENT MONTH'
,p_parent_plug_id=>wwv_flow_api.id(186858965737531989)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 650px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (SELECT COUNT (*) service, NULL REF',
'                          FROM nmservce',
'                         WHERE doctdate BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         )) s,',
'                       (SELECT COUNT (*) total',
'                          FROM nmmrkpty',
'                         WHERE partytyp IN (''CU'', ''CV'')',
'                           AND timstamp BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                                            AND LAST_DAY (TRUNC (SYSDATE,',
'                                                                 ''MONTH''',
'                                                                )',
'                                                         )) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order, DECODE (rws.r,',
'                                              1,''No of Customer'',',
'                                              2, ''No of Service''',
'                                             ) label,',
'                 DECODE (rws.r, 1, DATA.total, 2, DATA.service) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':214:''',
'                          || :app_session',
'                          || '':::214,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':297:''',
'                          || :app_session',
'                          || '':::297,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''No of Car Sales in Month'' label,',
'                 COUNT (itemcode) VALUE,',
'                 ''f?p='' || :app_id || '':202:'' || :app_session',
'                 || '':::202,RIR'' url',
'            FROM nmsalrec',
'           WHERE doctdate BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'          UNION ALL',
'          SELECT 4 display_order, ''Total Reminder'' label,',
'                 COUNT ( DELVRYDT+90) VALUE,',
'                 ''f?p='' || :app_id || '':207:'' || :app_session || '':::207,RIR'' url',
'            FROM nmsrvndr',
'           WHERE trunc(DELVRYDT+90) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))',
'          UNION ALL',
'SELECT 9 display_order, ''Total Appointment'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':211:'' || :app_session || '':::211,RIR'' url',
'            FROM nmsrvndr',
'           WHERE (   appndate IS NOT NULL',
'        OR sndapndt IS NOT NULL',
'        OR trdapndt IS NOT NULL',
'       )',
'   AND trunc(doctdate) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR''))',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186859730096531998)
,p_plug_name=>'Column 6'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>160
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186860173357531998)
,p_plug_name=>'TODAY''S'
,p_parent_plug_id=>wwv_flow_api.id(186859730096531998)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width: 650px;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   label, VALUE, url',
'    FROM (WITH DATA AS',
'               (SELECT t.total, s.service, s.REF',
'                  FROM (SELECT COUNT (*) service, NULL REF',
'                          FROM nmservce',
'                         WHERE doctdate',
'                                 = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) s,',
'                       (select COUNT (*) total from nmmrkpty P,NMSERVCE S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE',
'AND trunc(S.TIMSTAMP) =',
'                                         TO_DATE (',
'                                            TO_CHAR (SYSDATE, ''MM/DD/RRRR''),',
'                                            ''MM/DD/RRRR'')',
'ORDER BY S.TIMSTAMP DESC) t),',
'               rws AS',
'               (SELECT     LEVEL r',
'                      FROM DUAL',
'                CONNECT BY LEVEL < 3)',
'          SELECT rws.r display_order,',
'                 DECODE (rws.r,',
'                         1, ''No of Customer'',',
'                         2, ''No of Service''',
'                        ) label,',
'                 DECODE (rws.r, 1, DATA.total, 2, DATA.service) VALUE,',
'                 DECODE (rws.r,',
'                         1,  ''f?p=''',
'                          || :app_id',
'                          || '':215:''',
'                          || :app_session',
'                          || '':::215,RIR:'',',
'                         2,  ''f?p=''',
'                          || :app_id',
'                          || '':296:''',
'                          || :app_session',
'                          || '':::296,RIR:IR_MARQUEE_CUSTOMER:Yes''',
'                        ) url',
'            FROM DATA, rws',
'          UNION ALL',
'          SELECT 3 display_order, ''Today''''s Car Sales'' label,',
'                 COUNT (itemcode) VALUE,',
'                 ''f?p='' || :app_id || '':299:'' || :app_session',
'                 || '':::299,RIR'' url',
'            FROM nmsalrec',
'             WHERE doctdate  = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'          UNION ALL',
'          SELECT 5 display_order, ''Waiting for Reminder'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':205:'' || :app_session || '':::205,RIR'' url',
'            FROM nmsalrec',
'           WHERE partycde NOT IN (SELECT partycde  FROM nmservce  UNION SELECT partycde    FROM nmsrvndr)',
'                 and  doctdate   = TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')',
'          UNION ALL',
'          SELECT 6 display_order, ''Today''''s Reminder'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':206:'' || :app_session || '':::206,RIR'' url',
'            FROM nmsrvndr',
'           WHERE TRUNC (SYSDATE) IN (fstrmndt, sndrmndt, trdrmndt, furrmndt, fvermndt)',
'          UNION ALL',
'          SELECT 7 display_order, ''Today''''s Followup'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':208:'' || :app_session || '':::208,RIR'' url',
'            FROM nmsrvndr',
'            where (TRUNC (SYSDATE)=fstrmndt and FSTFLWUP is null ) or (TRUNC (SYSDATE)=sndrmndt and SNDFLWUP is null) OR (TRUNC (SYSDATE)=TRDrmndt and TRDFLWUP is null)',
'          UNION ALL',
'          SELECT 8 display_order, ''Today''''s Followed'' label,',
'                 COUNT (DISTINCT partycde) VALUE,',
'                 ''f?p='' || :app_id || '':209:'' || :app_session || '':::209,RIR'' url',
'            FROM nmsrvndr',
'            where (TRUNC (SYSDATE)=fstrmndt and FSTFLWUP is not null ) or (TRUNC (SYSDATE)=sndrmndt and SNDFLWUP is not null) OR (TRUNC (SYSDATE)=TRDrmndt and TRDFLWUP is not null) ',
'UNION ALL',
'SELECT 9 display_order, ''Today''''s Appointment'' label,',
'       COUNT (DISTINCT partycde) VALUE,',
'       ''f?p='' || :app_id || '':210:'' || :app_session || '':::210,RIR'' url',
'  FROM nmsrvndr',
' WHERE appndate IS NOT NULL',
'   AND trunc(appndate) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR''))',
'ORDER BY display_order'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BIG_VALUE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
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
 p_id=>wwv_flow_api.id(186862559745532015)
,p_plug_name=>'About this application'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'  begin',
'      t := EBA_CUST_FW.get_preference_value(''WELCOME_TEXT'');',
'  exception',
'      when others then ',
'      t := null;',
'  end;',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Use this application to organize and share interactions with your customer community.  Click on items in this dashboard page below, or click the customers tab to review and manage your install base.</p>'');',
'  else',
'     sys.htp.p(''<p>''||t||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186862990445532017)
,p_plug_name=>' '
,p_region_css_classes=>'uGrid col_2'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47568291304858133)
,p_plug_display_sequence=>170
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(186863317784532020)
,p_name=>'Recently Updated Customers'
,p_parent_plug_id=>wwv_flow_api.id(186862990445532017)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>140
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:204%;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_name,uPDATED_ON, ID from (',
'select P.PARTYCDE||'':''||P.PRTYNAME CUSTOMER_NAME,S.TIMSTAMP,',
'TO_CHAR(S.TIMSTAMP,''DD/MM/RRRR HH12:MI AM'')||'' against sales ''||s.docnumbr||'':''||s.itemcode||s.itemdesc uPDATED_ON,P.PARTYCDE ID from nmmrkpty P,NMSALREC S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE',
'union all',
'select P.PARTYCDE||'':''||P.PRTYNAME CUSTOMER_NAME,S.TIMSTAMP,',
'TO_CHAR(S.TIMSTAMP,''DD/MM/RRRR HH12:MI AM'')||'' against service ''||s.docnumbr||'':''||s.itemcode||s.itemdesc uPDATED_ON,P.PARTYCDE ID from nmmrkpty P,NMSERVCE S ',
'where PARTYTYP in (''CU'',''CV'')',
'AND P.PARTYCDE=S.PARTYCDE)',
'ORDER BY TIMSTAMP DESC'))
,p_display_condition_type=>'NEVER'
,p_header=>'<p class="largeLinkListDescription">Customers with date of most recent update.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>40
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No customers found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>40
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
 p_id=>wwv_flow_api.id(48131117345150769)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>2
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48131606365150772)
,p_query_column_id=>2
,p_column_alias=>'UPDATED_ON'
,p_column_display_sequence=>3
,p_include_in_export=>'Y'
,p_print_col_width=>'50'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(48131980768150772)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186865731318532031)
,p_plug_name=>'Tags'
,p_parent_plug_id=>wwv_flow_api.id(186862990445532017)
,p_region_css_classes=>'scrollable-region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>220
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag, tag_count',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0',
'order by tag_count desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'f?p=&APP_ID.:1:&APP_SESSION.::::IRC_TAGS:#TAG#'
,p_attribute_02=>'35'
,p_attribute_03=>'Y'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_tags_type_sum',
' where content_type = ''CUSTOMER''',
'   and tag_count > 0'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186866534920532033)
,p_plug_name=>'Search'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<div class="sCustomSearch">'
,p_plug_footer=>'</div>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186889520306825809)
,p_plug_name=>'COMPANY'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>230
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
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(186890163099831308)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>240
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P150_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P150_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48098699378150667)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(128231058868254737)
,p_button_name=>'PIPELINE_STATUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pipeline status'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:267:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48099061923150667)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(128231058868254737)
,p_button_name=>'PIPELINE_STATUS_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'page'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:268:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48132358235150772)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(186863317784532020)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create Customer'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48132758152150773)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(186863317784532020)
,p_button_name=>'VIEW_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customer'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48133515459150773)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(186865731318532031)
,p_button_name=>'VIEW_TAGS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View All'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP,40,RIR::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48136873100150777)
,p_button_sequence=>30
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customers'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RP,44,RIR::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48137238836150777)
,p_button_sequence=>50
,p_button_name=>'VIEW_UPDATES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Updates'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,RIR::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39800602038738522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39803002845738546)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40129617447902722)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(44975287380917100)
,p_button_name=>'RECEIVABLE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Details'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_PROGNAME:nmrcable'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(48139013176150777)
,p_branch_action=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,100:P150_STATUS:'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'Created 16-DEC-2010 17:41 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48134137611150773)
,p_name=>'P150_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186866534920532033)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Search'
,p_placeholder=>'Search customers, products, customers, tags...'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CUSTOMER_NAME',
'from   EBA_CUST_CUSTOMERS',
'order by 1'))
,p_cSize=>60
,p_cMaxlength=>4000
,p_cattributes_element=>'nowrap="nowrap"'
,p_tag_attributes=>'class="sSearchFieldBig"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_06=>'N'
,p_attribute_07=>'N'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48135052033150775)
,p_name=>'P150_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(186890163099831308)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48135438029150775)
,p_name=>'P150_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(186890163099831308)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(48135881434150777)
,p_name=>'P150_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(186890163099831308)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(48137746097150777)
,p_computation_sequence=>10
,p_computation_item=>'P150_SEARCH'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P150_SEARCH.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(48138145826150777)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'100'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39803655600738552)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(186868099143532040)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40418964113406103)
,p_event_id=>wwv_flow_api.id(39803655600738552)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".uLabel").each(function()  ',
'                             {            ',
'                                if (parseInt($(this).text()) < 50)  ',
'                                {  ',
'                                    "background-color":"red"',
'                                }  ',
'                                  ',
'                                if (parseInt($(this).text()) >= 50 && parseInt($(this).text()) < 80)  ',
'                                {  ',
'                                    $(this).css({"background-color":"orange"});  ',
'                                    $(this).css({"border":"orange"});  ',
'                                    $(this).css({"color":"white"});  ',
'                                }  ',
'                                  ',
'                                if (parseInt($(this).text()) >= 80)  ',
'                                {  ',
'                                    $(this).css({"background-color":"green"});  ',
'                                    $(this).css({"border":"green"});  ',
'                                    $(this).css({"color":"white"});  ',
'                                }  ',
'  ',
'                             }); '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(48138516190150777)
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
'If :P4_PROGNM  is null and :P4_NO is null then',
'   :P4_PROGNM := :FX_PROG_NAME;',
'   :P4_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P4_OPRSTAMP := :app_user;',
'  --:P4_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P4_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P4_PROGNM;',
'   :FX_PAGE_NO := :P4_NO;',
'Elsif :FX_PROG_NAME <> :P4_PROGNM And :FX_PAGE_NO <> :P4_NO Then',
'   :FX_PROG_NAME := :P4_PROGNM;',
'   :FX_PAGE_NO := :P4_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
