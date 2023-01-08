prompt --application/pages/page_00257
begin
--   Manifest
--     PAGE: 00257
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
 p_id=>257
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Follow Up & Confirm'
,p_page_mode=>'MODAL'
,p_step_title=>'Follow Up & Confirm'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function reason(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P264_REASON'').value=',
'    html_GetElement(''f09_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P264_REASON'').trigger(''click'');',
'});',
'',
'}',
'</script>',
'<style type="text/css">',
'.ui-autocomplete-loading{background: url("#IMAGE_PREFIX#libraries/jquery-ui/1.8/themes/base/images/ui-anim_basic_16x16.gif") no-repeat scroll right center transparent;}',
'</style>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'(function($){  ',
'    ',
'/*** Cascading select list ***/  ',
'$.fn.htmldbCascade=function(parent,onDemand,options){  ',
'    ',
'  options=$.extend({  ',
'   trigger       : false,  ',
'   extrVal       : false,  ',
'   nullShow      : false,  ',
'   nullValue     : "",  ',
'   nullDisplay   : "- Select -",  ',
'   disAlias      : "DIS",  ',
'   retAlias      : "RET",  ',
'   loadingTxt    : "Loading ...",  ',
'   loadingCss    : {"width":"80px"}  ',
'  },options);  ',
'    ',
'  return this.each(function(i){  ',
'  ',
'   var self=$(this);  ',
'   var lParent=$(parent).eq(i);  ',
'   var lSelfVal=self.val();  ',
'   if(!lSelfVal){lSelfVal="";};  ',
'  ',
'   if(!lParent.data("htmldbCascade")){  ',
'    lParent.change(function(){  ',
'  ',
'     var lParentVal=$v(this);  ',
'     if(!lParentVal){lParentVal="";};  ',
'        ',
'     $.extend(options.loadingCss,{"height":self.parent().height()});  ',
'    ',
'     self  ',
'      .hide()  ',
'      .empty()  ',
'      .parent()  ',
'      .find("div.ui-autocomplete-loading")  ',
'      .remove()  ',
'      .end()  ',
'      .append($("<div/>",{"html":options.loadingTxt,"css":options.loadingCss})  ',
'      .addClass("ui-autocomplete-loading"));  ',
'    ',
'     if(options.nullShow){  ',
'      appendOpt(self,options.nullDisplay,options.nullValue);  ',
'     };  ',
'    ',
'     $.post("wwv_flow.show",{  ',
'      p_flow_id:"&APP_ID.",  ',
'      p_flow_step_id:"&APP_PAGE_ID.",  ',
'      p_instance:"&APP_SESSION.",  ',
'      p_request:"APPLICATION_PROCESS="+onDemand,  ',
'      x01:lParentVal  ',
'     },function(jd){  ',
'      var lExists=false;  ',
'      $.each(jd.row,function(i,d){  ',
'       if(d[options.retAlias]===lSelfVal){lExists=true;};  ',
'       appendOpt(self,d[options.disAlias],d[options.retAlias]);  ',
'      });  ',
'      if(options.extrVal&&!lExists){  ',
'       appendOpt(self,lSelfVal,lSelfVal);  ',
'      };  ',
'      self  ',
'       .val(lSelfVal)  ',
'       .show()  ',
'       .parent()  ',
'       .find("div.ui-autocomplete-loading")  ',
'       .remove();  ',
'      if(options.trigger){self.trigger(options.trigger);};  ',
'     },"json");  ',
'    ',
'    }).data("htmldbCascade",true).trigger("change");  ',
'   }  ',
'  });  ',
'  /*** Append option ***/  ',
'  function appendOpt(pThis,pDis,pRet){  ',
'   pThis.append( $("<option/>",{"html":pDis,"value":pRet}) );  ',
'  };  ',
'};  ',
'    ',
'})(apex.jQuery);  '))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171226132219'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36782804688033264)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46096492483754170)
,p_plug_name=>'Follow'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94773468554676435)
,p_plug_name=>'Follow Up & Confirm'
,p_parent_plug_id=>wwv_flow_api.id(46096492483754170)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SMANCODE",',
'"CUSTMRID",',
'"ITEMCODE",',
'"CUSTMAIL",',
'"WARECODE",',
'"PURCHASE_TYPE",',
'"PURCHASE_TYPE" V_PURCHASE_TYPE,',
'(select distinct initcap(S.SMANNAME)',
'from nmsmnmas s',
'where S.COMPCODE = :compcode',
'and s.SMANCODE = a.SMANCODE)',
'smanname,',
'(select DISTINCT initcap(T.NMCODDES) ',
'from NMCODMAS T,VWNMITEM c',
'where C.COMPCODE = :compcode',
'AND T.NMSOFCDE = C.MODLCODE',
'and T.NMHRDCDE = ''MOD''',
'and T.COMPCODE = C.COMPCODE',
'and T.MODLCODE = ''NM''',
'and C.ITEMCODE = a.ITEMCODE)',
'itemname,',
'(select S.CUSTNAME',
'from nmmrkcus s',
'where S.COMPCODE = :compcode',
'and S.CUSTMRID = a.CUSTMRID)',
'Prospect,',
'(select S.CUSTMOBL',
'from nmmrkcus s',
'where S.COMPCODE = :compcode',
'and S.CUSTMRID = a.CUSTMRID)',
'Prospect_phone,',
'"CONFIRMC",',
'"CONFIRMC" V_CONFIRMC,',
'"RESNFLST",',
'"NMPRDTYP",',
'"SALES_POTENTIAL",',
'"SALES_POTENTIAL" V_SALES_POTENTIAL,',
'"PIPLNSTS",',
'"PIPLNSTS" V_PIPLNSTS,',
'a.WHSZONFK "WHSZONFK",',
' "APP_FLG",',
' "TIMSTAMP",',
' null ViewModify',
'from "#OWNER#"."NMCUSVLG" A  ',
'   WHERE  a.compcode = :compcode',
'     and nvl(a.CONFIRMC,''N'') = ''N''',
'    -- and nvl(a.APP_FLG,''N'') = ''Y''',
'    /* and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :app_user)',
'     or a.SMANCODE in (select v.smancode',
'                         from VW_SMAN_PRODUCT v ',
'                        where a.smancode like V.SMANCODE_TREE||''%''',
'                         and v.REPORTNG = :APP_USER',
'                         and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') ',
'                                                               and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                         and V.PRODUCT_TYPE = A.NMPRDTYP',
'                         and a.compcode = v.compcode))*/'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38149516456122146)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tracking No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38149598617122147)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38149751043122148)
,p_name=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMRID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38149855051122149)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38149970498122150)
,p_name=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38150014282122151)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38150148523122152)
,p_name=>'PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES d,NMSOFCDE',
'from NMcodmas s',
'        where s.compcode=:COMPCODE',
'        and s.NMHRDCDE=''MOS''',
'        and s.MODLCODE=''NM'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38150250523122153)
,p_name=>'SMANNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sales Executive'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340317135258304)
,p_name=>'ITEMNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMNAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340424338258305)
,p_name=>'PROSPECT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROSPECT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Prospect'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340578736258306)
,p_name=>'PROSPECT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROSPECT_PHONE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Mobile No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340662294258307)
,p_name=>'CONFIRMC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Confirm'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Win;Y,Lost;N'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340790644258308)
,p_name=>'RESNFLST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESNFLST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reason Of Lost'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES DIS,C.NMSOFCDE RET',
'from nmcodmas c',
'where C.COMPCODE = :COMPCODE',
'and C.NMHRDCDE = ''COD''',
'and nvl(:CONFIRMC,''N'') = ''N'''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'CONFIRMC'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340841055258309)
,p_name=>'NMPRDTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NMPRDTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38340963622258310)
,p_name=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALES_POTENTIAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Sales<br>Potential'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'RIGHT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38341050021258311)
,p_name=>'PIPLNSTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PIPLNSTS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pipeline Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :COMPCODE',
'and C.NMHRDCDE = ''PIP'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38341182121258312)
,p_name=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38342081172258321)
,p_name=>'V_CONFIRMC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_CONFIRMC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'confirm'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>1
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38342116589258322)
,p_name=>'V_SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_SALES_POTENTIAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'potential'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38342204575258323)
,p_name=>'V_PIPLNSTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_PIPLNSTS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'pipe'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>300
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38497939097142404)
,p_name=>'V_PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_PURCHASE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'V purchase type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38498139290142406)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38571581274987623)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38571609130987624)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38571792067987625)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38572227006987630)
,p_name=>'VIEWMODIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VIEWMODIFY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading=>'&nbsp;'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:253:&SESSION.::&DEBUG.:RP:P253_REF_ITMECODE,P253_WARECODE_1,P253_NMPRDTYP,P253_WHSZONFK,P253_LEADS_NO:&ITEMCODE.,&WARECODE.,&NMPRDTYP.,&WHSZONFK.,&DOCNUMBR.'
,p_link_text=>'Follow Up'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(39254305865976447)
,p_name=>'APP_FLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_FLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(50953609969389698)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Timstamp'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(38149363776122144)
,p_internal_uid=>6274870372709541
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>500
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.toolbarData = [',
'        ',
'    ];',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(38354018893258828)
,p_interactive_grid_id=>wwv_flow_api.id(38149363776122144)
,p_static_id=>'395690'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(38354142400258828)
,p_report_id=>wwv_flow_api.id(38354018893258828)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38355177146258834)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(38149516456122146)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38355667641258836)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(38149598617122147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38356144561258838)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(38149751043122148)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38356666008258840)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(38149855051122149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38357107421258842)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(38149970498122150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38357603728258844)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(38150014282122151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38358094873258847)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(38150148523122152)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38358647277258849)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(38150250523122153)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38359126306258851)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(38340317135258304)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38359693349258853)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(38340424338258305)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38360172245258854)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(38340578736258306)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38360621795258856)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(38340662294258307)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38361111707258858)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(38340790644258308)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>227
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38361684621258860)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(38340841055258309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38362127799258862)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(38340963622258310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38362617835258864)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(38341050021258311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38363143729258865)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(38341182121258312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38417997558911855)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(38342081172258321)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38418576767911858)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(38342116589258322)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38419072375911859)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(38342204575258323)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38504613858148871)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(38497939097142404)
,p_is_visible=>false
,p_is_frozen=>false
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
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38506716380172389)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(38498139290142406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38742638922534639)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(38571581274987623)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38743401525534644)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(38571609130987624)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38771853573186805)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(38572227006987630)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(39751253352190926)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(39254305865976447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(103019178759827624)
,p_view_id=>wwv_flow_api.id(38354142400258828)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(50953609969389698)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>20
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38333725936223181)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36782804688033264)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P257_RANDOMNO.'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38332921715223179)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(36782804688033264)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_api.id(60489002166243136)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38334124658223181)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(36782804688033264)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38333355407223181)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(94773468554676435)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38338325039223201)
,p_branch_name=>'Go To Page 264'
,p_branch_action=>'f?p=&APP_ID.:257:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(38334124658223181)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38334569238223182)
,p_name=>'P257_REASON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94773468554676435)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38334912307223184)
,p_name=>'P257_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94773468554676435)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39377579468029204)
,p_tabular_form_region_id=>wwv_flow_api.id(94773468554676435)
,p_validation_name=>'Validation on confirmc'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'begin',
'    if :CONFIRMC = ''N''  and :RESNFLST is null then',
'        return ''Reason of lost cannot be null when Confirm is lost'';',
'    end if;',
'    return null;',
'end;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39254453515976448)
,p_tabular_form_region_id=>wwv_flow_api.id(94773468554676435)
,p_validation_name=>'confirm_check'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :APP_FLG = ''N'' and :CONFIRMC = ''Y'' then',
' return ''This record not approved yet...'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38336574825223198)
,p_name=>'Set cascading LOV after refresh and onload'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(94773468554676435)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38336909439223199)
,p_event_id=>wwv_flow_api.id(38336574825223198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("[name=f09]").htmldbCascade(  ',
'"[name=f08]",  ',
'"GET_ERT_ITEM_ID",{  ',
'  nullShow:true,  ',
'  nullDisplay:"- Select -"  ',
'}); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38337371547223200)
,p_name=>'Set cascading select list for new row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38333355407223181)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38337856495223200)
,p_event_id=>wwv_flow_api.id(38337371547223200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.widget.tabular.addRow();  ',
'$("[name=f09]:last").htmldbCascade(  ',
'"[name=f08]:last",  ',
'"GET_ERT_ITEM_ID",{  ',
'  nullShow:true,  ',
'  nullDisplay:"- Select -"  ',
'});  '))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38571824521987626)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(94773468554676435)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Follow Up & Confirm - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39377623359029205)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(94773468554676435)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :SALES_POTENTIAL <> :V_SALES_POTENTIAL',
'or :PIPLNSTS        <> :V_PIPLNSTS',
'or :PURCHASE_TYPE   <> :V_PURCHASE_TYPE',
'then',
' ',
'insert into nmcusvlg_log(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SMANCODE, RAISEDBY, CUSTMRID, OPRSTAMP, TIMSTAMP, SERLNUMB, ',
'                         ITEMCODE, COLORCDE, APPRVDBY, APPRDATE, ADDRTYPE, TEFAXNUM, CUSTMAIL, STRTDATE, VENDDATE, REMARKSS, CONFIRMC, ',
'                         VISITPLC, PARTYCD1, PARTYCD2, PARTYCD3, PARTYCD4, POSBUYDTE, TSTDRIVE, SRSOFUND, FUNDSTAT, VHMADEIN, ALTRNTVE, ',
'                         VHCLYEAR, MILLAGEE, LOSOFCUS, RECHEDLE, VISITYPE, COSTCODE, WARECODE, MODIFYDT, CURRENT_BRAND, CURRENT_MODEL, ',
'                         PURCHASED_FROM, PURCHASE_DATE, AVERAGE_MILEAGE, CONTACT_MODE, INTERESTED_BRAND, INTERESTED_MODEL, INTERIOR_COLOR, ',
'                         EXTERIOR_COLOR, FUEL_TYPE, TEST_DRIVE_FLAG, TEST_DRIVE_MODEL, TEST_DRIVE_DATE, TEST_BOOKING_DATE, CUSTOMER_TEST_REMARKS, ',
'                         CUSTOMER_REMARKS_SALES, SALESMAN_REMARKS_SALES, NEXT_APOINTMENT_ON, SALES_POTENTIAL, REFERED_BY_SALES, VERIFIED_FLAG_SALES, VERIFIED_BY_SALES)',
'values(:COMPCODE, ''CS'', 2, :DOCNUMBR, :DOCTDATE, :SMANCODE, :APP_USER, :CUSTMRID, :APP_USER, SYSDATE, NULL, ',
'                         :ITEMCODE, NULL, :APP_USER, NULL, NULL, NULL, :CUSTMAIL, NULL, NULL, NULL, :CONFIRMC, ',
'                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',
'                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, SYSDATE, NULL, NULL, ',
'                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',
'                         NULL, NULL, NULL, NULL, NULL, NULL, NULL, ',
'                         NULL, NULL, NULL, :SALES_POTENTIAL, NULL, NULL, NULL);',
' end if;                        ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
