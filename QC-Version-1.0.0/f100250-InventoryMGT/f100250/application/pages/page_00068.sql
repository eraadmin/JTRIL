prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'check box create'
,p_step_title=>'check box create'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54671286215911384)
,p_plug_name=>'salrec'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    NMSALREC.PARTYCDE as PARTYCDE,',
'    NMSALREC.SMANCODE as SMANCODE,',
'    NMSALREC.RAISEDBY as RAISEDBY,',
'    NMSALREC.APPRVDBY as APPRVDBY,',
'    NMSALREC.APPRDATE as APPRDATE,',
'    NMSALREC.DISCPCNT as DISCPCNT ,',
'apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '':''',
'                          ) checkbox',
'',
' from NMSALREC NMSALREC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(54671411655911384)
,p_name=>'salrec'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'MONIR'
,p_internal_uid=>4203026763399783
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54671593181911409)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Partycde'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54671716431911414)
,p_db_column_name=>'SMANCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Smancode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SMANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54671803073911414)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Raisedby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RAISEDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54671887813911414)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Apprvdby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPRVDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54671988583911414)
,p_db_column_name=>'APPRDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Apprdate'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPRDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54672095177911414)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Discpcnt'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DISCPCNT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(54673186194938386)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Checkbox'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHECKBOX'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(54673790464969315)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'42055'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PARTYCDE:SMANCODE:RAISEDBY:APPRVDBY:APPRDATE:DISCPCNT:CHECKBOX'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54672203184916297)
,p_plug_name=>'test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54673298167952657)
,p_plug_name=>'asd'
,p_parent_plug_id=>wwv_flow_api.id(54672203184916297)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="http://www.google.com/jsapi"></script>',
'<script>',
'  // Load jQuery',
'  google.load("jquery", "1.2.6", {uncompressed:true});',
' ',
'  function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE'',$v(''pFlowStepId''));  ',
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
'<div id="checkListDisp">&F_EMPNO_LIST.</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(54673009917927381)
,p_name=>'P68_F_EMPNO_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(54672203184916297)
,p_prompt=>'F Empno List'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
