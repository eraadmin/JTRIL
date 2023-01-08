prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Estimation Details'
,p_alias=>'NMTRNSTK'
,p_step_title=>'Estimation Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(45006459883111367)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(45009640820111371)
,p_name=>'Estimation Details'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v.docnumbr||'' / ''||v.doctdate||'' / ''||i.docnumbr Service_no_details,v.docnumbr service_no, v.doctdate service_date,',
'                i.docnumbr estimation, i.doctdate estimation_date,',
'                v.partycde customer_code,',
'                v.partycde||'' / ''||(SELECT prtyname',
'                   FROM sycompty',
'                  WHERE compcode = v.compcode',
'                    AND partycde = v.partycde) customer_name,',
'                v.warecode,v.COSTCODE,',
'                v.warecode||'' / ''||(SELECT waredesc',
'                   FROM nmwhsmas',
'                  WHERE compcode = v.compcode',
'                    AND warecode = v.warecode) warehouse_name,',
'                NVL (r.statuscd, ''APR'') statuscd,i.remarkss',
'  from nmnegitm i, nmservce v, nmreqapr r,nmstkrec m',
' where     i.compcode = :compcode',
'       and i.compcode = v.compcode',
'       and i.compcode = r.compcode(+)',
'       and i.srvcnofk = v.srvcnopk',
'       and i.srvcnofk = r.srvctrcn(+)',
'       and i.itemcode = r.itemcode(+)',
'       and i.warecode = r.warecode(+)',
'       and nvl (v.complete, ''N'') = ''N''',
'       and r.STATUSCD=''APR''',
'       and i.boqrefer is not null',
'       AND v.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'       and i.compcode = m.compcode(+)',
'       and i.warecode = m.warecode(+)',
'       and i.itemcode = m.itemcode(+)',
'       and i.refnumbr = m.refnumbr(+)',
'       and i.boqrefer = m.boqrefer(+)',
'       and i.negitmfk= m.stkrcfk1 (+)',
'       and (nvl (i.apprqnty, 0) - nvl (m.trnsqnty, 0)) > 0',
'      and i.warecode in',
'              (select warecode',
'                 from sycstacc',
'                where compcode = :compcode and grupcode = :APP_USER)',
'                order by v.docnumbr desc',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P124_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(65361629448053231)
,p_query_column_id=>1
,p_column_alias=>'SERVICE_NO_DETAILS'
,p_column_display_sequence=>1
,p_column_heading=>'Service No Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_ESTIMATION_DATE,P123_SERVICE_NO,P123_ESTIMATION_NO,P123_WARE_CODE,P123_COST_CODE,P123_SERVICE_DATE,P123_WARE_NAME,P123_CUST_CODE,P123_CUST_NAME:#ESTIMATION_DATE#,#SERVICE_NO#,#ESTIMATION#,#WARECODE#,#COSTCODE'
||'#,#SERVICE_DATE#,#WAREHOUSE_NAME#,#CUSTOMER_CODE#,#CUSTOMER_NAME#'
,p_column_linktext=>'#SERVICE_NO_DETAILS#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45010286123111374)
,p_query_column_id=>2
,p_column_alias=>'SERVICE_NO'
,p_column_display_sequence=>2
,p_column_heading=>'Service No'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P124_REPORT_SEARCH.'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_ESTIMATION_DATE,P123_SERVICE_NO,P123_ESTIMATION_NO,P123_WARE_CODE,P123_COST_CODE,P123_SERVICE_DATE,P123_WARE_NAME,P123_CUST_CODE,P123_CUST_NAME:#ESTIMATION_DATE#,#SERVICE_NO#,#ESTIMATION#,#WARECODE#,#COSTCODE'
||'#,#SERVICE_DATE#,#WAREHOUSE_NAME#,#CUSTOMER_CODE#,#CUSTOMER_NAME#'
,p_column_linktext=>'#SERVICE_NO#'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45010753799111375)
,p_query_column_id=>3
,p_column_alias=>'SERVICE_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Service Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45011154231111375)
,p_query_column_id=>4
,p_column_alias=>'ESTIMATION'
,p_column_display_sequence=>4
,p_column_heading=>'Estimation'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45011488743111375)
,p_query_column_id=>5
,p_column_alias=>'ESTIMATION_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Estimation Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45011952175111375)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_CODE'
,p_column_display_sequence=>6
,p_column_heading=>'Customer Code'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P124_REPORT_SEARCH.'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45012349599111375)
,p_query_column_id=>7
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>7
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P124_REPORT_SEARCH.'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45012735026111377)
,p_query_column_id=>8
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>8
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P124_REPORT_SEARCH.'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47717368219972754)
,p_query_column_id=>9
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45013074065111377)
,p_query_column_id=>10
,p_column_alias=>'WAREHOUSE_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Warehouse Name'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P124_REPORT_SEARCH.'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45013509839111380)
,p_query_column_id=>11
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>10
,p_column_heading=>'Statuscd'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(45013887241111381)
,p_query_column_id=>12
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>11
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49367103455802456)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P124_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P124_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65854359066331096)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67834566434981635)
,p_plug_name=>'Stock Transper for Service'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v.docnumbr||'' / ''||v.doctdate||'' / ''||i.docnumbr Service_no_details,v.docnumbr service_no, v.doctdate service_date,',
'                i.docnumbr estimation, i.doctdate estimation_date,',
'                v.partycde customer_code,',
'                v.partycde||'' / ''||(SELECT prtyname',
'                   FROM sycompty',
'                  WHERE compcode = v.compcode',
'                    AND partycde = v.partycde) customer_name,',
'                v.warecode,v.COSTCODE,',
'                v.warecode||'' / ''||(SELECT waredesc',
'                   FROM nmwhsmas',
'                  WHERE compcode = v.compcode',
'                    AND warecode = v.warecode) warehouse_name,',
'                NVL (r.statuscd, ''APR'') statuscd,i.remarkss',
'  from nmnegitm i, nmservce v, nmreqapr r,nmstkrec m',
' where     i.compcode = :compcode',
'       and i.compcode = v.compcode',
'       and i.compcode = r.compcode(+)',
'       and i.srvcnofk = v.srvcnopk',
'       and i.srvcnofk = r.srvctrcn(+)',
'       and i.itemcode = r.itemcode(+)',
'       and i.warecode = r.warecode(+)',
'       and nvl (v.complete, ''N'') = ''N''',
'       and r.STATUSCD=''APR''',
'       and i.boqrefer is not null',
'       AND v.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'       and i.compcode = m.compcode(+)',
'       and i.warecode = m.warecode(+)',
'       and i.itemcode = m.itemcode(+)',
'       and i.refnumbr = m.refnumbr(+)',
'       and i.boqrefer = m.boqrefer(+)',
'       and i.negitmfk= m.stkrcfk1 (+)',
'       and (nvl (r.apprqnty, 0) - nvl (m.trnsqnty, 0)) > 0',
'      and i.warecode in',
'              (select warecode',
'                 from sycstacc',
'                where compcode = :compcode and grupcode = :APP_USER)',
'                order by v.docnumbr desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67834584553981638)
,p_name=>'Stock Transper for Service'
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
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>30679717428301144
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67834896731981655)
,p_db_column_name=>'SERVICE_NO_DETAILS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Service No Details'
,p_column_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_ESTIMATION_DATE,P123_SERVICE_NO,P123_ESTIMATION_NO,P123_WARE_CODE,P123_COST_CODE,P123_SERVICE_DATE,P123_WARE_NAME,P123_CUST_CODE,P123_CUST_NAME:#ESTIMATION_DATE#,#SERVICE_NO#,#ESTIMATION#,#WARECODE#,#COSTCODE'
||'#,#SERVICE_DATE#,#WAREHOUSE_NAME#,#CUSTOMER_CODE#,#CUSTOMER_NAME#'
,p_column_linktext=>'#SERVICE_NO_DETAILS#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67835304603981660)
,p_db_column_name=>'SERVICE_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Service No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67835751242981661)
,p_db_column_name=>'SERVICE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Service Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67836137690981661)
,p_db_column_name=>'ESTIMATION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estimation'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67836513416981661)
,p_db_column_name=>'ESTIMATION_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Estimation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67836930296981661)
,p_db_column_name=>'CUSTOMER_CODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Customer Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67837343832981661)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67837721055981661)
,p_db_column_name=>'WARECODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838085122981661)
,p_db_column_name=>'COSTCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838496652981663)
,p_db_column_name=>'WAREHOUSE_NAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Warehouse Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67838921926981663)
,p_db_column_name=>'STATUSCD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67839351740981663)
,p_db_column_name=>'REMARKSS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67839762437981950)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'306849'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SERVICE_NO_DETAILS:ESTIMATION_DATE:CUSTOMER_NAME:WAREHOUSE_NAME:STATUSCD:REMARKSS:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45007739287111369)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(45006459883111367)
,p_button_name=>'GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Go'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(45008087070111369)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(45006459883111367)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(45009357776111371)
,p_branch_action=>'f?p=&APP_ID.:124:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45006952455111367)
,p_name=>'P124_REPORT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(45006459883111367)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(45007340584111369)
,p_name=>'P124_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(45006459883111367)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P124_Report Row Per Page'
,p_lov=>'.'||wwv_flow_api.id(45002149435111353)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49367423414802474)
,p_name=>'P124_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49367103455802456)
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
 p_id=>wwv_flow_api.id(49367841441802498)
,p_name=>'P124_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49367103455802456)
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
 p_id=>wwv_flow_api.id(49368264209802498)
,p_name=>'P124_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(49367103455802456)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45008495149111369)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P124_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(45008919924111371)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P124_REPORT_SEARCH,P124_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(45008087070111369)
);
wwv_flow_api.component_end;
end;
/
