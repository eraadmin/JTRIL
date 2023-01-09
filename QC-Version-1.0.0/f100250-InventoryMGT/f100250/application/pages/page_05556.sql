prompt --application/pages/page_05556
begin
--   Manifest
--     PAGE: 05556
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
 p_id=>5556
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Item List'
,p_step_title=>'Item List'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>'<script type="text/javascript" src="#JQUERYUI_DIRECTORY#ui/minified/jquery.ui.button.min.js"></script>'
,p_step_template=>wwv_flow_api.id(47558889541858112)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46711208676011377)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(46713210609011379)
,p_name=>'Book List'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT (i.itemcode) itemcode,',
'                  i.itemtype,',
'                  i.itemdes1,',
'                  i.luomcode,',
'                  i.commgrup,',
'                  i.usercode,',
'                  i.inmfgref,',
'                  p.levlnumb,',
'                  i.itemsize,',
'                  i.itmgrade,',
'                  i.sizedesc,',
'                  i.gradedesc',
'    FROM vwnmitem i, nmpmodel p',
'   WHERE     i.compcode = :compcode',
'         AND i.compcode = p.compcode(+)',
'         AND i.designcd = p.levlnumb(+)',
'         AND p.parntcde IS NULL',
'         AND i.itemcode <> ''OPENING''',
'       --  AND i.itemcode LIKE ''%'' || :2 || ''%''',
'         AND NVL (i.finishgd, ''N'') = ''Y''',
'         AND i.statuscd = ''ACT''',
'ORDER BY i.itemcode',
''))
,p_display_when_condition=>'P'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P5556_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_api.id(46721168897038892)
,p_query_column_id=>1
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>1
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_column_link=>'#ITEMCODE#'
,p_column_linktext=>'#ITEMCODE#'
,p_column_link_attr=>'onclick="return false;" class="modalclose"'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46721617929038900)
,p_query_column_id=>2
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Itemtype'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46721981457038900)
,p_query_column_id=>3
,p_column_alias=>'ITEMDES1'
,p_column_display_sequence=>3
,p_column_heading=>'Itemdes1'
,p_use_as_row_header=>'N'
,p_column_link=>'#ITEMDES1#'
,p_column_linktext=>'#ITEMDES1#'
,p_column_link_attr=>'onclick="return false;" class="modalclose"'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46722389915038900)
,p_query_column_id=>4
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Luomcode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46722867082038900)
,p_query_column_id=>5
,p_column_alias=>'COMMGRUP'
,p_column_display_sequence=>5
,p_column_heading=>'Commgrup'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46723256830038900)
,p_query_column_id=>6
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Usercode'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46723641256038900)
,p_query_column_id=>7
,p_column_alias=>'INMFGREF'
,p_column_display_sequence=>7
,p_column_heading=>'Inmfgref'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46724015932038900)
,p_query_column_id=>8
,p_column_alias=>'LEVLNUMB'
,p_column_display_sequence=>8
,p_column_heading=>'Levlnumb'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46724394230038902)
,p_query_column_id=>9
,p_column_alias=>'ITEMSIZE'
,p_column_display_sequence=>9
,p_column_heading=>'Itemsize'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46724849400038902)
,p_query_column_id=>10
,p_column_alias=>'ITMGRADE'
,p_column_display_sequence=>10
,p_column_heading=>'Itmgrade'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46725242192038902)
,p_query_column_id=>11
,p_column_alias=>'SIZEDESC'
,p_column_display_sequence=>11
,p_column_heading=>'Sizedesc'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(46725637060038905)
,p_query_column_id=>12
,p_column_alias=>'GRADEDESC'
,p_column_display_sequence=>12
,p_column_heading=>'Gradedesc'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(47201857287198440)
,p_name=>'Color List'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmsofcde, nmcoddes',
'    FROM nmcodmas',
'   WHERE compcode = :compcode AND nmhrdcde = ''CLR''',
'   order by 1'))
,p_display_when_condition=>'C'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P5556_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
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
 p_id=>wwv_flow_api.id(47208166461206535)
,p_query_column_id=>1
,p_column_alias=>'NMSOFCDE'
,p_column_display_sequence=>1
,p_column_heading=>'Nmsofcde'
,p_use_as_row_header=>'N'
,p_column_link=>'#NMSOFCDE#'
,p_column_linktext=>'#NMSOFCDE#'
,p_column_link_attr=>'onclick="return false;" class="modalclose"'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(47208565253206537)
,p_query_column_id=>2
,p_column_alias=>'NMCODDES'
,p_column_display_sequence=>2
,p_column_heading=>'Nmcoddes'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46711620652011377)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(46711208676011377)
,p_button_name=>'P5556_GO'
,p_button_static_id=>'P2_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Go'
,p_button_alignment=>'LEFT'
,p_request_source=>'GO'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46711974311011379)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46711208676011377)
,p_button_name=>'P5556_RESET'
,p_button_static_id=>'P2_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Reset'
,p_button_alignment=>'LEFT'
,p_request_source=>'RESET'
,p_request_source_type=>'STATIC'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46716609656011385)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46712431917011379)
,p_name=>'P5556_REPORT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46711208676011377)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46712809062011379)
,p_name=>'P5556_ROWS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46711208676011377)
,p_item_default=>'15'
,p_prompt=>'Display'
,p_source=>'15'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46715600090011383)
,p_name=>'Button Icons'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(46713210609011379)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46716080654011385)
,p_event_id=>wwv_flow_api.id(46715600090011383)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).find("a.modalclose")',
'.button({icons:{secondary:''ui-icon-circle-arrow-e''}})',
'.click(function(){',
'   var retval = {"item_id":$(this).attr(''href'')};',
'   parent.$(parent.document).apex_modal_page(''close'', retval);',
'});',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47207107046200123)
,p_name=>'Button Icons'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(47201857287198440)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47207515655200125)
,p_event_id=>wwv_flow_api.id(47207107046200123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(this.triggeringElement).find("a.modalclose")',
'.button({icons:{secondary:''ui-icon-circle-arrow-e''}})',
'.click(function(){',
'   var retval = {"item_id":$(this).attr(''href'')};',
'   parent.$(parent.document).apex_modal_page(''close'', retval);',
'});',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46714850281011383)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'GO,P5556_REPORT_SEARCH,RESET'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46715174269011383)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset report search'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P5556_REPORT_SEARCH,P5556_ROWS'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(46711974311011379)
);
wwv_flow_api.component_end;
end;
/
