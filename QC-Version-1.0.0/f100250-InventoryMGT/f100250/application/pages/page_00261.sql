prompt --application/pages/page_00261
begin
--   Manifest
--     PAGE: 00261
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
 p_id=>261
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Application Wise Enquires'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Wise Enquires'
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170821110425'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137600017597614930)
,p_plug_name=>'Application Wise Enquires'
,p_region_name=>'VH_SCROLL_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DOCNUMBR Tracking_no,Doctdate AS Tracking_date,',
'          ''<div style="width: 200px; text-align: left;font-size: 10px;">''',
'       || g.CUSTMRID',
'       || ''</div>''',
'          AS CUSTMRID,',
'       /*   ''<div style="width: 300px; text-align: left;font-size: 10px;">''',
'       || v.ADDRESS',
'       || ''</div>''',
'          AS ADDRESS,',
'       v.PHONENUM,',
'       v.MOBILENO,*/',
'       g.CUSTMAIL,',
'          ''<b><div style="width: 300px; text-align: left;font-size: 10px;">''',
'       || g.smancode',
'       || ''</div></b>''',
'          AS smancode,',
'       g.WHSZONFK,',
'       g.ITEMCODE,',
'       (select S.SMANNAME d',
'        from nmsmnmas s',
'        where S.COMPCODE = :compcode',
'       and S.SMANCODE = g.SMANCODE) smanname,',
'       (select DISTINCT T.NMCODDES d',
'        from NMCODMAS T,VWNMITEM c',
'        where C.COMPCODE = :compcode',
'        AND T.NMSOFCDE = C.MODLCODE',
'        and T.NMHRDCDE = ''MOD''',
'        and T.COMPCODE = C.COMPCODE',
'        and T.MODLCODE = ''NM''',
'        and C.ITEMCODE = g.ITEMCODE) itemname,',
'       (select S.CUSTNAME d',
'        from nmmrkcus s',
'        where S.COMPCODE = :compcode',
'         and S.CUSTMRID = g.CUSTMRID) Customer_name,',
'         (select s.AREA_NAME_TREE_TYPE',
'            from VW_NMWHZNMAS s',
'            where S.COMPCODE = :compcode',
'            and s.WHSZONPK = g.WHSZONFK) Zone,',
'            (select NMCODDES from nmcodmas where compcode=g.compcode and NMSOFCDE=g.USGSEGMT and NMHRDCDE=''AMT''',
'and MODLCODE=''NM'') SYCODDES',
'  FROM nmcusvlg g --, VW_SERVICE v',
' WHERE     g.compcode = :compcode',
'       /*AND G.COMPCODE = V.COMPCODE',
'       AND G.CUSTMRID = v.CUSTOMER_CODE*/',
'       AND g.SMANCODE IN',
'              (SELECT I.SMANCODE',
'                 FROM NMPRDHDI i',
'                WHERE I.PRODUCT_TYPE IN',
'                         (SELECT MODLGROP',
'                            FROM vwnmitem v',
'                           WHERE V.COMPCODE = :compcode',
'                                 AND V.ITEMCODE = g.ITEMCODE)',
'                      AND I.COMPCODE = :compcode',
'                      AND TRUNC (g.DOCTDATE) BETWEEN NVL (',
'                                                        TRUNC (I.STARTDATE),',
'                                                        SYSDATE)',
'                                                 AND NVL (TRUNC (I.ENDDATE),',
'                                                          SYSDATE)',
'                      AND I.REPORTNG = :app_user',
'                      AND I.WHSZONFK = g.WHSZONFK',
'               UNION ALL',
'               SELECT I.SMANCODE',
'                 FROM NMPRDHDI i',
'                WHERE I.PRODUCT_TYPE IN',
'                         (SELECT MODLGROP',
'                            FROM vwnmitem v',
'                           WHERE V.COMPCODE = :compcode',
'                                 AND V.ITEMCODE = g.ITEMCODE)',
'                      AND I.COMPCODE = :compcode',
'                      AND TRUNC (g.DOCTDATE) BETWEEN NVL (',
'                                                        TRUNC (I.STARTDATE),',
'                                                        SYSDATE)',
'                                                 AND NVL (TRUNC (I.ENDDATE),',
'                                                          SYSDATE)',
'                      AND I.SMANCODE = :app_user',
'                      AND I.WHSZONFK = g.WHSZONFK)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
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
 p_id=>wwv_flow_api.id(137600433190614933)
,p_name=>'Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
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
,p_internal_uid=>105725939787202330
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37473230915276231)
,p_db_column_name=>'TRACKING_NO'
,p_display_order=>10
,p_column_identifier=>'Q'
,p_column_label=>'Tracking no'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37475643871276233)
,p_db_column_name=>'SMANNAME'
,p_display_order=>30
,p_column_identifier=>'X'
,p_column_label=>'Sales Executive'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37476073884276233)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>40
,p_column_identifier=>'Y'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37476486976276233)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>50
,p_column_identifier=>'Z'
,p_column_label=>'Prospect'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37473994584276232)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>60
,p_column_identifier=>'T'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37473633229276231)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>70
,p_column_identifier=>'S'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37474403724276232)
,p_db_column_name=>'SMANCODE'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37474804850276232)
,p_db_column_name=>'WHSZONFK'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'Whszonfk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37475210073276232)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37476840370276233)
,p_db_column_name=>'TRACKING_DATE'
,p_display_order=>110
,p_column_identifier=>'AA'
,p_column_label=>'Tracking date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37477214591276234)
,p_db_column_name=>'ZONE'
,p_display_order=>120
,p_column_identifier=>'AB'
,p_column_label=>'Zone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37472823603276231)
,p_db_column_name=>'SYCODDES'
,p_display_order=>130
,p_column_identifier=>'AC'
,p_column_label=>'Application Wise Enquires'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(137605656313614950)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'56031'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>30
,p_report_columns=>'TRACKING_NO:TRACKING_DATE:ITEMNAME:SMANNAME:CUSTOMER_NAME:CUSTMAIL::ZONE:SYCODDES'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37478067614276234)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(137600017597614930)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37478461306276235)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(137600017597614930)
,p_button_name=>'Reset_Report'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:261:&SESSION.::&DEBUG.:RP,1,RIR,CIR::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37478795999276235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(137600017597614930)
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(37481449019276236)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(37479296529276235)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37480439447276236)
,p_name=>'Select Advanced'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(137600017597614930)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37480924299276236)
,p_event_id=>wwv_flow_api.id(37480439447276236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.AF.PLUGIN.JQ.IRFREEZEHEADER'
,p_attribute_01=>'400'
,p_attribute_03=>'500'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37479672478276235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when=>'Go,P261_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37480001686276236)
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
