prompt --application/pages/page_01006
begin
--   Manifest
--     PAGE: 01006
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
 p_id=>1006
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Program Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Program Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171102172508'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127406920720171986)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127410923472260357)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127411201688263086)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_column=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127412321714288962)
,p_plug_name=>'Program master'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>4
,p_plug_display_point=>'BODY_3'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82057477322207009)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127406920720171986)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_alignment=>'LEFT'
,p_button_condition=>'P1006_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1006_ROWID is not null And :F100_MOD_ALLOWED = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82058363413207020)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(127406920720171986)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.:1006::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82059468956207020)
,p_button_sequence=>40
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'DELETE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1006_ROWID is not null And :F100_DEL_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82057902832207019)
,p_button_sequence=>50
,p_button_name=>'GetList'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get List'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:1006:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F100_ENQ_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82059075261207020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(127406920720171986)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P1006_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1006_ROWID is null And :F100_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82058676444207020)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(127406920720171986)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1007:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82059929971207025)
,p_name=>'P1006_PROGNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Name:'
,p_source=>'PROGNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82060335328207039)
,p_name=>'P1006_PROGDESC'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Description:'
,p_source=>'PROGDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>40
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82060696379207039)
,p_name=>'P1006_MODLCODE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Module Code:'
,p_source=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODLCODE||'' - ''||MODLNAME as display_value, MODLCODE as return_value ',
'  from SYMODULE',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82061163822207041)
,p_name=>'P1006_PROGTYPE'
,p_is_required=>true
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Type:'
,p_source=>'PROGTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Form;F,Report;R'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82061497221207041)
,p_name=>'P1006_PATHCODE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Path Code:'
,p_source=>'PATHCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PATHCODE||'' - ''||sypthdir as display_value, PATHCODE as return_value ',
'  from SYSYSPTH',
' order by 1'))
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82061917569207042)
,p_name=>'P1006_VALDFLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Valid Flag:'
,p_source=>'VALDFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:No;N,Yes;Y'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82062323664207042)
,p_name=>'P1006_STARTIME'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0000'
,p_prompt=>'Start Time:'
,p_source=>'STARTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82062687731207042)
,p_name=>'P1006_STOPTIME'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2359'
,p_prompt=>'Stop Time:'
,p_source=>'STOPTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82063132755207042)
,p_name=>'P1006_PAGEID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report PageID'
,p_source=>'PAGEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82063547738207042)
,p_name=>'P1006_MOD_PAGEID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction PageID'
,p_source=>'MOD_PAGEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82063925738207044)
,p_name=>'P1006_NMTRNTYP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'NMTRNTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>65
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82064276087207048)
,p_name=>'P1006_APEXONLY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_item_default=>'N'
,p_prompt=>'Apex Only?'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82064675948207048)
,p_name=>'P1006_HELPTEXT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_prompt=>'Help Text:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>240
,p_cHeight=>3
,p_rowspan=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82065146843207050)
,p_name=>'P1006_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>':app_user'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>12
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82065474614207050)
,p_name=>'P1006_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Timstamp'
,p_format_mask=>'DD-MM-YYYY HH24:MI:SS'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82065962076207050)
,p_name=>'P1006_COMPCODE'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_item_default=>'001'
,p_prompt=>'Compcode'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82066297813207050)
,p_name=>'P1006_ROWID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(127412321714288962)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82067980510207115)
,p_validation_name=>'P1006_PROGNAME'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if LENGTH(:P1006_PROGNAME) <> 8 then',
'   return ''Program Name must be 6 characters!'';',
'else',
'  return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(82059929971207025)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82069490533207122)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SYMENMAS'
,p_attribute_02=>'SYMENMAS'
,p_attribute_03=>'P1006_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82070721763207128)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYMENMAS'
,p_attribute_02=>'SYMENMAS'
,p_attribute_03=>'P1006_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82070364852207128)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(82059468956207020)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82069911288207128)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Before_commit_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'cursor cur_app_page is',
'SELECT page_alias',
'FROM apex_application_pages',
'WHERE application_id = :APP_ID',
'AND page_id in (:P1006_PAGEID, :P1006_PAGEID2, :P1006_PAGEID3)',
'and lower(substr(page_alias,1,8)) <> lower(:P1006_PROGNAME);',
'',
' v_progname symenmas.progname%type;',
'Begin',
'  If upper(:P1006_MODLCODE) <> upper(substr(:P1006_PROGNAME, 1, 2)) then',
'     Raise_application_error(-20001,''Module Code & Programe Header Sub Name Mis Match...''||:P1006_MODLCODE);',
'  Else',
'    If upper(substr(:P1006_PROGNAME, 1, 2)) <> upper(:P1006_PATHCODE) then',
'       Raise_application_error(-20002,''Module Code & Path Code Mis Match...'');     ',
'    End if;',
'  End if;  ',
'',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
