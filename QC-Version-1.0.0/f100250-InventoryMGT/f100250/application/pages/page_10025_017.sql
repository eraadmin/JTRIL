prompt --application/pages/page_10025_017
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
 p_id=>1002500422
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Receive (Purchase) Department Wise'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103192257'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(102661543019439680)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(49856637893248098)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(192718949016075365)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(192731699152078807)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(192763338522083227)
,p_plug_name=>'Doc Info Center'
,p_parent_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(49577737491189762)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(192731699152078807)
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
 p_id=>wwv_flow_api.id(49568773320189704)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(49569134675189710)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(49569561497189712)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(102661543019439680)
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
 p_id=>wwv_flow_api.id(49599629920189876)
,p_branch_name=>'Go To Page 423'
,p_branch_action=>'f?p=&APP_ID.:&P1002500422_NEXTPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49569134675189710)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49599229203189873)
,p_branch_name=>'Go To Page 421'
,p_branch_action=>'f?p=&APP_ID.:&P1002500422_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(49569561497189712)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49570237362189721)
,p_name=>'P1002500422_TRNDATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">Tran. Date</font>'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P1002500422_PODCDATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49570628646189748)
,p_name=>'P1002500422_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'RC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49571091970189750)
,p_name=>'P1002500422_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49571454597189750)
,p_name=>'P1002500422_DOCDESC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'&DOCDESC.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49571886617189750)
,p_name=>'P1002500422_S_PRDTYP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49572268447189751)
,p_name=>'P1002500422_S_PRSTYP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49572614180189751)
,p_name=>'P1002500422_RCVNUMBR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49573027146189751)
,p_name=>'P1002500422_RCVDATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49573410676189751)
,p_name=>'P1002500422_PODCNO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
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
 p_id=>wwv_flow_api.id(49573855419189751)
,p_name=>'P1002500422_UPDOCNUM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49574296399189753)
,p_name=>'P1002500422_PODCDATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
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
 p_id=>wwv_flow_api.id(49574636150189753)
,p_name=>'P1002500422_REFNUMBR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_prompt=>'Ext.Ref. No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49575099848189753)
,p_name=>'P1002500422_REFNDATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49575428187189754)
,p_name=>'P1002500422_WARECODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
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
 p_id=>wwv_flow_api.id(49575849655189754)
,p_name=>'P1002500422_WARECODE_1'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_prompt=>'<font color="red">Whs.Code</font>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || ''-'' || waredesc d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode ',
'--   AND costcode = :P1002500422_costcode',
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49576265843189756)
,p_name=>'P1002500422_WHSNAM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
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
 p_id=>wwv_flow_api.id(49576691606189756)
,p_name=>'P1002500422_PREVPAGE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49577041135189759)
,p_name=>'P1002500422_NEXTPAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(192718949016075365)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49578135406189764)
,p_name=>'P1002500422_COSTCODE'
,p_item_sequence=>1071
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49578589643189764)
,p_name=>'P1002500422_COSTCODE_1'
,p_item_sequence=>1081
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49578949430189765)
,p_name=>'P1002500422_COSTCENTERNAME'
,p_item_sequence=>1091
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49579304209189765)
,p_name=>'P1002500422_REQDDAT'
,p_item_sequence=>1121
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49579718187189765)
,p_name=>'P1002500422_BATCHDATE'
,p_item_sequence=>1131
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
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
 p_id=>wwv_flow_api.id(49580109134189768)
,p_name=>'P1002500422_BATCHNO'
,p_item_sequence=>1141
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
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
 p_id=>wwv_flow_api.id(49580540911189768)
,p_name=>'P1002500422_BTCHEXPDAT'
,p_item_sequence=>1151
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
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
 p_id=>wwv_flow_api.id(49580973966189768)
,p_name=>'P1002500422_CURRENCY'
,p_item_sequence=>1161
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49581347202189768)
,p_name=>'P1002500422_EXCHANGERATE'
,p_item_sequence=>1171
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_prompt=>'Exchangerate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49581757254189770)
,p_name=>'P1002500422_REQUESTNO'
,p_item_sequence=>1181
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49582177512189770)
,p_name=>'P1002500422_LCTOTAL'
,p_item_sequence=>1191
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P1002500422_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49582568479189770)
,p_name=>'P1002500422_POTYPE'
,p_item_sequence=>1201
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49582953167189771)
,p_name=>'P1002500422_WAREHUSBUGET'
,p_item_sequence=>1211
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49583373097189771)
,p_name=>'P1002500422_WAREHUSREM'
,p_item_sequence=>1221
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49583722967189771)
,p_name=>'P1002500422_CUSTOMERNAME'
,p_item_sequence=>1231
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49584195046189771)
,p_name=>'P1002500422_LOCATIONCDE'
,p_item_sequence=>1241
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49584554599189771)
,p_name=>'P1002500422_SOURCEWARECODE'
,p_item_sequence=>1251
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49584993786189771)
,p_name=>'P1002500422_SALMANID'
,p_item_sequence=>1261
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49585370191189771)
,p_name=>'P1002500422_PARTYCDE'
,p_item_sequence=>1271
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49585745382189771)
,p_name=>'P1002500422_S_BILPART'
,p_item_sequence=>1281
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49586115065189773)
,p_name=>'P1002500422_S_BLPARTNM'
,p_item_sequence=>1291
,p_item_plug_id=>wwv_flow_api.id(192731699152078807)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49586824870189773)
,p_name=>'P1002500422_SUPPLIERCDE'
,p_item_sequence=>1064
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49587222015189773)
,p_name=>'P1002500422_SUPPLIERCDE_1'
,p_is_required=>true
,p_item_sequence=>1074
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49587636104189773)
,p_name=>'P1002500422_SUPPLIERNAME'
,p_item_sequence=>1084
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49588005098189776)
,p_name=>'P1002500422_CONTPRSN'
,p_item_sequence=>1094
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49588435423189776)
,p_name=>'P1002500422_SPLRADRS'
,p_item_sequence=>1104
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49588814179189776)
,p_name=>'P1002500422_SPLREMAIL'
,p_item_sequence=>1114
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49589245924189776)
,p_name=>'P1002500422_SPLRPHON'
,p_item_sequence=>1124
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49589658502189776)
,p_name=>'P1002500422_POSTSTATUS'
,p_item_sequence=>1134
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
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
 p_id=>wwv_flow_api.id(49590019777189778)
,p_name=>'P1002500422_SALMNNAME'
,p_item_sequence=>1144
,p_item_plug_id=>wwv_flow_api.id(192763338522083227)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49590504519189839)
,p_validation_name=>'Trandate not null'
,p_validation_sequence=>10
,p_validation=>'P1002500422_TRNDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(49570237362189721)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49590896496189843)
,p_validation_name=>'batch date not null'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P1002500422_BATCHNO is not null',
'and :P1002500422_BATCHDATE is not null'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Batch Date and Batch no. must have Value.'
,p_validation_condition=>'P1002500422_BATCHNO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(49569134675189710)
,p_associated_item=>wwv_flow_api.id(49579718187189765)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49591297663189843)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>30
,p_validation=>':P1002500422_TRNDATE <= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(49570237362189721)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49592721275189853)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20936254525345731)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49593229729189857)
,p_event_id=>wwv_flow_api.id(49592721275189853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49593751007189860)
,p_event_id=>wwv_flow_api.id(49592721275189853)
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49594295773189860)
,p_event_id=>wwv_flow_api.id(49592721275189853)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49594639016189860)
,p_name=>'Supplier Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500422_SUPPLIERCDE'
,p_condition_element=>'P1002500422_SUPPLIERCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49595122290189862)
,p_event_id=>wwv_flow_api.id(49594639016189860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select Initcap(PRTYNAME), CONTACT1, PARTYAD1, PEMAILID, PHONENUM',
'into :P1002500422_SUPPLIERNAME, :P1002500422_CONTPRSN, :P1002500422_SPLRADRS, :P1002500422_SPLREMAIL, :P1002500422_SPLRPHON',
'from  sycompty',
' where compcode = :compcode',
' and PARTYCDE=:P1002500422_SUPPLIERCDE;',
'   ',
' Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
''))
,p_attribute_02=>'P1002500422_SUPPLIERCDE'
,p_attribute_03=>'P1002500422_SUPPLIERNAME,P1002500422_CONTPRSN,P1002500422_SPLRADRS,P1002500422_SPLREMAIL,P1002500422_SPLREMAIL,P1002500422_SPLRPHON'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49595567684189862)
,p_name=>'change on warecode'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500422_WARECODE_1'
,p_condition_element=>'P1002500422_WARECODE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49596072500189864)
,p_event_id=>wwv_flow_api.id(49595567684189862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'       Select Initcap(WAREDESC)',
'         into :P1002500422_WHSNAM',
'         from NMWHSMAS',
'        where COMPCODE = :COMPCODE',
'          and WARECODE = :P1002500422_WARECODE_1 ;',
'          ',
'',
'/*',
'begin',
' If :P1002500422_WARECODE is not null then',
'Select costcode',
'   	into   :P1002500422_COSTCODE',
'   	from   nmwhsmas',
'   	where  compcode = :COMPCODE',
'   	and    warecode = :P1002500422_WARECODE_1;',
'end if;',
'    EXCEPTION',
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
'   End;',
' ',
'Begin',
'  If :P106_COSTCODE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P106_COSTCENTERNAME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :P106_COMPCODE_APPLICATION ',
'	   and    COSTCODE = :P106_COSTCODE ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;',
'*/',
'end;',
'',
'',
''))
,p_attribute_02=>'P1002500422_WARECODE_1'
,p_attribute_03=>'P1002500422_WHSNAM'
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
 p_id=>wwv_flow_api.id(49596417846189864)
,p_name=>'Cost Center Name'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500422_COSTCODE_1'
,p_condition_element=>'P1002500422_COSTCODE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49596935094189864)
,p_event_id=>wwv_flow_api.id(49596417846189864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--IF :P97_COSTCODE IS NOT NULL THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P1002500422_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P1002500422_COSTCODE_1)',
'     AND costcode = :P1002500422_COSTCODE_1',
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
'--IF :P1002500422_COSTCODE IS NOT NULL  THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P1002500422_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P1002500422_COSTCODE_1;',
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
'into :P1002500422_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :P1002500422_docnumbr1',
'         AND DOCTDATE = :P1002500422_DOCTDATE',
'         AND COSTCODE = :P1002500422_COSTCODE_1;',
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
,p_attribute_02=>'P1002500422_COSTCODE,P1002500422_DOCNUMBR,P1002500422_DOCTDATE'
,p_attribute_03=>'P1002500422_WARECODE,P1002500422_COSTCENTERNAME,P1002500422_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49597355603189864)
,p_name=>'warehouse name'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500422_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49597816193189867)
,p_event_id=>wwv_flow_api.id(49597355603189864)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT initcap(waredesc)',
'  INTO :P1002500422_WHSNAM',
'  FROM nmwhsmas',
' WHERE compcode = :compcode ',
'   AND warecode = :P1002500422_WARECODE;',
'EXCEPTION ',
'    WHEN OTHERS THEN',
'    NULL;',
'END;'))
,p_attribute_02=>'P1002500422_WARECODE'
,p_attribute_03=>'P1002500422_WHSNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49598235602189867)
,p_name=>'Supplier'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1002500422_SUPPLIERCDE_1'
,p_condition_element=>'P1002500422_SUPPLIERCDE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49598795054189870)
,p_event_id=>wwv_flow_api.id(49598235602189867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select Initcap(PRTYNAME)',
'into :P1002500422_SUPPLIERNAME',
'from  sycompty',
' where compcode = :compcode',
' and PARTYCDE=:P1002500422_SUPPLIERCDE_1;',
'   ',
' Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
''))
,p_attribute_02=>'P1002500422_SUPPLIERCDE_1'
,p_attribute_03=>'P1002500422_SUPPLIERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49591916942189846)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO and add data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');    ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500422_TRNDATE,',
'            p_c002            => :P1002500422_RCVNUMBR,',
'            p_c003            => :P1002500422_RCVDATE,',
'            p_c004            => :P1002500422_PODCNO,',
'            p_c005            => :P1002500422_PODCDATE,',
'            p_c006            => :P1002500422_REFNUMBR,',
'            p_c007            => :P1002500422_REFNDATE,',
'            p_c008            => :P1002500422_WARECODE,',
'            p_c009            => :P1002500422_WHSNAM,',
'            p_c010            => :P1002500422_BATCHNO,',
'            p_c011            => :P1002500422_BATCHDATE,',
'            p_c012            => :P1002500422_BTCHEXPDAT,',
'            P_c013            => :P1002500422_SUPPLIERCDE,',
'            p_c014            => :P1002500422_SUPPLIERNAME,',
'            p_c015            => :P1002500422_CURRENCY,',
'            p_c016            => :P1002500422_EXCHANGERATE,',
'            p_c017            => :P1002500422_REQDDAT,',
'			p_c018			  => :P1002500422_COSTCODE',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P1002500422_TRNDATE,',
'            p_c002            => :P1002500422_RCVNUMBR,',
'            p_c003            => :P1002500422_RCVDATE,',
'            p_c004            => :P1002500422_PODCNO,',
'            p_c005            => :P1002500422_PODCDATE,',
'            p_c006            => :P1002500422_REFNUMBR,',
'            p_c007            => :P1002500422_REFNDATE,',
'            p_c008            => :P1002500422_WARECODE,',
'            p_c009            => :P1002500422_WHSNAM,',
'            p_c010            => :P1002500422_BATCHNO,',
'            p_c011            => :P1002500422_BATCHDATE,',
'            p_c012            => :P1002500422_BTCHEXPDAT,',
'            P_c013            => :P1002500422_SUPPLIERCDE,',
'            p_c014            => :P1002500422_SUPPLIERNAME,',
'            p_c015            => :P1002500422_CURRENCY,',
'            p_c016            => :P1002500422_EXCHANGERATE,',
'            p_c017            => :P1002500422_REQDDAT,',
'			p_c018			  => :P1002500422_COSTCODE',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(49569134675189710)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49591598143189843)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P1002500422_PREVPAGE, :P1002500422_NEXTPAGE',
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
' WHERE docnumbr = :P1002500422_PODCNO',
'   AND TRUNC (doctdate) = :P1002500422_PODCDATE',
'   AND warecode = :P1002500422_WARECODE',
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
 p_id=>wwv_flow_api.id(49592319126189850)
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
,p_process_when_button_id=>wwv_flow_api.id(49569561497189712)
);
wwv_flow_api.component_end;
end;
/
