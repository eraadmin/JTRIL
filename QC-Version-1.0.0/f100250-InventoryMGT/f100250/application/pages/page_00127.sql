prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Popup Lov'
,p_step_title=>'Popup Lov'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript">',
'   function passBack(passVal1, passVal2, passVal3)',
'   {',
'   opener.document.getElementById("P128_ENAME").value = passVal1;',
'   opener.document.getElementById("P128_JOB").value = passVal2;',
'   opener.document.getElementById("P128_SAL").value = passVal3;',
'   opener.document.getElementById("P128_SAL").focus();',
'   close();',
'   }',
'</script>',
'<script language="JavaScript">',
'  function callMyPopup(formItem1,formItem2,formItem3) {',
'    var formVal1 = document.getElementById(formItem1).value;',
'    var formVal2 = document.getElementById(formItem2).value;',
'    var formVal3 = document.getElementById(formItem3).value;',
'    var url;',
'  url = ''f?p=&APP_ID.:127:&APP_SESSION.::::P127_ENAME,P127_JOB,P127_SAL:'' + formVal1 + '','' + formVal2 + '','' + formVal3 ;',
'  w = open(url,"winLov","Scrollbars=0,resizable=0,width=200,height=200");',
'  if (w.opener == null)',
'  w.opener = self;',
'  w.focus();',
'  }',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140758'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(60066031004498466)
,p_name=>'Popup Lov'
,p_template=>wwv_flow_api.id(47585036927858182)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'Style="width:50%;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ename, job, sal , ''placeholder'' the_link',
'        from emp',
'       where ename like ''%''||:P127_ENAME||''%''',
'         and (job = :P127_JOB or :P127_JOB is null)',
'         and (sal = :P127_SAL or :P127_SAL is null)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60066671358498497)
,p_query_column_id=>1
,p_column_alias=>'ENAME'
,p_column_display_sequence=>1
,p_column_heading=>'Ename'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60067085171498502)
,p_query_column_id=>2
,p_column_alias=>'JOB'
,p_column_display_sequence=>2
,p_column_heading=>'Job'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60067536834498503)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'Sal'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(60067867627498503)
,p_query_column_id=>4
,p_column_alias=>'THE_LINK'
,p_column_display_sequence=>4
,p_column_heading=>'The Link'
,p_use_as_row_header=>'N'
,p_column_link=>'javascript:passBack(''#ENAME#'',''#JOB#'',''#SAL#'');'
,p_column_linktext=>'#THE_LINK#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(60104859507621072)
,p_plug_name=>'a'
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'Style="width:50%;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>5
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60107243279728251)
,p_button_sequence=>5
,p_button_plug_id=>wwv_flow_api.id(60104859507621072)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'NEXT'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(60090317542062336)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(60104859507621072)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:window.close();'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60072343569503555)
,p_name=>'P127_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(60104859507621072)
,p_prompt=>'Ename'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60072639425503566)
,p_name=>'P127_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(60104859507621072)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(60072971390503567)
,p_name=>'P127_SAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(60104859507621072)
,p_prompt=>'Sal'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.component_end;
end;
/
