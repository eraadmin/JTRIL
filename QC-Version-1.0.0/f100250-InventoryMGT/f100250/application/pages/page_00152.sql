prompt --application/pages/page_00152
begin
--   Manifest
--     PAGE: 00152
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
 p_id=>152
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Buyer Generate Form'
,p_alias=>'NMBYRFRM'
,p_step_title=>'Buyer Generate Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(81945655846317024)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94694264018655967)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P152_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P152_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94695685278655983)
,p_plug_name=>'Buyer Information'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.rowid rwd,s.custmrid,',
'       INITCAP (s.prtyname) prtyname,',
'       s.partycde,',
'       s.custtype,',
'       s.fathers_name,',
'       s.mobileno,',
'       s.phonenum,',
'       s.pemailid,',
'       s.present_address1,',
'      e.SLSOFRNO',
'  FROM sycompty s, nmslsofr e',
' WHERE     s.compcode = :compcode',
'       AND s.compcode = e.compcode',
'       AND s.custmrid = e.custmrid',
'       AND s.custmrid IS NOT NULL',
'',
'ORDER BY 1 DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.rowid rwd,s.custmrid,',
'       INITCAP (s.prtyname) prtyname,',
'       e.bookcode bookcode,',
'       e.bookdate bookdate,',
'       s.partycde,',
'       s.custtype,',
'       s.fathers_name,',
'       s.mobileno,',
'       s.phonenum,',
'       s.pemailid,',
'       s.present_address1',
'  FROM sycompty s, nmenudtl e',
' WHERE     s.compcode = :compcode',
'       AND s.compcode = e.compcode',
'       AND s.custmrid = e.custmrid',
'       AND s.custmrid IS NOT NULL',
'       AND e.bookcode NOT IN',
'              (SELECT updocnum',
'                 FROM nmsalrec',
'                WHERE     compcode = :compcode',
'                      AND updocnum = e.bookcode',
'                      AND updocdte = e.bookdate',
'                      AND custmrid = e.custmrid',
'                      AND warecode = e.warecode',
'                      AND smancode = e.smancode)',
'UNION ALL',
'SELECT s.rowid rwd, s.custmrid,',
'       INITCAP (s.prtyname) prtyname,',
'       '' '' bookcode,',
'       NULL bookdate,',
'       s.partycde,',
'       s.custtype,',
'       s.fathers_name,',
'       s.mobileno,',
'       s.phonenum,',
'       s.pemailid,',
'       s.present_address1',
'  FROM sycompty s',
' WHERE     s.compcode = :compcode',
'       AND s.custmrid IS NOT NULL',
'ORDER BY 1 DESC'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94696068664655983)
,p_name=>'Generate Customer And Booking'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'20'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>57541201538975489
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94696181114655987)
,p_db_column_name=>'RWD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rwd'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94696608220655990)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer ID'
,p_column_link=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.::P153_S_CUSTMRID,P153_SLSOFRNO:#CUSTMRID#,#SLSOFRNO#'
,p_column_linktext=>'#CUSTMRID#'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94696988217655992)
,p_db_column_name=>'PRTYNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#PRTYNAME#</span> '
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94698218649655992)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94698575027655992)
,p_db_column_name=>'CUSTTYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Customer Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94699065210655992)
,p_db_column_name=>'FATHERS_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Fathers Name'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#FATHERS_NAME#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94699446039655993)
,p_db_column_name=>'MOBILENO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94699825093655993)
,p_db_column_name=>'PHONENUM'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Phone No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94700208619655993)
,p_db_column_name=>'PEMAILID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Email ID'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94700662548655993)
,p_db_column_name=>'PRESENT_ADDRESS1'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Present Address'
,p_column_html_expression=>'<span style="width:250px; display:block; white-space:normal;">#PRESENT_ADDRESS1#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94999967809299948)
,p_db_column_name=>'SLSOFRNO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Slsofrno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94701039191655993)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'575462'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'CUSTMRID:PRTYNAME:CUSTTYPE:FATHERS_NAME:MOBILENO:PHONENUM:PEMAILID:PRESENT_ADDRESS1:SLSOFRNO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94701533433655997)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(94695685278655983)
,p_button_name=>'CREATE_CUSTOMER_BOOKING'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Buyer Form'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.:153::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94694626784655972)
,p_name=>'P152_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94694264018655967)
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
 p_id=>wwv_flow_api.id(94694949597655981)
,p_name=>'P152_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94694264018655967)
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
 p_id=>wwv_flow_api.id(94695349777655981)
,p_name=>'P152_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94694264018655967)
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
wwv_flow_api.component_end;
end;
/
