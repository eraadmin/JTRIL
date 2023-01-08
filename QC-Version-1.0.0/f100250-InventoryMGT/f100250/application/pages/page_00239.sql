prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
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
 p_id=>239
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Transaction Flow Defination'
,p_page_mode=>'MODAL'
,p_step_title=>'Transaction Flow Defination'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180206152011'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135618466238411105)
,p_plug_name=>'Transaction Flow Defination'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(135627599451411113)
,p_name=>'Rights Setup'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"TRSUBTYP",',
'"TRDOCTYP",',
'"COMPCODE",',
'"CATGRYCD",',
'"CATEGORY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"MODIFYDT"',
'from "#OWNER#"."NMWRKFTR"',
'where "TRDOCTYP" = :P239_TRDOCTYP',
'and "TRSUBTYP"=:P239_TRSUBTYP',
'and "COMPCODE"=:COMPCODE',
'connect by level>3',
''))
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_read_only_when=>'P239_APPRNEED'
,p_read_only_when2=>'Y'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P239_TRDOCTYP,P239_TRSUBTYP'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
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
,p_comment=>'P239_APPRNEED'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135634322331411118)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135627886294411113)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135628335321411113)
,p_query_column_id=>3
,p_column_alias=>'TRSUBTYP'
,p_column_display_sequence=>6
,p_column_heading=>'Tran. Sub Type'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_cattributes=>'readonly=true'
,p_pk_col_source_type=>'F'
,p_pk_col_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'return(:P239_TRSUBTYP);',
'end;'))
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'TRSUBTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135628721713411115)
,p_query_column_id=>4
,p_column_alias=>'TRDOCTYP'
,p_column_display_sequence=>5
,p_column_heading=>'Tran. Doc. Type'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>2
,p_cattributes=>'readonly=true'
,p_column_default=>'P239_TRDOCTYP'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'TRDOCTYP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135629100852411116)
,p_query_column_id=>5
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_column_default=>'P239_COMPCODE'
,p_column_default_type=>'ITEM'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135718299781541764)
,p_query_column_id=>6
,p_column_alias=>'CATGRYCD'
,p_column_display_sequence=>3
,p_column_heading=>'Category Code'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT nmsofcde||''-''||INITCAP (nmcoddes) d,nmsofcde r',
'    FROM nmcodmas',
'   WHERE compcode = :compcode AND nmhrdcde = ''CTG'' AND modlcode = ''NM''',
'ORDER BY 1'))
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'CATGRYCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135718744099541764)
,p_query_column_id=>7
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>4
,p_column_heading=>'Category Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>30
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'CATEGORY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135630733173411118)
,p_query_column_id=>8
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>8
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>':APP_USER'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135631161494411118)
,p_query_column_id=>9
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>9
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_column_default=>'SYSDATE'
,p_column_default_type=>'FUNCTION'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(135633931238411118)
,p_query_column_id=>10
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>10
,p_column_heading=>'Modifydt'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMWRKFTR'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135637486259411123)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135637898861411123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135637486259411123)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:238:&SESSION.::&DEBUG.:239::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135634680777411119)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(135627599451411113)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."NMUSRLEV"',
'where "TRDOCTYP" = :P221_TRDOCTYP'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135638358509411123)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(135637486259411123)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P239_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135638747584411123)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(135637486259411123)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P239_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135635127050411119)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(135627599451411113)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135639144626411123)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(135637486259411123)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P239_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135618855924411107)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(135618466238411105)
,p_button_name=>'GET_PREVIOUS_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Previous'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ROWID'')'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'P221_ROWID_PREV'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(135619244310411107)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(135618466238411105)
,p_button_name=>'GET_NEXT_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Next'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ROWID'')'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This button is needed for Get Next or Previous Primary Key Value process.',
'P221_ROWID_NEXT'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(135644392800411124)
,p_branch_action=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.::P239_ROWID,P239_TRSUBTYP:&P239_ROWID_NEXT.,&P239_ROWID_NEXT2.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(134016076878259579)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(135645168690411126)
,p_branch_action=>'f?p=&APP_ID.:239:&SESSION.::&DEBUG.::P239_ROWID,P239_TRSUBTYP:&P239_ROWID_PREV.,&P239_ROWID_PREV2.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(134016201071259579)
,p_branch_sequence=>20
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(135644802107411126)
,p_branch_action=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135619654978411107)
,p_name=>'P239_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135620018354411110)
,p_name=>'P239_COMPCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Compcode'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135620459647411110)
,p_name=>'P239_TRDOCTYP'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.TRANTYPE||'' - ''||s.SUBTTYPE||'' - ''||s.NARATION d,s.TRANTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999'''))
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135620851116411110)
,p_name=>'P239_TRSUBTYP'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Subtype'
,p_source=>'TRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE =:COMPCODE-- ''999'' ',
' AND s.TRANTYPE = :P239_TRDOCTYP'))
,p_lov_cascade_parent_items=>'P239_TRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135621265564411110)
,p_name=>'P239_OUTSTATS'
,p_item_sequence=>48
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Output Status Code'
,p_source=>'OUTSTATS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NMSOFCDE||'' - ''||C.NMCODDES d,C.NMSOFCDE r',
'  FROM nmcodmas C',
' WHERE C.NMHRDCDE = ''ST'' AND C.MODLCODE = ''NM'' AND C.COMPCODE = :COMPCODE'))
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135621639496411110)
,p_name=>'P239_PRDOCTYP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous DocType'
,p_source=>'PRDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.TRANTYPE||'' - ''||s.SUBTTYPE||'' - ''||s.NARATION d,s.TRANTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999'''))
,p_cSize=>32
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135621976318411110)
,p_name=>'P239_PRSUBTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Previous SubType'
,p_source=>'PRSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.SUBTTYPE||'' - ''||s.NARATION d,s.SUBTTYPE r',
'  FROM sydocmas s',
' WHERE COMPCODE = :COMPCODE-- ''999''',
' AND s.TRANTYPE = :P239_PRDOCTYP'))
,p_lov_cascade_parent_items=>'P239_PRDOCTYP'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135622439380411112)
,p_name=>'P239_INPSTATS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Input Status Code'
,p_source=>'INPSTATS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.NMSOFCDE||'' - ''||C.NMCODDES d,C.NMSOFCDE r',
'  FROM nmcodmas C',
' WHERE C.NMHRDCDE = ''ST'' AND C.MODLCODE = ''NM'' AND C.COMPCODE = :COMPCODE'))
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135622860978411112)
,p_name=>'P239_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135623242010411112)
,p_name=>'P239_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Timstamp'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135623650899411112)
,p_name=>'P239_STKUPFLG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stkupflg'
,p_source=>'STKUPFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135624005610411112)
,p_name=>'P239_SERVFLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Servflag'
,p_source=>'SERVFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135624430260411112)
,p_name=>'P239_APPRNEED'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Approval Required'
,p_source=>'APPRNEED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135624866151411112)
,p_name=>'P239_MODIFYDT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Modifydt'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135625171447411112)
,p_name=>'P239_ROWID_NEXT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_prompt=>'P239_ROWID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135625623585411112)
,p_name=>'P239_ROWID_PREV'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_prompt=>'P239_ROWID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135626000467411112)
,p_name=>'P239_ROWID_NEXT2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_prompt=>'P239_ROWID_NEXT2'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135626383266411112)
,p_name=>'P239_ROWID_PREV2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_prompt=>'P239_ROWID_PREV2'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(135626821071411112)
,p_name=>'P239_ROWID_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(135618466238411105)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135641069238411124)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(135637898861411123)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135641578614411124)
,p_event_id=>wwv_flow_api.id(135641069238411124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135643418617411124)
,p_name=>'submit page'
,p_event_sequence=>15
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_APPRNEED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135643907660411124)
,p_event_id=>wwv_flow_api.id(135643418617411124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135642028246411124)
,p_name=>'show/hide region'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P239_APPRNEED'
,p_condition_element=>'P239_APPRNEED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135642562256411124)
,p_event_id=>wwv_flow_api.id(135642028246411124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135627599451411113)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135643047077411124)
,p_event_id=>wwv_flow_api.id(135642028246411124)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135627599451411113)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(135840022566785885)
,p_name=>'add rows javascript'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(135840425364785885)
,p_event_id=>wwv_flow_api.id(135840022566785885)
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
'for (i = 0; i <=2; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135639522077411123)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P239_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_05=>'P239_TRSUBTYP'
,p_attribute_06=>'TRSUBTYP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135640738114411123)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P239_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_05=>'P239_TRSUBTYP'
,p_attribute_06=>'TRSUBTYP'
,p_attribute_09=>'P239_ROWID_NEXT'
,p_attribute_10=>'P239_ROWID_PREV'
,p_attribute_11=>'P239_ROWID_NEXT2'
,p_attribute_12=>'P239_ROWID_PREV2'
,p_attribute_13=>'P239_ROWID_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135639961412411123)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMWRKFLW'
,p_attribute_02=>'NMWRKFLW'
,p_attribute_03=>'P239_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135636668555411121)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(135627599451411113)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMWRKFTR'
,p_attribute_03=>'ROWID'
,p_attribute_04=>'TRSUBTYP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(135638747584411123)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_process_comment=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135637083401411123)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(135627599451411113)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMWRKFTR'
,p_attribute_03=>'TRDOCTYP'
,p_attribute_04=>'TRSUBTYP'
,p_attribute_05=>'COMPCODE=:P239_COMPCODE and TRDOCTYP=:P239_TRDOCTYP and TRSUBTYP=:P239_TRSUBTYP'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(135638358509411123)
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(135640283090411123)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(135638358509411123)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
