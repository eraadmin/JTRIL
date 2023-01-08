prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(100064779117690213)
,p_name=>'Home Test'
,p_step_title=>'Home Test'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'.cmpname{',
'    color: darkblue;',
'    font-size: x-large;',
'    font-weight: bold;',
'    margin-right:30%;',
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
'  /*-webkit-transform: rotate(180deg);',
'          transform: rotateY(360deg); */',
'  width:190px;',
'  height:102%;',
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
'/*-------- lineheight space inside sub menu------------------*/',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .a-TreeView-label, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .a-TreeView-label {',
'    margin-left: 0;',
'    padding: 0;',
'    line-height: 3rem;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .a-TreeView-toggle, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .a-TreeView-toggle {',
'    padding: 1.2rem 1.2rem 1.2rem 0;',
'    padding-top: 1.2rem;',
'    padding-right: 1.2rem;',
'    padding-bottom: 1.2rem;',
'    padding-left: 0px;',
'    width: 2.8rem;',
'    height: 3rem;',
'}',
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel ul .fa, .t-TreeNav--styleB .a-TreeView-node--topLevel ul .fa {',
'    margin-left: -3.0rem;',
'    margin-right: .5rem;',
'    line-height: 1.6rem!important;',
'    width: 1.8rem;',
'    height: 2rem;',
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
'    font-size: 16px;',
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
'    line-height: 3.4rem;',
'    font-size: 1.4rem;',
'}',
'',
'/*-------- lineheight space inside main menu close------------------*/',
'',
'',
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
'    line-height:1.2rem;',
'}',
'',
'',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .fa {',
'    color: &MENU_SUB_FNTCLR.;',
'    line-height:1.2rem;',
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
'	    padding: 3px;',
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
'	    padding: 3px;',
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
'    border-left: none; */',
'}',
'',
'',
'/* ---------------------- Menu Line Height  ------------------',
'full tree view height:',
'========================= */',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-row, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-row {',
'    height: 3.4rem;',
'}',
'',
'/*Side Toggle bar (>)',
'===================== */',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-toggle, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-toggle {',
'    height: 3.4rem;',
'    width: 3.2rem;',
'    padding: 1.4rem 1.2rem 1.4rem .4rem;',
'}',
'',
'',
'',
'/* Left (->) Arrow',
'================ */',
'.t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .a-Icon, .t-TreeNav .a-TreeView-node--topLevel .a-TreeView-content .fa {',
'    color: #000000;',
'    line-height: 2.4rem;',
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
'',
'.t-TreeNav--styleA .a-TreeView-node--topLevel>.a-TreeView-content .fa, .t-TreeNav--styleB .a-TreeView-node--topLevel>.a-TreeView-content .fa {',
'    margin: .8rem;',
'    font-size: 2rem;',
'    line-height: 2rem;',
'    width: 2.8rem;',
'    height: 1.8rem;',
'    padding: .4rem;',
'    transition: margin .15s ease;',
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
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20201028164205'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12618836230263377)
,p_plug_name=>'<font color="gray"> You have bellow rights to do &P4_PROGDESC. </font>'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>40
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'v_page varchar2(10) := 9;',
'l_url varchar2(2000);',
'cursor c is',
'',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-plus-circle-o"> Create </p> ''||:P4_PROGDESC Rights,b.app_id,b.pageid TRNPAG , ''A'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where a.ADDSTATS=''Y''',
'             and upper(usercode)=:APP_USER ',
'             and a.progname=b.progname',
'             and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P4_SELECTED_NOTE)',
'                        Union all',
'            select B.MODLCODE,B.NMTRNTYP,B.PROGNAME, ''<p aria-hidden="true" class="fa fa-clipboard-edit"> Modify/Remove</p> ''||:P4_PROGDESC Rights,b.app_id,MOD_PAGEID TRNPAG,  ''M'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  MODSTATS=''Y''  and upper(a.usercode)=:APP_USER ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            AND UPPER(a.PROGNAME)=UPPER(:P4_SELECTED_NOTE)',
'                        union all',
'            select B.MODLCODE, B.NMTRNTYP,B.PROGNAME,''<p aria-hidden="true" class="fa fa-table"> Query </p> ''||:P4_PROGDESC Rights,b.app_id, PAGE_ID TRNPAG, -- MOD_PAGEID,',
'            ''E'' TRN_MODE ',
'            from syrights a,symenmas b',
'            where  ENQSTATS=''Y''  ',
'             and a.progname=b.progname',
'              and a.compcode=:compcode',
'            and upper(a.usercode)=:APP_USER AND UPPER(a.PROGNAME)=UPPER(:P4_SELECTED_NOTE);',
'            ',
'Begin',
'         ',
'For r in c Loop ',
'                        ',
'sys.htp.p('' <a style="color:black;" href="''||apex_util.prepare_url(''f?p=''||NVL(r.app_id,:APP_ID)||'':''||r.TRNPAG||'':''||:APP_SESSION||''::::TRNMODE:''||r.TRN_MODE)||''"><font color="blue">''||r.rights||''</font></a>'');',
'sys.htp.p(''<br>'');',
'',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12771862080280615)
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
 p_id=>wwv_flow_api.id(12839230192323385)
,p_plug_name=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select D.MESSAGE Label, to_char(D.VALUE,''99,99,99,99,999'') value, ',
'   ''<a href="''||apex_util.prepare_url(''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||:PROGNAME||'',''||:DOCTTYPE||'',''||:SUBTTYPE)||''"><font color="blue">'' ||''LINK''||''</font></a>'' Target',
'  --''f?p=''||D.GROUPID_FK||'':''||D.PAGE_ID||:APP_SESSION||'':::''||D.PAGE_ID||'',RIR,RP'' Link',
'  from dashboard d',
'  where D.GROUPID_FK = (',
'  select distinct M.APP_ID from symenmas m where M.PROGNAME=:P4_SELECTED_NOTE)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P4_SELECTED_NOTE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P4_SELECTED_NOTE'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19507569683877301)
,p_name=>'<font color="gray">Most Recent Task</font>'
,p_region_name=>'myReport1'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE, USERCODE, PROGNAME, PROGDESC, CLKAPPID, ',
'CASE WHEN ADD_PAGE=''Y'' THEN',
'''<a  href="''||apex_util.prepare_url(''f?p=''||NVL(CLKAPPID,:APP_ID)||'':''||ADD_PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||DOCTTYPE||'',''||SUBTTYPE)||''"><font color="blue">''|| PROGDESC||''</font></a>''',
'ELSE PROGDESC END ADD_PAGE,',
'CASE WHEN MOD_PAGE=''Y'' THEN',
'''<a  href="''||apex_util.prepare_url(''f?p=''||NVL(CLKAPPID,:APP_ID)||'':''||MOD_PAGE_ID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||DOCTTYPE||'',''||SUBTTYPE)||''"><font color="blue">''||''Modify''||''</font></a>''',
'ELSE ''No Right'' END MOD_PAGE,',
'ADD_PAGE_ID, MOD_PAGE_ID, ENQ_PAGE, ENQ_PAGE_ID, DOCTTYPE, SUBTTYPE, TIMSTAMP, RNK',
'from v_recent_task',
'where compcode=:COMPCODE',
'and USERCODE= :APP_USER',
'order by RNK',
'',
'/*SELECT PROGNAME, --PROGDESC||'' (''||(ADD_DATA+MOD_DATA+ENQ_DATA)||'')'' PROGRAM_NAME,',
'''<a style="text-align:left;color:black" href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''|| PROGDESC||''</fo'
||'nt></a>'' ADD_DAT,',
'''<a style="color:black" href="''||apex_util.prepare_url(''f?p=''||NVL(app_id,:APP_ID)||'':''||MOD_PAGEID||'':''||:APP_SESSION||'':T:::PROGNAME,DOCTTYPE,SUBTTYPE:''||PROGNAME||'',''||NMTRNTYP||'',''||TRNSUBTP)||''"><font color="blue">''||''Modify''||''</font></a>'' MODI'
||'FY_D,',
'APP_ID, PAGEID, MOD_PAGEID, PAGE_ID, NMTRNTYP, TRNSUBTP,  ADD_DATA,  MOD_DATA,  ENQ_DATA',
'from(',
'SELECT PROGNAME, PROGDESC,APP_ID, PAGEID,MOD_PAGEID, PAGE_ID, NMTRNTYP, TRNSUBTP, SUM(NVL(ADD_DATA,0)) ADD_DATA,SUM(NVL(MOD_DATA,0)) MOD_DATA, SUM(NVL(ENQ_DATA,0))ENQ_DATA',
'FROM(',
'SELECT S.TASKID, S.TASKDATE, S.COMPCODE, S.USERCODE, S.PROGNAME,S.DOCTTYPE, S.SUBTTYPE,S.PROGTYPE,S.MDLCODE, S.PROGDESC,SM.NMTRNTYP,SM.TRNSUBTP, SM.APP_ID, SM.PAGEID,SM.MOD_PAGEID, ',
'SM.PAGE_ID, S.CLICKMOD, S.OPRSTAMP, S.TIMSTAMP TIMSTAMP, TO_DATE(S.CLICKTIM,''YY/MM/DD HH24:MI:SS'') CLICKTIME, ',
'decode(CLICKMOD,''A'',1) ADD_DATA,',
'decode(CLICKMOD,''E'',1) ENQ_DATA,',
'decode(CLICKMOD,''M'',1) MOD_DATA',
' FROM SYRCNTSK S, SYMENMAS SM',
'WHERE S.COMPCODE=:COMPCODE',
'  AND S.USERCODE=:APP_USER',
'  AND S.PROGNAME= SM.PROGNAME',
'ORDER BY s.TIMSTAMP DESC',
')',
'GROUP BY PROGNAME,PROGDESC,PAGEID,MOD_PAGEID,PAGE_ID, APP_ID,NMTRNTYP,TRNSUBTP',
')',
'WHERE ROWNUM <=20',
'*/',
''))
,p_display_condition_type=>'NEVER'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43097255322983440)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43096872421983438)
,p_query_column_id=>2
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43097579223983440)
,p_query_column_id=>3
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43096406372983438)
,p_query_column_id=>4
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43095979052983437)
,p_query_column_id=>5
,p_column_alias=>'CLKAPPID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43095578359983437)
,p_query_column_id=>6
,p_column_alias=>'ADD_PAGE'
,p_column_display_sequence=>6
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43094775449983435)
,p_query_column_id=>7
,p_column_alias=>'MOD_PAGE'
,p_column_display_sequence=>8
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43095203453983437)
,p_query_column_id=>8
,p_column_alias=>'ADD_PAGE_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43094457654983435)
,p_query_column_id=>9
,p_column_alias=>'MOD_PAGE_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43094026301983435)
,p_query_column_id=>10
,p_column_alias=>'ENQ_PAGE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43093594339983434)
,p_query_column_id=>11
,p_column_alias=>'ENQ_PAGE_ID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43093214867983434)
,p_query_column_id=>12
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43092808337983434)
,p_query_column_id=>13
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43092445142983432)
,p_query_column_id=>14
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43092019410983432)
,p_query_column_id=>15
,p_column_alias=>'RNK'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(28366316678875300)
,p_plug_name=>'Dashboard_hr'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>30
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
,p_ajax_items_to_submit=>'P4_MENU_APP_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P4_SELECTED_NOTE'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'5'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38096384519027702)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(87118102761521515)
,p_name=>'<font color="gray">Most Recent Task</font>'
,p_region_name=>'myReport2'
,p_template=>wwv_flow_api.id(99986191011690159)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent4:t-Region--noUI:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select COMPCODE, USERCODE, PROGNAME, PROGDESC, CLKAPPID, ',
'''<a  href="''||apex_util.prepare_url(''f?p=&APP_ID.:1:&SESSION.:T:::P4_SELECTED_NOTE,PROGNAME,PROGDESC,DOCTTYPE,SUBTTYPE,P4_M_PAGE_ID:''||PROGNAME||'',''||PROGNAME||'',''||PROGDESC||'',''||DOCTTYPE||'',''||SUBTTYPE||'',''||ADD_PAGE_ID)||''"><font color="blue">''|| '
||'PROGDESC||''</font></a>''',
'PROGDESC_LINK, ADD_PAGE_ID, MOD_PAGE_ID, ENQ_PAGE, ENQ_PAGE_ID, DOCTTYPE, SUBTTYPE, TIMSTAMP, RNK',
'from v_recent_task',
'where compcode=:COMPCODE',
'and USERCODE= :APP_USER',
'order by RNK asc'))
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43080076588983418)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43079688591983416)
,p_query_column_id=>2
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43080521625983418)
,p_query_column_id=>3
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43079281176983416)
,p_query_column_id=>4
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43078951763983416)
,p_query_column_id=>5
,p_column_alias=>'CLKAPPID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43075330987983413)
,p_query_column_id=>6
,p_column_alias=>'PROGDESC_LINK'
,p_column_display_sequence=>14
,p_column_format=>'PCT_GRAPH:::'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43078514825983416)
,p_query_column_id=>7
,p_column_alias=>'ADD_PAGE_ID'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43078165276983415)
,p_query_column_id=>8
,p_column_alias=>'MOD_PAGE_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43077701531983415)
,p_query_column_id=>9
,p_column_alias=>'ENQ_PAGE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43077287620983415)
,p_query_column_id=>10
,p_column_alias=>'ENQ_PAGE_ID'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43076900839983415)
,p_query_column_id=>11
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43076538298983413)
,p_query_column_id=>12
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43076138959983413)
,p_query_column_id=>13
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43075689625983413)
,p_query_column_id=>14
,p_column_alias=>'RNK'
,p_column_display_sequence=>13
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88684063126370494)
,p_plug_name=>'schema change'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(99986191011690159)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43074939218983412)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87118102761521515)
,p_button_name=>'Refresh_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43091623730983431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19507569683877301)
,p_button_name=>'Refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--tiny:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(100042305862690193)
,p_button_image_alt=>'Refresh'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43081172827983418)
,p_name=>'P4_COMPNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(38096384519027702)
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
 p_id=>wwv_flow_api.id(43081885018983420)
,p_name=>'P4_PROGTYP'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43082323554983420)
,p_name=>'P4_TERMNTD_USER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*) NEW_USER_RQST FROM USRSGNUP',
'WHERE USERTYPE=''T'''))
,p_item_default_type=>'SQL_QUERY'
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
,p_default_application_id=>100100
,p_default_id_offset=>172555406974799196
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43082698073983420)
,p_name=>'P4_NEW_USER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
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
 p_id=>wwv_flow_api.id(43083159360983421)
,p_name=>'P4_PAGE_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43083528067983421)
,p_name=>'P4_TRN_MODE_SHOW'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P4_TRN_MODE=''A'' ',
'THEN RETURN(''Add Data'');',
'ELSIF',
':P4_TRN_MODE =''M'' THEN',
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
 p_id=>wwv_flow_api.id(43083964561983423)
,p_name=>'P4_M_TRAN_TYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43084328181983423)
,p_name=>'P4_DOCTTYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43084690616983423)
,p_name=>'P4_SUBTTYPE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43085098527983423)
,p_name=>'P4_USER_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43085522719983424)
,p_name=>'P4_USER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43085908475983424)
,p_name=>'P4_CMPCD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43086304593983424)
,p_name=>'P4_TRNTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43086771064983424)
,p_name=>'P4_PROGNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43087157444983424)
,p_name=>'P4_MDLCD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43087497254983426)
,p_name=>'P4_PROGDESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':PROGDESC'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43087955456983426)
,p_name=>'P4_SELECTED_NOTE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43088312053983426)
,p_name=>'P4_DASHBOARD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43088702975983426)
,p_name=>'P4_COMPCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43089107957983427)
,p_name=>'P4_CACMPNAM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43089562534983427)
,p_name=>'P4_M_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43089918287983427)
,p_name=>'P4_MENU_APP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12771862080280615)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43090632908983429)
,p_name=>'P4_TRN_MODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(12618836230263377)
,p_use_cache_before_default=>'NO'
,p_item_default=>':TRNMODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43098493857983449)
,p_name=>'P4_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88684063126370494)
,p_prompt=>'New'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:RML;101,CBL;100'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(100041182336690187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43073576947983398)
,p_name=>'INSERT'
,p_event_sequence=>20
,p_condition_element=>'P4_SELECTED_NOTE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43073152244983398)
,p_event_id=>wwv_flow_api.id(43073576947983398)
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
'BEGIN',
'   SELECT S.APP_ID',
'     INTO vAppId',
'     FROM symenmas s',
'    WHERE PROGNAME = :P4_SELECTED_NOTE;',
'',
'   SELECT S.PROGDESC, S.PROGTYPE, S.MODLCODE',
'     INTO vProgName, vPROGTYPE, vMDLCD',
'     FROM SYMENMAS S',
'    WHERE PROGNAME = :P4_SELECTED_NOTE;',
'',
'   IF :TRNMODE = ''A''',
'   THEN',
'      SELECT PAGEID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P4_SELECTED_NOTE;',
'   ELSIF :TRNMODE = ''M''',
'   THEN',
'      SELECT MOD_PAGEID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P4_SELECTED_NOTE;',
'   ELSIF :TRNMODE = ''E''',
'   THEN',
'      SELECT PAGE_ID',
'        INTO vPAGEID',
'        FROM symenmas',
'       WHERE progname = :P4_SELECTED_NOTE;',
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
'                         CLICKTIM)',
'        VALUES (TRUNC (SYSDATE),',
'                :COMPCODE,',
'                :APP_USER,',
'                :P4_SELECTED_NOTE,',
'                vProgName,',
'                vPROGTYPE,',
'                vMDLCD,',
'                NVL (vAppId, :P4_MENU_APP_ID),',
'                vPAGEID,',
'                :DOCTTYPE,',
'                :SUBTTYPE,',
'                :TRNMODE,',
'                :APP_SESSION,',
'                :APP_USER,',
'                TO_CHAR (SYSDATE, ''RRRRMMDDHH24MISS''));',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      NULL;',
'END;'))
,p_attribute_02=>'P4_MENU_APP_ID,P4_M_PAGE_ID,P4_TRN_MODE,P4_SELECTED_NOTE,P4_MDLCD,P4_PROGTYP,P4_SUBTTYPE,P4_DOCTTYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43072724459983398)
,p_name=>'right bar'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43072245016983396)
,p_event_id=>wwv_flow_api.id(43072724459983398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(window).on("theme42ready", function() {',
'/*',
'   if ($("body").hasClass("js-navExpanded")) {',
'',
'   $("#t_Button_navControl").click();',
'',
'  }*/',
'',
'   if ($("body").hasClass("js-rightExpanded")) {',
'',
'   $("#t_Button_rightControlButton").click();',
'',
'  }',
'',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43071794933983396)
,p_name=>'nav bar'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43071304851983396)
,p_event_id=>wwv_flow_api.id(43071794933983396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(window).on("theme42ready", function() {',
'',
'   if ($("body").hasClass("js-navExpanded")) {',
'',
'   $("#t_Button_navControl").click();',
'',
'  }',
'',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43070903303983396)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43070470598983395)
,p_event_id=>wwv_flow_api.id(43070903303983396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P4_NEW = ''101'' then',
'dpr_setschema( p_schema => ''ORBRGS_RML'',',
'p_compcode => ''101''',
');',
'ELSE',
'dpr_setschema( p_schema => ''ORBRGS_MAIN'',',
'p_compcode => ''100''',
');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
