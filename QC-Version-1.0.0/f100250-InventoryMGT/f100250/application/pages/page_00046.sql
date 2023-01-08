prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'manualy tabular form'
,p_step_title=>'manualy tabular form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140744'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61864431723608993)
,p_plug_name=>'manualy tabular form'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61865036577655534)
,p_name=>'Tabular Form manually'
,p_parent_plug_id=>wwv_flow_api.id(61864431723608993)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   -- Notice how I''m keeping the idx value the same as the column value in the collection. This helps to keep things organized',
'   -- I also apply an id to each entry',
'   -- I append the error value to the empname and sal',
'   -- The Seq_id. Usefull when hiding rows (for delete) and then submitting from',
'   apex_item.hidden(1,x.seq_id, null, x.seq_id || ''_seq_id'') ||',
'   -- The Primary Key of the column',
'   apex_item.hidden(2, x.empno, null, x.seq_id || ''_empno_id'') || x.empno empno,',
'   -- Employee Name',
'   apex_item.text(3,x.empname,null, null, null, x.seq_id || ''_empname_id'') || err.empname employee_name,',
'   -- Employee Salary',
'   apex_item.text(4,x.sal, null, null, null, x.seq_id || ''_sal_id'') || err.sal ||',
'   -- Store the sql action type as well.',
'   apex_item.hidden(50,x.sql_action_typ, null, x.seq_id || ''_sql_action_typ_id'') sal,',
'   -- Last but not least the row error',
'   err.row_error',
'FROM   (SELECT  ac.c001 seq_id,',
'                ac.c002 empno,',
'                ac.c003 empname,',
'                ac.c004 sal,',
'                ac.c049 modifiable_flag,',
'                ac.c050 sql_action_typ',
'       FROM     apex_collections ac',
'       WHERE    ac.collection_name = ''DATA_COLLECTION''',
'       ORDER BY ac.seq_id) x,',
'      ',
'      -- Error Collection',
'      (SELECT   ac.seq_id seq_id,',
'                ac.c002 empno,',
'                ac.c003 empname,',
'                ac.c004 sal,',
'                ac.c050 row_error -- Useful when individual data is correct, however the row of data is not. Ex: start/end dates',
'       FROM     apex_collections ac',
'       WHERE    ac.collection_name = ''ERROR_COLLECTION''',
'       ORDER BY ac.seq_id) err',
'WHERE x.seq_id = err.seq_id(+)'))
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
 p_id=>wwv_flow_api.id(61865319576655542)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>1
,p_column_heading=>'EMPNO'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61865427968655542)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE_NAME'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61865517164655542)
,p_query_column_id=>3
,p_column_alias=>'SAL'
,p_column_display_sequence=>3
,p_column_heading=>'SAL'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61865631782655542)
,p_query_column_id=>4
,p_column_alias=>'ROW_ERROR'
,p_column_display_sequence=>4
,p_column_heading=>'ROW_ERROR'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61866543858733334)
,p_plug_name=>'collection error'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61868427553851632)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61865036577655534)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'TOP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61868738288854712)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61865036577655534)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61866839287739248)
,p_name=>'P200_DISPLAY_ROW_ERROR_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61866543858733334)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'N'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'Used to determine if the error column should be displayed'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61867244450751988)
,p_name=>'P200_NUM_EXTRA_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61866543858733334)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>'1'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'Number of extra rows to add to the tabular form'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61867532373757636)
,p_name=>'P200_RELOAD_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(61866543858733334)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'If Y then we won''t refresh the collection with database values'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(61867828910774431)
,p_computation_sequence=>10
,p_computation_item=>'P200_NUM_EXTRA_ROWS'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'Static: 1'
,p_compute_when=>'ADD'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61864625579633407)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
'   IF NVL (:p200_reload_flag, ''N'') = ''N''',
'   THEN',
'      -- IF error collection exists, delete',
'      IF apex_collection.collection_exists',
'                                     (p_collection_name      => ''ERROR_COLLECTION'')',
'      THEN',
'         apex_collection.delete_collection',
'                                     (p_collection_name      => ''ERROR_COLLECTION'');',
'      END IF;',
' ',
'      -- Create New Collection',
'      apex_collection.create_or_truncate_collection (''DATA_COLLECTION'');',
' ',
'      FOR rec IN (SELECT   e.empno, e.ename, e.sal',
'                      FROM emp e',
'                  ORDER BY e.ename)',
'      LOOP',
'         apex_collection.add_member (p_collection_name      => ''DATA_COLLECTION'',',
'                                     p_generate_md5         => ''NO'',',
'                                     p_c002                 => rec.empno,',
'                                     p_c003                 => rec.ename,',
'                                     p_c004                 => TO_CHAR',
'                                                                      (rec.sal),',
'                                     -- Remember the collection is only text',
'                                     p_c049                 => ''Y'',',
'                                     -- Modifiable Flag',
'                                     p_c050                 => ''U''',
'                                    -- SQL Action (Insert, Update, Delete)',
'                                    );',
'      END LOOP;',
'   --',
'   END IF;',
' ',
'-- Create Extra rows (if we wanted to add a new employee',
'   FOR i IN 1 .. NVL (:p200_num_extra_rows, 0)',
'   LOOP',
'      apex_collection.add_member (p_collection_name      => ''DATA_COLLECTION'',',
'                                  p_generate_md5         => ''NO'',',
'                                  p_c002                 => -1,',
'                                  -- use negative numbers for new employees',
'                                  p_c049                 => ''Y'',',
'                                  p_c050                 => ''I''',
'                                 );',
'   END LOOP;',
' ',
'   -- Insert seq_id',
'   FOR rec IN (SELECT ac.seq_id',
'                 FROM apex_collections ac',
'                WHERE ac.collection_name = ''DATA_COLLECTION'')',
'   LOOP',
'      apex_collection.update_member_attribute',
'                                   (p_collection_name      => ''DATA_COLLECTION'',',
'                                    p_seq                  => rec.seq_id,',
'                                    p_attr_number          => 1,',
'                                    p_attr_value           => rec.seq_id',
'                                   );',
'   END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61868234348844091)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Store Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
' FOR i IN 1 .. apex_application.g_f01.COUNT LOOP',
'   apex_collection.update_member (p_collection_name            => ''DATA_COLLECTION'',',
'-- I know some of you are still wondering why were are still wondering why I stored the seq_id as a collection attribute. This is why. If you had hidden the row (i.e. let the user "delete" it) then it would not show up on this and your collection syn'
||'chronization wouldn''t be correct.',
'          p_seq                        => apex_application.g_f01 (i), -- Sequence ID',
'                                  p_c001                       => apex_application.g_f01 (i), -- Sequence ID',
'                                  p_c002                       => apex_application.g_f02 (i), -- Empno',
'                                  p_c003                       => apex_application.g_f03 (i), -- Empname',
'                                  p_c004                       => apex_application.g_f04 (i), -- Sal',
'                                  p_c049                       => ''Y'',   -- Modifiable Flag',
'                                  p_c050                       => UPPER(apex_application.g_f50 (i))',
'                                 );',
' END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
