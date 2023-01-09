prompt --application/pages/page_00777
begin
--   Manifest
--     PAGE: 00777
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
 p_id=>777
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Framework Design Attribute'
,p_page_mode=>'MODAL'
,p_step_title=>'Framework Design Attribute'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170322160450'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(58559196701762121)
,p_plug_name=>'Attribute'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58559331522762122)
,p_name=>'P777_PAGETITLE_ALIGN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58559196701762121)
,p_item_default=>'CENTER'
,p_prompt=>'Pagetitle align'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58559456953762123)
,p_name=>'P777_PAGETITLE_COLOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(58559196701762121)
,p_item_default=>'green'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(58559490657762124)
,p_name=>'P777_PAGETITLE_FONTSIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(58559196701762121)
,p_item_default=>'15px'
,p_prompt=>'Pagetitle fontsize'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(59545390727663553)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'redirect in 117 application'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_redirect_url VARCHAR2(1000) := ''f?p=117:101'';',
'BEGIN',
'if :P101_USERNAME is  null then',
'htp.init();',
'owa_util.redirect_url(l_redirect_url); --- Redirect',
'apex_application.g_unrecoverable_error := true;   --- stops all further page processing',
'end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
