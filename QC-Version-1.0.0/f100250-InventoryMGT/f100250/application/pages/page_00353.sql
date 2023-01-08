prompt --application/pages/page_00353
begin
--   Manifest
--     PAGE: 00353
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
 p_id=>353
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Category Setup'
,p_page_mode=>'MODAL'
,p_step_title=>'Category Setup'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'690'
,p_dialog_width=>'100%'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180830132534'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58746319221525163)
,p_plug_name=>'Button Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>21
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(76878814935531323)
,p_plug_name=>'Category Entry'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>11
,p_plug_new_grid_row=>false
,p_plug_display_column=>4
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77213757075488560)
,p_plug_name=>'Category Tree'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       "CODEDESC" as title, ',
'       null as icon, ',
'       "PARNTCDE" as value, ',
'       null as tooltip, ',
'        '' javascript:$s(''''P353_PARNTCDE'''',''''''||LEVLCODE||'''''')'' as link ',
'from "#OWNER#"."SYCDEDTL"',
'start with "PARNTCDE" IS  NULL',
'connect by prior "LEVLCODE" = "PARNTCDE"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P353_TREEVALUE'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_07=>'APEX_TREE'
,p_attribute_08=>'a-Icon'
,p_attribute_10=>'"3"'
,p_attribute_11=>'"2"'
,p_attribute_12=>'"4"'
,p_attribute_15=>'"1"'
,p_attribute_20=>'"5"'
,p_attribute_22=>'"6"'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'"7"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39747076422171894)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(58746319221525163)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P353_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39825757462752370)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(58746319221525163)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39747390630171894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(58746319221525163)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39747811975171894)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(58746319221525163)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P353_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39748280471171895)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(58746319221525163)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P353_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39755591137171897)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77213757075488560)
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree41875667037724158'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39756053487171897)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(77213757075488560)
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Expand All'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree41875667037724158'');'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39798868391738504)
,p_branch_name=>'clear'
,p_branch_action=>'f?p=&APP_ID.:353:&SESSION.::&DEBUG.:RP,353::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39390758946682544)
,p_name=>'P353_MODLCODE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NM'
,p_source=>'MODLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39390856844682545)
,p_name=>'P353_LEVLNUMB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'LEVLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39390904696682546)
,p_name=>'P353_CHILDCDE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_source=>'CHILDCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39391511969682552)
,p_name=>'P353_LEAFNODE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'LEAFNODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39748984901171895)
,p_name=>'P353_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39749357840171896)
,p_name=>'P353_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39749705688171896)
,p_name=>'P353_DEPT_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ITEMCODE'
,p_source=>'TKEYCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39750113284171896)
,p_name=>'P353_PARNTCDE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Parent No.'
,p_source=>'PARNTCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>69
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  P.DEPT_NAME||''-''||P.DEPT_NO, P.DEPT_NO',
'from prdepartment p',
'where P.COMPCODE = :compcode',
'and P.DEPT_NO = :P353_TREEVALUE'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39750585911171896)
,p_name=>'P353_DEPT_NAME'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category Name'
,p_source=>'CODEDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39750965418171896)
,p_name=>'P353_DEPT_ALIAS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39751377288171896)
,p_name=>'P353_WARECODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_prompt=>'Ware House'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.WAREDESC||'' (''||S.WARECODE||'')'' display, S.WARECODE return',
'from nmwhsmas s',
'where S.COMPCODE = :compcode',
'Order By  S.WAREDESC'))
,p_lov_display_null=>'YES'
,p_cSize=>64
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39751776565171896)
,p_name=>'P353_COSTCODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39752159762171897)
,p_name=>'P353_DESCR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_prompt=>'Category Prefix'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39752570971171897)
,p_name=>'P353_LOC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39752912743171897)
,p_name=>'P353_DEPT_TYPE_NO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39753368441171897)
,p_name=>'P353_ACTIVE_STAT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_item_default=>'0'
,p_prompt=>'Active Stat'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Activate;1'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39753778646171897)
,p_name=>'P353_OPRSTAMP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39754154863171897)
,p_name=>'P353_TIMSTAMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39754563405171897)
,p_name=>'P353_MODIFYDT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_source=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39754928632171897)
,p_name=>'P353_TREEVALUE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39778571653185659)
,p_name=>'P353_ITEMMODL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_prompt=>'Product Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cattributes_element=>'onmouseover="toolTip_enable(event,this,''Product type add to code paramters form(Hardcode-PTY) '')"'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_api.id(39778816204188467)
,p_name=>'P353_CATEGORY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39798737180738503)
,p_name=>'P353_SUBCATEGORY'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_source=>'SUBCATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39798902504738505)
,p_name=>'P353_LEVLCODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'LEVLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39799326169738509)
,p_name=>'P353_DEPT_NAME_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39799429929738510)
,p_name=>'P353_DESCR_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(76878814935531323)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39799283492738508)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P353_DESCR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Category Prefix must have some value'
,p_associated_item=>wwv_flow_api.id(39752159762171897)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39758709526171901)
,p_name=>'change on warecode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P353_WARECODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39759233057171901)
,p_event_id=>wwv_flow_api.id(39758709526171901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' If :P353_WARECODE is not null then',
'Select costcode',
'   	into   :P353_COSTCODE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P353_WARECODE;',
'',
'end if;',
'  ',
'End;'))
,p_attribute_02=>'P353_WARECODE'
,p_attribute_03=>'P353_COSTCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39799029770738506)
,p_name=>'Change on parent code'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P353_PARNTCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39799096116738507)
,p_event_id=>wwv_flow_api.id(39799029770738506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select CODEDESC, decode(CATEGORY,null,SUBCATEGORY,CATEGORY) ,CODEDESC, decode(CATEGORY,null,SUBCATEGORY,CATEGORY)',
'into :P353_DEPT_NAME,:P353_DESCR,:P353_DEPT_NAME_1,:P353_DESCR_1',
'from SYCDEDTL',
'where LEVLCODE=:P353_PARNTCDE;',
'end;'))
,p_attribute_02=>'P353_PARNTCDE'
,p_attribute_03=>'P353_DEPT_NAME_1,P353_DESCR_1,P353_DEPT_NAME,P353_DESCR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47042221986358142)
,p_name=>'New'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39747390630171894)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47042319811358143)
,p_event_id=>wwv_flow_api.id(47042221986358142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39756722812171900)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PRDEPARTMENT'
,p_attribute_02=>'PRDEPARTMENT'
,p_attribute_03=>'P353_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39757186372171900)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SYCDEDTL'
,p_attribute_02=>'SYCDEDTL'
,p_attribute_03=>'P353_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39825487450747152)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre-update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P353_DESCR_1<>:P353_DESCR or :P353_DEPT_NAME_1<>:P353_DEPT_NAME then',
'update SYCDEDTL',
'set CODEDESC=:P353_DEPT_NAME,',
'SUBCATEGORY=:P353_DESCR',
'where LEVLCODE=:P353_PARNTCDE;',
'END IF;',
'EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'	 :P353_LEVLCODE:=1;',
'	WHEN OTHERS THEN',
'     :P353_LEVLCODE:=1;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39825757462752370)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39757890759171900)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'	SELECT NVL(MAX(LEVLCODE),0)+1',
'	INTO :P353_LEVLCODE',
'	FROM SYCDEDTL',
'	WHERE COMPCODE = :compcode;',
'',
'   :P353_OPRSTAMP := :APP_USER;',
'   :P353_TIMSTAMP := sysdate;',
'   :P353_MODIFYDT := sysdate;',
'   :P353_COMPCODE := :COMPCODE;',
'   :P353_CHILDCDE:=:P353_DESCR;',
'   if :P353_PARNTCDE is null then',
'   :P353_CATEGORY :=:P353_DESCR;',
'   else ',
'   :P353_SUBCATEGORY :=:P353_DESCR;',
'   end if;',
'',
'EXCEPTION',
'	WHEN NO_DATA_FOUND THEN',
'	 :P353_LEVLCODE:=1;',
'	WHEN OTHERS THEN',
'     :P353_LEVLCODE:=1;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39747811975171894)
);
wwv_flow_api.component_end;
end;
/
