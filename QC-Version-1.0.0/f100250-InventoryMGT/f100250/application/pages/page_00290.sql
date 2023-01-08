prompt --application/pages/page_00290
begin
--   Manifest
--     PAGE: 00290
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
 p_id=>290
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customers service'
,p_step_title=>'Customers service'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
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
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140746'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101461115499135300)
,p_plug_name=>'Customers'
,p_region_name=>'VH_SCROLL_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PARTYCDE customer_code,',
'          ''<div style="width: 200px; text-align: left">''',
'       || CUSTNAME',
'       || ''</div>'' AS customer,',
'       ''<div style="width: 200px; text-align: left">''',
'       || CUSTTYPE',
'       || ''</div>'' AS CATEGORY,',
'          ''<div style="width: 300px; text-align: left">''',
'       || CUSTADR1',
'       || ''</div>'' AS address,',
'       CUSTPHON phonenum, CUSTMOBL mobileno, CUSTMAIL email_id,',
'''<div style="width: 200px; text-align: left">''',
'       || b.custcmpln',
'       || ''</div>'' AS custcmpln, ',
'''<div style="width: 200px; text-align: left">''',
'       || b.remarkss',
'       || ''</div>'' AS remarkss, ',
'B.ITEMDESC vehicle,B.BRAND,',
'b.registno,',
'       b.chasisno, b.delvrydt, b.endddate, b.startdte, b.nxtsrvdt, b.modlcode,',
'       b.modelnam',
'  FROM  vwnmsvci b',
' WHERE b.partycde = nvl(:P290_PARA_PARTYCDE,b.partycde)',
'ORDER BY B.Delvrydt DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P290_PARA_PARTYCDE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101461482298135300)
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
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>64306615172454806
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101461613699135300)
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
 p_id=>wwv_flow_api.id(101462059848135301)
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
 p_id=>wwv_flow_api.id(101462414774135301)
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
 p_id=>wwv_flow_api.id(101462827262135301)
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
 p_id=>wwv_flow_api.id(101463258930135301)
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
 p_id=>wwv_flow_api.id(101463636112135301)
,p_db_column_name=>'MOBILENO'
,p_display_order=>22
,p_column_identifier=>'J'
,p_column_label=>'Mobileno'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101464064344135301)
,p_db_column_name=>'EMAIL_ID'
,p_display_order=>23
,p_column_identifier=>'K'
,p_column_label=>'Email Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'EMAIL_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101464418332135301)
,p_db_column_name=>'CUSTCMPLN'
,p_display_order=>24
,p_column_identifier=>'L'
,p_column_label=>'Customer Complain'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTCMPLN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101464768186135301)
,p_db_column_name=>'REMARKSS'
,p_display_order=>25
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101465220951135303)
,p_db_column_name=>'REGISTNO'
,p_display_order=>26
,p_column_identifier=>'N'
,p_column_label=>'Registration<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'REGISTNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101465650420135303)
,p_db_column_name=>'CHASISNO'
,p_display_order=>27
,p_column_identifier=>'O'
,p_column_label=>'Chasis <br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHASISNO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101465972742135303)
,p_db_column_name=>'DELVRYDT'
,p_display_order=>28
,p_column_identifier=>'P'
,p_column_label=>'Delivery<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DELVRYDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101466463932135303)
,p_db_column_name=>'ENDDDATE'
,p_display_order=>29
,p_column_identifier=>'Q'
,p_column_label=>'End<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ENDDDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101466848846135303)
,p_db_column_name=>'STARTDTE'
,p_display_order=>30
,p_column_identifier=>'R'
,p_column_label=>'Start<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'STARTDTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101467224781135303)
,p_db_column_name=>'NXTSRVDT'
,p_display_order=>31
,p_column_identifier=>'S'
,p_column_label=>'Next<br>Service Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'NXTSRVDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101467623005135303)
,p_db_column_name=>'MODLCODE'
,p_display_order=>32
,p_column_identifier=>'T'
,p_column_label=>'Modal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MODLCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101467972233135303)
,p_db_column_name=>'MODELNAM'
,p_display_order=>33
,p_column_identifier=>'U'
,p_column_label=>'Modal<br>Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'MODELNAM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101468437838135304)
,p_db_column_name=>'VEHICLE'
,p_display_order=>34
,p_column_identifier=>'V'
,p_column_label=>'Vehicle'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VEHICLE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101468779115135304)
,p_db_column_name=>'BRAND'
,p_display_order=>35
,p_column_identifier=>'W'
,p_column_label=>'Brand'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BRAND'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101469206838135304)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'643144'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMAIL_ID:CATEGORY:CUSTOMER_CODE:CUSTOMER:ADDRESS:PHONENUM:MOBILENO:VEHICLE:BRAND:CUSTCMPLN:REMARKSS:REGISTNO:CHASISNO:DELVRYDT:STARTDTE:ENDDDATE:NXTSRVDT:MODLCODE:MODELNAM:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101469674961135304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(101461115499135300)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101470149268135304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(101461115499135300)
,p_button_name=>'UPLOAD_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Upload Customers'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:RP,53,54,55,56::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(101470535195135306)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(101461115499135300)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(101473516923135309)
,p_branch_action=>'f?p=&APP_ID.:90:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101470931554135306)
,p_name=>'P290_PARA_PARTYCDE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(101461115499135300)
,p_prompt=>'Para Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(101471407254135307)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(101472551164135309)
,p_name=>'Select Advanced'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(101461115499135300)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(101473044821135309)
,p_event_id=>wwv_flow_api.id(101472551164135309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101471699463135307)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P290_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(101472124586135307)
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
