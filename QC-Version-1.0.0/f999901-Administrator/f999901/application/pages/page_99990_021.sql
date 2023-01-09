prompt --application/pages/page_99990_021
begin
--   Manifest
--     PAGE: 99990
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
 p_id=>9999010001
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Item Master'
,p_step_title=>'Item Master'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region h2.t-Region-title {',
'    color: white !important;',
'    /* height: 15px !important; */',
'}',
'.t-Region-header {',
'    background-color: #1F68A7;',
'    border-bottom: 1px solid #d6d6d6;',
'    color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'DHSADM'
,p_last_upd_yyyymmddhh24miss=>'20200330164938'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(54459623886688110)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156386998042600685)
,p_plug_name=>'Item Category'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>9
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'        (actlcode||'' - ''||initcap(codedesc)) as title, ',
'       null as icon, ',
'       CHILDCDE as value, ',
'       null as tooltip, ',
'         ''f?p=&APP_ID.:9999010001:&APP_SESSION.::NO::P9999010001_CTGCODE:''||"CHILDCDE" as link',
'from  SYCDEDTL',
'where compcode =''100''',
'and modlcode= ''NM'' ',
'and TKEYCODE = ''ITEMCODE'' ',
'--start with PARNTCDE is null',
'--start with levlcode = 1 ',
'connect by prior CHILDCDE = PARNTCDE',
'and compcode=''100''',
'and modlcode= ''NM'' start with levlcode = 1 ',
'and compcode=''100''',
'and modlcode= ''NM'' ',
'and TKEYCODE = ''ITEMCODE''',
'order siblings by childcde'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_08=>'a-Icon'
,p_attribute_09=>'icon-tree-folder'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
,p_attribute_24=>'LINK'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(212003281617724792)
,p_plug_name=>'Item Details'
,p_region_template_options=>'#DEFAULT#:i-h400:t-Region--scrollBody:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582249860200857855)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2355020358500415)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(54459623886688110)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_APP'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=10000:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2355467853500418)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(54459623886688110)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P9999010001_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2356479106500420)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(212003281617724792)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P9999010001_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2356824824500421)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(212003281617724792)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272837479857929)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P9999010001_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2377719854500453)
,p_branch_name=>'Go To Page 392'
,p_branch_action=>'f?p=&APP_ID.:9999010001:&SESSION.::&DEBUG.:9999010001::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2357293420500423)
,p_name=>'P9999010001_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2357663198500425)
,p_name=>'P9999010001_ITEMCLAS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'ITEMCLAS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2358046528500425)
,p_name=>'P9999010001_ITEMCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Code'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2358436235500426)
,p_name=>'P9999010001_USERCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_source=>'USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2358885022500426)
,p_name=>'P9999010001_ITEMDES1'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEMDES1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2359201373500426)
,p_name=>'P9999010001_LUOMCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Measurement Unit'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.LUOMCODE,A.LUOMCODE UOM',
'  FROM NMUOMMAS A',
' WHERE     A.COMPCODE = :COMPCODE '))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2359618539500426)
,p_name=>'P9999010001_HUOMCODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2360075414500426)
,p_name=>'P9999010001_ITEMDES2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_source=>'ITEMDES2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2360422381500426)
,p_name=>'P9999010001_ITEMMDL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Type'
,p_source=>'ITEMMODL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NMCODDES,NMSOFCDE',
'  FROM NMCODMAS',
'WHERE COMPCODE = :COMPCODE',
'AND   MODLCODE = ''NM''',
'AND   NMHRDCDE = ''PRO''',
'ORDER BY NMSOFCDE'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2360854617500426)
,p_name=>'P9999010001_ITEMTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S'
,p_source=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2361260477500429)
,p_name=>'P9999010001_ITEMSZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Size'
,p_source=>'USERDEF1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  NMCODDES,NMSOFCDE',
'  FROM NMCODMAS',
'WHERE COMPCODE = :COMPCODE',
'AND   MODLCODE = ''NM''',
'AND   NMHRDCDE = ''SPR''',
'ORDER BY NMSOFCDE'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2361620442500429)
,p_name=>'P9999010001_ISSUEWH'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Issue/Sales Ware House'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Waredesc,Warecode',
'From Nmwhsmas',
'WHERE COMPCODE =:COMPCODE',
'ORDER BY COSTCODE'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2362005675500429)
,p_name=>'P9999010001_FINISHGD'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Finish Goods?'
,p_source=>'FINISHGD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2362465774500431)
,p_name=>'P9999010001_STATUSCD'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'ACT'
,p_prompt=>'Item Status?'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;ACT,Not Active;NOT'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2362844214500431)
,p_name=>'P9999010001_ISSUEMTHD'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NN'
,p_prompt=>'Issue Method?'
,p_source=>'ISSUMTHD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:LIFO;LF,FIFO;FF,Average;NN'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2363289780500431)
,p_name=>'P9999010001_SALERATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sale Rate'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2363611340500432)
,p_name=>'P9999010001_COSTRATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost Rate'
,p_source=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2364076344500432)
,p_name=>'P9999010001_CNSMPGRP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Consumption Group'
,p_source=>'CNSMPGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(s.acctname) acctname,a.grupcode',
'from nmactgrp a,sychrtac s',
'where a.compcode = :COMPCODE',
'and a.compcode=s.compcode(+)',
'and a.acctcode=s.acctcode(+)',
'and a.typecode = ''CSP''',
'order by a.grupcode'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2364473706500432)
,p_name=>'P9999010001_SALESGRP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Group'
,p_source=>'SALESGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(s.acctname) acctname,a.grupcode',
'from nmactgrp a,sychrtac s',
'where a.compcode = :COMPCODE',
'and a.compcode=s.compcode(+)',
'and a.acctcode=s.acctcode(+)',
'and a.typecode = ''SAL''',
'order by a.grupcode'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2364856354500432)
,p_name=>'P9999010001_STOCKGRP'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Stock Group'
,p_source=>'STOCKGRP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(s.acctname) acctname,a.grupcode',
'from nmactgrp a,sychrtac s',
'where a.compcode = :COMPCODE',
'and a.compcode=s.compcode(+)',
'and a.acctcode=s.acctcode(+)',
'and a.typecode = ''STK''',
'order by a.grupcode'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1582272088542857922)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2365284435500432)
,p_name=>'P9999010001_CNSMPLVL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'B'
,p_prompt=>'Consumption Level'
,p_source=>'ABCCLSFN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:High;A,Medium;B,Low;C'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2365617885500432)
,p_name=>'P9999010001_VESLFLAG'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Used For Voyage?'
,p_source=>'VESLFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2366024593500434)
,p_name=>'P9999010001_RCQTYCNG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Excess Issue/Receive?'
,p_source=>'RCQTYCNG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2366436654500434)
,p_name=>'P9999010001_EXCISRCV'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Excess Issue/Receive(%)'
,p_source=>'EXCISRCV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2366886339500434)
,p_name=>'P9999010001_LOCALPRT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'LOCALPRT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2367256649500434)
,p_name=>'P9999010001_FXASTFLG'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'FXASTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2367624796500434)
,p_name=>'P9999010001_SALESFLG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'SALESFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2368070606500434)
,p_name=>'P9999010001_PAINTFLG'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'PAINTFLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2368430051500434)
,p_name=>'P9999010001_PROCESS_REQ'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'PROCESS_REQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2368828185500434)
,p_name=>'P9999010001_CREADATE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREADATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2369291688500435)
,p_name=>'P9999010001_OPRSTAMP'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
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
 p_id=>wwv_flow_api.id(2369699021500435)
,p_name=>'P9999010001_TIMSTAMP'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2370000505500435)
,p_name=>'P9999010001_COMPCODE'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>':compcode'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2370464096500435)
,p_name=>'P9999010001_USE_SLSPCT_FLG'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_source=>'USE_SLSPCT_FLG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2370861555500435)
,p_name=>'P9999010001_FACTRVAL'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_source=>'FACTRVAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2371260349500435)
,p_name=>'P9999010001_PACKSETP'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_use_cache_before_default=>'NO'
,p_item_default=>'3'
,p_source=>'PACKSETP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2371639938500435)
,p_name=>'P9999010001_CTGCODE'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(212003281617724792)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1582271923755857920)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2373203746500442)
,p_name=>'Set Itemdesc2'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010001_ITEMDES1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2373713433500448)
,p_event_id=>wwv_flow_api.id(2373203746500442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999010001_ITEMDES2'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P9999010001_ITEMDES1'
,p_attribute_07=>'P9999010001_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2374142690500450)
,p_name=>'set LUOMCODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010001_HUOMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2374641367500450)
,p_event_id=>wwv_flow_api.id(2374142690500450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999010001_LUOMCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P9999010001_HUOMCODE'
,p_attribute_07=>'P9999010001_HUOMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2375061217500450)
,p_name=>'set item code on usercode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010001_ITEMCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2375452169500451)
,p_event_id=>wwv_flow_api.id(2375061217500450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999010001_USERCODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P9999010001_ITEMCODE'
,p_attribute_07=>'P9999010001_ITEMCODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2375874290500451)
,p_name=>'New Item Code'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010001_CTGCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2376375347500451)
,p_event_id=>wwv_flow_api.id(2375874290500451)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999010001_ITEMCODE,P9999010001_USERCODE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'    t_cnt number;',
'    t_var number;',
'    sp number;',
'    ml number;',
'    vNItemcd    Varchar2(10);',
'',
'Begin',
'        select strtposn,maxlengt into sp,ml ',
'        from sycdehdr ',
'        where compcode=:COMPCODE',
'        and levlnumb=(select max(levlnumb) ',
'                      from sycdehdr ',
'                      where compcode=:COMPCODE',
'                      and tkeycode=''ITEMCODE''',
'                     ) ',
'        AND tkeycode=''ITEMCODE'';',
'',
'        Select nvl(max(To_Number(substr(itemcode,sp,ml))),0) + 1 into t_cnt ',
'        from nmitemas',
'        where compcode = :COMPCODE',
'        and itemcode like :P9999010001_CTGCODE||''%'';',
'       ',
'       vNItemcd:= 	:P9999010001_CTGCODE||Lpad(t_cnt,6, 000000);',
'',
'       Return(vNItemcd);',
'       ',
'            ',
' END;',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2376751078500451)
,p_name=>'Item Name Assign'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999010001_ITEMDES1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2377295123500451)
,p_event_id=>wwv_flow_api.id(2376751078500451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999010001_ITEMDES2'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'return(:P9999010001_ITEMDES1);'
,p_attribute_07=>'P9999010001_ITEMDES1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2372091689500437)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P9999010001_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2372436335500437)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMITEMAS'
,p_attribute_02=>'NMITEMAS'
,p_attribute_03=>'P9999010001_ROWID'
,p_attribute_04=>'ITEMCODE'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2372837154500437)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2356824824500421)
);
wwv_flow_api.component_end;
end;
/
