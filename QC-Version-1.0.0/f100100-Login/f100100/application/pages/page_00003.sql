prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'home page backup'
,p_step_title=>'home page backup'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'body.t-PageBody.js-rightCollapsed .t-Body-actions {',
'    -webkit-transform: translate3d(300px, 0, 0);',
'    -ms-transform: translate(300px);',
'    transform: translate3d(300px, 0, 0);',
'}',
'',
'.t-Body .t-Body-actions {',
'    width: 300px;',
'}',
'/*',
'.t-PageBody.js-rightExpanded.t-PageBody--hideLeft .t-Body-main {',
'    margin-right: 260px;',
'}*/',
'',
'.t-Body-title{',
'    top: auto;',
'    display: contents;',
'}',
'.apex-side-nav .t-Body-actions, .apex-side-nav .t-Body-nav, .apex-side-nav .t-Body-title {',
'    top: 40px;',
'}',
'',
'',
'<style>',
'#TRNTYPE{',
'color: red;	',
'	background-color:yellow;',
'}',
'',
'.t-Card-wrap {',
'    border-radius: 2px;',
'    background-color: lightyellow;',
'}',
'',
'.tran-list {',
'    margin: 0;',
'    padding: 0;',
'    list-style: disclosure-closed;',
'    font-style: oblique;',
'}',
'',
'.t-Body-content {',
'    padding-bottom: 0vh !important;',
'}',
'',
'',
'',
'',
'.t-Report-colHead{',
'--border: 1px solid blue !important;',
'transition: background-color 0.2s ease 0s;',
'padding: 2px;',
'font-size: 11px !important;',
'font-weight: bold !important;',
'text-align: center;',
'}',
'',
'.t-Report-cell{',
'padding: 2px;',
'font-size: 11px !important;',
'font-weight: NORMAL !important;',
'--border: 1px solid blue;',
'}',
'',
'/*',
'',
'.javainhand {',
'    float: left;',
'    height: -22px;',
'    margin-right: 1%;',
'    padding: 5px;',
'    position: relative;',
'    width: 24%;',
'}',
'.circle-tile {',
'    margin-bottom: 15px;',
'    text-align: center;',
'}',
'.circle-tile-heading {',
'    border: 3px solid rgba(255, 255, 255, 0.3);',
'    border-radius: 100%;',
'    color: #FFFFFF;',
'    height: 80px;',
'    margin: 0 auto -40px;',
'    position: relative;',
'    transition: all 0.3s ease-in-out 0s;',
'    width: 80px;',
'}',
'.circle-tile-heading .fa {',
'    line-height: 80px;',
'}',
'.circle-tile-content {',
'    padding-top: 50px;',
'}',
'.circle-tile-number {',
'    font-size: 26px;',
'    font-weight: 700;',
'    line-height: 1;',
'    padding: 5px 0 15px;',
'}',
'.circle-tile-description {',
'    text-transform: uppercase;',
'}',
'.circle-tile-footer {',
'    background-color: rgba(0, 0, 0, 0.1);',
'    color: rgba(255, 255, 255, 0.5);',
'    display: block;',
'    padding: 5px;',
'    transition: all 0.3s ease-in-out 0s;',
'}',
'.circle-tile-footer:hover {',
'    background-color: rgba(0, 0, 0, 0.2);',
'    color: rgba(255, 255, 255, 0.5);',
'    text-decoration: none;',
'}',
'.circle-tile-heading.dark-blue:hover {',
'    background-color: #2E4154;',
'}',
'.circle-tile-heading.green:hover {',
'    background-color: #138F77;',
'}',
'.circle-tile-heading.orange:hover {',
'    background-color: #DA8C10;',
'}',
'.circle-tile-heading.blue:hover {',
'    background-color: #2473A6;',
'}',
'.circle-tile-heading.red:hover {',
'    background-color: #B71C1C;',
'}',
'.circle-tile-heading.purple:hover {',
'    background-color: #7F3D9B;',
'}',
'.tile-img {',
'    text-shadow: 2px 2px 3px rgba(0, 0, 0, 0.9);',
'}',
'',
'.dark-blue {',
'    background-color: #34495E;',
'}',
'.green {',
'    background-color: #2E7D32;',
'}',
'.blue {',
'    background-color: #2980B9;',
'}',
'.orange {',
'    background-color:#ffa000;',
'}',
'.red {',
'    background-color: #e53935;',
'}',
'.purple {',
'    background-color: #8E44AD;',
'}',
'.dark-gray {',
'    background-color: #7F8C8D;',
'}',
'.gray {',
'    background-color: #95A5A6;',
'}',
'.light-gray {',
'    background-color: #BDC3C7;',
'}',
'.yellow {',
'    background-color: #F1C40F;',
'}',
'.text-dark-blue {',
'    color: #34495E;',
'}',
'.text-green {',
'    color: #16A085;',
'}',
'.text-blue {',
'    color: #2980B9;',
'}',
'.text-orange {',
'    color: #F39C12;',
'}',
'.text-red {',
'    color: #E74C3C;',
'}',
'.text-purple {',
'    color: #8E44AD;',
'}',
'.text-faded {',
'    color: rgba(255, 255, 255, 0.7);',
'}',
'',
'a.circle-tile-footer {',
'    border: none;',
'    background: #FFF;',
'    /* border-radius: 19px; ',
'    padding: 7px 16px;',
'    text-transform: uppercase;',
'    font-weight: 500;',
'    font-size: 11px;',
'    letter-spacing: .5px;',
'    color: #003e85;',
'    box-shadow: 0 3px 5px #d4d4d4;',
'}',
'',
'</style>*/'))
,p_step_template=>wwv_flow_api.id(99950483614690143)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20200219194118'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63998194046954901)
,p_plug_name=>'Dashboard_hr'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select D.MESSAGE Label, ',
' to_char(D.VALUE,''99,99,99,99,999'') value',
'-- ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">''||to_char(D.VALUE,''99,99,99,99,999'')||''</font></a>'' '
||'VALUE',
' --''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue"> LINK</font></a>'' LINK',
'  from dashboard d',
'  where D.GROUPID_FK =''10000'' '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P3_MENU_APP_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P3_SELECTED_NOTE'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(72665970456311606)
,p_name=>'Dashboard'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--iconsSquare:t-Cards--animRaiseCard:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'--D.MESSAGE CARD_TITLE, ',
' --to_char(D.VALUE,''99,99,99,99,999'') CARD_TITLE, ',
' --to_char(D.VALUE,''99,99,99,99,999'') CARD_INITIALS,',
'  ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">'' ||to_char(D.VALUE,''99,99,99,99,999'')||''</font></a>'' '
||'CARD_INITIALS,',
'  ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">'' ||D.MESSAGE||''</font></a>'' CARD_TITLE',
' --''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue"> LINK</font></a>'' CARD_SUBTEXT',
'  from dashboard d',
'  where D.GROUPID_FK = (',
'  select distinct M.APP_ID from symenmas m where M.PROGNAME=:P3_SELECTED_NOTE)',
'',
'/* select D.MESSAGE CARD_TITLE, ',
' --to_char(D.VALUE,''99,99,99,99,999'') CARD_TITLE, ',
' to_char(D.VALUE,''99,99,99,99,999'') CARD_INITIALS,',
' ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue"> LINK</font></a>'' CARD_SUBTEXT',
'  from dashboard d',
'  where D.GROUPID_FK = (',
'  select distinct M.APP_ID from symenmas m where M.PROGNAME=:P3_SELECTED_NOTE)',
'  */'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(100002056989690163)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116074951614272999)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>2
,p_column_heading=>'Card Initials'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116074530887272996)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(72856941041952900)
,p_name=>'<font color="gray">Most Recent Task</font>'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROGNAME, --PROGDESC||'' (''||(ADD_DATA+MOD_DATA+ENQ_DATA)||'')'' PROGRAM_NAME,',
'''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''|| PROGDESC||'' (''||(ADD_DATA+MOD_DATA+ENQ_DATA)||'')''  '
||'||''</font></a>'' ADD_DAT,',
'''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||MOD_PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Modify (''||MOD_DATA||'')''||''</font></a>'' MODIFY_'
||'D,',
'--''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Enquery (''||ENQ_DATA||'')''||''</font></a>'' ENQUERY'
||',',
'APP_ID, PAGEID, MOD_PAGEID, PAGE_ID, NMTRNTYP, TRNSUBTP,  ADD_DATA,  MOD_DATA,  ENQ_DATA',
'from(',
'SELECT PROGNAME, PROGDESC,APP_ID, PAGEID,MOD_PAGEID,PAGE_ID, NMTRNTYP, TRNSUBTP, SUM(NVL(ADD_DATA,0)) ADD_DATA,SUM(NVL(MOD_DATA,0)) MOD_DATA, SUM(NVL(ENQ_DATA,0))ENQ_DATA',
'FROM(',
'SELECT S.TASKID, S.TASKDATE, S.COMPCODE, S.USERCODE, S.PROGNAME,S.DOCTTYPE, S.SUBTTYPE,S.PROGTYPE,S.MDLCODE, S.PROGDESC,SM.NMTRNTYP,SM.TRNSUBTP, SM.APP_ID, SM.PAGEID,SM.MOD_PAGEID, ',
'SM.PAGE_ID, S.CLICKMOD, S.OPRSTAMP, S.TIMSTAMP, TO_DATE(S.CLICKTIM,''YY/MM/DD HH24:MI:SS'') CLICKTIME, ',
'decode(CLICKMOD,''A'',1) ADD_DATA,',
'decode(CLICKMOD,''E'',1) ENQ_DATA,',
'decode(CLICKMOD,''M'',1) MOD_DATA',
' FROM SYRCNTSK S, SYMENMAS SM',
'WHERE S.COMPCODE=:COMPCODE',
'  AND S.USERCODE=:APP_USER',
'  AND S.PROGNAME= SM.PROGNAME',
'  and s.clickmod is not null',
'  AND SM.PROGTYPE=''F''',
'ORDER BY TIMSTAMP DESC',
')',
'GROUP BY PROGNAME,PROGDESC,PAGEID,MOD_PAGEID,PAGE_ID, APP_ID,NMTRNTYP,TRNSUBTP',
')',
'WHERE ADD_DATA >0',
'AND ROWNUM <=10',
'',
'',
'/*SELECT PROGNAME, PROGDESC||'' (''||(ADD_DATA+MOD_DATA+ENQ_DATA)||'')'' PROGRAM_NAME,',
'''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Add (''||ADD_DATA||'')'' ||''</font></a>'' ADD_DAT,',
'''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||MOD_PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Modify (''||MOD_DATA||'')''||''</font></a>'' MODIFY_'
||'D,',
'''<a href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Enquery (''||ENQ_DATA||'')''||''</font></a>'' ENQUERY,',
'APP_ID, PAGEID, MOD_PAGEID, PAGE_ID, NMTRNTYP, TRNSUBTP,  ADD_DATA,  MOD_DATA,  ENQ_DATA',
'from(',
'SELECT PROGNAME, PROGDESC,APP_ID, PAGEID,MOD_PAGEID,PAGE_ID, NMTRNTYP, TRNSUBTP, SUM(NVL(ADD_DATA,0)) ADD_DATA,SUM(NVL(MOD_DATA,0)) MOD_DATA, SUM(NVL(ENQ_DATA,0))ENQ_DATA',
'FROM(',
'SELECT S.TASKID, S.TASKDATE, S.COMPCODE, S.USERCODE, S.PROGNAME,S.DOCTTYPE, S.SUBTTYPE,S.PROGTYPE,S.MDLCODE, S.PROGDESC,SM.NMTRNTYP,SM.TRNSUBTP, SM.APP_ID, SM.PAGEID,SM.MOD_PAGEID, ',
'SM.PAGE_ID, S.CLICKMOD, S.OPRSTAMP, S.TIMSTAMP, TO_DATE(S.CLICKTIM,''YY/MM/DD HH24:MI:SS'') CLICKTIME, ',
'decode(CLICKMOD,''A'',1) ADD_DATA,',
'decode(CLICKMOD,''E'',1) ENQ_DATA,',
'decode(CLICKMOD,''M'',1) MOD_DATA',
' FROM SYRCNTSK S, SYMENMAS SM',
'WHERE S.COMPCODE=:COMPCODE',
'  AND S.USERCODE=:APP_USER',
'  AND S.PROGNAME= SM.PROGNAME',
'  and s.clickmod is not null',
'  AND SM.PROGTYPE=''F''',
'ORDER BY TIMSTAMP DESC',
')',
'GROUP BY PROGNAME,PROGDESC,PAGEID,MOD_PAGEID,PAGE_ID, APP_ID,NMTRNTYP,TRNSUBTP',
')',
'WHERE ADD_DATA >0',
'AND ROWNUM <=10',
'*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(100011823152690167)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116088151708273012)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116088472463273016)
,p_query_column_id=>2
,p_column_alias=>'ADD_DAT'
,p_column_display_sequence=>6
,p_column_heading=>'Add Dat'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116086153684273009)
,p_query_column_id=>3
,p_column_alias=>'MODIFY_D'
,p_column_display_sequence=>7
,p_column_heading=>'Modify D'
,p_column_format=>'PCT_GRAPH:::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116087738265273012)
,p_query_column_id=>4
,p_column_alias=>'APP_ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116087299559273010)
,p_query_column_id=>5
,p_column_alias=>'PAGEID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116085701248273009)
,p_query_column_id=>6
,p_column_alias=>'MOD_PAGEID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116085284015273009)
,p_query_column_id=>7
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116086964207273010)
,p_query_column_id=>8
,p_column_alias=>'NMTRNTYP'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116086563498273010)
,p_query_column_id=>9
,p_column_alias=>'TRNSUBTP'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116084962966273009)
,p_query_column_id=>10
,p_column_alias=>'ADD_DATA'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116084545850273009)
,p_query_column_id=>11
,p_column_alias=>'MOD_DATA'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(116084134227273009)
,p_query_column_id=>12
,p_column_alias=>'ENQ_DATA'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79525280533506816)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select D.MESSAGE Label, to_char(D.VALUE,''99,99,99,99,999'') value, ',
'   ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">'' ||''LINK''||''</font></a>'' Link',
'  --''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||:APP_SESSION||'':::''||D.PAGE_ID||'',RIR,RP'' Link',
'  from dashboard d',
'  where D.GROUPID_FK = (',
'  select distinct M.APP_ID from symenmas m where M.PROGNAME=:P3_SELECTED_NOTE)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P3_SELECTED_NOTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P3_SELECTED_NOTE'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79592648645549586)
,p_plug_name=>'PowerBits Home'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(110926115572707109)
,p_plug_name=>'Menu RGN'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79745674495566824)
,p_plug_name=>'<font color="gray"> You have bellow rights to do &P3_PROGDESC. </font>'
,p_parent_plug_id=>wwv_flow_api.id(110926115572707109)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_page varchar2(10) := 9;',
'l_url varchar2(2000);',
'cursor c is',
'',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''Create ''||:P3_PROGDESC Rights,b.app_id,b.pageid TRNPAG , ''A'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where a.ADDSTATS=''Y''',
'             and upper(usercode)=:APP_USER ',
'             and a.progname=b.progname',
'             and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P3_SELECTED_NOTE)',
'                        Union all',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''Modify/Remove ''||:P3_PROGDESC Rights,b.app_id,MOD_PAGEID TRNPAG,  ''M'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  MODSTATS=''Y''  and upper(a.usercode)=:APP_USER ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P3_SELECTED_NOTE)',
'                        union all',
'            select B.MODLCODE, B.NMTRNTYP,B.PROGNAME,''Query ''||:P3_PROGDESC Rights,b.app_id, PAGE_ID TRNPAG, -- MOD_PAGEID,',
'            ''E'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  ENQSTATS=''Y''  ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            and upper(a.usercode)=:APP_USER AND UPPER(a.PROGNAME)=UPPER(:P3_SELECTED_NOTE);',
'            ',
'Begin',
'         ',
'For r in c Loop ',
'                        ',
'--sys.htp.p('' <a href="''||apex_util.prepare_url(''f?p=''||NVL(r.app_id,:APP_ID)||'':''||r.TRNPAG||'':''||:APP_SESSION||'':::9'')||''"><font color="blue">''||r.rights||  ''</font></a>'');',
'sys.htp.p('' <a href="''||apex_util.prepare_url(''f?p=''||NVL(r.app_id,:APP_ID)||'':''||r.TRNPAG||'':''||:APP_SESSION||'':T:::TRNMODE:''||r.TRN_MODE)||''"><font color="blue">''||r.rights||''</font></a>'');',
'sys.htp.p(''<br>'');',
'',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116075921635273002)
,p_name=>'P3_PAGE_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116076293293273002)
,p_name=>'P3_TRN_MODE_SHOW'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P3_TRN_MODE=''A'' ',
'THEN RETURN(''Add Data'');',
'ELSIF',
':P3_TRN_MODE =''M'' THEN',
'RETURN (''Modify'');',
'ELSE',
'RETURN (''Enquery'');',
'',
'END IF;',
'END;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116076674490273002)
,p_name=>'P3_M_TRAN_TYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116077160342273002)
,p_name=>'P3_TRN_MODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116077536021273002)
,p_name=>'P3_SUBTTYPE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116077930401273002)
,p_name=>'P3_USER_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116078299509273002)
,p_name=>'P3_USER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116078720088273002)
,p_name=>'P3_CMPCD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116079095414273004)
,p_name=>'P3_TRNTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116079511777273004)
,p_name=>'P3_PROGNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116079896256273004)
,p_name=>'P3_MDLCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116080360104273004)
,p_name=>'P3_PROGDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116080733398273004)
,p_name=>'P3_SELECTED_NOTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116081145881273004)
,p_name=>'P3_DASHBOARD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116081531728273004)
,p_name=>'P3_COMPCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116081918327273004)
,p_name=>'P3_COMPNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116082371010273004)
,p_name=>'P3_CACMPNAM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116082742723273004)
,p_name=>'P3_M_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(116083125848273007)
,p_name=>'P3_MENU_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79592648645549586)
,p_item_default=>':APP_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
