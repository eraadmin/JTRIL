prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'menu copy'
,p_alias=>'MENU-COPY'
,p_step_title=>'menu copy'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*Expand on mouse over, collapse on mouse out */',
'    $(''.apex-side-nav.js-navCollapsed .t-Body-nav'').hover(',
'       ',
'(function(ut, $) {',
'',
'var TREE_NAV_WIDGET_KEY = ''nav'';',
'',
'$(window).on(''theme42ready'', function() {',
'    /* Make sure that the navigation menu is collapsed on page load */',
'    if (ut.toggleWidgets.isExpanded(TREE_NAV_WIDGET_KEY)){',
'        ut.toggleWidgets.collapseWidget(TREE_NAV_WIDGET_KEY);',
'    }',
'',
'',
'    /*   function(){',
'            ut.toggleWidgets.expandWidget(TREE_NAV_WIDGET_KEY);',
'        },',
'        function() {',
'            ut.toggleWidgets.collapseWidget(TREE_NAV_WIDGET_KEY);',
'        }',
'    );',
'});',
'',
'})(apex.theme42, apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*----------Homapage Background -------*/',
'',
'.t-Body{',
'    background-image:&P1_BG_IMAGE.;     /*&P1_BG_RANDOM.; url(#APP_IMAGES#HM_BG&P1_BG_RANDOM..jpg); /*url(#APP_IMAGES#HM_BG6.jpg);	  -- url("#APP_IMAGES#back.jpg");*/',
'    background-repeat: no-repeat;',
'    background-size: cover;',
'    backdrop-filter: blur(&HM_BG_BLUR.px);',
'}',
'',
'',
'/*------toggle button for rights side column collapse----*/',
'.t-Body-actionsControlsIcon {',
'    font-size: 28;',
'    color: black;',
'    font-weight: bold;',
'    line-height: 1;',
'    width: 18px;',
'    height: 30px;',
'    text-align: center;',
'    display: block;',
'    transition: -webkit-transform .15s ease;',
'    transition: transform .15s ease;',
'    transition: transform .15s ease,-webkit-transform .15s ease;',
'}',
'',
'/*-----------Hide Footer release -----------*/',
'.t-Footer {',
'visibility:hidden;',
'}',
'',
'/*-------hide scroll bar --------*/',
'body {',
'  overflow: hidden; /* Hide scrollbars */',
'}',
'',
'/*------- Nav Bar Logout color---------*/',
'.t-Header .t-Button--header, .t-Header .t-Button--header.is-active, .t-Header-logo {',
'    color: blue;',
'    font-weight:700;',
'}',
'',
'/*-------notification-----------*/',
'.t-Alert--horizontal .t-Alert-content {',
'    padding: 5px;',
'    flex: 1 0;',
'    display: flex;',
'    flex-direction: column;',
'    justify-content: center;',
'}',
'.t-Body-contentInner {',
'    padding: 12px;',
'    flex-grow: 1;',
'    width: 100%;',
'}',
'',
'/*--- menu icon CSS Start -------------------*/',
'#qicon {',
'    font-size: 40PX;',
'    text-align: center;',
'    color: black;',
'    font-weight:600;',
'}',
'',
'#cicon {',
'    font-size: 40PX;',
'    text-align: center;',
'    color: green;',
'    font-weight:600;',
'}',
'#micon {',
'    font-size: 40PX;',
'    text-align: center;',
'    color: blue;',
'    font-weight:600;',
'}',
'',
'.t-Cards--featured .t-Card-desc {',
'    font-size: 14px;',
'    --line-height: 20px;',
'    text-align: center;',
'    font-weight: 700;',
'    background-color:white;',
'}',
'',
'.t-Cards--featured .t-Card-body {',
'    border-top: 1px solid rgba(0,0,0,.075);',
'    padding: 3px;',
'    background-color: white;',
'}',
'',
'',
'.t-Cards--featured .t-Card-titleWrap {',
'    font-size: 14px;',
'    font-weight: 500;',
'    text-align: center;',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    flex-direction: column;',
'    padding: 7px 6px;',
'    background-color: white;',
'}',
'',
'.righthead{',
'    color:Green;',
'    font-weight:700;',
'    font-size:20px;',
'    /* border: 1px solid green;*/',
'}',
'',
'.proghead{',
'    font-weight:800;',
'    font-size:28px;',
'  -webkit-text-fill-color: black ; /* Will override color (regardless of order)  border: 1px solid red;*/',
'  -webkit-text-stroke-width: .75px;',
'  -webkit-text-stroke-color: white;',
'}',
'/*---------------- menu tooltip--------------*/',
'',
'        #cicon .tooltiptext {',
'          visibility: hidden;',
'          font-size:14px;',
'          --width: 50px;',
'          --background-color: black;',
'          color: Red;',
'          --text-align: center;',
'          --border-radius: 6px;',
'          --padding: 5px 0;',
'          /* Position the tooltip */',
'          position: absolute;',
'          z-index: auto;',
'        }',
'',
'        #micon .tooltiptext {',
'          visibility: hidden;',
'          font-size:14px;',
'          color: red;',
'          position: absolute;',
'          z-index: 1;',
'        }',
'',
'        #qicon .tooltiptext {',
'          visibility: hidden;',
'          font-size:14px;',
'          color: red;',
'          position: absolute;',
'          z-index: 1;',
'        }',
'',
'/*-----------------menu tooltip close ---------*/',
'',
'',
'/*-----------------dashboard CSS start -----------*/',
'thead {',
'display: none;',
'}',
'',
'.t-BadgeList {',
'    color: black;',
'    background-image: linear-gradient(azure,white,azure)',
'}',
'',
'.t-BadgeList, .t-BadgeList:not(.u-colors) a .t-BadgeList-label {',
'    color: black;',
'}',
'',
'/*background-image: linear-gradient(azure,lightcyan,azure);*/',
'',
'.t-BadgeList-item {',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    justify-content: flex-start;',
'    flex-grow: 1;',
'    padding: 1.2rem;',
'    border: 1px solid blue;',
'}',
'',
'.t-BadgeList--dash .t-BadgeList-wrap {',
'    padding: 0.5rem;',
'}',
'',
'.t-BadgeList--dash .t-BadgeList-value {',
'    font-size: 3.0rem;',
'    line-height: 1.2;',
'    width: 100%;',
'}',
'',
'/*------------Dashboard CSS Stop -------------*/',
'',
'',
'',
'/*---------------- Menu Icon CSS Stop -----------------------*/',
'.cmpname{',
'    color: darkblue;',
'    font-size: x-large;',
'    font-weight: bold;',
'    margin-right:10%;',
'}',
'',
'',
'.a-TreeView-content.is-current {',
'  background: green;',
'}',
'',
'',
'.tLogo{',
'    width:180px;',
'    -webkit-transition: -webkit-transform .8s ease-in-out;',
'            transition: transform .8s ease-in-out;',
'}',
'',
'.tLogo:hover {',
'  width:190px;',
'  --height:102%;',
'  transition:.3s;',
'}',
'',
'.clrow{',
'    color: black;',
'    font-weight:bold;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current--top.is-selected, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-selected {',
'    background-color: aliceblue;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel ul .a-TreeView-label {',
'    line-height: 20px;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel ul .a-TreeView-label:hover {',
'    color: &MENU_SUB_FNTCLR.;',
'    font-size: 14px;',
'    font-weight: 600;',
'    transition: .3s;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-hover{',
'    background-color: white!important;',
'    color:&MENU_SUB_FNTCLR.;',
'}',
'',
'/*-------- lineheight space inside sub menu------------------*/',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .a-TreeView-label, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .a-TreeView-label {',
'    margin-left: -5px;',
'    padding: 0;',
'    line-height: 2.2rem;',
'    margin-top: -15px;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .a-TreeView-row, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .a-TreeView-row {',
'    height: 2.5rem;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .a-TreeView-toggle, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .a-TreeView-toggle {',
'    padding: 1.0rem 1.0rem 1.0rem 0;',
'    padding-top: .4rem;',
'    padding-right: 1.2rem;',
'    padding-bottom: 1.0rem;',
'    padding-left: 0px;',
'    width: 2.8rem;',
'    height: 2.0rem;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .fa, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .fa {',
'    margin-left: -3.0rem;',
'    margin-right: .5rem;',
'    line-height: 1.4rem!important;',
'    width: 1.8rem;',
'    height: 1.2rem;',
'    padding: .2rem;',
'    border-radius: .2rem;',
'}',
'',
'/*-------- lineheight space inside sub menu close------------------*/',
'',
'/*-------- lineheight space inside main menu------------------*/',
'',
'.t-TreeNav .a-TreeView-node--topLevel > .a-TreeView-content .a-TreeView-label:hover {',
'    color: black;',
'    font-size: 14px;',
'    font-weight: bold;',
'    transition: .3s;',
'}',
'',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .fa {',
'    color: #000000;',
'    line-height: 1rem;',
'}',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-content .a-TreeView-label, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-content .a-TreeView-label {',
'    line-height: 2.5rem;',
'    font-size: 1.2rem;',
'}',
'',
'/*-------- lineheight space inside main menu close------------------*/',
'',
'',
'.t-Header .t-Button--header, .t-Header .t-Button--header.is-active, .t-Header-logo {',
'    color: &MENU_MAIN_FNTCLR.;',
'}',
'',
'.t-Button.t-Button--headerTree {',
'    min-width: 32px;',
'    BACKGROUND-COLOR: lightgrey;',
'}',
'',
'.t-Cards--iconsRounded .t-Card-icon, .t-Cards--iconsRounded .t-Icon {',
'    border-radius: 12.5%;',
'    width: initials;',
'    color: yellow;',
'    font-weight: bold;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content.is-current--top .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content.is-current--top .fa, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content.is-hover .a-Icon, .t-TreeNav .'
||'a-TreeView-node--topLevel .a-TreeView-content.is-hover .fa {',
'    color:&MENU_SUB_FNTCLR.;',
'   /* line-height:1.0rem;  */',
'}',
'',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .fa {',
'    color: &MENU_SUB_FNTCLR.;',
'    line-height:1.0rem;',
'}',
'',
'.t-TreeNav .a-TreeView-node--topLevel.is-collapsible .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel.is-collapsible .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel.is-collapsible .a-TreeView-content .fa {',
'    color: &MENU_MAIN_FNTCLR.;',
'}',
'',
'<style>',
'#TRNTYPE{',
'color: &MENU_MAIN_FNTCLR.;	',
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
'/* ============ Right Side Column Classic Report ============= */',
'.t-Report-colHead{',
'    font-size: 14px;',
'    /*line-height: 10px;',
'    color: black;',
'    transition: background-color .1s;*/',
'    color: black;',
'    font-weight:bold;',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	    padding: 2px;',
'	    BACKGROUND-COLOR: lightgrey;',
'    text-align: center;',
'    vertical-align: middle;--baseline;',
'}',
'',
'.t-Report-cell{',
'    font-size: 12px;',
'    /*line-height: 10px;*/',
'    border-right-width: 0;',
'    border: 1px solid grey;  ',
'	    padding: 2px;',
'	    --BACKGROUND-COLOR: lightgrey;',
'    transition: background-color .1s;',
'	    color: black;',
'    	--font-family: calibri;',
'}',
'',
'.t-Report-tableWrap{',
'    border: 1px solid black;',
'}',
'',
'.t-Body-actions {',
'    background-color: #f9f9f9;',
'    border-left: none; ',
'}',
'',
'',
'/* ---------------------- Menu Line Height  ------------------',
'full tree view height:',
'========================= */',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-row, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-row {',
'    height: 2.5rem;',
'}',
'',
'/*Side Toggle bar (>)',
'===================== */',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-toggle, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-toggle {',
'    height: 2.5rem;',
'    width: 3.2rem;',
'    padding: 1.0rem .4rem 1.0rem .4rem;',
'}',
'',
'',
'',
'/* Left (->) Arrow',
'================ */',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .fa {',
'    color: #000000;',
'    line-height: 2.0rem;',
'}',
'*/',
'',
'/*  Main Menu content',
'======================= */',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-content .a-TreeView-label, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-content .a-TreeView-label {',
'    line-height: 2.0rem;',
'    font-size: 1.4rem;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-content .fa, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-content .fa {',
'    margin: .8rem;',
'    font-size: 2rem;',
'    line-height: 1.6rem;',
'    width: 2.8rem;',
'    height: 1.2rem;',
'    padding: .4rem;',
'    transition: margin .15s ease;',
'}',
'/*--------selected menu background ---------*/',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-current--top.is-selected, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-row.is-selected {',
'    background-color: lightgrey;',
'    border: 1px solid darkgrey;',
'    font-weight:bold;',
'    color: darkgreen;',
'}'))
,p_step_template=>wwv_flow_api.id(110461167964754595)
,p_page_template_options=>'#DEFAULT#'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setInterval("jQuery(''#myReport1'').trigger(''apexrefresh'');", 10);',
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
,p_last_updated_by=>'ADITI'
,p_last_upd_yyyymmddhh24miss=>'20221017165852'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(74297541085883236)
,p_name=>'Notification'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'--''Notification'' ALERT_TITLE,',
'       ''success'' AS ALERT_TYPE,',
'       --''<a href="''||apex_util.prepare_url(''f?p=100370:452:''||:APP_SESSION||'':::'')||''">success</a>'' ALERT_TYPE,',
'       ''<a href="''||apex_util.prepare_url(''f?p=100370:452:''||:APP_SESSION||'':::'')||''">notifications</a>'' ALERT_TITLE,',
'       ''You Have total ''||NVL(COUNT(distinct PARAMVAL),0)||'' notifications''AS ALERT_DESC2,',
'       ''<a href="''||apex_util.prepare_url(''f?p=100370:452:''||:APP_SESSION||'':::'')||''">''||''You Have total ''||NVL(COUNT(distinct PARAMVAL),0)||'' notifications''||''</a>'' ALERT_DESC,',
'       '' '' alert_action',
'  FROM sypndjob',
' WHERE AUTHPERS = :APP_USER ',
' AND CHECKEDD = ''N'' ',
' AND ACTVSTAT = 0',
' and compcode = :compcode'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1  from sypndjob',
'where AUTHPERS =:APP_USER',
'and CHECKEDD = ''N''',
'and ACTVSTAT = 0'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(99997886518690162)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39026799145591623)
,p_query_column_id=>1
,p_column_alias=>'ALERT_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Alert Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39027169660591624)
,p_query_column_id=>2
,p_column_alias=>'ALERT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Alert Title'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39027556056591624)
,p_query_column_id=>3
,p_column_alias=>'ALERT_DESC2'
,p_column_display_sequence=>4
,p_column_heading=>'Alert Desc2'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39027970825591625)
,p_query_column_id=>4
,p_column_alias=>'ALERT_DESC'
,p_column_display_sequence=>2
,p_column_heading=>'Alert Desc'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39028381432591625)
,p_query_column_id=>5
,p_column_alias=>'ALERT_ACTION'
,p_column_display_sequence=>3
,p_column_heading=>'Alert Action'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79361790543371153)
,p_plug_name=>'Dashboard'
,p_region_name=>'DSBRD'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--textContent:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D.MESSAGE Label, to_char(D.VALUE,''99,99,99,99,999'') value,',
'''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">'' ||''LINK''||''</font></a>'' Target,',
'''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||:APP_SESSION||'':::''||D.PAGE_ID||'',RIR,RP'' Link',
'  from dashboard d',
'  where COMPCODE = :COMPCODE  ',
'  and   D.GROUPID_FK in ( select distinct M.APP_ID from symenmas m where M.PROGNAME=:P7_SELECTED_NOTE)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P7_SELECTED_NOTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(84437131810817971)
,p_name=>'<font class="righthead"> &P7_PROGDESC. </font>'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>30
,p_icon_css_classes=>'fa-lg fa-server-edit'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured force-fa-lg:t-Cards--3cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODLCODE, NMTRNTYP, PROGNAME, ICON AS CARD_TITLE,',
'''''||apex_util.prepare_url(''f?p=''||NVL(APP_ID,:APP_ID)||'':''||TRNPAG||'':''||:APP_SESSION||'':::''||TRNPAG||'':TRNMODE:''||TRN_MODE)||'''' CARD_LINK,',
'RIGHTS AS CARD_TEXT, APP_ID, TRNPAG, TRN_MODE from(',
'select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-plus-circle-o" id="cicon" ><span class="tooltiptext">Create</span></p>'' ICON, ''Create'' RIGHTS,',
'            (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''A'')  RIGHTSIMG,',
'            b.app_id, ',
'             case when(select nvl(DEMO_USER,''N'') from syusrmas a WHERE USERCODE=:APP_USER AND A.COMPCODE=:COMPCODE) = ''Y'' then',
'            b.d_pageid ',
'            else',
'            b.pageid ',
'            end TRNPAG, ',
'            ''A'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where a.ADDSTATS=''Y''',
'             and upper(usercode)=:APP_USER ',
'             and a.progname=b.progname',
'             and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE)',
'                        Union all',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-clipboard-edit" id="micon"><span class="tooltiptext">Modify</span></p>'' ICON, ''Modify/Remove'' RIGHTS, ',
'             (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''M'')  RIGHTSIMG,',
'            b.app_id, ',
'             case when(select nvl(DEMO_USER,''N'') from syusrmas a WHERE USERCODE=:APP_USER AND A.COMPCODE=:COMPCODE) = ''Y'' then',
'            b.D_M_PAGEID ',
'            else',
'            b.MOD_PAGEID ',
'            end TRNPAG,',
'            ''M'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  MODSTATS=''Y''  and upper(a.usercode)=:APP_USER ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE)',
'                        union all',
'            select B.MODLCODE, B.NMTRNTYP,B.PROGNAME,''<p aria-hidden="true" class="fa fa-table" id="qicon"><span class="tooltiptext">Query</span></p>'' ICON,  ''Query'' RIGHTS, ',
'             (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''E'')  RIGHTSIMG,',
'            b.app_id, ',
'             case when(select nvl(DEMO_USER,''N'') from syusrmas a WHERE USERCODE=:APP_USER AND A.COMPCODE=:COMPCODE) = ''Y'' then',
'            b.D_E_PAGEID ',
'            else',
'            b.PAGE_ID ',
'            end TRNPAG,',
'            -- MOD_PAGEID,',
'            ''E'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  ENQSTATS=''Y''  ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            and upper(a.usercode)=:APP_USER AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE))',
'',
'/*select MODLCODE, NMTRNTYP, PROGNAME, ICON AS CARD_TITLE,',
'''''||apex_util.prepare_url(''f?p=''||NVL(APP_ID,:APP_ID)||'':''||TRNPAG||'':''||:APP_SESSION||'':::''||TRNPAG||'':TRNMODE:''||TRN_MODE)||'''' CARD_LINK,',
'RIGHTS AS CARD_TEXT, APP_ID, TRNPAG, TRN_MODE from(',
'select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-plus-circle-o" id="cicon" ><span class="tooltiptext">Create</span></p>'' ICON, ''Create'' RIGHTS,',
'            (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''A'')  RIGHTSIMG,',
'            b.app_id, b.pageid TRNPAG , ''A'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where a.ADDSTATS=''Y''',
'             and upper(usercode)=:APP_USER ',
'             and a.progname=b.progname',
'             and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE)',
'                        Union all',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-clipboard-edit" id="micon"><span class="tooltiptext">Modify</span></p>'' ICON, ''Modify/Remove'' RIGHTS, ',
'             (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''M'')  RIGHTSIMG,',
'            b.app_id, B.MOD_PAGEID TRNPAG,  ''M'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  MODSTATS=''Y''  and upper(a.usercode)=:APP_USER ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE)',
'                        union all',
'            select B.MODLCODE, B.NMTRNTYP,B.PROGNAME,''<p aria-hidden="true" class="fa fa-table" id="qicon"><span class="tooltiptext">Query</span></p>'' ICON,  ''Query'' RIGHTS, ',
'             (select RIGHTSIMG from SYMENUICON where RIGHTSCOD=''E'')  RIGHTSIMG,',
'            b.app_id, B.PAGE_ID TRNPAG, -- MOD_PAGEID,',
'            ''E'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  ENQSTATS=''Y''  ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            and upper(a.usercode)=:APP_USER AND UPPER(a.PROGNAME)=UPPER(:P7_SELECTED_NOTE)) */',
'',
'',
'        '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P7_SELECTED_NOTE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(11057987856946050)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39011524911591608)
,p_query_column_id=>1
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Modlcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39011902754591608)
,p_query_column_id=>2
,p_column_alias=>'NMTRNTYP'
,p_column_display_sequence=>2
,p_column_heading=>'Nmtrntyp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39012334611591609)
,p_query_column_id=>3
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Progname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39012703687591609)
,p_query_column_id=>4
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'Card Title'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39013100116591610)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39013541010591610)
,p_query_column_id=>6
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>7
,p_column_heading=>'Card Text'
,p_column_format=>'PCT_GRAPH:::'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39013949970591611)
,p_query_column_id=>7
,p_column_alias=>'APP_ID'
,p_column_display_sequence=>4
,p_column_heading=>'App Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39014315570591612)
,p_query_column_id=>8
,p_column_alias=>'TRNPAG'
,p_column_display_sequence=>5
,p_column_heading=>'Trnpag'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39014743409591612)
,p_query_column_id=>9
,p_column_alias=>'TRN_MODE'
,p_column_display_sequence=>6
,p_column_heading=>'Trn Mode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(96787526188953939)
,p_name=>'<font color="gray">Most Recent Task</font>'
,p_region_name=>'myReport1'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select COMPCODE, USERCODE, PROGNAME, PROGDESC, CLKAPPID, ',
'''<a href=" javascript:$s(''''P7_SELECTED_NOTE'''',''''''||PROGNAME||'''''')">''||PROGDESC||''</a>'' AS LINK,',
'''<a  href="''||apex_util.prepare_url(''f?p=&APP_ID.:1:&SESSION.:T:::P7_SELECTED_NOTE,PROGNAME,PROGDESC,DOCTTYPE,SUBTTYPE,P7_M_PAGE_ID:''||PROGNAME||'',''||PROGNAME||'',''||PROGDESC||'',''||DOCTTYPE||'',''||SUBTTYPE||'',''||ADD_PAGE_ID)||''"><font color="blue">''|| '
||'PROGDESC||''</font></a>''',
'PROGDESC_LINK, ADD_PAGE_ID, MOD_PAGE_ID, ENQ_PAGE, ENQ_PAGE_ID, DOCTTYPE, SUBTTYPE, TIMSTAMP, RNK',
'from v_recent_task',
'where compcode=:COMPCODE',
'and USERCODE= :APP_USER',
'order by RNK asc',
'',
'/*select COMPCODE, USERCODE, PROGNAME, PROGDESC, CLKAPPID, ',
'''<a  href="''||apex_util.prepare_url(''f?p=&APP_ID.:1:&SESSION.:T:::P7_SELECTED_NOTE,PROGNAME,PROGDESC,DOCTTYPE,SUBTTYPE,P7_M_PAGE_ID:''||PROGNAME||'',''||PROGNAME||'',''||PROGDESC||'',''||DOCTTYPE||'',''||SUBTTYPE||'',''||ADD_PAGE_ID)||''"><font color="blue">''|| '
||'PROGDESC||''</font></a>''',
'PROGDESC_LINK, ADD_PAGE_ID, MOD_PAGE_ID, ENQ_PAGE, ENQ_PAGE_ID, DOCTTYPE, SUBTTYPE, TIMSTAMP, RNK',
'from v_recent_task',
'where compcode=:COMPCODE',
'and USERCODE= :APP_USER',
'order by RNK asc*/'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(100011823152690167)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39004816380591598)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39005222051591599)
,p_query_column_id=>2
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39005649841591599)
,p_query_column_id=>3
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39006006811591599)
,p_query_column_id=>4
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39006407540591600)
,p_query_column_id=>5
,p_column_alias=>'CLKAPPID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39006886163591600)
,p_query_column_id=>6
,p_column_alias=>'LINK'
,p_column_display_sequence=>15
,p_column_heading=>'Link'
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39007206112591600)
,p_query_column_id=>7
,p_column_alias=>'PROGDESC_LINK'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39007690547591600)
,p_query_column_id=>8
,p_column_alias=>'ADD_PAGE_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39008029416591600)
,p_query_column_id=>9
,p_column_alias=>'MOD_PAGE_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39008430371591601)
,p_query_column_id=>10
,p_column_alias=>'ENQ_PAGE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39008848881591601)
,p_query_column_id=>11
,p_column_alias=>'ENQ_PAGE_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39009272735591601)
,p_query_column_id=>12
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39009615982591601)
,p_query_column_id=>13
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39010003307591602)
,p_query_column_id=>14
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39010497404591602)
,p_query_column_id=>15
,p_column_alias=>'RNK'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(139079737289281845)
,p_plug_name=>'PowerBits Home'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(145809244431447752)
,p_plug_name=>'comname'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_06'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39010825604591604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(96787526188953939)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39015161569591613)
,p_name=>'P7_PROGDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(84437131810817971)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'proghead'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(100041020544690187)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39016135930591615)
,p_name=>'P7_COMPNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(145809244431447752)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39016815567591616)
,p_name=>'P7_MENU_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39017289350591616)
,p_name=>'P7_BG_IMAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39017618252591616)
,p_name=>'P7_BG_LOGO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39018095840591617)
,p_name=>'P7_BG_RANDOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39018446440591617)
,p_name=>'P7_M_PAGE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39018871027591617)
,p_name=>'P7_CACMPNAM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39019281942591617)
,p_name=>'P7_COMPCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39019643153591617)
,p_name=>'P7_DASHBOARD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39020057257591618)
,p_name=>'P7_SELECTED_NOTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39020419473591618)
,p_name=>'P7_MDLCD'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39020899611591618)
,p_name=>'P7_PROGNAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39021219892591618)
,p_name=>'P7_TRNTYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39021680937591618)
,p_name=>'P7_CMPCD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39022095486591619)
,p_name=>'P7_USER_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39022429680591619)
,p_name=>'P7_USER_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39022846503591619)
,p_name=>'P7_SUBTTYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023278555591619)
,p_name=>'P7_DOCTTYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39023613700591620)
,p_name=>'P7_TRN_MODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>':TRNMODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39024050372591620)
,p_name=>'P7_M_TRAN_TYPE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39024432047591620)
,p_name=>'P7_TRN_MODE_SHOW'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P7_TRN_MODE=''A'' ',
'THEN RETURN(''Add Data'');',
'ELSIF',
':P7_TRN_MODE =''M'' THEN',
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
 p_id=>wwv_flow_api.id(39024843959591621)
,p_name=>'P7_PAGE_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39025259019591621)
,p_name=>'P7_NEW_USER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) NEW_USER_RQST FROM USRSGNUP',
'WHERE VALDFLAG=''N''',
'and USERTYPE =''N'''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39025678842591621)
,p_name=>'P7_TERMNTD_USER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) NEW_USER_RQST FROM USRSGNUP',
'WHERE USERTYPE=''T'''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39026003938591622)
,p_name=>'P7_PROGTYP'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(139079737289281845)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39029141743591632)
,p_name=>'clear'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_condition_element=>'P7_SELECTED_NOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39029620179591633)
,p_event_id=>wwv_flow_api.id(39029141743591632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_PROG_DESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39030021016591633)
,p_name=>'App Wise Dynamic Label'
,p_event_sequence=>90
,p_condition_element=>'P7_SELECTED_NOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39030528721591633)
,p_event_id=>wwv_flow_api.id(39030021016591633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :WARECODE_LABEL := NULL;',
'   :WAREDESC_LABEL := NULL;',
'   :UOM_LABEL := NULL;',
'   :ITEMCODE_LABEL := NULL;',
'   :ITEMNAME_LABEL := NULL;',
'   :COSTCODE_LABEL := NULL;',
'   :COSTNAME_LABEL := NULL;',
'   :PARTYCODE_LABEL := NULL;',
'   :PARTYNAME_LABEL := NULL;',
'   :DOCNUM_LABEL := NULL;',
'   :DOCDATE_LABEL := NULL;',
'   :SALERATE_LABEL := NULL;',
'   :ITEMRATE_LABEL := NULL;',
'   :REFNUM_LABEL := NULL;',
'   :REFDATE_LABEL := NULL;',
'END;'))
,p_attribute_03=>'WARECODE_LABEL,WAREDESC_LABEL,UOM_LABEL,ITEMCODE_LABEL,ITEMNAME_LABEL,COSTCODE_LABEL,COSTNAME_LABEL,PARTYCODE_LABEL,PARTYNAME_LABEL,DOCNUM_LABEL,DOCDATE_LABEL,SALERATE_LABEL,ITEMRATE_LABEL,REFNUM_LABEL,REFDATE_LABEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39031024961591634)
,p_event_id=>wwv_flow_api.id(39030021016591633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   CURSOR C_LABEL',
'   IS',
'      SELECT GENERIC_LABEL,',
'             CUSTOM_LABEL,',
'             PROGNAME',
'        FROM DYNAMIC_LABEL D',
'       WHERE     COMPCODE = :COMPCODE',
'             AND NVL (ACTIVE_FLAG, ''N'') = ''Y''',
'             AND D.APP_ID = (SELECT DISTINCT M.APP_ID',
'                               FROM SYMENMAS M',
'                              WHERE M.PROGNAME = :P7_SELECTED_NOTE);',
'',
'BEGIN',
'   FOR i IN C_LABEL',
'   LOOP',
'      IF i.GENERIC_LABEL = ''WARECODE''',
'      THEN',
'         :WARECODE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''WAREDESC''',
'      THEN',
'         :WAREDESC_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''UOM''',
'      THEN',
'         :UOM_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''ITEMCODE''',
'      THEN',
'         :ITEMCODE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''ITEMNAME''',
'      THEN',
'         :ITEMNAME_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''COSTCODE''',
'      THEN',
'         :COSTCODE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''COSTNAME''',
'      THEN',
'         :COSTNAME_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''PARTYCODE''',
'      THEN',
'         :PARTYCODE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''PARTYNAME''',
'      THEN',
'         :PARTYNAME_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''DOCNUM''',
'      THEN',
'         :DOCNUM_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''DOCDATE''',
'      THEN',
'         :DOCDATE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''SALERATE''',
'      THEN',
'         :SALERATE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''ITEMRATE''',
'      THEN',
'         :ITEMRATE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''REFNUM''',
'      THEN',
'         :REFNUM_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'',
'',
'      IF i.GENERIC_LABEL = ''REFDATE''',
'      THEN',
'         :REFDATE_LABEL := i.CUSTOM_LABEL;',
'      END IF;',
'   END LOOP;',
'END;'))
,p_attribute_02=>'P7_SELECTED_NOTE'
,p_attribute_03=>'WARECODE_LABEL,WAREDESC_LABEL,UOM_LABEL,ITEMCODE_LABEL,ITEMNAME_LABEL,COSTCODE_LABEL,COSTNAME_LABEL,PARTYCODE_LABEL,PARTYNAME_LABEL,DOCNUM_LABEL,DOCDATE_LABEL,SALERATE_LABEL,ITEMRATE_LABEL,REFNUM_LABEL,REFDATE_LABEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39031461109591634)
,p_name=>'menu search'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_MENUSEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39031990841591634)
,p_event_id=>wwv_flow_api.id(39031461109591634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39032456612591635)
,p_event_id=>wwv_flow_api.id(39031461109591634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'select :P7_MENUSEARCH into :MENUSEARCH from dual;'
,p_attribute_02=>'P7_MENUSEARCH'
,p_attribute_03=>'MENUSEARCH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39032972793591635)
,p_event_id=>wwv_flow_api.id(39031461109591634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39033220568591636)
,p_name=>'assign global value'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39033721374591636)
,p_event_id=>wwv_flow_api.id(39033220568591636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROGNAME,PROGDESC,NMTRNTYP,TRNSUBTP, APP_ID--, PAGEID',
'into :PROGNAME,:PROGDESC,:DOCTTYPE,:SUBTTYPE, :P7_MENU_APP_ID--, :P7_M_PAGE_ID',
'from symenmas',
'where progname=:P7_SELECTED_NOTE;'))
,p_attribute_02=>'P7_SELECTED_NOTE'
,p_attribute_03=>'PROGNAME,PROGDESC,DOCTTYPE,SUBTTYPE,P7_MENU_APP_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39034156913591637)
,p_name=>'refresh'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39034622841591637)
,p_event_id=>wwv_flow_api.id(39034156913591637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_PROGDESC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PROGDESC',
'from symenmas',
'where progname=:P7_SELECTED_NOTE;'))
,p_attribute_07=>'P7_SELECTED_NOTE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39035106122591637)
,p_event_id=>wwv_flow_api.id(39034156913591637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_PROGDESC'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39035697954591637)
,p_event_id=>wwv_flow_api.id(39034156913591637)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(84437131810817971)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39036163630591638)
,p_event_id=>wwv_flow_api.id(39034156913591637)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_PROGDESC'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39036505796591638)
,p_name=>'INSERT_MENU'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39037088095591638)
,p_event_id=>wwv_flow_api.id(39036505796591638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 6/18/2020 3:57:30 PM (QP5 v5.149.1003.31008) */',
'DECLARE',
'   vAppId      NUMBER;',
'   vProgName   VARCHAR2 (60);',
'   vMDLCD      VARCHAR2 (20);',
'   vPROGTYPE   VARCHAR2 (5);',
'   vPAGEID     NUMBER;',
'   v_ip         VARCHAR2(30);',
'',
'BEGIN',
'',
'SELECT SYS_CONTEXT (''USERENV'', ''IP_ADDRESS'') INTO v_ip FROM DUAL;',
'',
'   SELECT S.APP_ID',
'     INTO vAppId',
'     FROM symenmas s',
'    WHERE PROGNAME = :P7_SELECTED_NOTE;',
'',
'   SELECT S.PROGDESC, S.PROGTYPE, S.MODLCODE',
'     INTO vProgName, vPROGTYPE, vMDLCD',
'     FROM SYMENMAS S',
'    WHERE PROGNAME = :P7_SELECTED_NOTE;',
'',
'   IF :TRNMODE = ''A''',
'   THEN',
'      SELECT PAGEID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P7_SELECTED_NOTE;',
'   ELSIF :TRNMODE = ''M''',
'   THEN',
'      SELECT MOD_PAGEID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P7_SELECTED_NOTE;',
'   ELSIF :TRNMODE = ''E''',
'   THEN',
'      SELECT PAGE_ID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P7_SELECTED_NOTE;',
'   END IF;',
'',
'   INSERT INTO SYRCNTSK (TASKDATE,',
'                         COMPCODE,',
'                         USERCODE,',
'                         PROGNAME,',
'                         PROGDESC,',
'                         PROGTYPE,',
'                         MDLCODE,',
'                         CLKAPPID,',
'                         CLKPAGID,',
'                         DOCTTYPE,',
'                         SUBTTYPE,',
'                         CLICKMOD,',
'                         SESSIONID,',
'                         OPRSTAMP,',
'                         CLICKTIM,',
'                         IPADDRES)',
'        VALUES (TRUNC (SYSDATE),',
'                :COMPCODE,',
'                :APP_USER,',
'                :P7_SELECTED_NOTE,',
'                vProgName,',
'                vPROGTYPE,',
'                vMDLCD,',
'                NVL (vAppId, :P7_MENU_APP_ID),',
'                vPAGEID,',
'                :DOCTTYPE,',
'                :SUBTTYPE,',
'                :TRNMODE,',
'                :APP_SESSION,',
'                :APP_USER,',
'                TO_CHAR (SYSDATE, ''RRRRMMDDHH24MISS''),',
'                v_ip);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P7_MENU_APP_ID,P7_SELECTED_NOTE,P7_MDLCD,P7_PROGTYP,DOCTTYPE,SUBTTYPE,TRNMODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39037472179591639)
,p_name=>'Show/Hide Dashboard'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_condition_element=>'P7_SELECTED_NOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39037908511591639)
,p_event_id=>wwv_flow_api.id(39037472179591639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79361790543371153)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39038450740591639)
,p_event_id=>wwv_flow_api.id(39037472179591639)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79361790543371153)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39038898988591639)
,p_name=>'refresh dashboard'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SELECTED_NOTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39039378675591640)
,p_event_id=>wwv_flow_api.id(39038898988591639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(79361790543371153)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39028704548591631)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'back image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''url(#''||''APP_IMAGES''||''#''||LDPGIMGNM||'')'' img, ''#''||''APP_IMAGES''||''#''||LDPGLOGNM||'''' LOGO',
'into :P7_BG_IMAGE, :P7_BG_LOGO',
' FROM SYHMBGMST',
'WHERE COMPCODE=:COMPCODE ',
'AND APPID=:APP_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
