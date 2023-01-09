prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Service Charge Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Service Charge Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function typeprimary(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'var vid;',
'    for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f02_''.concat(y);',
'',
'html_GetElement(''f02_''+vRow).value = parseInt(document.getElementById(''P245_SRVCNOPK'').value++); ',
'  ',
'',
'  ',
'',
'};',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20200505104133'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131175884656823239)
,p_plug_name=>'Left Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>1
,p_plug_display_column=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(160879407850881780)
,p_plug_name=>'Right Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>1
,p_plug_display_column=>12
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(201440474557883538)
,p_name=>'Service Charge Master'
,p_template=>wwv_flow_api.id(1582249860200857855)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_grid_column_span=>10
,p_display_column=>2
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"SRVCNOPK",',
'"COMPCODE",',
'"SRVCCODE",',
'"SRVCNAME",',
'"SRVMASCD",',
'"VHLMASCD",',
'"GRPMASCD",',
'"SJOBRATE",',
'"SREQTIME",',
'"RATEDATE",',
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'"REMARKSS",',
'"TIMSTAMP",',
'"LBORCHRG",',
'"SREQDAYS",',
'"MODELCDE",',
'"ACTIVFLG",',
'"MODCRGAM",',
'"MODDISAM",',
'"CRGPRCNT",',
'"MODIFYDT",',
'"LABORGRP",',
'"COMMGRUP"',
'from "#OWNER#"."NMCRGMAS"',
'where ROWID=:P245_ROWID',
''))
,p_ajax_items_to_submit=>'P245_ROWID'
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27999046221245281)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27999481294245281)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(27999819641245281)
,p_query_column_id=>3
,p_column_alias=>'SRVCNOPK'
,p_column_display_sequence=>3
,p_column_heading=>'Srvcnopk'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SRVCNOPK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28000263434245282)
,p_query_column_id=>4
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>':COMPCODE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28000620583245282)
,p_query_column_id=>5
,p_column_alias=>'SRVCCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_cattributes=>'onchange="typeprimary(this);"'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SRVCCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28001074647245282)
,p_query_column_id=>6
,p_column_alias=>'SRVCNAME'
,p_column_display_sequence=>6
,p_column_heading=>'Service Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SRVCNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28001446363245282)
,p_query_column_id=>7
,p_column_alias=>'SRVMASCD'
,p_column_display_sequence=>7
,p_column_heading=>'Srvmascd'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SRVMASCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28001813241245284)
,p_query_column_id=>8
,p_column_alias=>'VHLMASCD'
,p_column_display_sequence=>10
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'VHLMASCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28002255299245284)
,p_query_column_id=>9
,p_column_alias=>'GRPMASCD'
,p_column_display_sequence=>11
,p_column_heading=>'Group'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'GRPMASCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28002634412245284)
,p_query_column_id=>10
,p_column_alias=>'SJOBRATE'
,p_column_display_sequence=>8
,p_column_heading=>'Rate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SJOBRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28003072341245284)
,p_query_column_id=>11
,p_column_alias=>'SREQTIME'
,p_column_display_sequence=>13
,p_column_heading=>'Time'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SREQTIME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28003482737245285)
,p_query_column_id=>12
,p_column_alias=>'RATEDATE'
,p_column_display_sequence=>14
,p_column_heading=>'Entry Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>8
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'RATEDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28003868560245285)
,p_query_column_id=>13
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>15
,p_column_heading=>'Raisedby'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28004242819245285)
,p_query_column_id=>14
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>16
,p_column_heading=>'Apprvdby'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28004689301245285)
,p_query_column_id=>15
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>17
,p_column_heading=>'Apprdate'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>6
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28005037405245287)
,p_query_column_id=>16
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>18
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28005464163245287)
,p_query_column_id=>17
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28005812210245287)
,p_query_column_id=>18
,p_column_alias=>'LBORCHRG'
,p_column_display_sequence=>20
,p_column_heading=>'Lborchrg'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'LBORCHRG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28006217769245287)
,p_query_column_id=>19
,p_column_alias=>'SREQDAYS'
,p_column_display_sequence=>21
,p_column_heading=>'Sreqdays'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'SREQDAYS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28006608736245289)
,p_query_column_id=>20
,p_column_alias=>'MODELCDE'
,p_column_display_sequence=>12
,p_column_heading=>'Model'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'MODELCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28007069151245289)
,p_query_column_id=>21
,p_column_alias=>'ACTIVFLG'
,p_column_display_sequence=>24
,p_column_heading=>'All'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_lov_language=>'PLSQL'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'ACTIVFLG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28007498017245289)
,p_query_column_id=>22
,p_column_alias=>'MODCRGAM'
,p_column_display_sequence=>22
,p_column_heading=>'CRG'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_lov_language=>'PLSQL'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'MODCRGAM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28007888462245289)
,p_query_column_id=>23
,p_column_alias=>'MODDISAM'
,p_column_display_sequence=>23
,p_column_heading=>'DIS'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SIMPLE_CHECKBOX'
,p_inline_lov=>'Y,N'
,p_lov_language=>'PLSQL'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'MODDISAM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28008205019245290)
,p_query_column_id=>24
,p_column_alias=>'CRGPRCNT'
,p_column_display_sequence=>9
,p_column_heading=>'Charge %'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'CRGPRCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28008684743245290)
,p_query_column_id=>25
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>25
,p_column_heading=>'Modifydt'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28009058077245290)
,p_query_column_id=>26
,p_column_alias=>'LABORGRP'
,p_column_display_sequence=>26
,p_column_heading=>'Laborgrp'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'LABORGRP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(28009470864245290)
,p_query_column_id=>27
,p_column_alias=>'COMMGRUP'
,p_column_display_sequence=>27
,p_column_heading=>'Commgrup'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCRGMAS'
,p_ref_column_name=>'COMMGRUP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(201613471599021691)
,p_plug_name=>'button_region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28017312908245298)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(201613471599021691)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28017757066245298)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(201613471599021691)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28009820582245292)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(201440474557883538)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(28018161467245298)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(201613471599021691)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:244:&SESSION.::&DEBUG.:245::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(28020787979245303)
,p_branch_action=>'f?p=&APP_ID.:245:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(28017757066245298)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4155684849179027)
,p_name=>'P245_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(201440474557883538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4155797458179028)
,p_name=>'P245_NEW_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(201440474557883538)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4155848258179029)
,p_name=>'P245_RIGHTS_SETUP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(201440474557883538)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  Count(*)',
'	From Syrights',
'	Where COMPCODE=:compcode',
'	And   USERCODE=:app_user',
'	And   PROGNAME=:progname',
'	And   DELSTATS=''Y'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28018576249245300)
,p_name=>'P245_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(201613471599021691)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28018955680245301)
,p_name=>'P245_SRVCNOPK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(201613471599021691)
,p_prompt=>'Srvcnopk'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28010393357245292)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'SRVCNOPK not null'
,p_validation_sequence=>20
,p_validation=>'SRVCNOPK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'SRVCNOPK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28010710180245292)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'SRVCNOPK must be numeric'
,p_validation_sequence=>20
,p_validation=>'SRVCNOPK'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'SRVCNOPK'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28011116791245293)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'COMPCODE not null'
,p_validation_sequence=>30
,p_validation=>'COMPCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'COMPCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28011513767245293)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'SJOBRATE must be numeric'
,p_validation_sequence=>90
,p_validation=>'SJOBRATE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'SJOBRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28011973609245293)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'SREQTIME must be a valid date'
,p_validation_sequence=>100
,p_validation=>'SREQTIME'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'SREQTIME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28012349399245293)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'RATEDATE not null'
,p_validation_sequence=>110
,p_validation=>'RATEDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'RATEDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28012746885245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'RATEDATE must be a valid date'
,p_validation_sequence=>110
,p_validation=>'RATEDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'RATEDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28013192604245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'APPRDATE must be a valid date'
,p_validation_sequence=>140
,p_validation=>'APPRDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'APPRDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28013532742245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'TIMSTAMP not null'
,p_validation_sequence=>160
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28013950663245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'TIMSTAMP must be a valid date'
,p_validation_sequence=>160
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28014332677245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'LBORCHRG must be numeric'
,p_validation_sequence=>170
,p_validation=>'LBORCHRG'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'LBORCHRG'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28014765312245295)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'SREQDAYS must be numeric'
,p_validation_sequence=>180
,p_validation=>'SREQDAYS'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'SREQDAYS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28015156089245296)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'ACTIVFLG not null'
,p_validation_sequence=>200
,p_validation=>'ACTIVFLG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'ACTIVFLG'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28015525172245296)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'CRGPRCNT must be numeric'
,p_validation_sequence=>230
,p_validation=>'CRGPRCNT'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'CRGPRCNT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(28015931602245296)
,p_tabular_form_region_id=>wwv_flow_api.id(201440474557883538)
,p_validation_name=>'MODIFYDT must be a valid date'
,p_validation_sequence=>240
,p_validation=>'MODIFYDT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(173461603144638279)
,p_associated_column=>'MODIFYDT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28019767776245301)
,p_name=>'add rows javascript'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28020240637245303)
,p_event_id=>wwv_flow_api.id(28019767776245301)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=4; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4155958803179030)
,p_name=>'delete enable ordisable'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_RIGHTS_SETUP'
,p_condition_element=>'P245_RIGHTS_SETUP'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4156007244179031)
,p_event_id=>wwv_flow_api.id(4155958803179030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(28017312908245298)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4156121389179032)
,p_event_id=>wwv_flow_api.id(4155958803179030)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(28017312908245298)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28016273873245296)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(201440474557883538)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMCRGMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(173461603144638279)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28016674075245298)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(201440474557883538)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMCRGMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(28019391242245301)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'proc_on_load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_srvode varchar2(10); ',
'begin select max(nvl(SRVCNOPK,1))  ',
'into :P245_SRVCNOPK  from nmcrgmas; ',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
