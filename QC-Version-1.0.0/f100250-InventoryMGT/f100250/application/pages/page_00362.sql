prompt --application/pages/page_00362
begin
--   Manifest
--     PAGE: 00362
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
 p_id=>362
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Opening Stock Entry (FG) Barcode'
,p_page_mode=>'MODAL'
,p_step_title=>'Opening Stock Entry (FG) Barcode'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P10_DOCNUMBER'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P10_DOCNUMBER'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<script language="JavaScript">',
'function printPage() {',
'    ',
'    var printContents = document.getElementById("printableAreaaging").innerHTML;',
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
'</script>',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
' function printContent(el){',
'      var restorepage = $(''body'').html();',
'      var printcontent = $(''#'' + el).clone();',
'      $(''body'').empty().html(printcontent);',
'      window.print();',
'      $(''body'').html(restorepage);',
'      }',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'   clicked_empno = $("#P10_PROGNAME").val();',
'   $(''a[href$="P10_PROGNAME:''+clicked_empno+''"]'').parent().parent().children().addClass(''highlight-employee'') ;',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body .ui-dialog .ui-dialog-title {',
'    color: #3d3d3d;',
'    margin-left: 50%;',
'}',
'',
'@font-face {',
'    font-family: "3 of 9 Barcode";',
'    src: url(#APP_IMAGES#3OF9_NEW.ttf) format("truetype");',
'    font-weight: normal;',
'    font-style: normal;',
'    }',
'    .barCode {',
'    background-repeat: no-repeat;',
'    margin-top: 1px;',
'    font-family: "3 of 9 Barcode";',
'    font-size: 64px;',
'    margin-left: 10px;',
'    padding-bottom:3em;',
'    }'))
,p_step_template=>wwv_flow_api.id(47561185048858115)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'400'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (100):= apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :f_empno_list IS NULL THEN',
'      :f_empno_list := '','' || v_item_val || '','';',
'    ELSE',
'      :f_empno_list := :f_empno_list || v_item_val|| '','' ;',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :f_empno_list := REPLACE (:f_empno_list, '','' || v_item_val || '','', '','');',
'    ',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:f_empno_list);',
'END;'))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180516123840'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(102358381409208786)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
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
' v_bank_rows6    number := 0;',
' v_bank_rows7    number := 0;',
' v_bank_rows8    number := 0;',
' v_bank_rows9    number := 0;',
' v_bank_rows10    number := 0;',
' v_bank_rows11    number := 0;',
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
' v_cnt := v_cnt + 1;',
' ',
'  --  If v_prev_bnk <> c1.Brand then',
'      ',
'--htp.p(initcap(c1.Brand));',
'htp.p(''<div id="divButtons1" name="divButtons1" style="align:right;">',
'    <input type="button" id="button1" name="Booking" onclick="printPage()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158)'
||' 100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none;'
||' text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>'');',
'htp.p(''<div class="brandcategory1"  id="ex11"style="line-height: 16px;font-size: 10px;">',
'              <div class="CSSTableGeneratorbrndcat" id="printableAreaaging" >',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:10px;">',
'                <td>Document Detail</td>',
'                <td>Identification No.</td>',
'                <td>Category</td>',
'                <td>Product Type</td>',
'                <td>Cost Rate</td>',
'                <td>Sale Rate</td>',
'                <td>Warehouse</td>',
'                <td>Barcode</td>',
'              </tr>'');',
'                 For c2 in (SELECT DISTINCT    a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype ID,',
'                   a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype AS docdetail,a.warecode || '' - '' || c.waredesc warecode, a.docnumbr,a.docttype,a.subttype,',
'                a. colorcde, a.itemcode, upper(b.itemdes1)  itemdes1,',
'                ''<embed ''',
'       || ''src=http://202.40.177.93:8085/gitanjali/f?p=&APP_ID.:0:''',
'       || ''&SESSION.:GET_BARCODE:&DEBUG.::''',
'       || ''T_CODE_TEXT,T_CODE_LABEL,T_CODE_HEIGHT,T_CODE_WIDTH:''',
'       || VINNUMBR',
'       || '',Yes,30,1''',
'       || '' ''',
'       || ''width=200 height=45 ''',
'       || ''type=image/svg+xml />'' barcode,',
'               VINNUMBR identification_no,a.engineno, NVL (a.orgnqnty, a.apprqnty) orgnqnty,a.vinnumbr,a.DOCTDATE,a.TIMSTAMP,',
'               NVL (a.salerate*a.excgrate, 0) itemrate,NVL (a.costrate*a.excgrate, 0) costrate, WGHTQNTY,',
'               b.DESIGNCD,(select CODEDESC from SYCDEDTL where ACTLCODE=b.ITEMMODL)  NAME,',
'              (select CODEDESC from SYCDEDTL where ACTLCODE=b.ITEMMODL)  NAME1,decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category,',
'              decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category1',
'              ',
'           FROM nmenudtl a, vwnmitem b, nmwhsmas c',
'          WHERE a.compcode=:COMPCODE',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode1 = b.itemcode',
'            AND a.vinnumbr=:P362_DELDOCNUMBER',
'           --      AND NVL (a.trnsqnty, 0) = 0',
'            AND a.warecode = c.warecode(+)',
'            AND a.docttype <>''BK''',
'       ORDER BY trunc(a.timstamp) desc ',
'                )',
'Loop',
'--v_bank_total:= (nvl(c2.A_STATUS,0)+nvl(c2.B_STATUS,0)+nvl(c2.C_STATUS,0)+nvl(c2.D_STATUS,0)+nvl(c2.E_STATUS,0)+nvl(c2.F_STATUS,0));',
'htp.p(''',
'<tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'      <td style="width: 30%;text-align:left;font-size: 10px;">''||c2.docdetail||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.identification_no||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.category||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.NAME||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.orgnqnty||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.costrate||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.itemrate||''</td>',
'      <td style="width: 10%;text-align:center;font-size: 10px;">''||c2.barcode||''</td>',
'      ',
'    ',
''');',
'/* v_bank_rows := v_bank_rows +nvl(c2.A_STATUS,0);',
' --v_bank_rows1 := v_bank_rows1 +nvl(c2.A_POTENTIAL,0);',
' v_bank_rows2 := v_bank_rows2 +nvl(c2.B_STATUS,0);',
' --v_bank_rows3 := v_bank_rows3 +nvl(c2.B_POTENTIAL,0);',
' v_bank_rows4 := v_bank_rows4 +nvl(c2.C_STATUS,0);',
'-- v_bank_rows5 := v_bank_rows5 +nvl(c2.C_POTENTIAL,0);',
' v_bank_rows6 := v_bank_rows6 +nvl(c2.D_STATUS,0);',
'-- v_bank_rows7 := v_bank_rows7 +nvl(c2.D_POTENTIAL,0);',
' v_bank_rows8 := v_bank_rows8 +nvl(c2.E_STATUS,0);',
'-- v_bank_rows9 := v_bank_rows9 +nvl(c2.E_POTENTIAL,0);',
' v_bank_rows10:= v_bank_rows10 +nvl(c2.F_STATUS,0);',
' v_bank_rows11:= v_bank_rows11 +v_bank_total;*/',
' ',
'              ',
' end loop;',
' ',
' --  End If;',
'--v_bank_rows1 := v_bank_rows1 +c1.no_of_item;',
'--  v_bank_total1 := v_bank_total1 + c1.AMOUNT;',
'           /*   htp.p(''',
'            <tr style="max-height:3px;line-height: 8px;font-size: 10px;">',
'                <td colspan="1" style="text-align:right;">Summary</td>',
'                <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows2||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows4||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows6||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows8||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows10||''</td>',
'                    <td style="width: 10%;text-align:center;font-size: 10px;">''||v_bank_rows11||''</td>',
'              </tr>              ',
'            '');*/',
'              htp.p(''</table></div></div></br>''); ',
'            v_bank_rows := 0;',
'            v_bank_rows1 := 0;',
'            v_bank_rows2 := 0;',
'            v_bank_rows3 := 0;',
'            v_bank_rows4 := 0;',
'            v_bank_rows5 := 0;',
'            v_bank_rows6 := 0;',
'            v_bank_rows7 := 0;',
'            v_bank_rows8 := 0;',
'            v_bank_rows9 := 0;',
'            v_bank_rows10 := 0;',
'            v_bank_rows11 := 0;',
'          v_bank_total := 0;',
'--End Loop;',
'',
'',
'',
'End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(102362969529208820)
,p_name=>'sdsaddsad'
,p_region_name=>'MON'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype',
'                || ''/''',
'                || s.serlnumb ID,',
'                   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype AS docdetail,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                s.custmrid || '':'' || p.prtyname AS partycde,',
'                (SELECT usercode || '':'' || username',
'                   FROM syusrmas u',
'                  WHERE usercode = s.raisedby',
'                    AND u.divncode = :compcode) AS raised_by,',
'                s.itemcode AS itemcode, s.itemdesc AS itemdesc,',
'                s.salerate AS rate,NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) Quantity,',
'                nvl(s.saleRATE,0) * (NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0)) Amount,',
'                s.warecode || '':'' || w.waredesc AS warecode,',
'                s.statuscd AS statuscd',
'           FROM nmsalrec s, nmwhsmas w, nmitemas i, sycompty p,',
'                ',
'                (SELECT   NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) trnsqnty,d.apprqnty',
'                     FROM nmdevrec d,nmsalrec s,nmwhsmas w',
'                    WHERE d.updoctyp = ''SI''',
'                    and d.upsubtyp=1',
'                    and d.compcode=:compcode',
'                      AND d.compcode = s.compcode',
'                      AND d.itemcode = s.itemcode',
'                      AND d.updocnum = s.DOCNUMBR',
'                      and d.UPDOCDTE = s.doctdate',
'                      AND d.COSTCODE = s.COSTCODE',
'                      and d.STATUSCD =''APR''',
'                    AND NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) > 0   ',
'                     AND d.doctdate =nvl(:p11 ,d.doctdate)                   ',
'                      AND w.warecode IN (SELECT warecode',
'                                 FROM sycstacc',
'                                WHERE grupcode = :app_user)',
'                 GROUP BY d.updocnum, d.updoctyp, d.upsubtyp, d.itemcode,d.UPDOCDTE,s.trnsqnty,d.apprqnty) e',
'           where s.DOCTTYPE=''SI''',
'and s.COMPCODE=:COMPCODE',
'AND S.COMPCODE=P.COMPCODE',
'AND S.PARTYCDE=P.PARTYCDE',
'and s.compcode=w.compcode',
'and s.itemcode=i.itemcode',
'and s.warecode=w.warecode',
'AND s.doctdate =nvl(:p11 ,s.doctdate)',
'AND NVL (s.trnsqnty, 0) - NVL (e.apprqnty, 0) > 0 ',
'and w.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'order by DOCTDATE desc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41745837878099274)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41746234232099277)
,p_query_column_id=>2
,p_column_alias=>'DOCDETAIL'
,p_column_display_sequence=>2
,p_column_heading=>'DOCDETAIL'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41746636277099277)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'DOCNUMBR'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41747018793099277)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'DOCTDATE'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41747428669099277)
,p_query_column_id=>5
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>5
,p_column_heading=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41747801439099277)
,p_query_column_id=>6
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'RAISED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41748242090099277)
,p_query_column_id=>7
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41748613603099278)
,p_query_column_id=>8
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>8
,p_column_heading=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41749088225099278)
,p_query_column_id=>9
,p_column_alias=>'RATE'
,p_column_display_sequence=>9
,p_column_heading=>'RATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41749433934099278)
,p_query_column_id=>10
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>10
,p_column_heading=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41749821242099278)
,p_query_column_id=>11
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41750243366099278)
,p_query_column_id=>12
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>12
,p_column_heading=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(41750657487099278)
,p_query_column_id=>13
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>13
,p_column_heading=>'STATUSCD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(150799356580831521)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(150941465433254296)
,p_plug_name=>'Opening Stock Entry'
,p_region_name=>'nmvhigtn'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype ID,',
'                   a.docnumbr',
'                || ''/''',
'                || a.doctdate',
'                || ''/''',
'                || a.docttype',
'                || ''/''',
'                || a.subttype AS docdetail,a.warecode || '' - '' || c.waredesc warecode, a.docnumbr,a.docttype,a.subttype,',
'                a. colorcde, a.itemcode, upper(b.itemdes1)  itemdes1,',
'                ''<embed ''',
'       || ''src=http://202.40.177.93:8085/gitanjali/f?p=&APP_ID.:0:''',
'       || ''&SESSION.:GET_BARCODE:&DEBUG.::''',
'       || ''T_CODE_TEXT,T_CODE_LABEL,T_CODE_HEIGHT,T_CODE_WIDTH:''',
'       || VINNUMBR',
'       || '',Yes,30,1''',
'       || '' ''',
'       || ''width=200 height=45 ''',
'       || ''type=image/svg+xml />'' barcode,',
'               VINNUMBR identification_no,a.engineno, NVL (a.orgnqnty, a.apprqnty) orgnqnty,a.vinnumbr,a.DOCTDATE,a.TIMSTAMP,',
'               NVL (a.salerate*a.excgrate, 0) itemrate,NVL (a.costrate*a.excgrate, 0) costrate, WGHTQNTY,b.DESIGNCD,(select CODEDESC from SYCDEDTL where ACTLCODE=b.ITEMMODL)  NAME, (select CODEDESC from SYCDEDTL where ACTLCODE=b.ITEMMODL)  NAME1,deco'
||'de(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category, decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category1,',
'              /* sum(a.APPRQNTY) Request_qty,sum((select sum(b.TRNSQNTY) from nmstkrec b where b.compcode=a.compcode and b.UPDOCNUM=a.DOCNUMBR and b.ITEMCODE=a.ITEMCODE and b.DOCTTYPE=''IS'' and b.SUBTTYPE=2)) Issue_qty,',
'               sum((select  sum(b.APPRQNTY)  from nmstkrec  b where   b.compcode=a.compcode   and b.UPDOCNUM IN (select distinct b.UPDOCNUM from nmstkrec b where b.compcode=a.compcode and b.ITEMCODE=a.ITEMCODE and b.UPDOCNUM=a.DOCNUMBR  and b.DOCTTYP'
||'E=''IS'' and b.SUBTTYPE=2) and b.DOCTTYPE=''IS'' and b.SUBTTYPE=2 )) Receive_qty,*/',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||49',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||49',
'                                    ||'':P''',
'                                    ||49',
'                                    ||''_PROGNAME,P''',
'                                    ||49',
'                                    ||''_DOCNUMBR,P''',
'                                    ||49',
'                                    ||''_DOCTTYPE,P''',
'                                    ||49',
'                                    ||''_SUBTTYPE:''',
'                                    ||''nmvhigtn,''',
'                                    ||a.docnumbr',
'                                    ||'',''',
'                                    || null',
'                                    ||'',''',
'                                    || null',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'           FROM nmenudtl a, vwnmitem b, nmwhsmas c',
'          WHERE a.compcode=:COMPCODE',
'            and a.compcode = b.compcode',
'            AND a.compcode = c.compcode(+)',
'            AND a.itemcode1 = b.itemcode',
'            AND a.vinnumbr=:P362_DELDOCNUMBER',
'           --      AND NVL (a.trnsqnty, 0) = 0',
'            AND a.warecode = c.warecode(+)',
'            AND a.docttype <>''BK''',
'       ORDER BY trunc(a.timstamp) desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P362_DELDOCNUMBER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(150941555388254296)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:347:&SESSION.:MOD:&DEBUG.::P347_DOCNUMBR1,P347_DOCTDATE1,P347_DOCTTYPE,P347_SUBTTYPE,P347_ITEMCODE1,P347_ROWID:#DOCNUMBR#,#DOCTDATE#,#DOCTTYPE#,#SUBTTYPE#,#VINNUMBR#,#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_detail_link_condition_type=>'FUNCTION_BODY'
,p_detail_link_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select MODSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y''  then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_detail_link_cond2=>'PLSQL'
,p_icon_view_columns_per_row=>1
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'RILADM'
,p_internal_uid=>115603465350489894
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41752830190099290)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Doc. Number'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41753241010099292)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Doc. Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41753626693099295)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>65
,p_column_identifier=>'T'
,p_column_label=>'Print column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_security_scheme=>wwv_flow_api.id(65362112791170916)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41751639303099281)
,p_db_column_name=>'ID'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41752008239099285)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>67
,p_column_identifier=>'V'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41752412569099287)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41754051728099298)
,p_db_column_name=>'WARECODE'
,p_display_order=>80
,p_column_identifier=>'AG'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41754434392099301)
,p_db_column_name=>'COLORCDE'
,p_display_order=>90
,p_column_identifier=>'AH'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41754824454099304)
,p_db_column_name=>'ITEMDES1'
,p_display_order=>100
,p_column_identifier=>'AI'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41755231456099307)
,p_db_column_name=>'IDENTIFICATION_NO'
,p_display_order=>110
,p_column_identifier=>'AJ'
,p_column_label=>'Identification no'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41755629587099310)
,p_db_column_name=>'ENGINENO'
,p_display_order=>120
,p_column_identifier=>'AK'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41756071775099312)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>130
,p_column_identifier=>'AL'
,p_column_label=>'Stock Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41756392908099316)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>140
,p_column_identifier=>'AM'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41756860042099319)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>150
,p_column_identifier=>'AN'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41757281495099321)
,p_db_column_name=>'COSTRATE'
,p_display_order=>160
,p_column_identifier=>'AO'
,p_column_label=>'Cost Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41757680770099324)
,p_db_column_name=>'WGHTQNTY'
,p_display_order=>170
,p_column_identifier=>'AP'
,p_column_label=>'Weight Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41758011233099329)
,p_db_column_name=>'DESIGNCD'
,p_display_order=>180
,p_column_identifier=>'AQ'
,p_column_label=>'Style'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41758475044099332)
,p_db_column_name=>'NAME'
,p_display_order=>190
,p_column_identifier=>'AR'
,p_column_label=>'Product Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41758807960099335)
,p_db_column_name=>'NAME1'
,p_display_order=>200
,p_column_identifier=>'AS'
,p_column_label=>'Name1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41759284952099338)
,p_db_column_name=>'CATEGORY'
,p_display_order=>210
,p_column_identifier=>'AT'
,p_column_label=>'Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41759590990099341)
,p_db_column_name=>'CATEGORY1'
,p_display_order=>220
,p_column_identifier=>'AU'
,p_column_label=>'Category1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41760012267099344)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>230
,p_column_identifier=>'AV'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41760416650099346)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>240
,p_column_identifier=>'AW'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41760845530099349)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>250
,p_column_identifier=>'AX'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41761280919099351)
,p_db_column_name=>'BARCODE'
,p_display_order=>260
,p_column_identifier=>'AY'
,p_column_label=>'Barcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(150945849023255861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'64235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:IDENTIFICATION_NO:CATEGORY:NAME:ORGNQNTY:COSTRATE:ITEMRATE:WGHTQNTY:WARECODE:BARCODE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170561456128844943)
,p_plug_name=>'modify region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_1'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170563298592854732)
,p_plug_name=>'button_region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_1'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170588343505620973)
,p_plug_name=>'item region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41478834115533545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(170563298592854732)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:printPage();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41762342285099358)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(170563298592854732)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:345:&SESSION.:A:&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41762739269099358)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(150941465433254296)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P362_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P362_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41744368140099272)
,p_name=>'P362_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(102358381409208786)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41744743731099273)
,p_name=>'P362_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(102358381409208786)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41745187321099273)
,p_name=>'P362_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(102358381409208786)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41763569193099358)
,p_name=>'P362_POSTSTATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(150941465433254296)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41763970040099358)
,p_name=>'P362_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(150941465433254296)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41764358824099358)
,p_name=>'P362_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(150941465433254296)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41764776890099358)
,p_name=>'P362_REQUEST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(150941465433254296)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41765166710099358)
,p_name=>'P362_DELDOCNUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(150941465433254296)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41767658844099359)
,p_name=>'P362_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(170588343505620973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41768061807099359)
,p_name=>'P362_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(170588343505620973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41768484952099359)
,p_name=>'P362_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(170588343505620973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41768940359099366)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(41769292934099369)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41771217704099375)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41771729610099375)
,p_event_id=>wwv_flow_api.id(41771217704099375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P362_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmprocur input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P362_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41770408029099374)
,p_process_sequence=>30
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
'If :P362_PROGNM  is null and :P362_NO is null then',
'   :P362_PROGNM := :FX_PROG_NAME;',
'   :P362_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P362_PROGNM,',
'                                      p_parentnm =>:P362_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P362_OPRSTAMP := :app_user;',
'  --:P362_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P362_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P362_PROGNM;',
'   :FX_PAGE_NO := :P362_NO;',
'Elsif :FX_PROG_NAME <> :P362_PROGNM And :FX_PAGE_NO <> :P362_NO Then',
'   :FX_PROG_NAME := :P362_PROGNM;',
'   :FX_PAGE_NO := :P362_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41769606323099369)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign value in docnumber from checkbox'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/14 13:19 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_error      VARCHAR2 (4000);',
'   sale         VARCHAR2 (4000);',
'   item         VARCHAR2 (4000);',
'   v_url        VARCHAR2 (500);',
'   v_devdoc     VARCHAR2 (500);',
'   v_gatdoc     VARCHAR2 (500);',
'   l_order_id   VARCHAR2 (50);',
'   l_seq        NUMBER;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f01.COUNT',
'   LOOP',
'      sale := apex_application.g_f01 (i);',
'',
'      IF sale IS NOT NULL',
'      THEN',
'         l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Can not be pass docnumber''',
'            || sale',
'            || ''>''',
'            || apex_application.g_f17.COUNT;',
'      END IF;',
'',
'      apex_collection.add_member (p_collection_name      => ''SALES'',',
'                                  p_c001                 => sale);',
'',
'   END LOOP;',
'',
'   BEGIN',
'      l_order_id := demo_order_items_seq.NEXTVAL;',
'      l_seq := demo_order_items_seq.CURRVAL;',
'',
'      FOR x IN (SELECT c001',
'                  FROM apex_collections',
'                 WHERE collection_name = ''SALES'')',
'      LOOP',
'         INSERT INTO apex_order_items1',
'                     (order_item_id, order_id, docnumbr',
'                     )',
'              VALUES (l_order_id, NULL, x.c001',
'                     )',
'           RETURNING order_item_id',
'                INTO l_order_id;',
'',
'         l_order_id := demo_order_items_seq.NEXTVAL;',
'      END LOOP;',
'',
'      COMMIT;',
'',
'      BEGIN',
'         FOR i IN l_seq .. l_order_id',
'         LOOP',
'            UPDATE apex_order_items1',
'               SET order_id = l_order_id - 1',
'             WHERE order_item_id = l_seq;',
':P362_DOCNUMBER:=l_order_id - 1;',
'            l_seq := l_seq + 1;',
'',
'         END LOOP;',
'',
'      END;',
'',
'      apex_collection.truncate_collection (p_collection_name => ''SALES'');',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         NULL;',
'      WHEN TOO_MANY_ROWS',
'      THEN',
'         NULL;',
'      WHEN OTHERS',
'      THEN',
'         NULL;',
'   END;',
'',
'   -- RETURN LTRIM (l_error, ''</br>'');',
'   :docnumbr := sale;',
'  -- :p362_docnumber := sale;',
'',
'   BEGIN',
'      IF :p65_progname = ''nminvmny''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p362_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmdlchln''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_devdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''DC''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p362_delverdocnum := v_devdoc;',
'         v_url :=',
'               ''http://''',
'            || :p362_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_devdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmgatpas''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_gatdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''GP''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p362_gatpassdocnum := v_gatdoc;',
'         v_url :=',
'               ''http://''',
'            || :p362_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_gatdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmslmony''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p362_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         -- v_url := v_url || ''P13='' || sale;',
'         v_url := v_url || ''P0='' || 100 || ''&P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41770889841099375)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P362_DELDOCNUMBER);',
'begin',
'   for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  where docnumbr   = l_deldoc(i) ',
'      and COMPCODE=:COMPCODE ',
'      and DOCTTYPE=:P362_TRANTYPE ',
'      and SUBTTYPE=:P362_SUBTTYPE',
'      and POSTFLAG=:P362_POSTSTATUS;',
'   end loop;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Delete Successfully....'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(41770087015099374)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate SALES Collection For REPORT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''SALES'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
