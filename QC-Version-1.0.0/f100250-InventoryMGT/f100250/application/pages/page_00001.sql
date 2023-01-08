prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Orbits System'
,p_alias=>'HOME'
,p_step_title=>'ORBITS ERP SOLUTIONS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript" type="text/javascript">',
'function change_page(p_progname, p_pageid, p_parentnm, p_progtype) {',
'var v_url = ''f?p=&APP_ID.:'' + p_progname + '':&SESSION.::NO:''+p_pageid',
'                 +'':P''+p_pageid+''_NO,P''+p_pageid+''_prognm,P''+p_pageid+''_parent,fx_tree_node:''',
'                 +p_pageid+'',''+p_progname+'',''+p_parentnm+'',''+p_progname;',
'if (p_progtype == ''R'')',
' {window.open(v_url);}',
'else',
' {window.open(v_url, "_self");}',
'}',
'</script>',
'<style type="text/css">',
'body{ /*remove horizontal margins*/',
'margin-left: 20px;',
'margin-right: 20px;',
'}',
'</style>',
'',
'<script>',
'function hideAfterSomeTime(hideTime)',
'{',
'	// 10000 = 10 seconds. Change it',
'	window.setTimeout("document.getElementById(''short-time-msg'').style.display=''none''", (hideTime)?hideTime:10000);',
'}',
'</script>',
'<style>',
'#short-time-msg {    color: #18a2f5;',
'    background: white;',
'    font-weight: bolder;',
'    margin-left: -180px;',
'    font-style: italic;}',
'</style>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P1_CACMPNAM'').value=&COMPCODE1.;',
'$(document).ready(function(){',
'  $(''#P1_CACMPNAM'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'<!--<script type="text/javascript">',
'   setInterval("jQuery(''#REFRESH'').trigger(''apexrefresh'');", 7000);',
'</script>-->',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//setTimeout(function() { document.getElementById("notification").submit(); }, 100);',
'$(document).ready(function() {',
'setInterval(function() {',
'$.event.trigger("notification1");',
'}, 10000);',
'});',
'function callMe(){',
'    $.event.trigger(''theEvent''); /*Note that the event name is case sensitive*/',
'}',
'',
';(function($){$.fn.htmldbDscroll=function(opt){',
' opt=$.extend({',
'  width:100,',
'  height:120,',
'  freezeColumns:2,',
'  freezeRows:1,',
'  addCellWidth:400,',
'  addRowHeight:7,',
'  addTblWidth:60,',
'  scrollWidth:1',
' },opt);',
'',
' if(opt.freezeColumns<1&&opt.freezeRows<1){',
'  return this;',
' }',
'',
' return this.each(function(i){',
'',
'  var lId=this.id.substr(6)',
'  /* styles */',
'  $("#lh"+lId).css({"right":"0","bottom":"0"}).parent().css({"right":"0","bottom":"0"});',
'  $("#rh"+lId).css({"overflow-x":"hidden","width":opt.width-opt.scrollWidth,"left":"0","bottom":"0"}).parent().css({"bottom":"0"});',
'  $("#lb"+lId).css({"overflow-y":"hidden","height":opt.height-opt.scrollWidth,"right":"0","top":"0"}).parent().css({"right":"0","top":"0","vertical-align":"top"});',
'  $("#rb"+lId).css({"overflow":"scroll","width":opt.width,"height":opt.height});',
'',
'  /* report cell width */',
'  if(opt.freezeRows>0){',
'   $("#rb"+lId).find("tr:first,tr:eq("+opt.freezeRows+")").children().each(function(){    ',
'    var w=$(this).width()+opt.addCellWidth;',
'    $(this).width(w);',
'   });',
'  }else{',
'   $("#rb"+lId).find("tr:first").children().each(function(){',
'    var w=$(this).width()+opt.addCellWidth;',
'    $(this).width(w);',
'   });',
'  }',
'',
'  /* row process */',
'  if(opt.freezeColumns>0){',
'   $("#rb"+lId).find("tr").each(function(j){',
'    var t1=$(this);',
'    /* set row height and copy row */',
'    var h=t1.height()+opt.addRowHeight;',
'    t1.height(h);',
'    var t2=t1.clone().empty().append(t1.children(":lt("+opt.freezeColumns+")"));',
'    if(j>(opt.freezeRows-1)){',
'     $("#lb"+lId).children().append(t2);',
'    }else{',
'     $("#rh"+lId).children().append(t1);',
'     $("#lh"+lId).children().append(t2);',
'    }',
'   });',
'  }else{',
'   for(var j=0;j<=(opt.freezeRows-1);j++){',
'    $("#rh"+lId).children().append($("#rb"+lId).find("tr:eq("+j+")"));',
'   }',
'  }',
'',
'  /* table width */',
'  if(opt.freezeColumns>0){',
'   if($("#lh"+lId).children().width()>$("#lb"+lId).children().width()){',
'    var w=$("#lh"+lId).children().width();',
'    $("#lb"+lId).children().width(w);',
'    $("#lh"+lId).children().width(w);',
'   }else{',
'    var w=$("#lb"+lId).children().width();',
'    $("#lh"+lId).children().width(w);',
'    $("#lb"+lId).children().width(w);',
'   }',
'  }',
'  if($("#rh"+lId).children().width()>$("#rb"+lId).children().width()){',
'   var h=$("#rh"+lId).children().width()+opt.addTblWidth;',
'   $("#rb"+lId).children().width(h);',
'   $("#rh"+lId).children().width(h);',
'  }else{',
'   var h=$("#lb"+lId).children().width()+opt.addTblWidth;',
'   $("#rh"+lId).children().width(h);',
'   $("#rb"+lId).children().width(h);',
'  }',
'',
'  $("#rh"+lId).children().css({"table-layout":"fixed"});',
'  $("#rb"+lId).children().css({"table-layout":"fixed"});',
'',
'  /* scroll */',
'  $("#rb"+lId).scroll(function(){',
'   $("#rh"+lId).scrollLeft(this.scrollLeft);',
'   $("#lb"+lId).scrollTop(this.scrollTop);',
'  });',
' });',
'',
'}})(jQuery);',
'',
'',
'',
'function callMe(){',
'    $.event.trigger(''theEvent''); /*Note that the event name is case sensitive*/',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content {',
'    padding-bottom: 0vh !important;',
'}',
'.uRegion.scrollable-region>.uRegionContent {',
'box-sizing: border-box;',
'height: 666px;',
'overflow: auto;',
'}',
'.t-Body-topButton{',
'    display: none !important;',
'}',
'#warningmsg {',
'    width: auto;',
'    position: static;',
'    margin: 0 0 8px 0;',
'    border: 1px solid #FFDE6D;',
'    border-radius: 3px;',
'    background: #FFFAE8;',
'    box-shadow: none;',
'}',
'#warningmsg div.uMessageText {',
'width: auto;',
'padding: 0;',
'}',
'#warningmsg .uWarningIcon {',
'margin-right: 8px;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'',
'.Calendar td {',
'width: 75px;',
'height: 26px !important;',
'width: 14%;',
'padding: 0;',
'border-left: 1px solid #bfcee0;',
'border-bottom: 1px solid #bfcee0;',
'font: bold 2px/2px Arial, sans-serif;',
'background-color: #F4F4F5;',
'}',
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#R13942024385162535',
'{',
'margin-right:0px',
'!important;',
'}',
'',
'#R13831500989504719',
'{',
'margin-right:0px',
'!important;',
'}',
'#t-Region-header{',
'        height: 3px !important;',
'}',
'.t-Region-headerItems--title {',
'    text-align: left;',
'    padding: 0.0rem !important;',
'}',
'.CalendarHolder {',
'width: 150%;',
'border: 1px solid #8AB4FD !important;',
'-moz-border-radius: 1px;',
'-webkit-border-radius: 0px !important;',
'}',
'button.button-alt3 span {',
'padding: 3px 4px 0 15px;',
'height: 20px;',
'color: blue !important;',
'}',
'#rc-content-main{',
'margin-right:-49px',
'!important;',
'}',
'#header {',
'    height: 63px',
'        !important;',
'}',
'',
'#R13755426015174373{ ',
'    height: 135px;',
'}',
'',
'.t-Header-logo-link img {',
'    max-height: 7rem;',
'    display: block;',
'}',
'#report_44145546022909038_catch{',
'    height:150px !important;',
'}',
'.t-BadgeList-wrap{',
'    font-size: 0rem;',
'    line-height: 0rem;',
'}',
'.t-Region {',
'    margin-bottom: -31px;',
'}',
'.t-ClassicCalendar-title {',
'    margin: 0;',
'    padding: 12px 12px;',
'    font-size: 1.4rem;',
'    line-height: 0.32rem;',
'    font-weight: 100;',
'    text-align: center;',
'}',
'.t-ClassicCalendar-dayColumn {',
'    background-color: #fafafa;',
'    vertical-align: top;',
'    border-color: #f2f2f2;',
'    color: #D41010;',
'    padding: 0px 0px 0px 0px;',
'}',
'.t-ClassicCalendar-day {',
'    height: 26px;',
'    vertical-align: top;',
'    border-width: 1px;',
'    border-style: solid;',
'}',
'#B13842721768937715{    ',
'padding: 3px;',
'margin: 5px;',
'}',
'#B13842928801937715{    ',
'padding: 3px;',
'margin: 5px;',
'}',
'#B13843129569937715{    ',
'padding: 3px;',
'margin: 5px;',
'}',
'.t-Region-headerItems--title {',
'    text-align: left;',
'    padding: 1.0rem;',
'}',
'',
'',
'/* first level */',
'div#accordion-nav {',
'  width: 200px;',
'  background-color: #DDDDDD;',
'  border: 1px solid #9C9C9C;',
'}',
'div#accordion-nav div span {',
'  display: block;',
'  padding: 4px 5px 4px 10px;',
'  font-weight: bold;',
'  color: #222222;',
'}',
'div#accordion-nav div span:hover {',
'  background-color: #CCCCCC;',
'  cursor: pointer;',
'}',
' ',
'/* second level */',
'div#accordion-nav div ul {',
'  list-style-type: none;',
'  margin: 0;',
'}',
'div#accordion-nav div ul li {',
'  background-color: #F2F2F2;',
'  padding: 4px 5px 4px 18px;',
'}',
'div#accordion-nav div ul li a {',
'  text-decoration: none;',
'  color: #222222;',
'}',
'div#accordion-nav div ul li a.is-lvl2-current {',
'  font-weight: bold;',
'}',
'div#accordion-nav div ul li a:hover {',
'  color: #3E9FFF;',
'}',
'div#accordion-nav div ul li a img {',
'  vertical-align: middle;',
'  padding-right: 5px;',
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
'div.demoProducts table td{border-bottom:1px solid #CCC;font:normal 12px/16px Arial,sans-serif;padding:1px 10px;text-align:right;}',
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
,p_step_template=>wwv_flow_api.id(37715170302127845)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830161830'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42778078271590975)
,p_plug_name=>'image'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1025
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_progname   VARCHAR2 (30) := :P999_PROGNAME;',
'   v_image varchar2(500);',
'   ',
'BEGIN',
'',
'select decode(nvl(dbms_lob.getlength(IMAGE),0),0,null,''<img src="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P1_IMAGE'',CACMPCDE)||''" />'') image into v_image',
'from syparmas',
'where CACMPCDE=:COMPCODE;',
' SYS.HTP.p (''<div style=" margin-left: 220px; margin-top: 200px; line-height: 40px;">'');',
' SYS.HTP.p (''<div>'');',
' SYS.HTP.P(''<img src=":P1_IMAGE" style="border-style:top;width:20%;height:70px;"/><span><font>''||:P1_IMAGE||''</font></span>'');',
' SYS.HTP.p (''</div>'');',
' SYS.HTP.p (''</div>'');',
'    ',
'',
'EXCEPTION',
' WHEN NO_DATA_FOUND THEN',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42790840187282372)
,p_plug_name=>'mes'
,p_region_name=>'notification'
,p_region_template_options=>'#DEFAULT#:i-h100:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1065
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'    <head>',
'    </head>',
'    <body onload = "show()">',
'        ',
'        <div style="    margin-left: 250px; margin-top: 0px; line-height: 40px;">',
'            <div id = "short-time-msg">',
'                 <script type = "text/javascript">',
'            function show() {',
'                var nowhrs = new Date().getHours();',
'                var nowmins = new Date().getMinutes();',
'                var hrsmins = nowhrs + (nowmins); // decimals of an hour',
'               //alert(hrsmins);',
'                var schedule =[[''"The world is filled with willing people...Some willing to work, the rest willing to let them."   - Robert Frost'',[9],[59]],',
'                                [''"I never did anything by accident, nor did any of my inventions come by accident;  they came by work."  - Thomas A. Edison'',[10],[59]],',
'                                [''"Success is the ability to go from failure to failure without losing your enthusiasm."  - Winston Churchill'',[11],[59]],',
'                                [''"If the power to do hard work is not a skill, its the best possible substitute for it." --James A. Garfield'',[12],[59]],',
'                                [''"Begin where you are; work where you are; the hour which you are now wasting, dreaming of some far off success, may be crowded with grand possibilities." - Orison Swett Marden'',[13],[59]],',
'                                [''"He that would have fruit must climb the tree." - Thomas Fuller'',[14],[59]],',
'                                [''"Making a success of the job at hand is the best step toward the kind you want. -- Bernard M. Baruch'',[15],[59]],',
'                                [''"Every job is a self-portrait of the person who did it. Autograph your work with excellence."'',[16],[59]],',
'                                [''"Anyone who has never made a mistake has never tried anything new." - Albert Einstein'',[17],[59]],',
'                                [''"He that would have fruit must climb the tree." - Thomas Fuller'',[18],[59]],',
'                                [''"Knowing is not enough; we must apply. Willing is not enough; we must do." - Johann Wolfgang Von Goethe'',[19],[59]]]',
'                var themessage = "";',
'               // alert(hrsmins);',
'               // alert(schedule[i][1]);',
'                for (var i =0; i <schedule.length; i++) {if ((nowhrs == schedule[i][1]) && (nowmins < schedule[i][2])) {',
'                    // alert(schedule[i][1]);',
'                    themessage += schedule[i][0] + "<br>";',
'                    document.getElementById("short-time-msg").innerHTML = themessage;',
'                }}',
'              //   setTimeout(show, 10000);',
'            }',
'           show(); // Start task checking ',
'           // hideAfterSomeTime();',
'    </script>',
'            </div> ',
'        </div>',
'       ',
'    </body>',
'</html> ',
'',
'',
'',
''))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50389051079691270)
,p_plug_name=>' Switch Company'
,p_region_name=>'Switch'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--large:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1085
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50910293140854867)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="switch"; style="text-align:right; height:20px; position:absolute;position: absolute; top: 5px;left: 30%;margin-left: -100px; font-size:12px;color:green; font-weight:bold;">',
'    <a><font><u>Switch Company</u></font></a></div>',
'',
'<div style="text-align:right; height:20px; position:absolute;position: absolute; top: 5px;left: 98%;margin-left: -160px; font-size:12px;color:green; font-weight:bold;">User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br><a  href="apex_authentication.logout?p_app'
||'_id=105&p_session_id=12726700067347" ><font >Logout</font></a><br><a href="f?p=&APP_ID.:82:&SESSION."><font >Change Password</font></a></div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:''#336633''; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'<div>',
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
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'</div>',
'',
'</div>',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="switch"; style="cursor: pointer; text-align:left;top: 2px;font-weight:bold; ">',
'    <a><font><u>Switch Company</u></font></a></div>',
'',
'',
'<div style="text-align:right; height:25px; top: 2px;left: 50%;font-size:11.5px;color:white; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br><a  href="apex_authentication.logout?p_app_id=105&p_session_id=12726700067347" ><font >Logout</'
||'font></a><br><a href="f?p=&APP_ID.:82:&SESSION."><font >Change Password</font></a>',
'<br><div id="switch"; style="cursor: pointer;">',
'    <a><font><u>Switch Company</u></font></a></div></font></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:''#336633''; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'<div>',
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
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'</div>',
'',
'</div>',
''))
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50986368115185213)
,p_name=>' Alert'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1005
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_region_attributes=>'style="width:100%;height:320px;float:right;overflow:scroll;"'
,p_report_attributes=>'style="line-height: 0.5rem;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REMARKSS,PRIORITY,CHECKEDD from sypndjob',
'where AUTHPERS=:APP_USER',
'union all',
'select null,null,null from dual',
'CONNECT BY LEVEL < 6'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
 p_id=>wwv_flow_api.id(50986671994185214)
,p_query_column_id=>1
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>1
,p_column_heading=>'Alert Description'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:560px;white-space:wrap'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>50
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50986792071185214)
,p_query_column_id=>2
,p_column_alias=>'PRIORITY'
,p_column_display_sequence=>2
,p_column_heading=>'Priority'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50986897620185214)
,p_query_column_id=>3
,p_column_alias=>'CHECKEDD'
,p_column_display_sequence=>3
,p_column_heading=>'Complete'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_api.id(7533453041907249696)
,p_lov_show_nulls=>'NO'
,p_report_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51009370538236265)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:37%;margin-left:0%;float: left; position:absolute;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="width:37%;margin-left:0%;float: left; position:absolute;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50907886782854864)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51009370538236265)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>360
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51649589497768916)
,p_plug_name=>' TreeRegion'
,p_parent_plug_id=>wwv_flow_api.id(51009370538236265)
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>301
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65874982816126643)
,p_plug_name=>' tree'
,p_parent_plug_id=>wwv_flow_api.id(51649589497768916)
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>380
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           ''nmtypsec'' AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || ''nmtypsec''',
'                   || '''''',''',
'                   || 999',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'      -- AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_02=>'S'
,p_attribute_03=>'P1_PROGID'
,p_attribute_04=>'N'
,p_attribute_06=>'tree28720027573446149'
,p_attribute_07=>'APEX_TREE'
,p_attribute_08=>'fa-angle-down'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     CASE',
'              WHEN CONNECT_BY_ISLEAF = 1',
'                 THEN 0',
'              WHEN LEVEL = 1',
'                 THEN 1',
'              ELSE -1',
'           END AS status,',
'           LEVEL, b.progdesc AS title,',
'           CASE',
'              WHEN b.menuleaf = ''M''',
'                 THEN ''fa-angle-down''',
'              ELSE ''#WORKSPACE_IMAGES#bug.gif''',
'           END AS icon,',
'           a.progname AS VALUE, NULL AS tooltip, a.lnk AS LINK',
'      FROM (SELECT compcode, usercode, parentnm, progname, menuleaf,(SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        and pageid is not null',
'                        and compcode=:compcode) pagid,',
'                      ''javascript:change_page(''''''',
'                   || s.progname',
'                   || '''''',''',
'                   || (SELECT pageid',
'                         FROM symenmas',
'                        WHERE progname = s.progname',
'                        )',
'                   || '',''''''',
'                   || s.parentnm',
'                   || '''''')'' lnk',
'              FROM syrights s',
'             WHERE UPPER (usercode) = UPPER (:app_user)',
'and compcode=:compcode) a,',
'           symentre b',
'     WHERE a.parentnm = b.parentnm',
'       AND a.progname = b.progname',
'       AND UPPER (a.usercode) = UPPER (:app_user)',
'START WITH a.parentnm = ''ROOT''',
'CONNECT BY PRIOR a.progname = a.parentnm',
'  ORDER SIBLINGS BY b.menuslno,b.LEVLCODE'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51650374437802471)
,p_plug_name=>' Recent Used'
,p_parent_plug_id=>wwv_flow_api.id(51009370538236265)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>310
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(50910470151854867)
,p_name=>'Recent Used'
,p_parent_plug_id=>wwv_flow_api.id(51650374437802471)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>330
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select PROGNAME, PROGDESC, TIMSTAMP,   recent_lnk from (',
'select a.PROGNAME, b.PROGDESC, a.TIMSTAMP,',
'''f?p=''||:app_id||'':''||a.progname||'':''||:app_Session||''::NO:''||pageID',
'               ||'':P''||pageID||''_NO,''||''P''||pageID||''_prognm,''||''P''||pageID||''_parent''',
'               ||'':''||pageID||'',''||a.progname||'',''||a.parentnm recent_lnk ',
'from SYFAVORS a, symenmas b',
'where a.usercode  = :app_user',
'and A.PROGNAME = B.PROGNAME order by a.TIMSTAMP desc)',
'where rownum <= 11'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="10" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="10" alt="" '
,p_plug_query_strip_html=>'Y'
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
 p_id=>wwv_flow_api.id(50910689789854867)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:180px;white-space:wrap'
,p_column_link=>'#RECENT_LNK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#jtfunexe.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50910778721854867)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Acitivity'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:180px;white-space:wrap'
,p_column_link=>'#RECENT_LNK#'
,p_column_linktext=>'#PROGDESC#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50910890281854867)
,p_query_column_id=>3
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>3
,p_column_heading=>'Access Time'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_css_style=>'display:block;width:245px;white-space:wrap'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50910983454854867)
,p_query_column_id=>4
,p_column_alias=>'RECENT_LNK'
,p_column_display_sequence=>4
,p_column_heading=>'RECENT_LNK'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50911081936854867)
,p_plug_name=>'MSG'
,p_parent_plug_id=>wwv_flow_api.id(50910470151854867)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'<br><br><div style="text-align:justify; width:370px; height:150px; font-size:15px;</div>'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>240
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51011974479246865)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>260
,p_plug_new_grid_row=>false
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'style="width:37%;margin-left:0%;float: right; position:absolute;"'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51111276328642938)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51011974479246865)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>300
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51567573990820385)
,p_plug_name=>' Daily Activity'
,p_parent_plug_id=>wwv_flow_api.id(51111276328642938)
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:114%;margin-top:0%; position:relative;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>350
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51096891510843029)
,p_name=>' '
,p_region_name=>'VH_SCROLL_EMP'
,p_parent_plug_id=>wwv_flow_api.id(51567573990820385)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Cards--3cols:t-Cards--featured'
,p_region_attributes=>'style="width:70%;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE" ,',
'    "JOBSNUMB" ,',
'    "JOBSDATE" ,',
'    "PROGNAME" ,',
'    "REMARKSS" ,',
'    "OPRSTAMP" ,',
'    "TIMSTAMP"  ',
' from  SYDLYACT',
'WHERE jobsdate = NVL (TO_DATE (RTRIM (:p1_xdate, 0), ''rrrrmmdd''), sysdate)             ',
'union all',
'select ',
'null "ROWID",',
'null "COMPCODE" ,',
'null     "JOBSNUMB" ,',
' null    "JOBSDATE" ,',
'null     "PROGNAME" ,',
'  null   "REMARKSS" ,',
'null     "OPRSTAMP" ,',
' null    "TIMSTAMP"  ',
' from  dual',
'connect by level <6',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_XDATE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47601390621858234)
,p_query_num_rows=>7
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
,p_query_asc_image_attr=>'width="16" height="12" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="12" alt="" '
,p_plug_query_strip_html=>'N'
,p_comment=>'style="width:70%;margin-top:0%; position:relative;"'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51144385421026147)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>8
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51097188103843041)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'COMPCODE'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51097275798843046)
,p_query_column_id=>3
,p_column_alias=>'JOBSNUMB'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:2px;white-space:wrap'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51097378949843046)
,p_query_column_id=>4
,p_column_alias=>'JOBSDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:8px;white-space:wrap'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51097489479843046)
,p_query_column_id=>5
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>4
,p_column_heading=>'PROGNAME'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51098177745843046)
,p_query_column_id=>6
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>5
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:160px;white-space:wrap'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'33'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51098797583843046)
,p_query_column_id=>7
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>7
,p_column_heading=>'OPRSTAMP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51098869160843046)
,p_query_column_id=>8
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>6
,p_column_heading=>'TIMSTAMP'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51641783311046667)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51111276328642938)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51112585163683323)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51011974479246865)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>310
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
 p_id=>wwv_flow_api.id(51638879145969765)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51112585163683323)
,p_region_template_options=>'js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:105%; height:20%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>180
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
 p_id=>wwv_flow_api.id(53550378400111410)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(51011974479246865)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_privname varchar2(500);',
'BEGIN',
'sys.htp.p(''<div class="demoProducts" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>'');',
'for c1 in (select distinct PRIVNAME,USERCODE from syprivlg',
'where USERCODE=:APP_USER',
'and COMPCODE=:COMPCODE',
'and PRIVCODE=''001''',
'and GRANTCDE=''Y'') loop',
'   sys.htp.p(''<a href="''||apex_util.prepare_url(''f?p=141:1:&SESSION.::&DEBUG.:home''||',
'        c1.PRIVNAME)||''" target="_blank" class="uButton uAltButton iconButton plus"><span><font size="3" color="blue"><b>''||',
'        c1.PRIVNAME||''</B></font ></span></a>'');',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'sys.htp.p(''</div>'');  ',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_privname varchar2(500);',
'BEGIN',
'sys.htp.p(''<div class="demoProducts" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>'');',
'for c1 in (select distinct PRIVNAME,USERCODE from syprivlg',
'where USERCODE=:APP_USER',
'and COMPCODE=:COMPCODE',
'and PRIVCODE=''001''',
'and GRANTCDE=''Y'') loop',
'   sys.htp.p(''<a href="''||apex_util.prepare_url(''f?p=118:1:20321070108599::::::ADD:::P12_PRODUCT_ID:''||',
'        c1.PRIVNAME)||''" class="uButton uAltButton iconButton plus"><span><font color=red;font-weight= bold;>''||',
'        c1.PRIVNAME||''</font ></span></a>'');',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'sys.htp.p(''</div>'');  ',
'END;'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51639169233976414)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;height: 75%; float: right;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>190
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61243375592629790)
,p_plug_name=>'Notification_Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1055
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67268060758060304)
,p_plug_name=>'Message'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>460
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    x.*',
'from',
'          (',
'          select ',
'            JOBSNUMB,upper(PRIORITY) PRIORITY,REMARKSS,JOBSDATE,JOBSQNTY ,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||'':::3:P3_ID,P3_PROJECT_ID,P3_STATUS_CODE_ID:''||null||'',''||null||'',''||null) as project_link',
'                    from symsgbrd ) x'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'JOBSQNTY'
,p_attribute_03=>'REMARKSS'
,p_attribute_04=>'PROJECT_LINK'
,p_attribute_05=>'JOBSDATE'
,p_attribute_12=>'L'
,p_attribute_13=>'JOBSNUMB'
,p_plug_comment=>'style="height:200px;width:550px;"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67268457201060306)
,p_name=>'JOBSNUMB'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Jobsnumb'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67268915221060306)
,p_name=>'PRIORITY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Priority'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67269380742060309)
,p_name=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Remarkss'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67269963397060309)
,p_name=>'JOBSDATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Jobsdate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67270368362060311)
,p_name=>'JOBSQNTY'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Jobsqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67270875868060311)
,p_name=>'PROJECT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project Link'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77964096256002153)
,p_plug_name=>'Msg'
,p_parent_plug_id=>wwv_flow_api.id(67268060758060304)
,p_region_template_options=>'t-Form--noPadding:t-Form--stretchInputs:t-Form--labelsAbove'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>459
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67273118267080761)
,p_plug_name=>'Alert'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>480
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    x.*',
'from',
'          (',
'          select ',
'            PARAMVAL,upper(PRIORITY) PRIORITY,REMARKSS,CHECKEDD,JOBSQNTY ,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||'':::3:P3_ID,P3_PROJECT_ID,P3_STATUS_CODE_ID:''||null||'',''||null||'',''||null) as project_link',
'                    from sypndjob ) x'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'JOBSQNTY'
,p_attribute_03=>'REMARKSS'
,p_attribute_04=>'PROJECT_LINK'
,p_attribute_05=>'CHECKEDD'
,p_attribute_06=>'PRIORITY'
,p_attribute_12=>'L'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67273499771080761)
,p_name=>'PARAMVAL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Paramval'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67273989055080761)
,p_name=>'PRIORITY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Priority'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67274469034080762)
,p_name=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Remarkss'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67275051542080762)
,p_name=>'CHECKEDD'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Checkedd'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67275504049080762)
,p_name=>'JOBSQNTY'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Jobsqnty'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(67275971774080762)
,p_name=>'PROJECT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project Link'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81169879927220920)
,p_plug_name=>' list'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'t-LinksList--showIcons'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1045
,p_list_id=>wwv_flow_api.id(63461035376024431)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81279342236344431)
,p_plug_name=>'Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1005
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(case when access_level_id = 1 then 1 else 0 end) reader_count , ',
'sum(case when access_level_id = 2 then 1 else 0 end) contributor_count , ',
'sum(case when access_level_id = 3 then 1 else 0 end) admin_count ',
'from orbrgs_rmk.eba_feature_users'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.ACL_STATUS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'143'
,p_attribute_02=>'143'
,p_attribute_03=>'ADMIN_COUNT'
,p_attribute_04=>'CONTRIBUTOR_COUNT'
,p_attribute_05=>'READER_COUNT'
,p_attribute_06=>'NULL'
,p_attribute_07=>'NULL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81596606925072963)
,p_plug_name=>'Activity'
,p_parent_plug_id=>wwv_flow_api.id(81279342236344431)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1049
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOBSDATE, REMARKSS',
'from SYDLYACT'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'JOBSDATE'
,p_attribute_02=>'JOBSDATE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(81300413148589532)
,p_name=>'Message'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1004
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--small:t-BadgeList--fixed'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.value Message,d.value Activity,e.value Appointment',
'from (  select count(*) value',
'       from symsgbrd ) c,',
'       (  select count(*) value',
'       from symsgbrd ) d,',
'(SELECT COUNT (DISTINCT partycde) VALUE',
'  FROM nmsrvndr',
' WHERE (   appndate IS NOT NULL',
'        OR sndapndt IS NOT NULL',
'        OR trdapndt IS NOT NULL',
'       )) e',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
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
 p_id=>wwv_flow_api.id(81301392179589544)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>1
,p_column_heading=>'Message'
,p_column_link=>'f?p=&APP_ID.:143:&SESSION.:M:&DEBUG.:::'
,p_column_linktext=>'#MESSAGE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(81949367195529725)
,p_query_column_id=>2
,p_column_alias=>'ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Activity'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#ACTIVITY#'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(128184147861056360)
,p_query_column_id=>3
,p_column_alias=>'APPOINTMENT'
,p_column_display_sequence=>3
,p_column_heading=>'Appointment'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#APPOINTMENT#'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81383306479396699)
,p_plug_name=>'Favorite Window'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47573641619858176)
,p_plug_display_sequence=>1075
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81650793474700519)
,p_plug_name=>'Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width:102%;height:320px;position:relative;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1005
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(51005899254017475)
,p_name=>' Message'
,p_region_name=>'REFRESH'
,p_parent_plug_id=>wwv_flow_api.id(81650793474700519)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'CalendarHolder'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;height:320px;overflow:scroll;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct remarkss',
'  FROM symsgbrd',
' WHERE jobsdate is not null'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1_XDATE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font Color=red;font-weight= bold;',
'font-size= 13px;>Message Can not be found this day</font>'))
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
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
'SELECT distinct remarkss',
'  FROM symsgbrd',
' WHERE jobsdate = NVL (TO_DATE (RTRIM (:p1_xdate, 0), ''rrrrmmdd''), sysdate)',
' and jobsdate is not null',
'UNION ',
'SELECT     NULL "REMARKSS"',
'      FROM symsgbrd',
'      WHERE jobsdate = NVL (TO_DATE (RTRIM (:p1_xdate, 0), ''rrrrmmdd''), sysdate)',
' and jobsdate is not null',
'   CONNECT BY LEVEL < 6'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(51006198775017477)
,p_query_column_id=>1
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>1
,p_column_heading=>'Message Board'
,p_use_as_row_header=>'N'
,p_column_css_style=>'display:block;width:600px;white-space:wrap'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81665444699169271)
,p_plug_name=>'Activty'
,p_parent_plug_id=>wwv_flow_api.id(81650793474700519)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#:t-LinksList--nowrap'
,p_region_attributes=>'style="height:320px;overflow:scroll;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_api.id(81665041833157480)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47620987743858279)
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81695850587954124)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1080
,p_plug_display_point=>'REGION_POSITION_03'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42808146949662768)
,p_plug_name=>'information'
,p_parent_plug_id=>wwv_flow_api.id(81695850587954124)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42810050079686112)
,p_plug_name=>'inform'
,p_parent_plug_id=>wwv_flow_api.id(81695850587954124)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1120
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'    <span style="',
'    color: blue;',
'    font-size: 12px;',
'    font-weight: bold;',
'    padding: 0px;"><font color=''blue'' weight=''bold''>No of Login&nbsp;&nbsp;&nbsp;&nbsp;</font></span><span><font color=''green''>&P1_NOLOGIN.</font></span><br>',
'    <span style="',
'    color: blue;',
'    font-size: 12px;',
'    font-weight: bold;',
'    padding: 0px;"><font color=''blue'' weight=''bold''>Last Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></span><span><fonT color=''green''>&P1_LASTLOGIN.</fonT></span>',
'</div>'))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
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
 p_id=>wwv_flow_api.id(42846969673776195)
,p_plug_name=>'User Information'
,p_parent_plug_id=>wwv_flow_api.id(81695850587954124)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h100:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div>',
'<div style="float:left;color:blue;font-size:12px;weight:bold;"><img src="f?p=&APP_ID.:332:&APP_SESSION.:&APP_USER." style="width:50px;height:50px;"/></div>',
'<div style="    float: right;',
'    color: blue;',
'    font-size: 9px;',
'    font-weight: bold;',
'    padding: 0px;',
'    margin: 5px;"> &P1_USER_ID.<Br>&P1_USER_NAME.</div>    ',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_calendar(
 p_id=>wwv_flow_api.id(50995793058618200)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(81695850587954124)
,p_plug_source_type=>'NATIVE_CALENDAR'
,p_plug_source=>'select * from "SYMSGBRD"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1002
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'ABOVE'
,p_translate_title=>'N'
,p_cal_id=>wwv_flow_api.id(50995976739618208)
,p_begin_at_start_of_interval=>'Y'
,p_date_item=>'P1_CALENDAR_DATE'
,p_display_as=>'M'
,p_display_item=>'P1_CALENDAR_DISPLAY'
,p_display_type=>'NONE'
,p_easy_sql_table=>'SYMSGBRD'
,p_date_column=>'JOBSDATE'
,p_start_of_week=>19721105
,p_item_link=>'f?p=&FLOW_ID.:1:&SESSION.::&DEBUG.::P1_XDATEPRI,P1_XDATE:#PRIMARY_KEY_VALUE#,#DATE_VALUE#'
,p_start_time=>0
,p_end_time=>23
,p_time_format=>'24HOUR'
,p_week_start_day=>19721105
,p_week_end_day=>19721111
,p_date_type_column=>'P1_CALENDAR_TYPE'
,p_end_date_item=>'P1_CALENDAR_END_DATE'
,p_include_custom_cal=>'N'
,p_custom_cal_days=>3
,p_primary_key_column=>'ROWID'
,p_item_link_primary_key_item=>'P1_XDATEPRI'
,p_item_link_date_item=>'P1_XDATE'
,p_item_link_open_in=>'W'
,p_include_time_with_date=>'N'
,p_agenda_cal_days_type=>'MONTH'
,p_agenda_cal_days=>30
,p_calendar_type=>'A'
,p_template_id=>wwv_flow_api.id(47631311915858362)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(81895891804068333)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>1
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127835688693416146)
,p_plug_name=>'Alert Description'
,p_region_template_options=>'#DEFAULT#:i-h200:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#77b1f0"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1035
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_progname   VARCHAR2 (30) := :P1_PROGNAME;',
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
'   v_buttonid number:= 0;',
'BEGIN',
'-- display products',
'--<span style="color:red;"> (&ALERTNO.)(&PROGNAME.)</span>',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="1" border="0">',
'<thead>',
'<tr><th style="text-align:left;">Alert Description</th><th style="text-align:center;">Priority</th><th style="text-align:center;">Complete</th></tr>',
'</thead>',
'<tbody>''',
'      );',
'',
'   FOR c1 IN (select REMARKSS,PRIORITY,APEX_ITEM.SELECT_LIST (31,',
'                          CHECKEDD,',
'                          ''Yes;Y,No;N'',',
'                          ''style="width:50px"'',',
'                           NULL,',
'                           NULL,',
'                           NULL,',
'                          ''f31_'' || LPAD (ROWNUM, 4, ''0'')',
'                         ) CHECKEDD from sypndjob',
'where AUTHPERS=:APP_USER',
'    and CHECKEDD=''N'' )',
'   LOOP',
'    v_buttonid :=v_buttonid+1;',
'      SYS.HTP.p',
'         (   ''<tr><td style="padding-left: 5px;width: 80%;font-weight:bold;text-align:left;background-color:white">''',
'          || c1.REMARKSS',
'          || ''</td><td style="padding-left: 5px;width: 10%;font-weight:bold;text-align:center;background-color:white">''',
'          || c1.PRIORITY',
'          || ''</td><td style="padding-left: 5px;width: 10%;font-weight:bold;text-align:center;background-color:white">''',
'          || c1.CHECKEDD',
'          || ''</td></tr>''',
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
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128180099555996903)
,p_plug_name=>'Company Name'
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1005
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42789845197270765)
,p_plug_name=>'image'
,p_parent_plug_id=>wwv_flow_api.id(128180099555996903)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h150:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1090
,p_plug_grid_column_span=>3
,p_plug_display_column=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42796857260430300)
,p_plug_name=>'t'
,p_parent_plug_id=>wwv_flow_api.id(128180099555996903)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1091
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(42847150609776196)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(128180099555996903)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1015
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(133166013847167872)
,p_name=>'Buyer Form'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>1000
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--responsive:t-BadgeList--small:t-BadgeList--cols t-BadgeList--3cols'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value today,b.value monthly, p.value Yearly',
'from (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:compcode',
'        AND  trunc(DOCTDATE) =TO_DATE(TO_CHAR(SYSDATE,''MM/DD/RRRR''),''MM/DD/RRRR'')) a,',
'        (SELECT ',
'                 COUNT (DISTINCT DOCNUMBR) VALUE',
'             from nmslsofr',
'       where compcode=:compcode',
'       AND trunc(DOCTDATE) BETWEEN TRUNC (SYSDATE, ''MONTH'')',
'                              AND LAST_DAY (TRUNC (SYSDATE, ''MONTH''))) b,',
'    ( SELECT ',
'                 COUNT (DOCNUMBR) VALUE',
'            from nmslsofr',
'       where compcode=:compcode',
'       ',
'        AND trunc(DOCTDATE) BETWEEN ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                    -6',
'                                   )',
'                    AND   ADD_MONTHS (TRUNC (ADD_MONTHS (SYSDATE, 6), ''YEAR''),',
'                                      6',
'                                     )',
'                        - 1 ) p',
'order by 1',
'',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
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
 p_id=>wwv_flow_api.id(133166325848167889)
,p_query_column_id=>1
,p_column_alias=>'TODAY'
,p_column_display_sequence=>1
,p_column_heading=>'Today''s'
,p_use_as_row_header=>'N'
,p_column_css_style=>'style="color:red;"'
,p_column_link=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#TODAY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133166670202167898)
,p_query_column_id=>2
,p_column_alias=>'MONTHLY'
,p_column_display_sequence=>3
,p_column_heading=>'Monthly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:161:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#MONTHLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(133167121496167898)
,p_query_column_id=>3
,p_column_alias=>'YEARLY'
,p_column_display_sequence=>2
,p_column_heading=>'Yearly'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#YEARLY#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50909294052854866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51649589497768916)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Collapse All'
,p_button_position=>'HELP'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree28720027573446149'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50909479552854866)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51649589497768916)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Expand All'
,p_button_position=>'HELP'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree28720027573446149'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50997588894618209)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Previous'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''previous''); void(0);'
,p_icon_css_classes=>'fa-angle-double-left'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50997795927618209)
,p_button_sequence=>2
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'TODAY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&nbsp;Today&nbsp;'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''today''); void(0);'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50997996695618209)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&nbsp;Next&nbsp;'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''S'',''next''); void(0);'
,p_icon_css_classes=>'fa-angle-double-right'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50996778757618208)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'MONTHLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Monthly'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''M'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50996983805618208)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'WEEKLY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Weekly'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''W'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50997171402618208)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'DAILY'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Daily'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''D'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50997389178618209)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50995793058618200)
,p_button_name=>'LISTVIEW'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'List'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.widget.calendar.ajax_calendar(''A'',''same''); void(0);'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>'Generated 01/21/2015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51668392069330897)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(51567573990820385)
,p_button_name=>'CREATE_ACTIVITY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>' Create Activity'
,p_button_position=>'RIGHT_OF_TITLE'
,p_button_alignment=>'LEFT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50912597260854869)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Created 09-FEB-2012 11:41 by ADMINORBHRM',
'',
'Declare',
'v_validate Varchar2(1);',
'Begin',
'Select nvl(VALDFLAG,''N'')',
'Into v_validate ',
'From SYUSRMAS',
'Where USERCODE = :app_user;',
'If v_validate  = ''N'' Then',
'Return TRUE;',
'Else',
'Return FALSE;',
'End If;',
'End;'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42785913550092737)
,p_name=>'P1_IMAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(42789845197270765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_source=>'IMAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="margin-top: -6px;width:100px;height:70px;"'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select image from syparmas',
'where CACMPCDE=:compcode'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42788641420232703)
,p_name=>'P1_COMP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_item_default=>':COMPCODE||'' - ''||:P1_COMPNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Comp'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="margin-top: -7px;     text-align: left;     font-weight: bold;     font-size: 30px;     color:rgb(218,165,32);     position: relative;"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42813620331763582)
,p_name=>'P1_NOLOGIN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(42810050079686112)
,p_prompt=>'No of login'
,p_source=>'select LOGINCNT from syusrmas where USERCODE=:APP_USER and DIVNCODE=:COMPCODE'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42813940644763583)
,p_name=>'P1_LASTLOGIN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(42810050079686112)
,p_prompt=>'Last login'
,p_source=>'select TO_CHAR(LASTLOGN,''DD/MON/RRRR'') from syusrmas where USERCODE=:APP_USER and DIVNCODE=:COMPCODE'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45182723848800709)
,p_name=>'P1_TEST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(128180099555996903)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50338733193797016)
,p_name=>'P1_COMPCODE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50395552522195052)
,p_name=>'P1_COMPCDE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(50389051079691270)
,p_item_default=>'null'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPANY_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct A.CACMPCDE||'' - ''||A.CACMPNAM d, A.CACMPCDE r',
'From SYPARMAS A, SYRIGHTS B',
'Where A.CACMPCDE = B.COMPCODE',
'And lower(B.USERCODE) = lower(:APP_USER)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'...........................Select Company................................'
,p_lov_null_value=>'null'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: #0372F0;font-weight:bold;margin-top:0%;background-color: rgb(180, 190, 197);"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50908074629854864)
,p_name=>'P1_CACMPNAM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51009370538236265)
,p_item_default=>'null'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: #0372F0;font-weight:bold;margin-top:0%;background-color: rgb(180, 190, 197);"'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50908276795854866)
,p_name=>'P1_COMPNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50907886782854864)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50908485397854866)
,p_name=>'P1_COMPADD'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'style="    margin-top: -7px;     text-align: left;     font-weight: bold;     font-size: 14px;     color: blue;     position: relative;"'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50908685495854866)
,p_name=>'P1_VALDFLAG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(50907886782854864)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50909677116854866)
,p_name=>'P1_USER_NAME'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'style="color: blue;     font-size: 15px;     font-weight: bold;     padding: 2px;     margin: 13px;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50909888582854866)
,p_name=>'P1_USER_ID'
,p_item_sequence=>185
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50910072106854866)
,p_name=>'P1_PROGID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(81383306479396699)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&FX_TREE_NODE.'
,p_prompt=>'Progid'
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
 p_id=>wwv_flow_api.id(50911281011854867)
,p_name=>'P1_MSG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50911081936854867)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'style="text-align:justify; width:370px; height:150px; font-size:15px;color: #0033ff"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
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
 p_id=>wwv_flow_api.id(50995483207612044)
,p_name=>'P1_XDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(50907886782854864)
,p_prompt=>'Xdate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50995676306615184)
,p_name=>'P1_XDATEPRI'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(50907886782854864)
,p_prompt=>'Xdatepri'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50996271573618208)
,p_name=>'P1_CALENDAR_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50995793058618200)
,p_use_cache_before_default=>'NO'
,p_prompt=>'P1_CALENDAR_DISPLAY'
,p_source=>'P1_CALENDAR_TYPE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/21/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50996489669618208)
,p_name=>'P1_CALENDAR_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50995793058618200)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_source=>'P1_CALENDAR_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/21/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50996693009618208)
,p_name=>'P1_CALENDAR_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50995793058618200)
,p_use_cache_before_default=>'NO'
,p_item_default=>'return sysdate+3;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_source=>'P1_CALENDAR_END_DATE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'Generated by Calendar wizard on 01/21/2015'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53546290979828710)
,p_name=>'P1_DASHBOARD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50907886782854864)
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61242909670629785)
,p_name=>'P1_MARKETING_NONIFICATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61243375592629790)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61244318541629800)
,p_name=>'P1_PROCUREMENT_NONIFICATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61243375592629790)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61244451082629801)
,p_name=>'P1_SALES_NONIFICATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(61243375592629790)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61244580468629802)
,p_name=>'P1_MATERIAL_NONIFICATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(61243375592629790)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81384063167403695)
,p_name=>'P1_FIRST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(81383306479396699)
,p_prompt=>'First'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(81384288594403700)
,p_name=>'P1_SECOND'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(81383306479396699)
,p_prompt=>'Second'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(84366947603502596)
,p_name=>'P1_PROGNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(42796857260430300)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47306997873025485)
,p_name=>'notification'
,p_event_sequence=>1
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(47307445269025486)
,p_event_id=>wwv_flow_api.id(47306997873025485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process ( ',
'    "notification",',
'    {},',
'    {dataType: ''text'',',
'      success: function(pData) {',
'      $("#notificationsbody").append(pData);',
'	  },',
'    });',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50409275414615139)
,p_name=>'hide switch region on page load'
,p_event_sequence=>2
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50409698874615139)
,p_event_id=>wwv_flow_api.id(50409275414615139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(50389051079691270)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50391355897874568)
,p_name=>'call switch window'
,p_event_sequence=>3
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#switch'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50391764726874580)
,p_event_id=>wwv_flow_api.id(50391355897874568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:$(''#Switch'').dialog(',
'    {',
'        autoOpen: true,',
'        width:465,',
'        height: 150,',
'        modal: true,',
'        title:''Switch Company''',
'    }).dialog(''moveToTop'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51159699201201322)
,p_name=>'add rows javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51159986189201324)
,p_event_id=>wwv_flow_api.id(51159699201201322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f15_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=10; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51038276020820323)
,p_name=>'page load for refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_COMPCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51038599332820323)
,p_event_id=>wwv_flow_api.id(51038276020820323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(50910293140854867)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51742397816597531)
,p_name=>'Call Daily Activity page'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51668392069330897)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51742680979597537)
,p_event_id=>wwv_flow_api.id(51742397816597531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:78:&APP_SESSION.:::78:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'74'
,p_attribute_09=>'60'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51759499462317152)
,p_name=>'Select Advanced'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(51096891510843029)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51759771991317152)
,p_event_id=>wwv_flow_api.id(51759499462317152)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report_VH_SCROLL_EMP").htmldbDscroll({freezeColumns:2});'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53785877683802613)
,p_name=>'set value'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53786184500802625)
,p_event_id=>wwv_flow_api.id(53785877683802613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_DASHBOARD'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v varchar2(500);',
'begin',
'v:=:USERID;',
'return(v);',
'end;'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(45181826243797095)
,p_name=>'set company code in global item'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_COMPCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(45182263379797109)
,p_event_id=>wwv_flow_api.id(45181826243797095)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':COMPCODE:=:P1_COMPCDE;',
':P1_TEST:=:COMPCODE;',
'end;'))
,p_attribute_02=>'P1_COMPCDE'
,p_attribute_03=>'COMPCODE,P1_TEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(127075940034323330)
,p_name=>'refresh auto message region'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(81300413148589532)
,p_bind_type=>'bind'
,p_bind_event_type=>'PLUGIN_COM.ORACLE.APEX.TIMER|DYNAMIC ACTION|timer_expired'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(127076279834323338)
,p_event_id=>wwv_flow_api.id(127075940034323330)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.ORACLE.APEX.TIMER'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(81300413148589532)
,p_attribute_01=>'add'
,p_attribute_04=>'5000'
,p_attribute_05=>'infinite'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40232932326912640)
,p_name=>'tree node select'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40232994101912641)
,p_event_id=>wwv_flow_api.id(40232932326912640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#t_Body_nav #t_TreeNav'').on(''click'', ''ul li.a-TreeView-node div.a-TreeView-content:not(:has(a))'', function(){',
'   $(this).prev(''span.a-TreeView-toggle'').click();',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61243475365629791)
,p_name=>'Auto Refrsh notification'
,p_event_sequence=>120
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'notification1'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61244196130629798)
,p_event_id=>wwv_flow_api.id(61243475365629791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'select distinct count(DOCNUMBR) into :P1_MARKETING_NONIFICATION from nmcusvlg',
'where compcode=:COMPCODE;',
'',
'select distinct count(DOCNUMBR) into :P1_PROCUREMENT_NONIFICATION from nmprocur',
'where compcode=:COMPCODE;',
'',
'select distinct count(DOCNUMBR) into :P1_SALES_NONIFICATION from nmsalrec',
'where compcode=:COMPCODE;',
'',
'select distinct count(DOCNUMBR) into :P1_MATERIAL_NONIFICATION from nmstkrec',
'where compcode=:COMPCODE',
'and docttype=''MI''',
'and subttype=2;',
'exception',
'when no_data_found then',
'v_count:=0;',
'when too_many_rows then',
'v_count:=0;',
'when others then',
'v_count:=0;',
'end;'))
,p_attribute_02=>'COMPCODE'
,p_attribute_03=>'P1_MARKETING_NONIFICATION,P1_MATERIAL_NONIFICATION,P1_PROCUREMENT_NONIFICATION,P1_SALES_NONIFICATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61242993493629786)
,p_name=>'Change Marketing Notification'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MARKETING_NONIFICATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61244279096629799)
,p_event_id=>wwv_flow_api.id(61242993493629786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var parentDOM = document.getElementById("t_TreeNav_2");',
'        ',
'        //var test=parentDOM.getElementsByClassName("a-TreeView-badge");//test is not target element',
'       // console.log(test);//HTMLCollection[1]',
'',
'        var testTarget=parentDOM.getElementsByClassName("a-TreeView-badge")[0];//here , this element is target',
'        //var market_notification=document.getElementById(''P1_MARKETING_NONIFICATION'').value;',
'        //console.log(testTarget);//<p class="test">hello word2</p>',
'var a =testTarget.innerHTML;',
'var b =document.getElementById(''P1_MARKETING_NONIFICATION'').value;',
'testTarget.innerHTML = document.getElementById(''P1_MARKETING_NONIFICATION'').value;',
'',
'/*',
'if (a === b) {',
'    testTarget.style.color = ''red'';',
'}',
'else',
'    {',
'    testTarget.style.color = ''green'';',
'}*/',
'//alert(a+b);',
'//var str =document.getElementById(''t_TreeNav_2'').getElementsByClassName(''a-TreeView-badge'');',
'//str.style.fontSize = "30px";',
'//document.getElementById(''t_TreeNav_2'').document.getElementsByClassName("a-TreeView-badge"); ',
'//document.getElementById(''t_TreeNav_2'').value(document.getElementsByClassName("a-TreeView-badge"));',
'//var n = str.search("A1");',
'//var m =n.substring(1, 3);',
'//alert(console.log(test));',
'//str.substring(, 1) = document.getElementById(''P1_NONIFICATION'').value;',
'//document.getElementById(''t_TreeNav_2'') = document.getElementById(''P1_NONIFICATION'').value;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61244736451629804)
,p_name=>'Change Procurement Notification'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PROCUREMENT_NONIFICATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61244846480629805)
,p_event_id=>wwv_flow_api.id(61244736451629804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var parentDOM = document.getElementById("t_TreeNav_3");',
'        ',
'        //var test=parentDOM.getElementsByClassName("a-TreeView-badge");//test is not target element',
'       // console.log(test);//HTMLCollection[1]',
'',
'        var testTarget=parentDOM.getElementsByClassName("a-TreeView-badge")[0];//here , this element is target',
'        //console.log(testTarget);//<p class="test">hello word2</p>',
'testTarget.innerHTML = document.getElementById(''P1_PROCUREMENT_NONIFICATION'').value;',
'//var str =document.getElementById(''t_TreeNav_2'').getElementsByClassName(''a-TreeView-badge'');',
'//str.style.fontSize = "30px";',
'//document.getElementById(''t_TreeNav_2'').document.getElementsByClassName("a-TreeView-badge"); ',
'//document.getElementById(''t_TreeNav_2'').value(document.getElementsByClassName("a-TreeView-badge"));',
'//var n = str.search("A1");',
'//var m =n.substring(1, 3);',
'//alert(console.log(test));',
'//str.substring(, 1) = document.getElementById(''P1_NONIFICATION'').value;',
'//document.getElementById(''t_TreeNav_2'') = document.getElementById(''P1_NONIFICATION'').value;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61245015971629806)
,p_name=>'Change Sales Notification'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_SALES_NONIFICATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61949392181420557)
,p_event_id=>wwv_flow_api.id(61245015971629806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var parentDOM = document.getElementById("t_TreeNav_5");',
'        ',
'        //var test=parentDOM.getElementsByClassName("a-TreeView-badge");//test is not target element',
'       // console.log(test);//HTMLCollection[1]',
'',
'        var testTarget=parentDOM.getElementsByClassName("a-TreeView-badge")[0];//here , this element is target',
'        //console.log(testTarget);//<p class="test">hello word2</p>',
'testTarget.innerHTML = document.getElementById(''P1_SALES_NONIFICATION'').value;',
'//var str =document.getElementById(''t_TreeNav_2'').getElementsByClassName(''a-TreeView-badge'');',
'//str.style.fontSize = "30px";',
'//document.getElementById(''t_TreeNav_2'').document.getElementsByClassName("a-TreeView-badge"); ',
'//document.getElementById(''t_TreeNav_2'').value(document.getElementsByClassName("a-TreeView-badge"));',
'//var n = str.search("A1");',
'//var m =n.substring(1, 3);',
'//alert(console.log(test));',
'//str.substring(, 1) = document.getElementById(''P1_NONIFICATION'').value;',
'//document.getElementById(''t_TreeNav_2'') = document.getElementById(''P1_NONIFICATION'').value;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(61949463640420558)
,p_name=>'Change Material Notification'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_MATERIAL_NONIFICATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(61949599161420559)
,p_event_id=>wwv_flow_api.id(61949463640420558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var parentDOM = document.getElementById("t_TreeNav_4");',
'        ',
'        //var test=parentDOM.getElementsByClassName("a-TreeView-badge");//test is not target element',
'       // console.log(test);//HTMLCollection[1]',
'',
'        var testTarget=parentDOM.getElementsByClassName("a-TreeView-badge")[0];//here , this element is target',
'        //console.log(testTarget);//<p class="test">hello word2</p>',
'testTarget.innerHTML = document.getElementById(''P1_MATERIAL_NONIFICATION'').value;',
'//var str =document.getElementById(''t_TreeNav_2'').getElementsByClassName(''a-TreeView-badge'');',
'//str.style.fontSize = "30px";',
'//document.getElementById(''t_TreeNav_2'').document.getElementsByClassName("a-TreeView-badge"); ',
'//document.getElementById(''t_TreeNav_2'').value(document.getElementsByClassName("a-TreeView-badge"));',
'//var n = str.search("A1");',
'//var m =n.substring(1, 3);',
'//alert(console.log(test));',
'//str.substring(, 1) = document.getElementById(''P1_NONIFICATION'').value;',
'//document.getElementById(''t_TreeNav_2'') = document.getElementById(''P1_NONIFICATION'').value;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50911672355854869)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53796387987833558)
,p_process_sequence=>9
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
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50911870708854869)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/19 15:44 (Formatter Plus v4.8.8) */',
'   --system',
'',
'',
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'select count(*) into :ALERTNO from sypndjob',
'where AUTHPERS=:APP_USER',
'and CHECKEDD=''N'' ;',
'select count(*) into :ALERTNO1 from messages ;',
'',
'   SELECT cacmpnam,',
'          INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '' ''',
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
'   SELECT initcap(username), username, :app_user',
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
 p_id=>wwv_flow_api.id(51532485498039991)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'redirect in 117 application'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_redirect_url VARCHAR2(1000) := ''f?p=117:101'';',
'BEGIN',
'if :P101_USERNAME is  null then',
'htp.init();',
'owa_util.redirect_url(l_redirect_url); --- Redirect',
'apex_application.g_unrecoverable_error := true;   --- stops all further page processing',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(116849879040447504)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate TRANTYPE Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''TRANTYPE'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
