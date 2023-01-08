prompt --application/pages/page_00273
begin
--   Manifest
--     PAGE: 00273
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
 p_id=>273
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customers'
,p_step_title=>'Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072238553908352)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if lt IE 8]>',
'<style type="text/css">',
'/* IE is broken */',
'td.Mobileno{',
'  width: 300px;',
'  word-wrap: break-word;',
'}',
'</style>',
'<![endif]-->',
'',
'<style type="text/css">',
'.apexir_WORKSHEET_DATA {',
'}',
'th#Mobileno{',
'  width: 300px;',
'  max-width: 300px;',
'}',
'td[headers="Mobileno"] {',
'  max-width: 300px;',
'  word-wrap: break-word;',
'}',
'</style>',
'<!--[if lt IE 8]>',
'<style type="text/css">',
'/* IE is broken */',
'th#Mobileno,',
'td[headers="Mobileno"] {',
'  width: 300px;',
'}',
'</style>',
'<![endif]-->'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
';(function($){$.fn.htmldbDscroll=function(opt){',
' opt=$.extend({',
'  width:200,',
'  height:120,',
'  freezeColumns:1,',
'  freezeRows:1,',
'  addCellWidth:500,',
'  addRowHeight:5,',
'  addTblWidth:80,',
'  scrollWidth:2',
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
'}})(jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ir_scroll{',
'  height:700px; ',
'  overflow-y:auto;',
'}',
'',
'.ir_td{',
'  padding: 0px 0px;',
'  border-top: 0px;',
'  border-bottom: 0px;',
'}',
'',
'.ir_wrap_table{',
'  padding: 0px;',
'  border-top: 0px;',
'  border-bottom: 0px;',
'  width: 100%;',
'  border-width: 0px 0px 1px 0px;',
'  border-style: solid;',
'  border-color: red;',
'}',
'',
'.ir_wrap_td{',
'  padding: 0px;',
'  border-top: 0px;',
'  border-bottom: 0px;',
'}',
''))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170830122813'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107889404371449942)
,p_plug_name=>'Customers'
,p_region_name=>'VH_SCROLL_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'CUSTOMER_CODE, ',
'''<div style="width: 200px; text-align: left;font-size: 10px;">'' ||CUSTOMER||''</div>'' as CUSTOMER,',
' CRETDATE, ',
'''<div style="width: 200px; text-align: left;font-size: 10px;">'' ||CATEGORY||''</div>'' as CATEGORY, ',
'''<div style="width: 300px; text-align: left;font-size: 10px;">'' ||ADDRESS||''</div>'' as ADDRESS, PHONENUM, MOBILENO, ',
'EMAIL_ID, ',
'''<b><div style="width: 300px; text-align: left;font-size: 10px;">'' ||last_purchase||''</div></b>'' as LAST_PURCHASE,',
'LAST_PURCHASE_DATE, TOTAL_SERVICE_TAKEN, TAKEN_FOR, ',
'LAST_SERVICE_DATE',
'FROM VW_SERVICE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(107889802944449942)
,p_name=>'Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>76015309541037339
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38402830111788636)
,p_db_column_name=>'CATEGORY'
,p_display_order=>16
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38403203105788637)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>17
,p_column_identifier=>'E'
,p_column_label=>'Customer<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_CODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38403614497788637)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>18
,p_column_identifier=>'F'
,p_column_label=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name of the Customer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_report_label=>'Name of the Customer'
,p_sync_form_label=>'N'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38404016015788637)
,p_db_column_name=>'CRETDATE'
,p_display_order=>19
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CRETDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38404492074788638)
,p_db_column_name=>'ADDRESS'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38404862691788638)
,p_db_column_name=>'PHONENUM'
,p_display_order=>21
,p_column_identifier=>'I'
,p_column_label=>'Phonenum'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38405268109788638)
,p_db_column_name=>'MOBILENO'
,p_display_order=>22
,p_column_identifier=>'J'
,p_column_label=>'Mobileno'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38405623600788638)
,p_db_column_name=>'EMAIL_ID'
,p_display_order=>23
,p_column_identifier=>'K'
,p_column_label=>'Email Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38406030598788639)
,p_db_column_name=>'LAST_PURCHASE'
,p_display_order=>24
,p_column_identifier=>'L'
,p_column_label=>'Last Purchase'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_PURCHASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38406447670788639)
,p_db_column_name=>'LAST_PURCHASE_DATE'
,p_display_order=>25
,p_column_identifier=>'M'
,p_column_label=>'Last<br>Purchase<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_PURCHASE_DATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38406829482788639)
,p_db_column_name=>'TOTAL_SERVICE_TAKEN'
,p_display_order=>26
,p_column_identifier=>'N'
,p_column_label=>'Total<br>Service<br>Taken'
,p_column_link=>'f?p=&APP_ID.:290:&SESSION.::&DEBUG.:290:P290_PARA_PARTYCDE:#CUSTOMER_CODE#'
,p_column_linktext=>'#TOTAL_SERVICE_TAKEN#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_SERVICE_TAKEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38407289690788640)
,p_db_column_name=>'TAKEN_FOR'
,p_display_order=>27
,p_column_identifier=>'O'
,p_column_label=>'Taken<br>For'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAKEN_FOR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38407625798788640)
,p_db_column_name=>'LAST_SERVICE_DATE'
,p_display_order=>28
,p_column_identifier=>'P'
,p_column_label=>'Last<br>Service<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_SERVICE_DATE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(107895064511449953)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'65335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>30
,p_report_columns=>'CATEGORY:CUSTOMER_CODE:CUSTOMER:ADDRESS:PHONENUM:MOBILENO:EMAIL_ID:LAST_PURCHASE:LAST_PURCHASE_DATE:TOTAL_SERVICE_TAKEN:TAKEN_FOR:LAST_SERVICE_DATE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107980248067478865)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P273_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P273_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38408446997788642)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107889404371449942)
,p_button_name=>'Reset_Report'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:273:&SESSION.::&DEBUG.:RP,1,RIR,CIR::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38408803493788642)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(107889404371449942)
,p_button_name=>'UPLOAD_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Upload Customers'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53,54,55,56::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38409244394788643)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(107889404371449942)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:204::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(38413382877788648)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38409951385788645)
,p_name=>'P273_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(107980248067478865)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38410332982788645)
,p_name=>'P273_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(107980248067478865)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38410705953788646)
,p_name=>'P273_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(107980248067478865)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(38411274603788646)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38412331176788647)
,p_name=>'Select Advanced'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(107889404371449942)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38412888569788647)
,p_event_id=>wwv_flow_api.id(38412331176788647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38411543319788646)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P273_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38411975632788647)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :REQUEST = ''REPORTS'' then ',
'    :LAST_VIEW := 20;',
'else',
'    :LAST_VIEW := 30 ;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
