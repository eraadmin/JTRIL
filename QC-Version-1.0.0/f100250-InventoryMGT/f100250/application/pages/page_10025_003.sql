prompt --application/pages/page_10025_003
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500020
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Information'
,p_alias=>'DOCUMENT-INFORMATION1'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230105133502'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265872049835677596)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(34655500770921673)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(355929455832313281)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(265872049835677596)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
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
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(355942205968316723)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(265872049835677596)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
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
 p_id=>wwv_flow_api.id(355973845338321143)
,p_plug_name=>'Doc Info Center'
,p_parent_plug_id=>wwv_flow_api.id(265872049835677596)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34633545047921649)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(355942205968316723)
,p_button_name=>'BTN_OCost'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Others Cost'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(34624528014921636)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(265872049835677596)
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
 p_id=>wwv_flow_api.id(34624980323921637)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(265872049835677596)
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
 p_id=>wwv_flow_api.id(34625305967921637)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(265872049835677596)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34654942271921669)
,p_branch_name=>'Go To Page 423'
,p_branch_action=>'f?p=&APP_ID.:&P1002500020_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34624980323921637)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(34654591156921668)
,p_branch_name=>'Go To Page 421'
,p_branch_action=>'f?p=&APP_ID.:&P1002500020_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(34625305967921637)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34626059609921642)
,p_name=>'P1002500020_TRNDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'+0d'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34626468239921644)
,p_name=>'P1002500020_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'RC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34626835315921644)
,p_name=>'P1002500020_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34627288528921644)
,p_name=>'P1002500020_DOCDESC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'&DOCDESC.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34627611779921644)
,p_name=>'P1002500020_S_PRDTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE compcode = :compcode',
'   and trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34628039114921645)
,p_name=>'P1002500020_S_PRSTYP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE compcode = :compcode',
'   and trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34628483199921645)
,p_name=>'P1002500020_RCVNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34628869506921646)
,p_name=>'P1002500020_RCVDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34629231999921646)
,p_name=>'P1002500020_PODCNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'PO. No'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_css_classes=>'is-readonly'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34629651406921646)
,p_name=>'P1002500020_UPDOCNUM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630082265921646)
,p_name=>'P1002500020_PODCDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'<strong>Date</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630451519921646)
,p_name=>'P1002500020_REFNUMBR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'Ext. Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34630882852921647)
,p_name=>'P1002500020_REFNDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34631225674921647)
,p_name=>'P1002500020_WARECODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'Warehouse'
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
 p_id=>wwv_flow_api.id(34631623825921648)
,p_name=>'P1002500020_WARECODE_1'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'<font color="red">Whs.Code</font>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || ''-'' || waredesc d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode ',
'--   AND costcode = :P1002500020_costcode',
'ORDER BY warecode DESC',
''))
,p_lov_display_null=>'YES'
,p_cSize=>7
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34632040448921648)
,p_name=>'P1002500020_WHSNAM'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34632489506921648)
,p_name=>'P1002500020_PREVPAGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34632892737921648)
,p_name=>'P1002500020_NEXTPAGE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34633950891921649)
,p_name=>'P1002500020_QCWARECODE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'Rcv. Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (QCWHFLAG, ''N'') = ''Y''',
'     AND warecode IN (SELECT warecode',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode ',
'                         AND grupcode = :APP_USER)',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_cSize=>50
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34634397917921650)
,p_name=>'P1002500020_QCCOSTCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34634785431921650)
,p_name=>'P1002500020_COSTCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34635175061921650)
,p_name=>'P1002500020_COSTCODE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34635541897921650)
,p_name=>'P1002500020_REQDDAT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34635975776921650)
,p_name=>'P1002500020_BATCHDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'<font color="red">Batch Date</font>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_css_classes=>'u-VisuallyHidden'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34636319562921651)
,p_name=>'P1002500020_BATCHNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'<font color="red">Batch No</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_css_classes=>'u-VisuallyHidden'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34636776971921651)
,p_name=>'P1002500020_BTCHEXPDAT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'Batch Exp. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34637165920921651)
,p_name=>'P1002500020_CURRENCY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34637567087921651)
,p_name=>'P1002500020_EXCHANGERATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34637937424921652)
,p_name=>'P1002500020_REQUESTNO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34638362133921652)
,p_name=>'P1002500020_LCTOTAL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P1002500020_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34638774712921653)
,p_name=>'P1002500020_POTYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34639171964921653)
,p_name=>'P1002500020_WAREHUSBUGET'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34639553816921653)
,p_name=>'P1002500020_WAREHUSREM'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34639991966921654)
,p_name=>'P1002500020_CUSTOMERNAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34640325891921654)
,p_name=>'P1002500020_LOCATIONCDE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34640771809921654)
,p_name=>'P1002500020_SOURCEWARECODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34641151323921654)
,p_name=>'P1002500020_SALMANID'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34641596430921654)
,p_name=>'P1002500020_PARTYCDE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34641935291921655)
,p_name=>'P1002500020_S_BILPART'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34642369097921655)
,p_name=>'P1002500020_S_BLPARTNM'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34642985090921655)
,p_name=>'P1002500020_SUPPLIERCDE'
,p_item_sequence=>1064
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'Supplier'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname, a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode ',
'     --AND a.partytyp IN (''CV'', ''VE'')'))
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
 p_id=>wwv_flow_api.id(34643347026921656)
,p_name=>'P1002500020_SUPPLIERCDE_1'
,p_is_required=>true
,p_item_sequence=>1074
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'<font color="red">Supplier</font>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname,a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode ',
'     AND a.partytyp IN (''CV'', ''VE'')',
'ORDER BY a.partycde'))
,p_lov_display_null=>'YES'
,p_cSize=>6
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34643794908921656)
,p_name=>'P1002500020_SUPPLIERNAME'
,p_item_sequence=>1084
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34644162604921656)
,p_name=>'P1002500020_CONTPRSN'
,p_item_sequence=>1094
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'Cont.Person'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34644550262921656)
,p_name=>'P1002500020_SPLRADRS'
,p_item_sequence=>1104
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34644918630921656)
,p_name=>'P1002500020_SPLREMAIL'
,p_item_sequence=>1114
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'E-Mail'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34645358527921657)
,p_name=>'P1002500020_SPLRPHON'
,p_item_sequence=>1124
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34645780270921657)
,p_name=>'P1002500020_POSTSTATUS'
,p_item_sequence=>1134
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(34646195749921658)
,p_name=>'P1002500020_SALMNNAME'
,p_item_sequence=>1144
,p_item_plug_id=>wwv_flow_api.id(355973845338321143)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35364598507135405)
,p_name=>'P1002500020_ARIVDATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'SQL'
,p_prompt=>'Arrival Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'STATIC'
,p_attribute_07=>'+0d'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42893978033354304)
,p_name=>'P1002500020_CHALLANO'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'Challan No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42894094601354305)
,p_name=>'P1002500020_VEHICLNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(355942205968316723)
,p_prompt=>'Vehicle No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42894440899354309)
,p_name=>'P1002500020_INDENT_NO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(355929455832313281)
,p_prompt=>'Indent No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(34646677862921661)
,p_validation_name=>'Trandate not null'
,p_validation_sequence=>10
,p_validation=>'P1002500020_TRNDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(34626059609921642)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(34647035206921661)
,p_validation_name=>'batch date not null'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1002500020_BATCHNO is not null',
'and :P1002500020_BATCHDATE is not null'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Batch Date and Batch no. must have Value.'
,p_validation_condition=>'P1002500020_BATCHNO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(34624980323921637)
,p_associated_item=>wwv_flow_api.id(34635975776921650)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(34647462878921662)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>30
,p_validation=>':P1002500020_TRNDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(34626059609921642)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34648922249921664)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(34624528014921636)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34649481014921665)
,p_event_id=>wwv_flow_api.id(34648922249921664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34649997669921665)
,p_event_id=>wwv_flow_api.id(34648922249921664)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''OTHER_COST'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''OTHER_COST'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34650452706921665)
,p_event_id=>wwv_flow_api.id(34648922249921664)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34650838864921666)
,p_name=>'Supplier Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500020_SUPPLIERCDE'
,p_condition_element=>'P1002500020_SUPPLIERCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34651386243921666)
,p_event_id=>wwv_flow_api.id(34650838864921666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select Initcap(PRTYNAME), CONTACT1, PARTYAD1, PEMAILID, PHONENUM',
'into :P1002500020_SUPPLIERNAME, :P1002500020_CONTPRSN, :P1002500020_SPLRADRS, :P1002500020_SPLREMAIL, :P1002500020_SPLRPHON',
'from  sycompty',
' where compcode = :compcode',
' and PARTYCDE=:P1002500020_SUPPLIERCDE;',
'   ',
' Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
''))
,p_attribute_02=>'P1002500020_SUPPLIERCDE'
,p_attribute_03=>'P1002500020_SUPPLIERNAME,P1002500020_CONTPRSN,P1002500020_SPLRADRS,P1002500020_SPLREMAIL,P1002500020_SPLREMAIL,P1002500020_SPLRPHON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34651729620921666)
,p_name=>'change on warecode'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500020_QCWARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34652209114921667)
,p_event_id=>wwv_flow_api.id(34651729620921666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1002500020_QCCOSTCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT costcode',
'  FROM nmwhsmas',
' WHERE compcode = :compcode',
'   AND qcwhflag = ''Y''',
'   AND warecode = :P1002500020_QCWARECODE;'))
,p_attribute_07=>'P1002500020_QCWARECODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34652610646921667)
,p_name=>'Cost Center Name'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500020_COSTCODE_1'
,p_condition_element=>'P1002500020_COSTCODE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34653157593921667)
,p_event_id=>wwv_flow_api.id(34652610646921667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--IF :P97_COSTCODE IS NOT NULL THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P1002500020_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1002500020_COSTCODE_1)',
'     AND costcode = :P1002500020_COSTCODE_1',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'--   END IF;',
'END;',
'',
'BEGIN',
'--IF :P1002500020_COSTCODE IS NOT NULL  THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P1002500020_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P1002500020_COSTCODE_1;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'--   END IF;',
'END;',
'BEGIN',
'--IF :P97_COSTCODE IS NOT NULL and :P97_DOCNUMBR1 is not null THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P1002500020_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :P1002500020_docnumbr1',
'         AND DOCTDATE = :P1002500020_DOCTDATE',
'         AND COSTCODE = :P1002500020_COSTCODE_1;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'--   END IF;',
'END;'))
,p_attribute_02=>'P1002500020_COSTCODE,P1002500020_DOCNUMBR,P1002500020_DOCTDATE'
,p_attribute_03=>'P1002500020_WARECODE,P1002500020_QCCOSTCODE,P1002500020_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(34653530043921668)
,p_name=>'Supplier'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500020_SUPPLIERCDE_1'
,p_condition_element=>'P1002500020_SUPPLIERCDE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(34654089761921668)
,p_event_id=>wwv_flow_api.id(34653530043921668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select Initcap(PRTYNAME)',
'into :P1002500020_SUPPLIERNAME',
'from  sycompty',
' where compcode = :compcode',
' and PARTYCDE=:P1002500020_SUPPLIERCDE_1;',
'   ',
' Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
''))
,p_attribute_02=>'P1002500020_SUPPLIERCDE_1'
,p_attribute_03=>'P1002500020_SUPPLIERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42894511629354310)
,p_name=>'get indent no.'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42894666162354311)
,p_event_id=>wwv_flow_api.id(42894511629354310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1002500020_INDENT_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG (docnumbr, '','') WITHIN GROUP (ORDER BY docnumbr)',
'  FROM nmprocur',
' WHERE compcode = :compcode',
'   AND DWDOCNUM IN',
'               (SELECT updocnum',
'                 FROM nmprocur',
'                WHERE compcode = :compcode',
'                  AND docttype = :P1002500020_S_PRDTYP',
'                  AND subttype = :P1002500020_S_PRSTYP',
'                  AND docnumbr = :P1002500020_PODCNO',
'                  AND doctdate = :P1002500020_PODCDATE',
'                  AND warecode = :P1002500020_WARECODE)'))
,p_attribute_07=>'P1002500020_S_PRDTYP,P1002500020_S_PRSTYP,P1002500020_PODCNO,P1002500020_PODCDATE,P1002500020_WARECODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34648155094921662)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO and add data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');    ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500020_TRNDATE,',
'            p_c002            => :P1002500020_RCVNUMBR,',
'            p_c003            => :P1002500020_RCVDATE,',
'            p_c004            => :P1002500020_PODCNO,',
'            p_c005            => :P1002500020_PODCDATE,',
'            p_c006            => :P1002500020_REFNUMBR,',
'            p_c007            => :P1002500020_REFNDATE,',
'            p_c008            => :P1002500020_WARECODE,',
'            p_c009            => :P1002500020_WHSNAM,',
'            p_c010            => :P1002500020_BATCHNO,',
'            p_c011            => :P1002500020_BATCHDATE,',
'            p_c012            => :P1002500020_BTCHEXPDAT,',
'            P_c013            => :P1002500020_SUPPLIERCDE,',
'            p_c014            => :P1002500020_SUPPLIERNAME,',
'            p_c015            => :P1002500020_CURRENCY,',
'            p_c016            => :P1002500020_EXCHANGERATE,',
'            p_c017            => :P1002500020_REQDDAT,',
'			p_c018			  => :P1002500020_COSTCODE',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500020_TRNDATE,',
'            p_c002            => :P1002500020_RCVNUMBR,',
'            p_c003            => :P1002500020_RCVDATE,',
'            p_c004            => :P1002500020_PODCNO,',
'            p_c005            => :P1002500020_PODCDATE,',
'            p_c006            => :P1002500020_REFNUMBR,',
'            p_c007            => :P1002500020_REFNDATE,',
'            p_c008            => :P1002500020_WARECODE,',
'            p_c009            => :P1002500020_WHSNAM,',
'            p_c010            => :P1002500020_BATCHNO,',
'            p_c011            => :P1002500020_BATCHDATE,',
'            p_c012            => :P1002500020_BTCHEXPDAT,',
'            P_c013            => :P1002500020_SUPPLIERCDE,',
'            p_c014            => :P1002500020_SUPPLIERNAME,',
'            p_c015            => :P1002500020_CURRENCY,',
'            p_c016            => :P1002500020_EXCHANGERATE,',
'            p_c017            => :P1002500020_REQDDAT,',
'			p_c018			  => :P1002500020_COSTCODE',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34624980323921637)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34647775066921662)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P1002500020_PREVPAGE, :P1002500020_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;',
'',
'BEGIN',
'SELECT 1',
'  INTO :OTHERCOST_PAGE',
'  FROM nmprocur',
' WHERE docnumbr = :P1002500020_PODCNO',
'   AND TRUNC (doctdate) = :P1002500020_PODCDATE',
'   AND warecode = :P1002500020_WARECODE',
'   AND (ITEMRATP IS NOT NULL OR ITRFDATE IS NOT NULL)',
'   group by docnumbr;',
'EXCEPTION ',
'   WHEN OTHERS THEN',
'   :OTHERCOST_PAGE := 0;',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(34648588337921663)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(34625305967921637)
);
wwv_flow_api.component_end;
end;
/
