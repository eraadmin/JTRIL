prompt --application/pages/page_00417
begin
--   Manifest
--     PAGE: 00417
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
 p_id=>417
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Information'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230101163315'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20045313908395013)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(35300461927441613)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178944726320091844)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(20045313908395013)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(178972112750094837)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(20045313908395013)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23859215475938106)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_api.id(178972112750094837)
,p_button_name=>'P417_SHOWHIDE'
,p_button_static_id=>'P81_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20045491708395014)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20045313908395013)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20045665405395016)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20045313908395013)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20045551027395015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(20045313908395013)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23822980062822510)
,p_branch_name=>'Go To Page 418'
,p_branch_action=>'f?p=&APP_ID.:&P417_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(20045665405395016)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23822886147822509)
,p_branch_name=>'Go To Page 416'
,p_branch_action=>'f?p=&APP_ID.:&P417_PREVPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(20045551027395015)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23823188005822512)
,p_name=>'P417_NEXTPAGE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23823200160822513)
,p_name=>'P417_PREVPAGE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23842826179935139)
,p_name=>'P417_REGION'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23843275837935160)
,p_name=>'P417_COMPCODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23843662437935160)
,p_name=>'P417_OPRSTAMP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23844093429935160)
,p_name=>'P417_TIMSTAMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23844420714935160)
,p_name=>'P417_SERLNUMB'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23844886514935162)
,p_name=>'P417_PUR_DOCNUMBR'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23845281557935162)
,p_name=>'P417_STATUSCD'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23845666743935162)
,p_name=>'P417_ITEMLONG'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23846082988935164)
,p_name=>'P417_MSFCAMNT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23846486306935164)
,p_name=>'P417_TRANTYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23846847490935165)
,p_name=>'P417_DOCDESC'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23847293856935165)
,p_name=>'P417_ROWID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23847658477935165)
,p_name=>'P417_DOCTTYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_item_default=>':DOCTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23848058375935165)
,p_name=>'P417_SUBTTYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_item_default=>':SUBTTYPE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23848484856935165)
,p_name=>'P417_DOCNUMBR1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23848838313935165)
,p_name=>'P417_PRVREF'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23849221656935167)
,p_name=>'P417_ITEMCODE1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23849630489935167)
,p_name=>'P417_S_PRDTYP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE compcode = :compcode',
'   and trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23850021345935167)
,p_name=>'P417_COMPCODE_APPLICATION'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23850490318935168)
,p_name=>'P417_TABULARITEMCODE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23850807586935168)
,p_name=>'P417_S_PRSTYP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE compcode = :compcode',
'   and trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23851258996935168)
,p_name=>'P417_TABCOSTRATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23851655279935168)
,p_name=>'P417_TABITEMDESC'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23852059450935168)
,p_name=>'P417_TABITEMRATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23852431342935168)
,p_name=>'P417_TABITEMUNIT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23852865612935168)
,p_name=>'P417_TABCLOSINGBALANCE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23853253238935168)
,p_name=>'P417_TABITEMTYPE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23853603371935168)
,p_name=>'P417_TABCOMMGRUP'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23854037629935168)
,p_name=>'P417_DOCNUMBR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23854589489935168)
,p_name=>'P417_TABSALEPERC'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23854974505935168)
,p_name=>'P417_DOCTDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Issue Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P417_PRVDDT.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23855304874935170)
,p_name=>'P417_PRVDNO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23855769748935170)
,p_name=>'P417_PRVDDT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23856157600935170)
,p_name=>'P417_REFNUM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23856563933935170)
,p_name=>'P417_REFNDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23857308817935171)
,p_name=>'P417_MODAL'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23857727297935171)
,p_name=>'P417_UNITOFMESURE'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23858195614935171)
,p_name=>'P417_BATCHITEMCODE'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(178944726320091844)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23859696063938106)
,p_name=>'P417_SRCWRECD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_prompt=>'Issuing Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_tag_attributes=>'readonly="true"'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860084830938106)
,p_name=>'P417_SRWHSNME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860468283938106)
,p_name=>'P417_SRCSTCDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23860860240938107)
,p_name=>'P417_SRCSTNME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23861230873938109)
,p_name=>'P417_DSWHSCDE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23861682774938109)
,p_name=>'P417_DSWHSNME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23862048316938110)
,p_name=>'P417_SRCCOMPNM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23862439872938110)
,p_name=>'P417_SRCCOMPDS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1_COMPNAME.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23862804025938110)
,p_name=>'P417_COSTCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23863283362938110)
,p_name=>'P417_COSTCENTERNAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23863653517938110)
,p_name=>'P417_SRCCOSTCD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23864076327938112)
,p_name=>'P417_SRCCOSTDS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P417_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23864465921938112)
,p_name=>'P417_APRPERSON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23864847592938112)
,p_name=>'P417_APRPERSNM'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23865224144938112)
,p_name=>'P417_RAISEDBY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_USER.'
,p_prompt=>'Raised By'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23865688645938112)
,p_name=>'P417_RAISEDNAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERNAME from syusrmas',
'where upper(USERCODE)=:APP_USER'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Raisedname'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23866086538938112)
,p_name=>'P417_CUSTOMTYPE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_item_default=>'COR'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23866465568938115)
,p_name=>'P417_CUSTOMERID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23866835615938115)
,p_name=>'P417_CUSTOMERNAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23867274749938115)
,p_name=>'P417_LOVCOSTCODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_prompt=>'Cost Code'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   w.costcode,s.costdesc, w.warecode, w.waredesc',
'    FROM nmwhsmas w, syjobmas s',
'   WHERE w.compcode = :compcode',
'     AND w.compcode = s.compcode',
'     AND w.costcode = s.costcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER)',
'ORDER BY warecode;'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'1,1'
,p_attribute_06=>'1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23867672353938115)
,p_name=>'P417_LOVSALMANID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_prompt=>'Saleman'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT  s.smancode,s.smanname',
'           FROM syjobmas j, nmwhsmas w, nmsmnmas s',
'          WHERE j.compcode = :compcode',
'            AND w.costcode = j.costcode',
'            AND w.compcode = j.compcode',
'            AND w.compcode = s.compcode',
'            AND w.regncode = s.smantype',
'            AND w.srvcwflg = ''N''',
'            AND s.smantype <> ''RE''',
'            AND w.warecode = s.suprcode',
'            AND w.costcode = :P417_COSTCODE'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_06=>'1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23868046082938118)
,p_name=>'P417_SALMANID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23868307288938118)
,p_name=>'P417_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_prompt=>'Req. From Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23868757360938120)
,p_name=>'P417_SALMNNAME'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23869144219938120)
,p_name=>'P417_SOURCEWARECODE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(178972112750094837)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55401087838215416)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>10
,p_validation=>':P417_DOCTDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(23854974505935168)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20262225697122831)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20262758115122831)
,p_event_id=>wwv_flow_api.id(20262225697122831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P417_DOCTTYPE,:P417_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P417_TRANTYPE',
'AND SYSDATE BETWEEN STRTPERD AND ENDPERD ',
'AND MODLCODE = :MODLCODE ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'',
'BEGIN',
'  Select PRDOCTYP,PRSUBTYP',
'into :P417_PRDTYP,:P417_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P417_DOCTTYPE',
'        and    TRSUBTYP = :P417_SUBTTYPE;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'BEGIN',
'SELECT INITCAP (naration)',
'into :P417_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P417_PRDTYP',
'   AND subttype = :P417_PRSTYP',
'   AND :P417_DOCTDATE BETWEEN strtperd AND endperd',
'   AND modlcode = :modlcode ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'  ',
'',
''))
,p_attribute_02=>'P417_TRANTYPE,P417_PRDTYP,P417_PRSTYP'
,p_attribute_03=>'P417_PRDTYP,P417_PRSTYP,P417_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20263176160122831)
,p_name=>'change on P417_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_PRVDNO'
,p_condition_element=>'P417_PRVDNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20263619930122832)
,p_event_id=>wwv_flow_api.id(20263176160122831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P417_PRVDNO is not null then',
'  Begin',
'   	Select distinct DOCTDATE',
'   	into   :P417_PRVDDT',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P417_S_PRDTYP',
'   	and    SUBTTYPE = :P417_S_PRSTYP',
'   	and    DOCNUMBR = :P417_PRVDNO;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'end if;',
'END;',
'begin',
'If :P417_PRVDNO  is not null then',
'  Begin',
'   	Select distinct costcode,refnumbr,refndate,SRCWRECD,BATCHNUM',
'   	into   :P417_SRCCOSTCD,:P417_REFNUMBR,:P417_REFNDATE,:P417_SRWHSCDE,:P417_STYLENO',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P417_S_PRDTYP',
'   	and    SUBTTYPE = :P417_S_PRSTYP',
'   	and    DOCNUMBR = :P417_PRVDNO',
'   	and    DOCTDATE = :P417_PRVDDT;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'Begin',
'  If :P417_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P417_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P417_SRCCOSTCD ;',
'	   Select warecode,waredesc',
'   	 into   :P417_DSWHSCDE,:P417_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P417_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;	',
'  End if;',
'End; ',
'  ',
'End If;  ',
'end;',
''))
,p_attribute_02=>'P417_PRDTYP,P417_PRSTYP,P417_PRVDNO,P417_SRCCOSTCD'
,p_attribute_03=>'P417_SRCCOSTCD,P417_REFNUMBR,P417_SRCCOSTDS,P417_DSWHSCDE,P417_DSWHSNME,P417_SRCWRECD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20265025557122832)
,p_name=>'change  on SRCWRECD'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_SRCWRECD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20265528638122832)
,p_event_id=>wwv_flow_api.id(20265025557122832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'requestno varchar2(20);',
'docnum varchar2(500);',
'begin',
'begin',
'   	Select waredesc, costcode',
'   	into   :P417_SRWHSNME,:P417_SRCSTCDE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P417_SRCWRECD;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'   End; ',
' ',
'Begin',
'  If :P417_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P417_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P417_SRCSTCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);          ',
'          ',
'   End;	',
'  End if;',
'  end;',
'End;'))
,p_attribute_02=>'P417_DOCTDATE,P417_SRCWRECD,P417_SRCSTCDE'
,p_attribute_03=>'P417_SRWHSNME,P417_SRCSTCDE,P417_SRCSTNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'	Declare',
'			a number; ',
'l_result number;',
'l_no number;',
'',
'		Begin',
'',
'			Select 1 into a from sycstacc',
'				Where compcode = :compcode ',
'					And grupcode = :APP_USER',
'					And cabasecc = ''00000'';',
'',
'			Begin	',
'				Select waredesc,costcode into :P81_SRWHSNME,:P81_SRCSTCDE',
'					From nmwhsmas ',
'				 Where compcode = :compcode   ',
'				 	 And warecode = :P81_SRWHSCDE;',
'			 Exception',
'					When no_data_found then',
'					    apex_application.g_print_success_message:='' has not access in this cost center'';',
'					When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'				End;',
'				',
'',
'		Exception',
'			When No_Data_Found then',
'				Begin',
'				 	Select 1 into a from nmperson a, syusrmas b',
'						where a.compcode = :compcode ',
'							and a.compcode = b.divncode',
'							and a.usercode = b.usercode',
'							and a.usercode = :APP_USER',
'							and a.authtype in (''APR'',''RAS'');',
'					',
'				Begin	',
'					Select a.warecode,waredesc into :P81_SRCSTCDE,:P81_SRCSTNME ',
'					 From SYCSTACC a,NMWHSMAS b',
'						Where a.compcode = :compcode ',
'						    And a.compcode = b.compcode',
'						    And a.cabasecc = b.costcode ',
'						    And a.warecode = b.warecode',
'						    And a.grupcode = :APP_USER',
'						    And b.warecode = :P81_SRWHSCDE;',
'					Exception',
'						When no_data_found then',
'				apex_application.g_print_success_message:='' has not access in this cost center'';',
'',
'						When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'',
'					End;			',
'				Exception',
'					When No_Data_Found then',
'						apex_application.g_print_success_message:=''No user Code define in SYUSRMAS/NMPERSON..'';',
'					When Too_Many_Rows then',
'					apex_application.g_print_success_message:=''Too Many user Codes defined in SYUSRMAS/NMPERSON..'';					',
'				End;',
'		End;	',
'',
'   if :P81_SRWHSCDE = :P81_DSWHSCDE then',
'   	  apex_application.g_print_success_message:=''Source and Destination Warehouse cannot be the same'';',
'',
'   end if;',
'   ',
'Begin',
'  If :P81_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P81_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P81_SRCSTCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20265930232122834)
,p_name=>'refresh on tabular region'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P417_REFNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20266436762122834)
,p_event_id=>wwv_flow_api.id(20265930232122834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20266812740122834)
,p_name=>'disable field after refresh'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20267354581122834)
,p_event_id=>wwv_flow_api.id(20266812740122834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f21"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f21"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f21"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20046000031395020)
,p_name=>'Close Dialog'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20045491708395014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20046121003395021)
,p_event_id=>wwv_flow_api.id(20046000031395020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23823379568822514)
,p_event_id=>wwv_flow_api.id(20046000031395020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'if apex_collection.collection_exists(''BATCH_DISTRIBUTION'') then',
'   apex_collection.delete_collection(p_collection_name => ''BATCH_DISTRIBUTION'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS_DTL'') then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS_DTL'');',
'end if;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20046219646395022)
,p_event_id=>wwv_flow_api.id(20046000031395020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23822504219822506)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P417_DOCNUMBR,',
'            p_c002            => :P417_DOCTDATE,',
'            p_c003            => :P417_PRVDDT,',
'            p_c004            => :P417_REFNUM,',
'            p_c005            => :P417_REFNDATE,',
'            p_c006            => :P417_WARECODE,',
'            p_c007            => :P417_SRWHSNME,',
'            p_c008            => :P417_SRCSTCDE,',
'            p_c009            => :P417_SRCSTNME,',
'            p_c010            => :P417_SRWHSCDE,',
'            p_c011            => :P417_DSWHSNME,',
'            p_c012            => :P417_SRCCOSTCD,',
'            p_c013            => :P417_SRCCOSTDS,',
'            p_c014            => :P417_RAISEDBY,',
'            p_c015            => :P417_RAISEDNAME,',
'            p_c016            => :P417_S_PRDTYP,',
'            p_c017            => :P417_S_PRSTYP',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P417_DOCNUMBR,',
'            p_c002            => :P417_DOCTDATE,',
'            p_c003            => :P417_PRVDDT,',
'            p_c004            => :P417_REFNUM,',
'            p_c005            => :P417_REFNDATE,',
'            p_c006            => :P417_WARECODE,',
'            p_c007            => :P417_SRWHSNME,',
'            p_c008            => :P417_SRCSTCDE,',
'            p_c009            => :P417_SRCSTNME,',
'            p_c010            => :P417_SRWHSCDE,',
'            p_c011            => :P417_DSWHSNME,',
'            p_c012            => :P417_SRCCOSTCD,',
'            p_c013            => :P417_SRCCOSTDS,',
'            p_c014            => :P417_RAISEDBY,',
'            p_c015            => :P417_RAISEDNAME,',
'            p_c016            => :P417_S_PRDTYP,',
'            p_c017            => :P417_S_PRSTYP',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20045665405395016)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23823041461822511)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_invmthd char(1);',
'BEGIN',
'',
'BEGIN',
'   SELECT NVL (invmthd, ''N'')',
'     INTO v_invmthd',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode;',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      v_invmthd := ''N'';',
'END;',
'',
'IF v_invmthd = ''N'' THEN',
'    BEGIN',
'    SELECT WIZ_P1, WIZ_P3',
'      INTO :P417_PREVPAGE, :BATCH_PAGE --:P417_NEXTPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'    EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'    END;  ',
'',
'ELSE',
'    BEGIN',
'    SELECT WIZ_P1, WIZ_P5',
'      INTO :P417_PREVPAGE, :BATCH_PAGE --:P417_NEXTPAGE',
'      FROM symenmas',
'     WHERE PROGNAME = :PROGNAME;',
'    EXCEPTION ',
'       WHEN OTHERS THEN',
'       RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'    END;  ',
'END IF;',
':P417_NEXTPAGE := :BATCH_PAGE;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
