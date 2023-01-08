prompt --application/pages/page_00401
begin
--   Manifest
--     PAGE: 00401
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
 p_id=>401
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Program Master'
,p_step_title=>'Program Master'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170112114421'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127385521051103113)
,p_plug_name=>'Program Master'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%; float:right; clear: none;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127394995962103118)
,p_plug_name=>'menu'
,p_parent_plug_id=>wwv_flow_api.id(127385521051103113)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'select progname,progdesc from symenmas'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(127395465989103118)
,p_name=>'menu'
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
,p_owner=>'REAZUL'
,p_internal_uid=>90240598863422624
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127395555921103118)
,p_db_column_name=>'PROGNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Progname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(127395879542103118)
,p_db_column_name=>'PROGDESC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Progdesc'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROGDESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(127396288040103118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'902415'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROGNAME:PROGDESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127385922684103113)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_ROWID is not null And :F100_MOD_ALLOWED = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127386255736103115)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'GetList'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Get List'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F100_ENQ_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127386649677103115)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Exit'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:401::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127387025654103115)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Clear'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:401:&SESSION.::&DEBUG.:401::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127387415215103115)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_ROWID is null And :F100_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(127387784190103115)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(127385521051103113)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_ROWID is not null And :F100_DEL_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(127400161529103122)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127388226815103115)
,p_name=>'P401_PROGNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Name:'
,p_source=>'PROGNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_api.id(127388639150103115)
,p_name=>'P401_PROGDESC'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Description:'
,p_source=>'PROGDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>40
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_rowspan=>1
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
 p_id=>wwv_flow_api.id(127388986302103115)
,p_name=>'P401_MODLCODE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127389381836103115)
,p_name=>'P401_PROGTYPE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Program Type:'
,p_source=>'PROGTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Form;F,Report;R'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127389796192103115)
,p_name=>'P401_PATHCODE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127390193882103116)
,p_name=>'P401_VALDFLAG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127390618403103116)
,p_name=>'P401_STARTIME'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0000'
,p_prompt=>'Start Time:'
,p_source=>'STARTIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_api.id(127390980435103116)
,p_name=>'P401_STOPTIME'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_colspan=>1
,p_rowspan=>1
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
 p_id=>wwv_flow_api.id(127391445267103116)
,p_name=>'P401_PAGEID'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Page ID:'
,p_source=>'PAGEID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127391807218103116)
,p_name=>'P401_PAGEID2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Page ID 2:'
,p_source=>'PAGEID2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127392232007103116)
,p_name=>'P401_PAGEID3'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Apex Page ID 3:'
,p_source=>'PAGEID3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127392602078103116)
,p_name=>'P401_APEXONLY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Apex Only?'
,p_source=>'APEXONLY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
,p_attribute_02=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127392982606103116)
,p_name=>'P401_HELPTEXT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Help Text:'
,p_source=>'HELPTEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>240
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_rowspan=>3
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127393369694103116)
,p_name=>'P401_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127393781696103116)
,p_name=>'P401_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127394173027103116)
,p_name=>'P401_COMPCODE'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(127394649895103118)
,p_name=>'P401_ROWID'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(127385521051103113)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(127396900112103119)
,p_validation_name=>'P401_PROGNAME'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if LENGTH(:P401_PROGNAME) <> 8 then',
'   return ''Program Name must be 6 characters!'';',
'else',
'  return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(127388226815103115)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(127397331097103121)
,p_validation_name=>'P401_PAGEID'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_PAGEID = :P401_PAGEID2 or :P401_PAGEID = :P401_PAGEID3 then',
'   return ''Page Id''''s must be different!'';',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(127391445267103116)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(127397723117103121)
,p_validation_name=>'P401_PAGEID2'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_PAGEID2 = :P401_PAGEID or :P401_PAGEID2 = :P401_PAGEID3 then',
'   return ''Page Id''''s must be different!'';',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(127391807218103116)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(127398155117103121)
,p_validation_name=>'P401_PAGEID3'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P401_PAGEID3 = :P401_PAGEID or :P401_PAGEID3 = :P401_PAGEID2 then',
'   return ''Page Id''''s must be different!'';',
'else',
'   return null;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_associated_item=>wwv_flow_api.id(127392232007103116)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127398459005103121)
,p_process_sequence=>60
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SYMENMAS'
,p_attribute_02=>'SYMENMAS'
,p_attribute_03=>'P401_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127399571949103122)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYMENMAS'
,p_attribute_02=>'SYMENMAS'
,p_attribute_03=>'P401_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127399253297103122)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(127387784190103115)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(127398848564103122)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Before_commit_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' cursor cur_page is ',
' select progname',
' from symenmas ',
' where (pageid = :P401_PAGEID or pageid2  = :P401_PAGEID or pageid3 = :P401_PAGEID)',
' and lower(substr(progname,1,8)) <> lower(:P401_PROGNAME); ',
'',
' cursor cur_page2 is ',
' select progname',
' from symenmas ',
' where (pageid = :P401_PAGEID2 or pageid2  = :P401_PAGEID2 or pageid3 = :P401_PAGEID2)',
' and lower(substr(progname,1,8)) <> lower(:P401_PROGNAME);',
'',
' cursor cur_page3 is ',
' select progname',
' from symenmas ',
' where (pageid = :P401_PAGEID3 or pageid2  = :P401_PAGEID3 or pageid3 = :P401_PAGEID3)',
' and lower(substr(progname,1,8)) <> lower(:P401_PROGNAME); ',
'',
'cursor cur_app_page is',
'SELECT page_alias',
'FROM apex_application_pages',
'WHERE application_id = :APP_ID',
'AND page_id in (:P401_PAGEID, :P401_PAGEID2, :P401_PAGEID3)',
'and lower(substr(page_alias,1,8)) <> lower(:P401_PROGNAME);',
'',
' v_progname symenmas.progname%type;',
'Begin',
'  If upper(:P401_MODLCODE) <> upper(substr(:P401_PROGNAME, 1, 2)) then',
'     Raise_application_error(-20001,''Module Code & Programe Header Sub Name Mis Match...''||:P401_MODLCODE);',
'  Else',
'    If upper(substr(:P401_PROGNAME, 1, 2)) <> upper(:P401_PATHCODE) then',
'       Raise_application_error(-20002,''Module Code & Path Code Mis Match...'');     ',
'    End if;',
'  End if;  ',
'',
'open cur_page; fetch cur_page into v_progname; close cur_page; ',
'if v_progname is not null then',
'  Raise_application_error(-20003, ''Page Id already exists with ''||v_progname||''!'');  ',
'end if;',
'',
'if :P401_PAGEID2 is not null then',
'  open cur_page2; fetch cur_page2 into v_progname; close cur_page2; ',
'  if v_progname is not null then',
'    Raise_application_error(-20004, ''Page Id 2 already exists with ''||v_progname||''!''); ',
'  end if;',
'end if;',
'',
'if :P401_PAGEID3 is not null then',
'     open cur_page3; fetch cur_page3 into v_progname; close cur_page3; ',
'     if v_progname is not null then',
'       Raise_application_error(-20005, ''Page Id 3 already exists with ''||v_progname||''!''); ',
'     end if;',
'end if; ',
'',
'open cur_app_page; fetch cur_app_page into v_progname; close cur_app_page; ',
'/*if v_progname is not null then',
'  Raise_application_error(-20006, ''Page Id conflicts with page : ''||v_progname||''!'');  ',
'end if;*/',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
