prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
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
 p_id=>201
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Prospect'
,p_page_mode=>'MODAL'
,p_step_title=>'Prospect'
,p_reload_on_submit=>'A'
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
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170919152657'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(94875918678521878)
,p_name=>'Prospect'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"DOCNUMBR",',
'a.SMANCODE "SMANCODE",',
'"CUSTMRID",',
'"ITEMCODE",',
'"CUSTMAIL",',
'"WARECODE",',
'decode(PURCHASE_TYPE,''H'',''Hot'',''C'',''Cold'',''W'',''Warm'',''T'',''Targetful'')"PURCHASE_TYPE",',
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
'decode(a.CONFIRMC,''N'',''Lost'',''Y'',''Win'')"CONFIRMC",',
'"RESNFLST",',
'"NMPRDTYP",',
'a.WHSZONFK "WHSZONFK",',
' ''<span style="width:500px;">''',
'       ||''FollowUP''',
'       || ''</span>''',
' ViewModify',
'from "#OWNER#"."NMCUSVLG" A  ',
'   WHERE  a.compcode = :compcode',
'     and nvl(a.CONFIRMC,''N'') = ''Y''',
'     and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :app_user)',
'     or a.SMANCODE in (select v.smancode',
'                         from VW_SMAN_PRODUCT v ',
'                        where a.smancode like V.SMANCODE_TREE||''%''',
'                         and v.REPORTNG = :APP_USER',
'                         and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'                         and V.PRODUCT_TYPE = A.NMPRDTYP',
'                         and a.compcode = v.compcode))'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
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
 p_id=>wwv_flow_api.id(38429492007068606)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38430232244068606)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Tracking No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38430611704068606)
,p_query_column_id=>3
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38431085670068607)
,p_query_column_id=>4
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CUSTMRID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38431479399068607)
,p_query_column_id=>5
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38431829782068607)
,p_query_column_id=>6
,p_column_alias=>'CUSTMAIL'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CUSTMAIL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38432290254068607)
,p_query_column_id=>7
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38432675963068608)
,p_query_column_id=>8
,p_column_alias=>'PURCHASE_TYPE'
,p_column_display_sequence=>12
,p_column_heading=>'Mode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PURCHASE_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38433072807068608)
,p_query_column_id=>9
,p_column_alias=>'SMANNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Sales Executive&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_css_style=>'width:150%;'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38433451942068608)
,p_query_column_id=>10
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>11
,p_column_heading=>'Product&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38428650240068605)
,p_query_column_id=>11
,p_column_alias=>'PROSPECT'
,p_column_display_sequence=>9
,p_column_heading=>'Prospect&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38428999604068605)
,p_query_column_id=>12
,p_column_alias=>'PROSPECT_PHONE'
,p_column_display_sequence=>10
,p_column_heading=>'&nbsp;&nbsp;&nbsp;Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38433829681068608)
,p_query_column_id=>13
,p_column_alias=>'CONFIRMC'
,p_column_display_sequence=>13
,p_column_heading=>'Confirm&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CONFIRMC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38434268920068608)
,p_query_column_id=>14
,p_column_alias=>'RESNFLST'
,p_column_display_sequence=>14
,p_column_heading=>'Reason of Lost'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'RESNFLST'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d,C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''COD''',
'and c.MODLCODE = ''NM''',
'and :G_TEMP= ''N'''))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38429800289068606)
,p_query_column_id=>15
,p_column_alias=>'NMPRDTYP'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38428255868068604)
,p_query_column_id=>16
,p_column_alias=>'WHSZONFK'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38434633293068609)
,p_query_column_id=>17
,p_column_alias=>'VIEWMODIFY'
,p_column_display_sequence=>15
,p_column_heading=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_column_link=>'f?p=&APP_ID.:277:&SESSION.::&DEBUG.:RP:P277_LEADS_NO,P277_WARECODE_1,P277_REF_ITMECODE,P277_WHSZONFK,P277_NMPRDTYP:#DOCNUMBR#,#WARECODE#,#ITEMCODE#,#WHSZONFK#,#NMPRDTYP#'
,p_column_linktext=>'FollowUp'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38435014112068609)
,p_query_column_id=>18
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38435444716068609)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(94875918678521878)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38435821116068609)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(94875918678521878)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38436213971068610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94875918678521878)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P201_RANDOMNO.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38436609427068610)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(94875918678521878)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38440936048068613)
,p_branch_name=>'Go To Page 264'
,p_branch_action=>'f?p=&APP_ID.:201:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(38436609427068610)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38437001183068610)
,p_name=>'P201_REASON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94875918678521878)
,p_prompt=>'Reason'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38437423068068610)
,p_name=>'P201_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94875918678521878)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38437933674068611)
,p_tabular_form_region_id=>wwv_flow_api.id(94875918678521878)
,p_validation_name=>'Reason of lost validation'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :CONFIRMC = ''N'' and :RESNFLST is  null then',
'        return ''Reason of lost cannot be null'';',
'    end if;',
'    return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38438999071068612)
,p_name=>'Set cascading LOV after refresh and onload'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(94875918678521878)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38439521508068612)
,p_event_id=>wwv_flow_api.id(38438999071068612)
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
 p_id=>wwv_flow_api.id(38439955517068613)
,p_name=>'Set cascading select list for new row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38435821116068609)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38440493354068613)
,p_event_id=>wwv_flow_api.id(38439955517068613)
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
 p_id=>wwv_flow_api.id(38438223190068611)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(94875918678521878)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38438656900068612)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(94875918678521878)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
