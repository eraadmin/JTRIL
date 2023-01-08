prompt --application/pages/page_00109
begin
--   Manifest
--     PAGE: 00109
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
 p_id=>109
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customers'
,p_alias=>'NMCUSMAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Customers'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171012111853'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43070489219296613)
,p_plug_name=>'Customers'
,p_region_name=>'CUSTOMERS'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.ROWID rwid, p.compcode,',
'                a.partycde || ''-'' || a.prtyname customer, a.custmrid,',
'                a.cretdate,',
'                (SELECT c.nmcoddes',
'                   FROM nmcodmas c',
'                  WHERE c.nmhrdcde = ''CTY''',
'                    AND c.modlcode = ''NM''',
'                    AND c.compcode = :compcode',
'                    AND c.nmsofcde = a.custtype) CATEGORY,',
'                   a.partyad1',
'                || '',''',
'                || a.partyad2',
'                || '',''',
'                || a.partyad3',
'                || '',''',
'                || a.partyad4 address,',
'                a.phonenum, a.mobileno, a.pemailid, p.last_purchase,',
'                p.last_purchase_date "Last Purchase Date", p.amount,a.partycde image ,',
'                DECODE (NULL,',
'                        NULL, ''Create Sales'',',
'                        ''Create Sales''',
'                       ) create_sales',
'           FROM sycompty a,',
'                (SELECT   compcode, docnumbr, docttype, subttype, partycde,',
'                          wm_concat (itemcode) last_purchase,',
'                          MAX (doctdate) last_purchase_date,',
'                          SUM (mslcamnt) amount',
'                     FROM nmsalrec s',
'                    WHERE TRUNC (doctdate) = (SELECT MAX (doctdate)',
'                                                FROM nmsalrec',
'                                               WHERE partycde = s.partycde)',
'                 GROUP BY docnumbr, docttype, subttype, partycde, compcode) p',
'          WHERE a.partycde = p.partycde(+) AND a.compcode = p.compcode(+)',
'--and   a.partycde =''CU0234''',
'       ORDER BY a.cretdate DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(43070909033296615)
,p_name=>'Customers'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
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
,p_icon_view_enabled_yn=>'Y'
,p_icon_view_link_column=>'IMAGE'
,p_icon_view_img_src_column=>'IMAGE'
,p_icon_view_label_column=>'IMAGE'
,p_icon_view_img_attr_text=>'height="225" width="175"'
,p_icon_view_alt_text=>'c image'
,p_icon_view_columns_per_row=>1
,p_detail_view_enabled_yn=>'Y'
,p_owner=>'MIKE'
,p_internal_uid=>5916041907616121
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43075791716296646)
,p_db_column_name=>'CATEGORY'
,p_display_order=>16
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43076177269296646)
,p_db_column_name=>'ADDRESS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Address'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43076587183296646)
,p_db_column_name=>'PHONENUM'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Phone No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PHONENUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43070987995296615)
,p_db_column_name=>'MOBILENO'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Mobile No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MOBILENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43071440471296616)
,p_db_column_name=>'PEMAILID'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Email Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PEMAILID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43071776261296618)
,p_db_column_name=>'CREATE_SALES'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Create Sales'
,p_column_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:111:P111_CUSTOMERID:#CUSTMRID#'
,p_column_linktext=>'#CREATE_SALES#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATE_SALES'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43072232439296638)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Customer Name'
,p_column_link=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90:P90_CUSTMRID,P90_ROWID,P90_COMPCODE_G:#CUSTMRID#,#RWID#,#COMPCODE#'
,p_column_linktext=>'#CUSTOMER#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43072609570296640)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Custmrid'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTMRID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43073046957296640)
,p_db_column_name=>'LAST_PURCHASE'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Last Purchase'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_PURCHASE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43073406581296643)
,p_db_column_name=>'CRETDATE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Cretdate'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'CRETDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43073781067296643)
,p_db_column_name=>'Last Purchase Date'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Last Purchase Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'Last Purchase Date'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43074196226296643)
,p_db_column_name=>'AMOUNT'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Amount'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43074604756296644)
,p_db_column_name=>'RWID'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Rwid'
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
,p_tz_dependent=>'N'
,p_static_id=>'RWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43075066459296644)
,p_db_column_name=>'COMPCODE'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Compcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43075396766296644)
,p_db_column_name=>'IMAGE'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Image'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_format_mask=>'IMAGE:SYCOMPTY:CUSTOMER_IMAGE:PARTYCDE::::::Attachment:Download'
,p_tz_dependent=>'N'
,p_static_id=>'IMAGE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(43077045710296647)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'59222'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER:CATEGORY:ADDRESS:MOBILENO:PHONENUM:PEMAILID:LAST_PURCHASE:Last Purchase Date:AMOUNT:CREATE_SALES:COMPCODE:'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43085491067309892)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P109_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P109_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43077497492296647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43070489219296613)
,p_button_name=>'Reset_Report'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset Report'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,1,RIR,CIR::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43077878823296652)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43070489219296613)
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
 p_id=>wwv_flow_api.id(43078219202296654)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43070489219296613)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(38241779640717675)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43070489219296613)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43081698533296680)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(70188780495086689)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43081333684296677)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43085782342309893)
,p_name=>'P109_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43085491067309892)
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
 p_id=>wwv_flow_api.id(43086264190309897)
,p_name=>'P109_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43085491067309892)
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
 p_id=>wwv_flow_api.id(43086662306309898)
,p_name=>'P109_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43085491067309892)
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
 p_id=>wwv_flow_api.id(43079680073296669)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43079980081296672)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#OWNER#.DISPLAY_IMAGE(',
'P_PARTYCDE => :P109_PARTYCDE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(70188780495086689)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43080777006296676)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_error_message=>'Unable to reset pagination.'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43080396123296676)
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
