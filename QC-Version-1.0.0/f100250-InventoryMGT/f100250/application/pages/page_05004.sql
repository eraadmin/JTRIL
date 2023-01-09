prompt --application/pages/page_05004
begin
--   Manifest
--     PAGE: 05004
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
 p_id=>5004
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Quatation'
,p_alias=>'NMQUTION'
,p_page_mode=>'MODAL'
,p_step_title=>'Quatation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <script type="text/javascript">',
'',
'      function toggle(chkBox)',
'      {',
'       $(''input[type="checkbox"]'').on(''change'', function() {',
'   $(''input[type="checkbox"]'').not(this).prop(''checked'', false);',
'});',
'      }',
'    </script>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_dialog_width=>'100%'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170919152224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37234734745413977)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125016036315745937)
,p_plug_name=>'show'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125016402806745946)
,p_plug_name=>'docnumer show'
,p_parent_plug_id=>wwv_flow_api.id(125016036315745937)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script ></script>',
'<script>',
' ',
'  function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE_OFR'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
'  }',
'   ',
'</script>',
'CHECKBOX List:',
' ',
'<div id="checkListDisp">&F_EMPNO_LIST_OFR.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125016827093745948)
,p_plug_name=>'Program name show'
,p_parent_plug_id=>wwv_flow_api.id(125016402806745946)
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script></script>',
'<script>',
' ',
'  function spCheckChange1(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE1'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp1'').innerHTML=gReturn;',
'  }',
'</script>',
'CHECKBOX List:',
'<div id="checkListDisp1">&PROGNAME.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125017216270745948)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P5004_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P5004_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(125019567723745958)
,p_name=>'Reports'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="display:none;width:100%;float:left;margin-top: 26%; position: static; !important"'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  apex_item.radiogroup',
'          (1,',
'           progname,',
'           progname,',
'           null,',
'           ''onchange="spCheckChange1(this);"onchange="spCheckChange(this);"onClick="toggle(this);"'',',
'           :progname,',
'           :progname,',
'           null,',
'           1',
'          ) progname, PROGDESC from symenmas',
'where PROGNAME in (''nmslsorp'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125020032065745960)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(125020435052745963)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Reports Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125020854900745963)
,p_plug_name=>'Order Pages'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;"'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_1'
,p_list_id=>wwv_flow_api.id(1377234323533327013)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47625999293858293)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125021192542745963)
,p_plug_name=>'Orders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'   o.DOCNUMBR,',
'   o.ITEMCODE,',
'   o.ITEMDESC,  ',
'   o.DOCTDATE,   ',
'   o.WARECODE ,',
'   o.APPRQNTY , ',
'   o.MSFCAMNT, ',
'   o.UPDOCNUM,',
'   o.UPDOCDTE,',
'   c.CUSTNAME customer_name,',
'   o.REMARKSS REMARKS,',
'apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);toggle(this);"'',',
'                           :F_EMPNO_LIST_OFR,',
'                           '',''',
'                          ) checkbox',
' from  ',
'   nmslsofr o,  ',
'   nmmrkcus c',
' where  ',
'   o.CUSTMRID = c.CUSTMRID ',
'and o.COMPCODE=c.COMPCODE',
'   order by DOCTDATE desc,DOCNUMBR desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(125021577807745963)
,p_name=>'My Orders'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows. Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_enable_mail_download=>'N'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'DPEAKE'
,p_internal_uid=>87866710682065469
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125024874566745977)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>4
,p_column_identifier=>'S'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125024534644745977)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'Q'
,p_column_label=>'Doc. number'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125021736646745971)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>6
,p_column_identifier=>'H'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CUSTOMER_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125022154979745974)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125022551704745974)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Doc. Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125022957218745976)
,p_db_column_name=>'WARECODE'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Ware Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125023357610745976)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125023731454745976)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'MSFCAMNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125024075712745976)
,p_db_column_name=>'REMARKS'
,p_display_order=>17
,p_column_identifier=>'P'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'REMARKS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125025276312745977)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>18
,p_column_identifier=>'T'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_static_id=>'CHECKBOX'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125832315622094042)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>19
,p_column_identifier=>'U'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(125833268928094048)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>20
,p_column_identifier=>'V'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(125025761427745977)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'878709'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCNUMBR:DOCTDATE:ITEMDESC:CUSTOMER_NAME:WARECODE:APPRQNTY:MSFCAMNT:REMARKS:ITEMCODE:CHECKBOX:'
,p_sort_column_1=>'ORDER_DATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ORDER_NUMBER'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(125026197955745980)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Monthly Review'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'878714'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_NAME:ITEMDESC:DOCTDATE:WARECODE:APPRQNTY:MSFCAMNT:REMARKS:DOCNUMBR:ITEMCODE:CHECKBOX:UPDOCNUM:UPDOCDTE'
,p_sort_column_1=>'ORDER_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'ORDER_MONTH'
,p_break_enabled_on=>'ORDER_MONTH'
,p_avg_columns_on_break=>'ORDER_TOTAL'
,p_chart_type=>'bar'
,p_chart_label_column=>'ORDER_MONTH'
,p_chart_label_title=>'Month'
,p_chart_value_column=>'ORDER_TOTAL'
,p_chart_aggregate=>'SUM'
,p_chart_value_title=>'Total Monthly Orders'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(125026718569745980)
,p_report_id=>wwv_flow_api.id(125026197955745980)
,p_name=>'Orders <= $900'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_TOTAL'
,p_operator=>'<='
,p_expr=>'900'
,p_condition_sql=>' (case when ("ORDER_TOTAL" <= to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# <= #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFFF99'
,p_row_font_color=>'#FF0033'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(125027113335745980)
,p_report_id=>wwv_flow_api.id(125026197955745980)
,p_name=>'Orders > $2,000'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ORDER_TOTAL'
,p_operator=>'>'
,p_expr=>'2000'
,p_condition_sql=>' (case when ("ORDER_TOTAL" > to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# > #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#99FF99'
,p_column_font_color=>'#0033FF'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(125027554794745980)
,p_report_id=>wwv_flow_api.id(125026197955745980)
,p_group_by_columns=>'ORDER_MONTH'
,p_function_01=>'AVG'
,p_function_column_01=>'ORDER_TOTAL'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Average Order Total'
,p_function_format_mask_01=>'FML999G999G999G999G990D00'
,p_function_sum_01=>'N'
,p_function_02=>'COUNT'
,p_function_column_02=>'ORDER_ITEMS'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Number of Orders'
,p_function_sum_02=>'N'
,p_sort_column_01=>'ORDER_MONTH'
,p_sort_direction_01=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125142061690853061)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146535072944541304)
,p_plug_name=>'Customer Visit Log'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_region_attributes=>'sytle="background:gray;color:teal;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --"ROWID", ',
'a.COMPCODE,',
'a.DOCTTYPE,',
'a.SUBTTYPE,',
'a.DOCNUMBR,',
'a.DOCTDATE,',
'a.SMANCODE,',
'a.RAISEDBY,',
'a.ITEMCODE,',
'a.CUSTMRID,',
'(select CUSTADR1 from nmmrkcus',
'where CUSTMRID=a.CUSTMRID) Address,',
'(select CUSTNAME from nmmrkcus',
'where CUSTMRID=a.CUSTMRID) CUSTNAME,',
'(select CUSTPHON from nmmrkcus',
'where CUSTMRID=a.CUSTMRID) Phone,',
'(select DISTINCT T.NMCODDES d',
'from NMCODMAS T,VWNMITEM c',
'where C.COMPCODE = :compcode',
'AND T.NMSOFCDE = C.MODLCODE',
'and T.NMHRDCDE = ''MOD''',
'and T.COMPCODE = C.COMPCODE',
'and T.MODLCODE = ''NM''',
'and c.itemcode = a.itemcode ) ITEMNAME,',
'(SELECT SUBSTR (SYS_CONNECT_BY_PATH (DOCNUMBR, '',''), 2) Docno_list',
'      FROM (SELECT DOCNUMBR,',
'                   UPDOCNUM,',
'                   COUNT (*) OVER (PARTITION BY UPDOCNUM) cnt,',
'                   ROW_NUMBER () OVER (PARTITION BY UPDOCNUM ORDER BY DOCNUMBR) seq',
'              FROM nmslsofr',
'             WHERE UPDOCNUM IS NOT NULL)',
'     WHERE seq = cnt',
'      and UPDOCNUM = a.docnumbr',
'START WITH seq = 1',
'CONNECT BY PRIOR seq + 1 = seq AND PRIOR UPDOCNUM = UPDOCNUM) Offer_No,',
'"TEFAXNUM",',
'a.CUSTMAIL,',
'a.OPRSTAMP,',
'a.TIMSTAMP,',
'"PARTYCD1",',
'"CURRENT_BRAND",',
'"CURRENT_MODEL",',
'"PURCHASED_FROM",',
'"PURCHASE_DATE",',
'"AVERAGE_MILEAGE",',
'"CONTACT_MODE",',
'(select  distinct NMCODDES from nmcodmas b',
'where b.compcode=:COMPCODE',
'and b.NMSOFCDE=a.INTERESTED_BRAND',
'and b.NMHRDCDE=''COM''',
'and b.MODLCODE=''NM'' ) INTERESTED_BRAND,',
'(select  distinct NMCODDES from nmcodmas b ',
'where b.compcode=:COMPCODE',
'and b.NMSOFCDE=a.INTERESTED_MODEL',
'and b.NMHRDCDE=''MOD''',
'and b.MODLCODE=''NM'') INTERESTED_MODEL,',
'"EXTERIOR_COLOR",',
'"FUEL_TYPE",',
'"TEST_DRIVE_FLAG",',
'"TEST_DRIVE_MODEL",',
'"TEST_DRIVE_DATE",',
'"TEST_BOOKING_DATE",',
'"CUSTOMER_TEST_REMARKS",',
'"CUSTOMER_REMARKS_SALES",',
'"SALESMAN_REMARKS_SALES",',
'"NEXT_APOINTMENT_ON",',
'"SALES_POTENTIAL",',
'"REFERED_BY_SALES",',
'"VERIFIED_FLAG_SALES",',
'"VERIFIED_BY_SALES",  ',
'a.WARECODE,',
'  ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'       || APEX_UTIL.prepare_url (''f?p=&APP_ID.:'' || 5005 || '':'' || :app_session ||''::::P''',
'                                    ||5005',
'                                    ||''_REF_DOCNUM,P''',
'                                    ||5005',
'                                    ||''_REF_SMANCODE,P''',
'                                    ||5005',
'                                    ||''_REF_PRODUCT,P''',
'                                    ||5005',
'                                    ||''_REF_WARECODE,P''',
'                                    ||5005',
'                                    ||''_REF_PARTYCDE,P''',
'                                    ||5005',
'                                    ||''_REF_CUSTOMER:''',
'                                    ||a.DOCNUMBR',
'                                    ||'',''',
'                                    ||a.SMANCODE',
'                                    ||'',''',
'                                    ||a.ITEMCODE',
'                                    ||'',''',
'                                    ||a.WARECODE',
'                                    ||'',''',
'                                    ||a.PARTYCD1',
'                                    ||'',''',
'                                    ||a.CUSTMRID',
'                                    || '':'')',
'       || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">Enter New Order</button><i class="iR"></i></span></a></div>''',
'          EnterNewOrder',
'from "#OWNER#"."NMCUSVLG" a ,VW_SMAN_PRODUCT v  ',
'where NVL (A.APP_FLG, ''N'') = ''Y''',
' and a.compcode = :compcode',
' and (a.SMANCODE IN (select S.SMANCODE',
'                          from nmsmnmas s',
'                          where S.COMPCODE = :compcode',
'                           and S.USERNAME = :APP_USER)',
'     or (a.SMANCODE like V.SMANCODE_TREE||''%''',
'     and v.REPORTNG = :APP_USER))',
'     and to_date(a.DOCTDATE,''dd-mon-yyyy'') between to_date(V.STARTDATE,''dd-mon-yyyy'') and nvl(to_date(V.ENDDATE,''dd-mon-yyyy''),trunc(sysdate))',
'     and V.PRODUCT_TYPE = A.NMPRDTYP',
'     and a.compcode = v.compcode'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(146535439786541304)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:237:&SESSION.::&DEBUG.::P237_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>109380572660860810
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82414612959231867)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82414974327231867)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82415455849231867)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82415823916231867)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Traking No'
,p_column_link=>'f?p=&APP_ID.:5006:&SESSION.::&DEBUG.::P5006_REF_DOCNUM:#DOCNUMBR#'
,p_column_linktext=>'#DOCNUMBR#'
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
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82416216268231867)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82416602620231867)
,p_db_column_name=>'SMANCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Smancode'
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
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82417031198231867)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82417459332231867)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customer Code'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82417830195231867)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82418220723231867)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mail'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82418665606231871)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82419054159231871)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82419441262231873)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Partycd1'
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
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82419852278231873)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Current Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82420186366231873)
,p_db_column_name=>'CURRENT_MODEL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Current Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82420608036231873)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Purchased From'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82421059317231874)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82421367263231874)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Average Mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82421773124231874)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Contact Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82422188100231874)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Interested Brand'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82422621972231874)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Interested Model'
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
 p_id=>wwv_flow_api.id(82423441701231874)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Exterior Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82423865588231874)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Fuel Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82424173447231874)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Test Drive Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82410175726231865)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Test Drive Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82410653666231865)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Test Drive Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82411013887231865)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Test Booking Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82411399422231865)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Customer Test Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82411813856231865)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Customer Remarks Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82412200579231865)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Salesman Remarks Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82412570392231865)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Next Apointment On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82413031435231865)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Sales Potential'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82413394349231865)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Refered By Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82413860001231867)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Verified Flag Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82414226472231867)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Verified By Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82424624583231874)
,p_db_column_name=>'ADDRESS'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Address'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82425038228231874)
,p_db_column_name=>'PHONE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Phone'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82305684260577110)
,p_db_column_name=>'ENTERNEWORDER'
,p_display_order=>49
,p_column_identifier=>'AN'
,p_column_label=>'#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82479293396997730)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>59
,p_column_identifier=>'AO'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82479454740997731)
,p_db_column_name=>'CUSTNAME'
,p_display_order=>69
,p_column_identifier=>'AP'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82479537859997732)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>79
,p_column_identifier=>'AQ'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(82792150797902643)
,p_db_column_name=>'OFFER_NO'
,p_display_order=>89
,p_column_identifier=>'AR'
,p_column_label=>'Offer No'
,p_allow_sorting=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37248830375586247)
,p_db_column_name=>'WARECODE'
,p_display_order=>99
,p_column_identifier=>'AS'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(146550383091541317)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'452705'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:OFFER_NO:CUSTMRID:CUSTNAME:ADDRESS:PHONE:SMANCODE:CUSTMAIL:ITEMNAME:PARTYCD1:INTERESTED_BRAND:INTERESTED_MODEL:SALES_POTENTIAL:ENTERNEWORDER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37234840940413978)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(146535072944541304)
,p_button_name=>'Cancle'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::::#&P5004_RANDOMNO.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(125027914675745982)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(125021192542745963)
,p_button_name=>'ENTER_NEW_ORDER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enter New Order'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5005:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'rightarrow'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38146639043122117)
,p_name=>'P5004_RANDOMNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(146535072944541304)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125017594585745948)
,p_name=>'P5004_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(125017216270745948)
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
 p_id=>wwv_flow_api.id(125018005730745952)
,p_name=>'P5004_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(125017216270745948)
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
 p_id=>wwv_flow_api.id(125018421880745952)
,p_name=>'P5004_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(125017216270745948)
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
 p_id=>wwv_flow_api.id(125028276355745985)
,p_name=>'P5004_XURL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(125021192542745963)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125028741916745987)
,p_name=>'P5004_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(125021192542745963)
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(125029074949745987)
,p_name=>'P5004_PROGNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(125021192542745963)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&PROGNAME.'
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(125029871479746002)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'4'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125030601110746008)
,p_name=>'set value on P5004_XURL'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125031139358746008)
,p_event_id=>wwv_flow_api.id(125030601110746008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5004_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125031523089746008)
,p_name=>'set value on P5004_XURLTEST'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125031993268746010)
,p_event_id=>wwv_flow_api.id(125031523089746008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5004_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(500);',
'begin',
'v_url:=''http://''||:P5004_XURL||'':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&',
'report=D:\Orbrgs_Web\nm\bin\''||TRIM(BOTH '','' FROM :PROGNAME)||''&'';',
'v_url:=v_url||''P13=''||:F_EMPNO_LIST_OFR;',
'return v_url;',
'end;'))
,p_attribute_07=>'P5004_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125032406161746010)
,p_name=>'assign url'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125032880820746010)
,p_event_id=>wwv_flow_api.id(125032406161746010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P5004_XURLTEST;',
'end;'))
,p_attribute_02=>'P5004_XURLTEST'
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(125033331123746010)
,p_name=>'call modal'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(125033778044746010)
,p_event_id=>wwv_flow_api.id(125033331123746010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:65:&APP_SESSION.:::65:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'95'
,p_attribute_09=>'90'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(125030196796746005)
,p_process_sequence=>10
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
'If :P5004_PROGNM  is null and :P5004_NO is null then',
'   :P5004_PROGNM := :FX_PROG_NAME;',
'   :P5004_NO := :FX_PAGE_NO;',
'End if;',
'',
'',
'  --:P5004_OPRSTAMP := :app_user;',
'  --:P5004_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P5004_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P5004_PROGNM;',
'   :FX_PAGE_NO := :P5004_NO;',
'Elsif :FX_PROG_NAME <> :P5004_PROGNM And :FX_PAGE_NO <> :P5004_NO Then',
'   :FX_PROG_NAME := :P5004_PROGNM;',
'   :FX_PAGE_NO := :P5004_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
