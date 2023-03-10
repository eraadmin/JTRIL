prompt --application/pages/page_10023_026
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
 p_id=>10023527
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Ineractive Posting (Bill Payments) Modify'
,p_page_mode=>'MODAL'
,p_step_title=>'Ineractive Posting (Bill Payments) Modify'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1582223062813857794)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_last_updated_by=>'MUKUL'
,p_last_upd_yyyymmddhh24miss=>'20190919094101'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183112745316358287)
,p_plug_name=>'CTRL'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(280848979147014096)
,p_name=>'Ineractive Posting (Bill Payments)'
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE,',
' listagg(AC.ACCTCODE, '','') within group (order by AC.ACCTCODE) as ACCTCODE,',
'AC.COSTCODE, AC.SUBLEDCD, ',
'listagg(AC.NARATION, '','') within group (order by AC.NARATION) as NARATION,  ',
'listagg(AC.DBCRCODE, '','') within group (order by AC.DBCRCODE) as DBCRCODE,',
' AC.CURRCODE, AC.EXCGRATE, ',
' SUM(NVL(AC.JVFCAMNT,0)) JVFCAMNT, SUM(NVL(AC.JVLCAMNT,0)) JVLCAMNT, ',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP ',
'FROM ACTRNDTL AC, SYCHRTAC RTAC',
'WHERE AC.ACCTCODE=RTAC.ACCTCODE ',
'--AND   DOCNUMBR=''JV200136''',
'group by AC.COMPCODE, AC.DOCTTYPE, AC.SUBTTYPE, AC.DOCNUMBR, AC.DOCTDATE, AC.COSTCODE, AC.SUBLEDCD, ',
' AC.CURRCODE, AC.EXCGRATE,  AC.REFDOCNO, AC.REFDOCDT, AC.REFDOCTY, AC.REFDCSTY, AC.STATCODE,',
'AC.BANKNAME, AC.BANKBRCH, AC.BANKCODE, AC.OPRSTAMP, AC.TIMSTAMP '))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1582259508854857889)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4142723456585729)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4143064028585729)
,p_query_column_id=>2
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4143484066585729)
,p_query_column_id=>3
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4143899057585729)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Docnumbr'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4144251761585729)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>5
,p_column_heading=>'Doctdate'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4144730527585731)
,p_query_column_id=>6
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Acctcode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4145053670585731)
,p_query_column_id=>7
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Costcode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4145461659585731)
,p_query_column_id=>8
,p_column_alias=>'SUBLEDCD'
,p_column_display_sequence=>8
,p_column_heading=>'Subledcd'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4145862847585731)
,p_query_column_id=>9
,p_column_alias=>'NARATION'
,p_column_display_sequence=>9
,p_column_heading=>'Naration'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4146326182585731)
,p_query_column_id=>10
,p_column_alias=>'DBCRCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Dbcrcode'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4146716237585731)
,p_query_column_id=>11
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4147124329585732)
,p_query_column_id=>12
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4147538007585732)
,p_query_column_id=>13
,p_column_alias=>'JVFCAMNT'
,p_column_display_sequence=>13
,p_column_heading=>'Jvfcamnt'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4140283170585728)
,p_query_column_id=>14
,p_column_alias=>'JVLCAMNT'
,p_column_display_sequence=>14
,p_column_heading=>'Jvlcamnt'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4140659255585728)
,p_query_column_id=>15
,p_column_alias=>'BANKNAME'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4141058436585728)
,p_query_column_id=>16
,p_column_alias=>'BANKBRCH'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4141498039585729)
,p_query_column_id=>17
,p_column_alias=>'BANKCODE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4141849746585729)
,p_query_column_id=>18
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4142264071585729)
,p_query_column_id=>19
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4147910008585732)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(280848979147014096)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4138813721585722)
,p_name=>'P10023527_TRANTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183112745316358287)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4139157126585723)
,p_name=>'P10023527_TRN_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183112745316358287)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4139582582585723)
,p_name=>'P10023527_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(183112745316358287)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4148329073585732)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(4147910008585732)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4148794748585732)
,p_event_id=>wwv_flow_api.id(4148329073585732)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.component_end;
end;
/
