prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Booking Form'
,p_page_mode=>'MODAL'
,p_step_title=>'Booking Form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {padding: 0px 0px !important;}',
'table.formlayout td {padding-bottom:5px !important;}',
' table{overflow:visible;} '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180814105104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40570766028748948)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44043299549114147)
,p_plug_name=>'Booking Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44060882807114172)
,p_plug_name=>'Others'
,p_parent_plug_id=>wwv_flow_api.id(44043299549114147)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
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
 p_id=>wwv_flow_api.id(44064483213114172)
,p_plug_name=>'Booking'
,p_parent_plug_id=>wwv_flow_api.id(44043299549114147)
,p_region_template_options=>'#DEFAULT#:i-h220:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44066488503114174)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(44043299549114147)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44071678696114179)
,p_plug_name=>'Price Details'
,p_parent_plug_id=>wwv_flow_api.id(44043299549114147)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(204432995486746236)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(44043299549114147)
,p_region_template_options=>'#DEFAULT#:i-h220:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44044546357114149)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40570766028748948)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44043751595114147)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40570766028748948)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P120_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44044132641114149)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40570766028748948)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44044873767114149)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40570766028748948)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P120_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42244304368585031)
,p_branch_name=>'Report Generate'
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP:P51_PROGNAME,P51_DOCNUMBR:nmbokgtn,&P120_BOOKCODE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44044132641114149)
,p_branch_sequence=>5
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44079050295114188)
,p_branch_name=>'go to booked item list'
,p_branch_action=>'f?p=&APP_ID.:119:&SESSION.::&DEBUG.::P119_SELECT_LIST:&P120_BOOKAPRV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(44044132641114149)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41039530640735803)
,p_name=>'P120_ADVANCHED_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Advanced Amount'
,p_source=>'ADVANCHED_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42124951818178010)
,p_name=>'P120_DISCPCNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount %'
,p_source=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42125013179178011)
,p_name=>'P120_DISCAMNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount Amount'
,p_source=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43968848356627243)
,p_name=>'P120_IDENTIFY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Identify No.'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.CUSTMOBL',
'FROM  nmcusmas r',
'where r.compcode = :compcode',
'order by 1'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43969261077627243)
,p_name=>'P120_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'<font color="red">Customer Name</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43969643226627243)
,p_name=>'P120_DELRTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_item_default=>'IND'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43970044087627244)
,p_name=>'P120_OCCUPATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Occupation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bussiness;BUSSINESS,Service holder;Service holder,Private Jobs;Teacher;Teacher,Doctor;Doctor,PRIVATE JOBS,Govt. Jobs;GOVT. JOBS;Homemaker,Homemaker;Student,Student;Other,Other'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43970445407627244)
,p_name=>'P120_PHONENUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Office Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43970836192627244)
,p_name=>'P120_MOBILENO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'<font color="red">Mobile No</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43971246040627244)
,p_name=>'P120_BIRTHDATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Birth Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43971645224627244)
,p_name=>'P120_ANNIVERSARY_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Anniversary Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43972023142627244)
,p_name=>'P120_CUSTMAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'E-mail adress'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43972449425627244)
,p_name=>'P120_WHSZONFK'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43972792605627244)
,p_name=>'P120_PARTYCDE_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_partycode varchar2(20);',
'begin',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCD1,3,5)))+1),4,0) a ',
'into v_partycode',
'      from             NMcusvlg;',
'     -- where upper(partytyp)=upper(''CU'');',
'      return v_partycode;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43973244406627244)
,p_name=>'P120_PARTYAD2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Permanent Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43973649328627244)
,p_name=>'P120_PARTYAD1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_prompt=>'Present Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43974083833627244)
,p_name=>'P120_CRDLIMIT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43974477122627245)
,p_name=>'P120_CRDAMNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(204432995486746236)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44045296841114149)
,p_name=>'P120_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44045703080114150)
,p_name=>'P120_COMPCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Compcode'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44046149015114155)
,p_name=>'P120_DOCTTYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docttype'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44046519692114155)
,p_name=>'P120_SUBTTYPE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Subttype'
,p_source=>'SUBTTYPE'
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
 p_id=>wwv_flow_api.id(44046951225114155)
,p_name=>'P120_DOCNUMBR'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docnumbr'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44047297641114157)
,p_name=>'P120_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Doctdate'
,p_source=>'DOCTDATE'
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
 p_id=>wwv_flow_api.id(44047676600114157)
,p_name=>'P120_SERLNUMB'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Serlnumb'
,p_source=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44048109480114157)
,p_name=>'P120_PARTYCDE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Partycde'
,p_source=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44048546421114157)
,p_name=>'P120_RAISEDBY'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Raisedby'
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44048940081114158)
,p_name=>'P120_APPRVDBY'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apprvdby'
,p_source=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44049328178114158)
,p_name=>'P120_APPRDATE'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apprdate'
,p_source=>'APPRDATE'
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
 p_id=>wwv_flow_api.id(44049683165114158)
,p_name=>'P120_REQDDATE'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reqddate'
,p_source=>'REQDDATE'
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
 p_id=>wwv_flow_api.id(44050144054114158)
,p_name=>'P120_HUOMCODE'
,p_is_required=>true
,p_item_sequence=>920
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Huomcode'
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44050468405114158)
,p_name=>'P120_FACTRVAL'
,p_item_sequence=>950
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency Multiply by'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
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
 p_id=>wwv_flow_api.id(44050874244114165)
,p_name=>'P120_ITEMRATE'
,p_is_required=>true
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemrate'
,p_source=>'ITEMRATE'
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44051362136114166)
,p_name=>'P120_COSTRATE'
,p_item_sequence=>1010
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Costrate'
,p_source=>'COSTRATE'
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
 p_id=>wwv_flow_api.id(44051765197114166)
,p_name=>'P120_COSTCODE'
,p_is_required=>true
,p_item_sequence=>1440
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Costcode'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44052149205114166)
,p_name=>'P120_ITEMSERL'
,p_is_required=>true
,p_item_sequence=>1470
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemserl'
,p_source=>'ITEMSERL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44052478420114166)
,p_name=>'P120_TRNSQNTY'
,p_item_sequence=>1540
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trnsqnty'
,p_source=>'TRNSQNTY'
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
 p_id=>wwv_flow_api.id(44052949149114168)
,p_name=>'P120_TRNSQTY2'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trnsqty2'
,p_source=>'TRNSQTY2'
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
 p_id=>wwv_flow_api.id(44053347024114168)
,p_name=>'P120_UPDOCTYP'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updoctyp'
,p_source=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44053765357114168)
,p_name=>'P120_UPSUBTYP'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upsubtyp'
,p_source=>'UPSUBTYP'
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
 p_id=>wwv_flow_api.id(44054087312114169)
,p_name=>'P120_UPDOCNUM'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocnum'
,p_source=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44054530822114169)
,p_name=>'P120_UPDOCDTE'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocdte'
,p_source=>'UPDOCDTE'
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
 p_id=>wwv_flow_api.id(44054956567114169)
,p_name=>'P120_UPDOCSRL'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocsrl'
,p_source=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44055341197114169)
,p_name=>'P120_DWDOCTYP'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dwdoctyp'
,p_source=>'DWDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44055703822114169)
,p_name=>'P120_DWSUBTYP'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dwsubtyp'
,p_source=>'DWSUBTYP'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44056081624114169)
,p_name=>'P120_DWDOCNUM'
,p_item_sequence=>1970
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dwdocnum'
,p_source=>'DWDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44056518528114169)
,p_name=>'P120_DWDOCDTE'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dwdocdte'
,p_source=>'DWDOCDTE'
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
 p_id=>wwv_flow_api.id(44056910702114169)
,p_name=>'P120_DWDOCSRL'
,p_item_sequence=>2070
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dwdocsrl'
,p_source=>'DWDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44057305832114169)
,p_name=>'P120_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>2090
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44057685239114171)
,p_name=>'P120_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>2100
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Timstamp'
,p_source=>'TIMSTAMP'
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
 p_id=>wwv_flow_api.id(44058142142114171)
,p_name=>'P120_INVNUMPK'
,p_item_sequence=>2130
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invnumpk'
,p_source=>'INVNUMPK'
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
 p_id=>wwv_flow_api.id(44058562098114171)
,p_name=>'P120_STATUSCD'
,p_item_sequence=>2140
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Statuscd'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44058870307114171)
,p_name=>'P120_ENUDTLPK'
,p_is_required=>true
,p_item_sequence=>2160
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enudtlpk'
,p_source=>'ENUDTLPK'
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
 p_id=>wwv_flow_api.id(44059300446114171)
,p_name=>'P120_INVNUMFK'
,p_item_sequence=>2200
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invnumfk'
,p_source=>'INVNUMFK'
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
 p_id=>wwv_flow_api.id(44059675051114171)
,p_name=>'P120_SRVPKGFK'
,p_item_sequence=>2210
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Srvpkgfk'
,p_source=>'SRVPKGFK'
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
 p_id=>wwv_flow_api.id(44060081528114171)
,p_name=>'P120_TOTALSRV'
,p_item_sequence=>2220
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Totalsrv'
,p_source=>'TOTALSRV'
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
 p_id=>wwv_flow_api.id(44060542096114171)
,p_name=>'P120_LIMITDAY'
,p_item_sequence=>2350
,p_item_plug_id=>wwv_flow_api.id(44043299549114147)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Limitday'
,p_source=>'LIMITDAY'
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
 p_id=>wwv_flow_api.id(44061321968114172)
,p_name=>'P120_CUSTMRID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44061727842114172)
,p_name=>'P120_CUSTOMER_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44062129377114172)
,p_name=>'P120_SMANCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Sales Executive</font>'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smanname||'' (''||s.smancode||'')'' D,s.smancode R',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'          --  AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'           -- AND w.costcode = :P303_COSTCODE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44062467167114172)
,p_name=>'P120_SALESMAN_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smancode||''-''||s.smanname d,s.smancode r',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'          --  AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            --AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,2'
,p_attribute_06=>'2'
,p_attribute_07=>'P120_SMANCODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44062870835114172)
,p_name=>'P120_WARECODE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Warehouse</font>'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.WARECODE||''-''||w.WAREDESC d,w.WARECODE r',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44063331313114172)
,p_name=>'P120_WARENAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Warecode, Waredesc, Wareadd1 || ''  '' || Wareadd2 || '' '' || Wareadd3 Address',
'  FROM Nmwhsmas',
' WHERE Compcode = :Compcode'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_07=>'P120_WARECODE'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44063734024114172)
,p_name=>'P120_REFNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_source=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44064127524114172)
,p_name=>'P120_REFNDATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_source=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44064916298114172)
,p_name=>'P120_BOOKCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Booking No.'
,p_source=>'BOOKCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>100
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44065331816114172)
,p_name=>'P120_BOOKDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Booking Date'
,p_source=>'BOOKDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44065710496114174)
,p_name=>'P120_BOOKAPRV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Confirm Booking'
,p_source=>'BOOKAPRV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'Y_OR_N1'
,p_lov=>'.'||wwv_flow_api.id(44079337954114188)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44066117680114174)
,p_name=>'P120_REMARKSS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44064483213114172)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarkss'
,p_source=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>180
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44066936027114174)
,p_name=>'P120_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Code'
,p_post_element_text=>'   '
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_cHeight=>1
,p_cattributes_element=>'readonly=true'
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44067274845114174)
,p_name=>'P120_VINNUMBR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_source=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44067692655114174)
,p_name=>'P120_BATCHNUM'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch No.'
,p_source=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>20
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44068075090114174)
,p_name=>'P120_ITEMDESC'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_post_element_text=>'   '
,p_source=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44068557433114175)
,p_name=>'P120_ENGINENO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_source=>'ENGINENO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44068959120114175)
,p_name=>'P120_BATCHDTE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch Date'
,p_post_element_text=>'  '
,p_source=>'BATCHDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44069327414114175)
,p_name=>'P120_COMMCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>3
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44069697993114175)
,p_name=>'P120_BRAND'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Nmsofcde ,Nmcoddes',
'          FROM Nmcodmas',
'         WHERE Compcode = :Compcode AND Nmhrdcde = ''COM'''))
,p_cSize=>23
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44070126748114179)
,p_name=>'P120_VHCLKYNO'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Key No'
,p_source=>'VHCLKYNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44070521770114179)
,p_name=>'P120_BATCHEXP'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch Expiry Date'
,p_source=>'BATCHEXP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44070894194114179)
,p_name=>'P120_COLORCDE'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color'
,p_source=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44071292756114179)
,p_name=>'P120_COLOR_NAME'
,p_item_sequence=>2480
,p_item_plug_id=>wwv_flow_api.id(44066488503114174)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>23
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44072101631114180)
,p_name=>'P120_ORGNQNTY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Original Quantity'
,p_source=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44072477375114182)
,p_name=>'P120_APPRQNTY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Booking Quantity</font>'
,p_source=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44072899111114182)
,p_name=>'P120_LUOMCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Unit'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44073291901114182)
,p_name=>'P120_SALERATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Salerate</font>'
,p_post_element_text=>'   '
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44073671005114183)
,p_name=>'P120_MSLCAMNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_source=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44074146999114185)
,p_name=>'P120_MSFCAMNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_source=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44074551794114185)
,p_name=>'P120_EXCGRATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate'
,p_source=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44074929044114185)
,p_name=>'P120_CURRCODE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44071678696114179)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency'
,p_source=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44075720393114186)
,p_validation_name=>'P120_CUSTMRID is not null'
,p_validation_sequence=>10
,p_validation=>'P120_CUSTMRID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer can''t be null/blank'
,p_when_button_pressed=>wwv_flow_api.id(44044132641114149)
,p_associated_item=>wwv_flow_api.id(44061321968114172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44076125031114186)
,p_validation_name=>'P120_SMANCODE is not null'
,p_validation_sequence=>20
,p_validation=>'P120_SMANCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sales man can''t be null/blank'
,p_when_button_pressed=>wwv_flow_api.id(44044132641114149)
,p_associated_item=>wwv_flow_api.id(44062129377114172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(44076492253114186)
,p_validation_name=>'P120_SALERATE'
,p_validation_sequence=>30
,p_validation=>'P120_SALERATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sale rate can''t be null!'
,p_when_button_pressed=>wwv_flow_api.id(44044132641114149)
,p_associated_item=>wwv_flow_api.id(44073291901114182)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44078065847114186)
,p_name=>'generate booking code'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44078489649114186)
,p_event_id=>wwv_flow_api.id(44078065847114186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P120_BOOKCODE is null then',
'   SELECT  ''BK'' || LPAD (NVL (MAX (TO_NUMBER (SUBSTR (bookcode, 3))), 0) + 1, 6,0)',
'     INTO :P120_BOOKCODE',
'     FROM nmenudtl',
'    WHERE compcode = :compcode;',
'end if;',
'END;'))
,p_attribute_03=>'P120_BOOKCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42126786704178028)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P120_IDENTIFY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42126873107178029)
,p_event_id=>wwv_flow_api.id(42126786704178028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'SELECT count(*) into v_count',
'FROM  nmmrkcus r',
'where r.compcode = :compcode',
'and r.CUSTMOBL=:P120_IDENTIFY ;',
'if :P120_IDENTIFY IS NOT NULL THEN',
'SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTMOBL,r.CUSTMOBL,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE,t.DELRTYPE,t.OCCUPATION',
'into :P120_CUSTMRID,:P120_PRTYNAME,:P120_PARTYAD2,:P120_PARTYAD1,:P120_PHONENUM,:P120_MOBILENO,:P120_PARTYCDE_1,:P120_CUSTMAIL,:P120_BIRTHDATE,:P120_ANNIVERSARY_DATE,:P120_DELRTYPE,:P120_OCCUPATION',
'FROM  nmcusmas r,nmcusvlg s,nmmrkpty t',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.compcode = t.compcode',
'and r.CUSTMRID=t.CUSTMRID',
'and r.CUSTMOBL=:P120_IDENTIFY;',
'else',
':P120_CUSTMRID:=NULL;',
':P120_PRTYNAME:=NULL;',
':P120_PARTYAD2:=NULL;',
':P120_PARTYAD1:=NULL;',
':P120_PHONENUM:=NULL;',
':P120_PARTYCDE_1:=NULL;',
':P120_CUSTMAIL:=NULL;',
':P120_BIRTHDATE:=NULL;',
':P120_ANNIVERSARY_DATE:=NULL;',
':P120_DELRTYPE:=NULL;',
'--:P120_IDENTIFY:=NULL;',
':P120_OCCUPATION:=NULL;',
':P120_MOBILENO:=NULL;',
'NULL;',
'END IF;',
'/*SELECT r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.CUSTMOBL,r.PARTYCDE,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE',
'into :P120_CUSTOMERID,:P120_PRTYNAME,:P120_PARTYAD2,:P120_PARTYAD1,:P120_PHONENUM,:P120_MOBILENO,:P120_PARTYCDE,:P120_CUSTMAIL,:P120_BIRTHDATE,:P120_ANNIVERSARY_DATE',
'FROM  nmcusmas r,nmcusvlg s',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.CUSTMOBL=:P120_IDENTIFY;*/',
'',
'',
'select distinct s.WARECODE into :P120_WARECODE from nmsalrec s',
'where DOCNUMBR=:P120_DOCNUMBR;',
'--END IF;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P120_IDENTIFY'
,p_attribute_03=>'P120_CUSTMRID,P120_PRTYNAME,P120_PARTYAD2,P120_PARTYAD1,P120_PHONENUM,P120_MOBILENO,P120_PARTYCDE_1,P120_CUSTMAIL,P120_BIRTHDATE,P120_ANNIVERSARY_DATE,P120_DELRTYPE,P120_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44076814185114186)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMENUDTL'
,p_attribute_02=>'NMENUDTL'
,p_attribute_03=>'P120_VINNUMBR'
,p_attribute_04=>'VINNUMBR'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44077616193114186)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMENUDTL'
,p_attribute_02=>'NMENUDTL'
,p_attribute_03=>'P120_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43990021431711733)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into NMCOMPTY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_partyname varchar2(100);',
'v_count number;',
'begin',
'select count(MOBILENO) into v_count from sycompty',
'where MOBILENO = :P120_IDENTIFY;',
'if v_count = 0 then',
'--IF :P120_CUSTOMERID IS NOT NULL AND :P120_PARTYCDE is NOT NULL then',
'',
'INSERT INTO SYCOMPTY (COMPCODE,',
'                      CUSTMRID,',
'                      PARTYCDE,',
'                      CUSTTYPE,',
'                      PARTYTYP,',
'                      IDENTIFY,',
'                      PRTYNAME,',
'                      FATHERS_NAME,',
'                      MOBILENO,',
'                      TELENOFF,',
'                      PRESENT_ADDRESS1,',
'                      PRESENT_ADDRESS2,',
'                      PRESENT_ADDRESS3,',
'                      NOMINEE_NAME,',
'                      OCCUPATION,',
'                      TELENRES,',
'                      PERMANENT_ADDRESS1,',
'                      PERMANENT_ADDRESS2,',
'                      PERMANENT_ADDRESS3,',
'                      NOMINEE_RELATIONSHIP,',
'                      PEMAILID,',
'                      ZONLCODE,',
'                      AREACODE,',
'                      FIRST_GUARANTOR,',
'                      FIRST_GUARANTOR_SO_DO,',
'                      FIRST_GUARANTOR_ADD1,',
'                      FIRST_GUARANTOR_ADD2,',
'                      FIRST_GUARANTOR_MOB,',
'                      SECOND_GUARANTOR,',
'                      SECOND_GUARANTOR_SO_DO,',
'                      SECOND_GUARANTOR_ADD1,',
'                      SECOND_GUARANTOR_ADD2,',
'                      SECOND_GUARANTOR_MOB,',
'                      CUSTOMER_CODE,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      PARTYAD1,',
'                      PARTYAD2,',
'                      PARTYAD3)',
'     VALUES (:COMPCODE,',
'             :P120_CUSTMRID,',
'             :P120_PARTYCDE_1,',
'             null,',
'             ''CU'',',
'             :P120_IDENTIFY,',
'             :P120_PRTYNAME,',
'             null,',
'             :P120_MOBILENO,',
'             null,',
'             :P120_PARTYAD2,',
'             null,',
'             null,',
'             null,',
'             :P120_OCCUPATION,',
'             null,',
'             :P120_PARTYAD1,',
'             null,',
'             null,',
'             null,',
'             :P120_CUSTMAIL,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             null,',
'             :P120_CUSTMRID,',
'             :APP_USER,',
'             SYSDATE,',
'             :P120_PARTYAD1,',
'             :P120_PARTYAD2,',
'             null);',
'--end if;',
'end if;',
'----------Updata Customer Master---------',
'/*update nmcusmas set partycde=:P139_PARTYCDE',
'where compcode=:compcode',
'and custmrid=:P139_CUSTMRID;*/',
'----------Updata Customer Master---------',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
 p_id=>wwv_flow_api.id(43990367133712958)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_docnum1 varchar2(50);',
' nxtptycde number(10);',
' vcount number;',
'begin',
'',
'',
'Docnumber_Generation(:COMPCODE,''NM'',''CS'', 2, sysdate,:P120_WARECODE, ''NM'', v_docnum1);',
'',
'--IF :P120_CUSTOMERID IS not NULL THEN',
'',
'  begin',
'      select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where PARTYCDE = :P120_PARTYCDE',
'       and compcode = :COMPCODE;',
'       exception',
'    when no_data_found then',
'    vcount := 0;',
'    when too_many_rows then',
'    vcount := 0;',
'    when others then',
'    vcount := 0;',
'',
'end;',
'if vcount = 0 then',
'insert into nmcusvlg(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, SMANCODE, RAISEDBY, CUSTMRID,APP_FLG,PARTYCD1, OPRSTAMP, TIMSTAMP )',
'values (:COMPCODE,''CS'',2,v_docnum1,SYSDATE,:APP_USER,:APP_USER,:P120_CUSTMRID,''Y'',:P120_PARTYCDE,:APP_USER,sysdate);',
'insert into nmmrkpty(COMPCODE,PARTYTYP,PARTYCDE,OCCUPATION,PRTYNAME,IDENTIFY,MOBILENO,PARTYAD2,PARTYAD1,OPRSTAMP,TIMSTAMP,PHONENUM,CUSTMRID,CUSTOMER_CODE,CREDDAYS )',
'values (:COMPCODE,''CU'',:P120_PARTYCDE,:P120_OCCUPATION,:P120_PRTYNAME,:P120_IDENTIFY,:P120_MOBILENO,:P120_PARTYAD2,:P120_PARTYAD1,:APP_USER,sysdate,',
'       :P120_PHONENUM,:P120_CUSTMRID,:P120_CUSTMRID,90);',
'commit;',
'ELSE',
'  /*  UPDATE nmmrkpty',
'    SET DELRTYPE = :P120_DELRTYPE,',
'        OCCUPATION = :P120_OCCUPATION,',
'        PRTYNAME = :P120_PRTYNAME,',
'        IDENTIFY = :P120_IDENTIFY,',
'        MOBILENO = :P120_MOBILENO,',
'        PARTYAD2 = :P120_PARTYAD2,',
'        PARTYAD1 = :P120_PARTYAD1,',
'        WHSZONFK = :P120_WHSZONFK,',
'        PHONENUM = :P120_PHONENUM',
'    WHERE PARTYCDE = :P120_PARTYCDE',
'     AND COMPCODE = :COMPCODE;*/',
'     NULL;',
'--    COMMIT;',
'end if;  ',
'',
'--END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44077185878114186)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate book no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P120_BOOKCODE is null then',
'   SELECT  ''BK'' || LPAD (NVL (MAX (TO_NUMBER (SUBSTR (bookcode, 3))), 0) + 1, 6,0)',
'     INTO :P120_BOOKCODE',
'     FROM nmenudtl',
'    WHERE compcode = :compcode;',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44044132641114149)
,p_process_success_message=>'Successfully Insert <br>Booking No. &P120_BOOKCODE.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43989775618710229)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert into nmmrkpty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' V_DOCNUM varchar2(10);',
'v_customer varchar2(20);',
'vcount number;',
'begin',
'select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where CUSTMOBL = :P120_IDENTIFY',
'       and compcode = :COMPCODE;',
' if vcount=0 then',
'--if :P120_DOCNUMBR is  null then',
'select TO_CHAR (sysdate, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0) a',
'into :P120_CUSTMRID',
'from dual;',
'',
'',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCD1,3,5)))+1),4,0) a ',
'into :P120_PARTYCDE_1',
'      from             NMcusvlg;',
'--end if;',
'else',
'/*select CUSTMRID,PARTYCDE',
'      into :P120_CUSTOMERID,:P120_PARTYCDE',
'      from nmmrkcus',
'      where CUSTMOBL = :P120_IDENTIFY',
'       and compcode = :compcode;*/',
'       null;',
'end if;',
'',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
