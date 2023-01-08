prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Pre Audit Approval '
,p_step_title=>'Pre Audit Approval '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68966096275726032)
,p_name=>'Pre Audit Approval'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:80%; height:100%; margin-left:1px;margin-top: 1px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "ROWID", "COMPCODE", "SERLNUMB", "DOCNUMBR", "DOCTDATE", "DOCTTYPE",',
'       "SUBTTYPE", (SELECT DISTINCT rfdctype',
'                               FROM acauditv3',
'                              WHERE refdcnum = refnumbr) rfdctype,',
'       (SELECT DISTINCT rfsubtyp',
'                   FROM acauditv3',
'                  WHERE refdcnum = refnumbr) rfsubtyp,(select distinct COSTDESC from syjobmas',
'                  where compcode ="a".compcode',
'                and COSTCODE="a".COSTCODE',
') as COSTCODE, "REFNUMBR",',
'       "APPRQNTY", "STATUSCD",',
'       CASE',
'          WHEN statuscd = ''NEW''',
'             THEN ''unchecked="unchecked"''',
'       END AS admin_user_checkbox,',
'        (SELECT DISTINCT naration',
'                   FROM sydocmas',
'                  WHERE compcode = COMPCODE',
'                    AND trantype = (SELECT DISTINCT rfdctype',
'                               FROM acauditv3',
'                              WHERE refdcnum = "a".refnumbr)',
'                    AND subttype = (SELECT DISTINCT rfsubtyp',
'                   FROM acauditv3',
'                  WHERE refdcnum = "a".refnumbr)) AS fund,',
'       CASE',
'          WHEN statuscd = ''NEW''',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details,',
'       (select initcap(USERCODE||''-''||USERNAME) from syusrmas',
'       where USERCODE="a".RAISEDBY',
'       and DIVNCODE="a".compcode) as RAISEDBY,"APPRVLEV"',
'  FROM "#OWNER#"."ACREQAPR" "a"',
' WHERE statuscd = ''NEW''',
'   AND compcode = :compcode',
'   AND apprvlev IN (SELECT DISTINCT aprlevel',
'                               FROM nmusrlev',
'                              WHERE usercode = :app_user)',
'   AND NVL (statuscd, ''NEW'') = NVL (:crq3s_chkapr, NVL (statuscd, ''NEW''))',
'   AND docnumbr IN (SELECT DISTINCT docnumbr',
'                               FROM acauditv3',
'                              WHERE statcode = ''Y'')',
'   AND apprvdby = :app_user',
'and DOCNUMBR=:P94_DOCNUMBER',
'and DOCTTYPE=:P94_DOCTYPE',
'and SUBTTYPE=:P94_SUBTYPE'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P94_DOCNUMBER,P94_DOCTYPE,P94_SUBTYPE'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>25
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966290348726032)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966389838726032)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966493002726032)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Company code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966581418726032)
,p_query_column_id=>4
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'SL.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966670115726032)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>5
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966768701726032)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Doc. Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966882600726032)
,p_query_column_id=>7
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Doc. type'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68966991400726032)
,p_query_column_id=>8
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Sub. type'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967077588726032)
,p_query_column_id=>9
,p_column_alias=>'RFDCTYPE'
,p_column_display_sequence=>18
,p_column_heading=>'Rfdctype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967196471726032)
,p_query_column_id=>10
,p_column_alias=>'RFSUBTYP'
,p_column_display_sequence=>19
,p_column_heading=>'Rfsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967281066726032)
,p_query_column_id=>11
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>8
,p_column_heading=>'Request Cost Center'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967377585726032)
,p_query_column_id=>12
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>11
,p_column_heading=>'Request Doc.No'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967489904726032)
,p_query_column_id=>13
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>14
,p_column_heading=>'Approved Amount'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967578345726032)
,p_query_column_id=>14
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>15
,p_column_heading=>'Statuscd'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967698703726032)
,p_query_column_id=>15
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>16
,p_column_heading=>'Approve?'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967788116726032)
,p_query_column_id=>16
,p_column_alias=>'FUND'
,p_column_display_sequence=>7
,p_column_heading=>'Fund Request for'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967890985726033)
,p_query_column_id=>17
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>17
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_DOCNUM,P16_DOCTYPE,P16_SUBTYPE:#REFNUMBR#,#RFDCTYPE#,#RFSUBTYP#'
,p_column_linktext=>'#DETAILS#'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68967989272726033)
,p_query_column_id=>18
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Request by'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68968084144726033)
,p_query_column_id=>19
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>13
,p_column_heading=>'Approval<br>Level'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68969997041726043)
,p_name=>'view details'
,p_parent_plug_id=>wwv_flow_api.id(68966096275726032)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:20%; float:right;margin-right: 145px; margin-top: -228px;;"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, COMPCODE, SERLNUMB, DOCNUMBR, DOCTDATE, DOCTTYPE,',
'       SUBTTYPE, RFDCTYPE, RFSUBTYP, COSTCODE, REFDCNUM, JVFCAMNT,',
'       STATCODE, case when statcode=''N'' then ''view Details''',
'end as viewdetails',
'  FROM "#OWNER#"."ACAUDITV3"',
' WHERE statcode = ''N''',
'and CompCode =:compcode'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970197268726043)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'ROWID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970296425726043)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970375220726043)
,p_query_column_id=>3
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>5
,p_column_heading=>'Serlnumb'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970481228726043)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'DOCNUMBR'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970574077726043)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>6
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970672654726043)
,p_query_column_id=>6
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970791602726043)
,p_query_column_id=>7
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970879284726043)
,p_query_column_id=>8
,p_column_alias=>'RFDCTYPE'
,p_column_display_sequence=>9
,p_column_heading=>'Rfdctype'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68970985993726043)
,p_query_column_id=>9
,p_column_alias=>'RFSUBTYP'
,p_column_display_sequence=>10
,p_column_heading=>'Rfsubtyp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68971070668726043)
,p_query_column_id=>10
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Costcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68971184402726043)
,p_query_column_id=>11
,p_column_alias=>'REFDCNUM'
,p_column_display_sequence=>12
,p_column_heading=>'Refdcnum'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68971282580726043)
,p_query_column_id=>12
,p_column_alias=>'JVFCAMNT'
,p_column_display_sequence=>13
,p_column_heading=>'Jvfcamnt'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68971372351726043)
,p_query_column_id=>13
,p_column_alias=>'STATCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Statcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68971476563726043)
,p_query_column_id=>14
,p_column_alias=>'VIEWDETAILS'
,p_column_display_sequence=>3
,p_column_heading=>'View Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_DOCNUM,P16_DOCTYPE,P16_SUBTYPE:#REFDCNUM#,#RFDCTYPE#,#RFSUBTYP#'
,p_column_linktext=>'#VIEWDETAILS#'
,p_column_link_attr=>'style="width:10%; margin-right: 0px; margin-top: 0px;"'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68968168262726033)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68966096275726032)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68968393290726035)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68966096275726032)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68968585260726035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68966096275726032)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:94::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68968795062726035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68966096275726032)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(68971895279726044)
,p_branch_action=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68968967334726035)
,p_name=>'P94_DOCNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68966096275726032)
,p_prompt=>'Docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68969171305726035)
,p_name=>'P94_DOCTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68966096275726032)
,p_prompt=>'Doctype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68969383964726041)
,p_name=>'P94_SUBTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68966096275726032)
,p_prompt=>'Subtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68969594811726041)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(68966096275726032)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ACREQAPR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68968393290726035)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68969780940726041)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(68966096275726032)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'ACREQAPR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68971583262726043)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Checkbox flug'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f08.COUNT',
'    LOOP',
'        APEX_Application.g_f08(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f08(APEX_Application.g_f30(ii)) := ''APR'';',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
