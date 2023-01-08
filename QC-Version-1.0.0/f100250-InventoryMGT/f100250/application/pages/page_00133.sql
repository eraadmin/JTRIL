prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
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
 p_id=>133
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Lead Varify'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead Varify'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170822121556'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93856695957170355)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(137673381750689915)
,p_name=>'Lead Verify'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"DOCNUMBR",',
'to_char(DOCTDATE,''dd/mm/rrrr'') "DOCTDATE",',
'"WARECODE",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"SMANCODE",',
'"ITEMCODE",',
'"CUSTMRID",',
'"CONFIRMC",',
'(SELECT S.SMANNAME ',
'      FROM nmsmnmas s',
'     WHERE S.COMPCODE = :compcode AND s.SMANCODE = a.SMANCODE)',
'      SMANNAME,',
'(SELECT DISTINCT T.NMCODDES ',
'      FROM NMCODMAS T, VWNMITEM c',
'     WHERE     C.COMPCODE = :compcode',
'           AND T.NMSOFCDE = C.MODLCODE',
'           AND T.NMHRDCDE = ''MOD''',
'           AND T.COMPCODE = C.COMPCODE',
'           AND T.MODLCODE = ''NM''',
'           AND C.ITEMCODE = a.ITEMCODE)',
'      itemname,',
'(SELECT S.CUSTNAME ',
'  FROM nmmrkcus s',
' WHERE S.COMPCODE = :compcode AND S.CUSTMRID = a.CUSTMRID)',
'  prospect_name,',
'(SELECT S.CUSTMOBL ',
'  FROM nmmrkcus s',
' WHERE S.COMPCODE = :compcode AND S.CUSTMRID = a.CUSTMRID)',
'  prospect_phone,',
'(SELECT C.WAREDESC ',
'  FROM nmwhsmas c',
' WHERE C.COMPCODE = :compcode AND C.WARECODE = a.WARECODE)',
'  business_centername,',
'"APP_FLG",',
'"CUS_REMARK",',
'"TIMSTAMP"',
'from "#OWNER#"."NMCUSVLG" A',
' WHERE a.compcode = :compcode',
'  AND nvl(a.APP_FLG,''N'') = :P133_APPROVE_FLAG',
'  AND a.SMANCODE IN',
'            (SELECT I.SMANCODE',
'               FROM NMPRDHDI i',
'              WHERE I.PRODUCT_TYPE IN',
'                       (SELECT MODLGROP',
'                          FROM vwnmitem v',
'                         WHERE V.COMPCODE = :compcode',
'                               AND V.ITEMCODE = a.ITEMCODE)',
'                    AND I.COMPCODE = :compcode',
'                    AND trunc(a.DOCTDATE) between nvl(trunc(I.STARTDATE),sysdate) and nvl(trunc(I.ENDDATE),sysdate)',
'                    AND I.REPORTNG = :app_user',
'                    AND I.WHSZONFK = a.WHSZONFK',
'             UNION ALL',
'             SELECT I.SMANCODE',
'               FROM NMPRDHDI i',
'              WHERE I.PRODUCT_TYPE IN',
'                       (SELECT MODLGROP',
'                          FROM vwnmitem v',
'                         WHERE V.COMPCODE = :compcode',
'                               AND V.ITEMCODE = a.ITEMCODE)',
'                    AND I.COMPCODE = :compcode',
'                    AND trunc(a.DOCTDATE) between nvl(trunc(I.STARTDATE),sysdate) and nvl(trunc(I.ENDDATE),sysdate)',
'                    AND I.SMANCODE = :app_user',
'                    AND I.WHSZONFK = a.WHSZONFK)',
'order by TIMSTAMP desc',
''))
,p_lazy_loading=>false
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88233084884378083)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88233527872378085)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'Tracking No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88233939534378086)
,p_query_column_id=>3
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Tracking Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88234301851378086)
,p_query_column_id=>4
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88234706039378086)
,p_query_column_id=>5
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88235144039378086)
,p_query_column_id=>6
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88235543428378086)
,p_query_column_id=>7
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88235908253378086)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88236301415378086)
,p_query_column_id=>9
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88236668070378086)
,p_query_column_id=>10
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CUSTMRID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88237160212378086)
,p_query_column_id=>11
,p_column_alias=>'CONFIRMC'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CONFIRMC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88238351588378086)
,p_query_column_id=>12
,p_column_alias=>'SMANNAME'
,p_column_display_sequence=>15
,p_column_heading=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sales Executive&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88238752986378088)
,p_query_column_id=>13
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>14
,p_column_heading=>'Product&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88239093231378088)
,p_query_column_id=>14
,p_column_alias=>'PROSPECT_NAME'
,p_column_display_sequence=>16
,p_column_heading=>'Prospect&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37098842912026541)
,p_query_column_id=>15
,p_column_alias=>'PROSPECT_PHONE'
,p_column_display_sequence=>17
,p_column_heading=>'Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88239559218378089)
,p_query_column_id=>16
,p_column_alias=>'BUSINESS_CENTERNAME'
,p_column_display_sequence=>13
,p_column_heading=>'Business Center&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88237486142378086)
,p_query_column_id=>17
,p_column_alias=>'APP_FLG'
,p_column_display_sequence=>18
,p_column_heading=>'Approved'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:YES;Y,NO;N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'APP_FLG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88239902048378089)
,p_query_column_id=>18
,p_column_alias=>'CUS_REMARK'
,p_column_display_sequence=>19
,p_column_heading=>'Remarks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>35
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(37098996137026543)
,p_query_column_id=>19
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88237884639378086)
,p_query_column_id=>20
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88240736306378091)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(137673381750689915)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88241110463378091)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(137673381750689915)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88240321869378089)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(137673381750689915)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88241539393378091)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(137673381750689915)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(88242855787378096)
,p_branch_action=>'f?p=&APP_ID.:133:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(88241539393378091)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37239385000271272)
,p_name=>'P133_APPROVE_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93856695957170355)
,p_item_default=>'N'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approved;Y,Not Appproved;N'
,p_tag_attributes=>'style=''font-size:12px;'''
,p_read_only_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37095751633026510)
,p_name=>'Change_status'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_APPROVE_FLAG'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37095858685026511)
,p_event_id=>wwv_flow_api.id(37095751633026510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88241928899378091)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(137673381750689915)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88241539393378091)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88242320079378091)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(137673381750689915)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
