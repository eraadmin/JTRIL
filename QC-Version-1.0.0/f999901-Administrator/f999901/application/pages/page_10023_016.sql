prompt --application/pages/page_10023_016
begin
--   Manifest
--     PAGE: 10023
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>10023517
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Bank Book Enquery'
,p_page_mode=>'MODAL'
,p_step_title=>'Bank Book Enquery'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_height=>'700'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190919100501'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62272571534748445)
,p_plug_name=>'BANK BOOK LISTAGG_E'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCTTYPE||'' - ''||SUBTTYPE TRN_TYPE,',
'       DOCNUMBR,DOCTDATE,REFDOCNO,',
'       listagg(NARATION, '','') within group (order by NARATION) as NARATION,',
'       sum(JVFCAMNT) D_Amount,',
'       sum(JVLCAMNT) C_Amount',
'        from ACTRNDTL',
'         where docttype=SUBSTR(:P10023517_TRANTYPE, 0,INSTR(:P10023517_TRANTYPE,''-'')-2 ) ',
'       and subttype = SUBSTR(:P10023517_TRANTYPE, INSTR(:P10023517_TRANTYPE,''-'')+2,INSTR(:P10023517_TRANTYPE,''-'')+4 )',
'GROUP BY DOCTTYPE,SUBTTYPE,DOCNUMBR,DOCTDATE,REFDOCNO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
 p_id=>wwv_flow_api.id(3398486199950068)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'MUKUL'
,p_internal_uid=>59405438700673446
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197372839710327)
,p_db_column_name=>'TRN_TYPE'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Trn Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3398819979950071)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3398875251950072)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4196967145710323)
,p_db_column_name=>'REFDOCNO'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Refdocno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197078129710324)
,p_db_column_name=>'NARATION'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Naration'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197178454710325)
,p_db_column_name=>'D_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'D Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4197333212710326)
,p_db_column_name=>'C_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'C Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4207559088711165)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'602146'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:REFDOCNO:NARATION:D_AMOUNT:C_AMOUNT:TRN_TYPE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62273449057748454)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(153687735856015471)
,p_name=>'BANK BOOK VIEW'
,p_template=>wwv_flow_api.id(1582245671854857847)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ROWID EDIT,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       NARATION PARTICULAR,',
'       DBCRCODE,',
'       sum(JVFCAMNT) DAmount,',
'       sum(JVLCAMNT) CAmount,',
'       REFDOCNO',
'       from ACTRNDTL',
'       where DOCTTYPE = ''J1''',
'group by ',
'       ROWID,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       NARATION,',
'       DBCRCODE,',
'       REFDOCNO',
''))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3359673147674093)
,p_query_column_id=>1
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:10023503:&SESSION.::&DEBUG.:RP:P10023503_ROW_ID,P10023503_VOUCHER_NO,P10023503_DBCRCODE,P10023503_DOCTYPE,P10023503_SUBTYPE,P10023503_PARTICULAR,P10023503_AMOUNT:#EDIT#,#DOCNUMBR#,#DBCRCODE#,#DOCTTYPE#,#SUBTTYPE#,#PARTICULAR#,#DAMOUNT#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3360078189674095)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3360479734674095)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3360903774674095)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3361336483674095)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>4
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3361712295674097)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3362107388674097)
,p_query_column_id=>7
,p_column_alias=>'PARTICULAR'
,p_column_display_sequence=>8
,p_column_heading=>'Particular'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3362464320674097)
,p_query_column_id=>8
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3362906325674098)
,p_query_column_id=>9
,p_column_alias=>'DAMOUNT'
,p_column_display_sequence=>10
,p_column_heading=>'Damount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3363275121674098)
,p_query_column_id=>10
,p_column_alias=>'CAMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'Camount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3363700285674098)
,p_query_column_id=>11
,p_column_alias=>'REFDOCNO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3357764981674082)
,p_name=>'P10023517_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(62273449057748454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3358578004674092)
,p_name=>'P10023517_SUBTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(62273449057748454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3358957511674092)
,p_name=>'P10023517_TRN_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(62273449057748454)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3368041989674123)
,p_name=>'HIDE REGION E'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023517_TRN_MODE'
,p_condition_element=>'P10023517_TRN_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'M'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3368362479674125)
,p_event_id=>wwv_flow_api.id(3368041989674123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(62272571534748445)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3368897380674129)
,p_event_id=>wwv_flow_api.id(3368041989674123)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(62272571534748445)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3369287008674129)
,p_name=>'HIDE REGION E_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10023517_TRN_MODE'
,p_condition_element=>'P10023517_TRN_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'E'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.component_end;
end;
/
