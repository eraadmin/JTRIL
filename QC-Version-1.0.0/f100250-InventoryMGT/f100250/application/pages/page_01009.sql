prompt --application/pages/page_01009
begin
--   Manifest
--     PAGE: 01009
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
 p_id=>1009
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Menu Rights'
,p_alias=>'SYRIGHTS'
,p_page_mode=>'MODAL'
,p_step_title=>'Menu Rights'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20170516135920'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82165972085819660)
,p_plug_name=>'Menu Rights'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(82169535106819694)
,p_plug_name=>'Select User'
,p_parent_plug_id=>wwv_flow_api.id(82165972085819660)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 145px;'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(82170364728819694)
,p_name=>'User Rights Assigning'
,p_parent_plug_id=>wwv_flow_api.id(82165972085819660)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'"ROWID",',
'decode("MENULEAF", ''M'', ''Next >>'', '' '') Next,',
'"USERCODE",',
'"COMPCODE",',
'"MODLCODE",',
'"PARENTNM",',
'"PROGNAME",',
'"PROGDESC",',
'"MENUSLNO",',
'"LEVLCODE",',
'"MENULEAF",',
'"HELPTEXT",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"ADDSTATS",',
'"MODSTATS",',
'"DELSTATS",',
'"ENQSTATS"',
'from "#OWNER#"."SYTMPRIT"',
'where "PARENTNM" = nvl(:P1009_PROGNAME, ''ROOT'')',
'and "USERCODE" = :P1009_USERCODE',
'and "COMPCODE" =:COMPCODE ',
'Order by "MENUSLNO"',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1009_PROGNAME,P1009_USERCODE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82170751456819699)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82171101988819705)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82171506748819705)
,p_query_column_id=>3
,p_column_alias=>'NEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Next'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1009:&SESSION.::&DEBUG.::P1009_PROGNAME:#PROGNAME#'
,p_column_linktext=>'#NEXT#'
,p_lov_show_nulls=>'NO'
,p_column_width=>25
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82171952502819705)
,p_query_column_id=>4
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Usercode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'USERCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82172353808819705)
,p_query_column_id=>5
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82172745995819705)
,p_query_column_id=>6
,p_column_alias=>'MODLCODE'
,p_column_display_sequence=>6
,p_column_heading=>'Module Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MODLCODE||'' - ''||MODLNAME as display_value, MODLCODE as return_value ',
'  from SYMODULE',
' order by 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>4
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'MODLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82173105242819705)
,p_query_column_id=>7
,p_column_alias=>'PARENTNM'
,p_column_display_sequence=>7
,p_column_heading=>'Parent Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'PARENTNM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82173475567819706)
,p_query_column_id=>8
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Program Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'PROGNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82173909519819706)
,p_query_column_id=>9
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>9
,p_column_heading=>'Program Desc'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'PROGDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82174288718819706)
,p_query_column_id=>10
,p_column_alias=>'MENUSLNO'
,p_column_display_sequence=>10
,p_column_heading=>'SL No'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'MENUSLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82174707827819706)
,p_query_column_id=>11
,p_column_alias=>'LEVLCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Level Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'LEVLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82175116674819706)
,p_query_column_id=>12
,p_column_alias=>'MENULEAF'
,p_column_display_sequence=>12
,p_column_heading=>'Menu/Leaf'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>4
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'MENULEAF'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82175560870819706)
,p_query_column_id=>13
,p_column_alias=>'HELPTEXT'
,p_column_display_sequence=>13
,p_column_heading=>'Help Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>40
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'HELPTEXT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82175914625819708)
,p_query_column_id=>14
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>14
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_column_default=>':app_user'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82176341016819711)
,p_query_column_id=>15
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>15
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MM-YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>20
,p_column_default=>'sysdate'
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82176709151819711)
,p_query_column_id=>16
,p_column_alias=>'ADDSTATS'
,p_column_display_sequence=>16
,p_column_heading=>'Add'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Yes;Y,No;N'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'ADDSTATS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82177138993819711)
,p_query_column_id=>17
,p_column_alias=>'MODSTATS'
,p_column_display_sequence=>17
,p_column_heading=>'Mod'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Yes;Y,No;N'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'MODSTATS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82177542077819711)
,p_query_column_id=>18
,p_column_alias=>'DELSTATS'
,p_column_display_sequence=>18
,p_column_heading=>'Del'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Yes;Y,No;N'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'DELSTATS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82177956860819711)
,p_query_column_id=>19
,p_column_alias=>'ENQSTATS'
,p_column_display_sequence=>19
,p_column_heading=>'Enq'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Yes;Y,No;N'
,p_lov_show_nulls=>'NO'
,p_lov_null_text=>'Y'
,p_column_width=>3
,p_column_default_type=>'FUNCTION'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBWEB'
,p_ref_table_name=>'SYTMPRIT'
,p_ref_column_name=>'ENQSTATS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(82185902773819742)
,p_name=>' Current Purse Menu'
,p_parent_plug_id=>wwv_flow_api.id(82165972085819660)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
,p_item_display_point=>'BELOW'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select nvl(:P1009_PROGNAME, ''ROOT'') "PROGNAME",',
':P1009_PROGDESC "PROGDESC",',
'Decode(nvl(:P1009_PROGNAME,''ROOT''), ''ROOT'', '' '', ''<< Back'') Back',
'from dual'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1009_PROGNAME,P1009_PROGDESC'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(82186339189819744)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_column_heading=>'PROGNAME'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82186758721819744)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'PROGDESC'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(82187114971819753)
,p_query_column_id=>3
,p_column_alias=>'BACK'
,p_column_display_sequence=>3
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1009:&SESSION.::&DEBUG.::P1009_PROGNAME:#PARENTNM#'
,p_column_linktext=>'#BACK#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>'nvl(:P1009_progname, ''ROOT'') <> ''ROOT'''
,p_display_when_condition2=>'PLSQL'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127738439485844830)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82178288846819711)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(127738439485844830)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :F100_MOD_ALLOWED = ''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82166440290819671)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(82165972085819660)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Exit'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(82166791984819675)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(82165972085819660)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:1009:&SESSION.::&DEBUG.:1009::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(82188853851819806)
,p_branch_action=>'f?p=&APP_ID.:1009:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82167194324819677)
,p_name=>'P1009_PARENTNM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82167525064819685)
,p_name=>'P1009_PROGNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82167888675819685)
,p_name=>'P1009_MODLCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82168295791819689)
,p_name=>'P1009_LEVLCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82168757821819689)
,p_name=>'P1009_LEVEL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82169128993819689)
,p_name=>'P1009_PROGDESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(82165972085819660)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(82169912612819694)
,p_name=>'P1009_USERCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(82169535106819694)
,p_prompt=>'Select User: '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERCODE||'' - ''||USERNAME as display_value, USERCODE as return_value ',
'  from SYUSRMAS',
' order by 1'))
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82178816147819717)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'USERCODE not null'
,p_validation_sequence=>20
,p_validation=>'USERCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'USERCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82179221914819722)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'COMPCODE not null'
,p_validation_sequence=>30
,p_validation=>'COMPCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'COMPCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82179571834819727)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'MODLCODE not null'
,p_validation_sequence=>40
,p_validation=>'MODLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'MODLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82180048358819727)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'PROGDESC not null'
,p_validation_sequence=>70
,p_validation=>'PROGDESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'PROGDESC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82180387291819727)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'MENUSLNO not null'
,p_validation_sequence=>80
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82180856133819728)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'MENUSLNO must be numeric'
,p_validation_sequence=>80
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82181190868819730)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'LEVLCODE not null'
,p_validation_sequence=>90
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82181617640819730)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'LEVLCODE must be numeric'
,p_validation_sequence=>90
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82182043306819730)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'MENULEAF not null'
,p_validation_sequence=>100
,p_validation=>'MENULEAF'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'MENULEAF'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82182391862819730)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'OPRSTAMP not null'
,p_validation_sequence=>120
,p_validation=>'OPRSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'OPRSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82182775089819730)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'TIMSTAMP not null'
,p_validation_sequence=>130
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82183220647819731)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'TIMSTAMP must be a valid date'
,p_validation_sequence=>130
,p_validation=>'TIMSTAMP'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'TIMSTAMP'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82183643233819731)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'ADDSTATS not null'
,p_validation_sequence=>140
,p_validation=>'ADDSTATS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'ADDSTATS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82184048434819731)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'MODSTATS not null'
,p_validation_sequence=>150
,p_validation=>'MODSTATS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'MODSTATS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82184390733819731)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'DELSTATS not null'
,p_validation_sequence=>160
,p_validation=>'DELSTATS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'DELSTATS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(82184866277819733)
,p_tabular_form_region_id=>wwv_flow_api.id(82170364728819694)
,p_validation_name=>'ENQSTATS not null'
,p_validation_sequence=>170
,p_validation=>'ENQSTATS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(82178288846819711)
,p_associated_column=>'ENQSTATS'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(82187940089819763)
,p_name=>'Page Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1009_USERCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(82188417579819795)
,p_event_id=>wwv_flow_api.id(82187940089819763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(82170364728819694)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82187538783819763)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'',
'  Select PARENTNM, PROGNAME, progdesc, modlcode, levlcode, levlcode + 1',
'  into :P1009_PARENTNM, :P1009_PROGNAME, :P1009_PROGDESC, :P1009_modlcode, :P1009_level, :P1009_Levlcode',
'  from symentre',
'  where progname = nvl(:P1009_PROGNAME, ''ROOT'') and menuleaf=''M'';',
'',
'Exception',
' when no_data_found then',
'  :P1009_PROGNAME := ''ROOT'';',
'  when too_many_rows then',
'  :P1009_PROGNAME := ''too_many_rows'';',
'  when others then',
'  :P1009_PROGNAME := ''others'';',
'End;',
'',
'Begin',
'',
'If :P1009_USERCODE Is Not Null Then',
'Delete From SYTMPRIT',
'Where USERCODE = :P1009_USERCODE',
'  And COMPCODE = :COMPCODE;',
'',
'Insert Into SYTMPRIT select Nvl(B.USERCODE,:P1009_USERCODE) USERCODE,  Nvl(B.COMPCODE, :COMPCODE) COMPCODE,  A.MODLCODE, A.PARENTNM, A.PROGNAME, A.PROGDESC,',
'             A.MENUSLNO,  A.LEVLCODE,  A.MENULEAF, A.HELPTEXT, A.OPRSTAMP, A.TIMSTAMP, ',
'             nvl(B.ADDSTATS,''N'') ADDSTATS, nvl(B.MODSTATS,''N'') MODSTATS, nvl(B.DELSTATS,''N'') DELSTATS, nvl(B.ENQSTATS,''N'') ENQSTATS,b.MODIFYDT',
'from SYMENTRE A, SYRIGHTS B',
'where A.PROGNAME = B.PROGNAME(+)',
'and A.PARENTNM = B.PARENTNM(+)',
'and B.USERCODE(+) = :P1009_USERCODE',
'and B.COMPCODE(+) =:COMPCODE ;',
'null;',
'End If;',
'End;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82185536156819742)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(82170364728819694)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'SYTMPRIT'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(82178288846819711)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(82185077056819733)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(82170364728819694)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'SYTMPRIT'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
