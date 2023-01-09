prompt --application/pages/page_06004
begin
--   Manifest
--     PAGE: 06004
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
 p_id=>6004
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Purchase Requisition Approval form backup tabular form'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Requisition Approval form backup tabular form'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function zeroPad(num, places) {',
'  var zero = places - num.toString().length + 1;',
'  return Array(+(zero > 0 && zero)).join("0") + num;',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#tabs .bg {',
'    height: 8px ! important;',
'    }'))
,p_page_is_public_y_n=>'Y'
,p_deep_linking=>'N'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171119123541'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(193585172176922928)
,p_plug_name=>'button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>45
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(331934409833410845)
,p_name=>'Multiple Requisition Approval Form'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"RAISEDBY",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMDESC",',
'"ITEMRATE",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PARTYCDE",',
'"SMANCODE",',
'"APPRVDBY",',
'"STATUSCD",',
'"REMARKSS",',
'"HUOMCODE",',
'"CURRCODE",',
'"EXCGRATE",',
'"COSTCODE",',
'"APPRVLEV",',
'"WARECODE" ,',
'CASE',
'         WHEN STATUSCD= ''NEW'' THEN ''unchecked="unchecked"''',
'       END AS ADMIN_USER_CHECKBOX',
'from "#OWNER#"."NMREQAPR"',
'where DOCNUMBR=:P6004_DOCNUM',
'and USERCODE=:APP_USER',
'and STATUSCD= ''NEW''',
'',
'--and 1<>1',
'/*where DOCTTYPE=:P6004_S_DOCTYP',
'and SUBTTYPE=:P6004_S_SUBTYP',
'and DOCNUMBR=:P6004_S_DOCNUM',
'and DOCTDATE=:P6004_S_REQDTE*/'))
,p_display_when_condition=>'P6004_STATUS'
,p_display_when_cond2=>'Current'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6004_ROWID,P6004_DOCNUM'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>25
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P10_DOCNUMBR'
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
 p_id=>wwv_flow_api.id(49856149057225841)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49856528878225846)
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
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49856999712225847)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Compcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49857369081225847)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49857786267225847)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49858158987225849)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>8
,p_column_heading=>'Document No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49858547549225849)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>20
,p_column_heading=>'Doctdate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49858933880225849)
,p_query_column_id=>8
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>7
,p_column_heading=>'SL.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49859377673225850)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>22
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49859768219225850)
,p_query_column_id=>10
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Commcode'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49860129487225857)
,p_query_column_id=>11
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>9
,p_column_heading=>'Item Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>22
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49860609182225857)
,p_query_column_id=>12
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>10
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>28
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49860947998225857)
,p_query_column_id=>13
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>23
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49861376718225857)
,p_query_column_id=>14
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Luomcode'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49861794752225857)
,p_query_column_id=>15
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>14
,p_column_heading=>'Original Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49862201798225857)
,p_query_column_id=>16
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>16
,p_column_heading=>'Approve Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49862536529225858)
,p_query_column_id=>17
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>15
,p_column_heading=>'Trns. Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49862938798225858)
,p_query_column_id=>18
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>28
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49863317746225858)
,p_query_column_id=>19
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>29
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49863720866225858)
,p_query_column_id=>20
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>21
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49864164277225860)
,p_query_column_id=>21
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>30
,p_column_heading=>'Smancode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49864602576225860)
,p_query_column_id=>22
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>17
,p_column_heading=>'Apprvdby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49864965150225860)
,p_query_column_id=>23
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>19
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49865335946225860)
,p_query_column_id=>24
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>26
,p_column_heading=>'Remarkss'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49865725932225860)
,p_query_column_id=>25
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>24
,p_column_heading=>'Huomcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49866156089225860)
,p_query_column_id=>26
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>25
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49866527775225860)
,p_query_column_id=>27
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>4
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49866951914225860)
,p_query_column_id=>28
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49867333542225864)
,p_query_column_id=>29
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>18
,p_column_heading=>'Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'APPRVLEV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49867798587225864)
,p_query_column_id=>30
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>11
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>5
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS_RMG'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49868188039225864)
,p_query_column_id=>31
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>31
,p_column_heading=>'Checkbox'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
,p_column_comment=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(331939700913410862)
,p_plug_name=>'Approval Report'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"SERLNUMB",',
'"RAISEDBY",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMDESC",',
'"ITEMRATE",',
'"LUOMCODE",',
'"ORGNQNTY",',
'"APPRQNTY",',
'"TRNSQNTY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PARTYCDE",',
'"SMANCODE",',
'"APPRVDBY",',
'"STATUSCD",',
'"REMARKSS",',
'"HUOMCODE",',
'"CURRCODE",',
'"EXCGRATE",',
'"COSTCODE",',
'"APPRVLEV",',
'"WARECODE" ',
'from "#OWNER#"."NMREQAPR"',
'where DOCNUMBR=:P6004_DOCNUM',
'and DOCTTYPE=:P6004_DOCTYPE',
'and SUBTTYPE=:P6004_SUBTYPE',
'and USERCODE=:APP_USER',
'and STATUSCD= ''APR'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6004_DOCNUM,P6004_DOCTYPE,P6004_SUBTYPE'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P6004_STATUS'
,p_plug_display_when_cond2=>'Approved'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(331939900830410862)
,p_name=>'Approval Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>364286283899812206
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49872798973225900)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49874412120225905)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Company<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49874762175225905)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Doc. Type'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49875212751225905)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sub. Type'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49875580534225905)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Doc.<br>No.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49875941121225905)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Doc.<br>Date'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49876357643225907)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Serlnumb'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SERLNUMB'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49876759342225907)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Raisedby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RAISEDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49877181676225908)
,p_db_column_name=>'COMMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Commcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49877540575225908)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Item Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49877962728225908)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Item Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49878354238225908)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Item Rate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMRATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49878769326225910)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Lum.Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LUOMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49879158402225910)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Org. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORGNQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49879600158225910)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'App. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'APPRQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49879919381225910)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Trns. Qty'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TRNSQNTY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49880382489225911)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Oprstamp'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OPRSTAMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49880769962225911)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Timstamp'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'TIMSTAMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49881130060225911)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Partycde'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARTYCDE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49881567372225911)
,p_db_column_name=>'SMANCODE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Smancode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SMANCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49881962023225911)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Apprvoved<br>by'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPRVDBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49882410301225913)
,p_db_column_name=>'STATUSCD'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUSCD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49882733556225913)
,p_db_column_name=>'REMARKSS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Remarks'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49883129167225913)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Huomcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HUOMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49883545621225913)
,p_db_column_name=>'CURRCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Currcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CURRCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49883978605225913)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Excgrate'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EXCGRATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49873184369225903)
,p_db_column_name=>'COSTCODE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Cost.<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COSTCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49873556708225903)
,p_db_column_name=>'APPRVLEV'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Apprvoved<br>level'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'APPRVLEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(49873947214225903)
,p_db_column_name=>'WARECODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Ware<br>Code'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WARECODE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(331942886241410870)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'822307'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCNUMBR:DOCTDATE:ITEMCODE:ITEMDESC:ITEMRATE:LUOMCODE:RAISEDBY:ORGNQNTY:APPRQNTY:TRNSQNTY:PARTYCDE:APPRVDBY:STATUSCD:CURRCODE:COSTCODE:WARECODE:APPRVLEV:REMARKSS:'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(331943282637410873)
,p_name=>'Waiting Report'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   p.docnumbr, itemcode,(SELECT DISTINCT ITEMDES1',
'                     FROM nmitemas',
'                    WHERE ITEMCODE = p.ITEMCODE',
'                      AND compcode = p.compcode) Itemname, TO_CHAR (p.doctdate, ''dd/mm/rrrr'') doctdate,',
'         p.docttype, (SELECT DISTINCT  username',
'                     FROM syusrmas',
'                    WHERE usercode = p.usercode',
'                      AND divncode = p.compcode) userName,p.usercode, p.apprvlev,',
'         CASE',
'            WHEN p.statuscd = ''APR''',
'               THEN ''Approved''',
'            WHEN p.apprvlev =',
'                   (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                      FROM nmreqapr a',
'                     WHERE a.apprvlev <= p.apprvlev',
'                       AND a.statuscd = ''APR''',
'                       AND itemcode = p.itemcode',
'                       AND docnumbr = p.docnumbr)',
'               THEN ''Current''',
'            ELSE ''Waiting''',
'         END status,',
'         subttype',
'    FROM nmreqapr p',
'   WHERE compcode = :compcode',
'  --   AND itemcode = NVL (:2, itemcode)',
'     AND p.docnumbr = NVL (:P6004_DOCNUM, p.docnumbr)',
'ORDER BY p.docnumbr, p.docttype, subttype, p.apprvlev'))
,p_display_when_condition=>'P6004_STATUS'
,p_display_when_cond2=>'Waiting'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6004_DOCNUM'
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
 p_id=>wwv_flow_api.id(49885512458225921)
,p_query_column_id=>1
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Docnumber'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49885896216225921)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Item Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49886225271225921)
,p_query_column_id=>3
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Item Name'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49886680422225921)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Date'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49887091071225921)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Doc.Type'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49887509891225921)
,p_query_column_id=>6
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>8
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49887856645225921)
,p_query_column_id=>7
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>7
,p_column_heading=>'User Code'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49888246630225922)
,p_query_column_id=>8
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>9
,p_column_heading=>'Approved Level'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49888692227225922)
,p_query_column_id=>9
,p_column_alias=>'STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(49889097238225922)
,p_query_column_id=>10
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Sub. Type'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49868599277225864)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(331934409833410845)
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
 p_id=>wwv_flow_api.id(49889505291225922)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(331943282637410873)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49868985688225871)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(331934409833410845)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49890517669225925)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(193585172176922928)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:6004::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49890181557225924)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(193585172176922928)
,p_button_name=>'Submit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49884770763225917)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(331939700913410862)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:6004::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49894315668225938)
,p_branch_name=>'Go To Page 247'
,p_branch_action=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49869324825225872)
,p_name=>'P6004_DOCNUM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(331934409833410845)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Docnum'
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
 p_id=>wwv_flow_api.id(49869654527225885)
,p_name=>'P6004_DOCTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(331934409833410845)
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
 p_id=>wwv_flow_api.id(49870113366225885)
,p_name=>'P6004_SUBTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(331934409833410845)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49870467906225885)
,p_name=>'P6004_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(331934409833410845)
,p_prompt=>'Status'
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
 p_id=>wwv_flow_api.id(49870845738225886)
,p_name=>'P6004_TEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(331934409833410845)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(49871345838225886)
,p_tabular_form_region_id=>wwv_flow_api.id(331934409833410845)
,p_validation_name=>'APPRQNTY'
,p_validation_sequence=>10
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(38906076646611442)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49891345930225931)
,p_name=>'check all'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49891847090225935)
,p_event_id=>wwv_flow_api.id(49891345930225931)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' for (i=1;i<=3000;i++)',
'{',
'var b = zeroPad(i, 1);',
'document.getElementById(("f30_").concat(b)).checked=false;',
'};'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49892397995225936)
,p_event_id=>wwv_flow_api.id(49891345930225931)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#tcheckbox'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',false);',
'}',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(49892787744225936)
,p_name=>'all check with plsql'
,p_event_sequence=>20
,p_triggering_element_type=>'DOM_OBJECT'
,p_triggering_element=>'tcheckbox'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49893270173225936)
,p_event_id=>wwv_flow_api.id(49892787744225936)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f18.COUNT',
'    LOOP',
'        APEX_Application.g_f18(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f30(APEX_Application.g_f18(ii)) := ''checked'';',
'    END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(49893767323225936)
,p_event_id=>wwv_flow_api.id(49892787744225936)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f18.COUNT',
'    LOOP',
'        APEX_Application.g_f18(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f30(APEX_Application.g_f18(ii)) := ''unchecked'';',
'    END LOOP;',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49871617398225889)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(331934409833410845)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_01=>'ORBRGS_RMG'
,p_attribute_02=>'NMREQAPR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(38906076646611442)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49872076866225892)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(331934409833410845)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMREQAPR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49891011939225931)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Checkbox flug'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_approval varchar2(10);',
'v_cunt number;',
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F15.count LOOP',
'SELECT distinct count(docnumbr) into v_cunt',
'                                FROM nmreqapr a',
'                                 WHERE a.AUTHTYPE = ''APR''',
'                                 AND a.USERCODE=:APP_USER',
'                                 AND a.docnumbr=APEX_APPLICATION.G_F07(i);',
'                                 ',
'                                 :P6004_TEST:=v_cunt||APEX_APPLICATION.G_F07(i);',
'update nmreqapr',
'set statuscd = ''APR'' ',
'where docnumbr=APEX_APPLICATION.G_F07(i)',
'and USERCODE=:APP_USER; ',
'',
'if v_cunt>0 then',
'update nmprocur',
'set STATUSCD = ''APR''',
'where docnumbr=APEX_APPLICATION.G_F07(i)',
'and statuscd=''NEW'';',
'end if;',
'END LOOP;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
