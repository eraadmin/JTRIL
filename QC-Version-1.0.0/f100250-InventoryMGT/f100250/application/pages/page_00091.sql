prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Fund Requisition  Approval '
,p_step_title=>'Fund Requisition  Approval '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140814'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68784794101768506)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47595508514858189)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(47631212475858359)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68784992357768508)
,p_name=>'Fund Requisition Approval Form'
,p_template=>wwv_flow_api.id(47568291304858133)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"DOCNUMBR",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCTDATE",',
'"SERLNUMB",',
'"RAISEDBY",',
'(Select initcap(usercode||''-''||USERNAME)',
'                From syusrmas',
'                Where USERCODE="P".USERCODE) as usercode,',
'"APPRQNTY",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"PARTYCDE",',
'"APPRVDBY",',
'"STATUSCD",',
'"REMARKSS",',
'"CURRCODE",',
'"EXCGRATE",',
'"COSTCODE",',
'"ACCTCODE",',
' (select initcap("P".COSTCODE||'':''||n.COSTDESC) from syjobmas n',
' where n.COSTCODE="P".COSTCODE ',
' and n.COMPCODE="P".COMPCODE) COSTDESC,',
'"APPRVLEV",',
'"WARECODE" ,',
'CASE',
'         WHEN STATUSCD= ''NEW'' THEN ''unchecked="unchecked"''',
'       END AS ADMIN_USER_CHECKBOX,',
'/* (Select distinct ACCTNAME',
'            From sychrtac',
'            Where ACCTCODE="P".ACCTCODE) as ACCTNAME,*/',
'(Select Distinct NARATION   ',
'             From acfndreq',
'             Where  Compcode="P".COMPCODE',
'             And    Docnumbr="P".DOCNUMBR',
'             And    ACCTCODE="P".ACCTCODE',
'      And    SERLNUMB="P".SERLNUMB) as Narration,',
'"REFNUMBR",',
'       CASE',
'          WHEN statuscd = ''NEW''',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details,',
'CASE',
'          WHEN statuscd = ''NEW''',
'             THEN ''view Details''',
'          ELSE NULL',
'       END AS details1,',
'apex_item.text(1,p.COMPCODE) COMPCODE1,',
'apex_item.text(2,p.DOCNUMBR) DOCNUMBR1,',
'apex_item.text(3,p.DOCTTYPE) DOCTTYPE1,',
'apex_item.text(4,p.SUBTTYPE) SUBTTYPE1,',
'apex_item.text(5,p.APPRVLEV) APPRVLEV1,',
'apex_item.text(6,p.APPRQNTY) APPRQNTY1,',
'apex_item.text(7,p.ACCTCODE) ACCTCODE1,',
'apex_item.text(8,p.SERLNUMB) SERLNUMB1',
'from "#OWNER#"."ACREQAPR" "P"',
'where DOCNUMBR=:P91_DOCNUMBER',
'and USERCODE=:APP_USER',
'and STATUSCD= ''NEW''',
'order by DOCNUMBR',
'/*where DOCTTYPE=:P11_S_DOCTYP',
'and SUBTTYPE=:P11_S_SUBTYP',
'and DOCNUMBR=:P11_S_DOCNUM',
'and DOCTDATE=:P11_S_REQDTE*/'))
,p_display_when_condition=>'P91_STATUS'
,p_display_when_cond2=>'Current'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P91_DOCNUMBER'
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
 p_id=>wwv_flow_api.id(68787391906768511)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68787488366768511)
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
 p_id=>wwv_flow_api.id(68787572699768511)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
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
 p_id=>wwv_flow_api.id(68787697251768511)
,p_query_column_id=>4
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Document No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>10
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68787783205768511)
,p_query_column_id=>5
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>8
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
 p_id=>wwv_flow_api.id(68787872407768511)
,p_query_column_id=>6
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>9
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
 p_id=>wwv_flow_api.id(68787983464768511)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>13
,p_column_heading=>'Doc. Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788090024768511)
,p_query_column_id=>8
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>11
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
 p_id=>wwv_flow_api.id(68788169861768511)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>12
,p_column_heading=>'Raisedby'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788291510768511)
,p_query_column_id=>10
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>14
,p_column_heading=>'Raised by'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788395625768511)
,p_query_column_id=>11
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>15
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788486194768511)
,p_query_column_id=>12
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'Oprstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788575313768511)
,p_query_column_id=>13
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>20
,p_column_heading=>'Timstamp'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788685392768511)
,p_query_column_id=>14
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>21
,p_column_heading=>'Partycde'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788767848768511)
,p_query_column_id=>15
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>22
,p_column_heading=>'Apprvdby'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785168715768509)
,p_query_column_id=>16
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>26
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785294231768509)
,p_query_column_id=>17
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>18
,p_column_heading=>'Remarkss'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785399389768509)
,p_query_column_id=>18
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>23
,p_column_heading=>'Currcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785481206768509)
,p_query_column_id=>19
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>24
,p_column_heading=>'Excgrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785586613768509)
,p_query_column_id=>20
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Cost Code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMREQAPR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785697103768509)
,p_query_column_id=>21
,p_column_alias=>'ACCTCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Acctcode'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785799049768509)
,p_query_column_id=>22
,p_column_alias=>'COSTDESC'
,p_column_display_sequence=>16
,p_column_heading=>'Raised for'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785880672768509)
,p_query_column_id=>23
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>17
,p_column_heading=>'Approved<br>level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68785997739768509)
,p_query_column_id=>24
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>25
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786074671768509)
,p_query_column_id=>25
,p_column_alias=>'ADMIN_USER_CHECKBOX'
,p_column_display_sequence=>27
,p_column_heading=>'<input type="checkbox" id="selectunselectall">'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #ADMIN_USER_CHECKBOX# value="#ROWNUM#" name="f30" id="f30_#ROWNUM#"/>'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786284377768509)
,p_query_column_id=>26
,p_column_alias=>'NARRATION'
,p_column_display_sequence=>5
,p_column_heading=>'Narration'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786393000768511)
,p_query_column_id=>27
,p_column_alias=>'REFNUMBR'
,p_column_display_sequence=>6
,p_column_heading=>'SPR No.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786474724768511)
,p_query_column_id=>28
,p_column_alias=>'DETAILS'
,p_column_display_sequence=>28
,p_column_heading=>'Details'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_DOCNUM,P30_UPDOCNUM,P30_ACCOUNTCODE,P30_SERLNO:#REFNUMBR#,#DOCNUMBR#,#ACCTCODE#,#SERLNUMB#'
,p_column_linktext=>'#DETAILS#'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P28_REFNUMBR is not null then ',
'return true;',
'else ',
'return false;',
'end if;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68788896015768511)
,p_query_column_id=>29
,p_column_alias=>'DETAILS1'
,p_column_display_sequence=>37
,p_column_heading=>'View'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.::P91_ACCOUNTCODE,P91_DOCNUMBER:#ACCTCODE#,#DOCNUMBR#'
,p_column_linktext=>'#DETAILS1#'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786578217768511)
,p_query_column_id=>30
,p_column_alias=>'COMPCODE1'
,p_column_display_sequence=>29
,p_column_heading=>'Compcode1'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="text" >'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786686395768511)
,p_query_column_id=>31
,p_column_alias=>'DOCNUMBR1'
,p_column_display_sequence=>30
,p_column_heading=>'Docnumbr1'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="checkbox" #Docnumbr1# value="#ROWNUM#" name="f31" id="f31_#ROWNUM#"/>'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786789545768511)
,p_query_column_id=>32
,p_column_alias=>'DOCTTYPE1'
,p_column_display_sequence=>31
,p_column_heading=>'Docttype1'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="text" >'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786886235768511)
,p_query_column_id=>33
,p_column_alias=>'SUBTTYPE1'
,p_column_display_sequence=>32
,p_column_heading=>'Subttype1'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<input type="text" >'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68786990487768511)
,p_query_column_id=>34
,p_column_alias=>'APPRVLEV1'
,p_column_display_sequence=>33
,p_column_heading=>'Apprvlev1'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68787067477768511)
,p_query_column_id=>35
,p_column_alias=>'APPRQNTY1'
,p_column_display_sequence=>34
,p_column_heading=>'Apprqnty1'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68787199465768511)
,p_query_column_id=>36
,p_column_alias=>'ACCTCODE1'
,p_column_display_sequence=>35
,p_column_heading=>'Acctcode1'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68787270067768511)
,p_query_column_id=>37
,p_column_alias=>'SERLNUMB1'
,p_column_display_sequence=>36
,p_column_heading=>'Serlnumb1'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68791187334768523)
,p_plug_name=>'beforepage'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>25
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'P91_STATUS'
,p_plug_display_when_cond2=>':Waiting:Approved'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68791570635768525)
,p_name=>'Approval Status'
,p_parent_plug_id=>wwv_flow_api.id(68791187334768523)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:60%;color: rgb(66, 104, 185);"'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  USERCODE,count(docnumbr),p.apprvlev,(SELECT INITCAP (username)',
'            FROM syusrmas',
'           WHERE usercode = p.usercode) AS username,p.DOCTDATE, initcap((Select NMCODDES  ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE=p.AUTHTYPE)) AUTHTYPE ,',
'         CASE',
'            WHEN p.statuscd = ''APR''',
'               THEN ''Approved''',
'            WHEN p.apprvlev =',
'                   (SELECT NVL (MAX (a.apprvlev), 0) + 1',
'                      FROM acreqapr a',
'                     WHERE a.apprvlev <= p.apprvlev',
'                       AND a.statuscd = ''APR''',
'                     --  AND itemcode = p.itemcode',
'                       AND docnumbr = p.docnumbr)',
'               THEN ''Current''',
'            ELSE ''Waiting''',
'         END status',
'         ',
'    FROM acreqapr p',
'   WHERE compcode = :compcode',
'  --   AND itemcode = NVL (:2, itemcode)',
'     AND p.docnumbr = NVL (:P91_DOCNUMBER, p.docnumbr)',
'     group by p.USERCODE,p.statuscd,p.apprvlev,p.docnumbr,p.DOCTDATE,p.AUTHTYPE',
'ORDER BY p.apprvlev'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P91_DOCNUMBER'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
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
 p_id=>wwv_flow_api.id(68791767584768526)
,p_query_column_id=>1
,p_column_alias=>'USERCODE'
,p_column_display_sequence=>1
,p_column_heading=>'USERCODE'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68791887782768526)
,p_query_column_id=>2
,p_column_alias=>'COUNT(DOCNUMBR)'
,p_column_display_sequence=>2
,p_column_heading=>'COUNT(DOCNUMBR)'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68791990084768526)
,p_query_column_id=>3
,p_column_alias=>'APPRVLEV'
,p_column_display_sequence=>6
,p_column_heading=>'Approved<br>Level'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68792096471768528)
,p_query_column_id=>4
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Approved authority'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68792194353768528)
,p_query_column_id=>5
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68792272132768528)
,p_query_column_id=>6
,p_column_alias=>'AUTHTYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Authority Type'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68792393180768528)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(68792683152768531)
,p_name=>'Fund Requisition Details Status'
,p_template=>wwv_flow_api.id(47568291304858133)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_region_attributes=>'style="width:100%;float:right;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select distinct     initcap((Select NMCODDES  ',
'        From nmcodmas',
'        Where NMHRDCDE=''AT''',
'        And     CompCode=:CompCode',
'        And    MODLCODE=''NM''',
'        And     NMSOFCDE= a.AUTHTYPE)||''-''||s.USERNAME||''(''||(Select NVL(NMCODDES,'''')  ',
'                                From nmcodmas',
'                                Where compcode=:compcode',
'                                And     MODLCODE=''NM''',
'                                And     NMHRDCDE=''DEG''',
'                                And     NMSOFCDE=(',
'                                Select  PYDEPCDE',
'                                From syempmas',
'                                Where    PYCOMCDE=:compcode',
'                                And        PYEMPCDE=:APP_USER))||'')'') vDes,a.APPRDATE,',
'                                a.REMARKSS,a.APPRQNTY',
'                From syusrmas s,acreqapr a',
'                Where a.USERCODE=s.USERCODE',
'                and a.CompCode=:CompCode',
'        and DOCNUMBR=:P91_DOCNUMBER',
'         and ACCTCODE=:P91_ACCOUNTCODE',
'       --  and SERLNUMB=:P91_SERLNO',
'        and REFNUMBR is null'))
,p_display_when_condition=>':P91_REFNUMBR'
,p_display_condition_type=>'ITEM_IS_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P91_DOCNUMBER,P91_ACCOUNTCODE,P91_SERLNO'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Click View Details Link'
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
 p_id=>wwv_flow_api.id(68792995795768533)
,p_query_column_id=>1
,p_column_alias=>'VDES'
,p_column_display_sequence=>1
,p_column_heading=>'Approved by'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68793073100768533)
,p_query_column_id=>2
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>2
,p_column_heading=>'Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68793169514768533)
,p_query_column_id=>3
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>3
,p_column_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(68792889005768533)
,p_query_column_id=>4
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>4
,p_column_heading=>'Approved Amount'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68827991080788323)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>45
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'<div>',
'',
'<html>',
'<head>',
'<script type="text/javascript">',
'function startTime()',
'{',
'var today=new Date();',
'var h=today.getHours();',
'var m=today.getMinutes();',
'var s=today.getSeconds();',
'var don="AM"',
'// add a zero in front of numbers<10',
'm=checkTime(m);',
's=checkTime(s);',
'',
'if (h>=12){ don="PM" }',
'if (h>12) { h-=12 }',
'if (h==0) { h=12 }',
'',
'document.getElementById(''txt'').innerHTML=h+":"+m+":"+s+" "+don;',
't=setTimeout(''startTime()'',500);',
'}',
'',
'function checkTime(i)',
'{',
'if (i<10)',
'  {',
'  i="0" + i;',
'  }',
'return i;',
'}',
'</script>',
'</head>',
'',
'<body onload="startTime()">',
'<div id="txt"></div>',
'</body>',
'</html>',
'',
'</div>',
'',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(68828195928789730)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>55
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P91_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P91_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68791369635768525)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(68791187334768523)
,p_button_name=>'BEFOREPAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Back'
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68788985879768511)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68784992357768508)
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
 p_id=>wwv_flow_api.id(68789194387768517)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(68784992357768508)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68793278610768533)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(68792683152768531)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CREATE2'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(68789597186768519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(68784992357768508)
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
 p_id=>wwv_flow_api.id(68789390217768519)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(68784992357768508)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'HELP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:91::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(68794772583768539)
,p_branch_action=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68789797585768519)
,p_name=>'P91_REFNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(68784992357768508)
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
 p_id=>wwv_flow_api.id(68789975850768519)
,p_name=>'P91_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68784992357768508)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68790168369768520)
,p_name=>'P91_DOCNUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68784992357768508)
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
 p_id=>wwv_flow_api.id(68790370721768520)
,p_name=>'P91_DOCDETAILS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68784992357768508)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'         ''REQUISITION NO: ''||docnumbr||'' ,DATE: ''||',
'        doctdate||'' ,RAISED BY: ''||',
'         (SELECT INITCAP (username)',
'            FROM syusrmas',
'           WHERE usercode = a.RAISEDBY)',
'            AS usercode FROM acreqapr a WHERE     compcode = :compcode',
'                   AND docnumbr = :P91_DOCNUMBER',
'                   AND usercode = :app_user',
'                   AND statuscd = :p84_radio',
'                   GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68792473835768531)
,p_name=>'P91_DOCDETAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(68791570635768525)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'''REQUISITION NO: ''||p.docnumbr',
'         ',
'    FROM acreqapr p',
'   WHERE compcode = :compcode',
'  --   AND itemcode = NVL (:2, itemcode)',
'     AND p.docnumbr = NVL (:P91_DOCNUMBER, p.docnumbr)',
'     group by p.docnumbr'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68793485031768533)
,p_name=>'P91_ACCOUNTCODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(68792683152768531)
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
 p_id=>wwv_flow_api.id(68793690618768533)
,p_name=>'P91_SERLNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(68792683152768531)
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
 p_id=>wwv_flow_api.id(68793868623768534)
,p_name=>'P91_FUNDETAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(68792683152768531)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'         ''REQUISITION NO: ''||docnumbr||'' ,DATE: ''||',
'        doctdate||'' ,RAISED BY: ''||',
'         (SELECT INITCAP (usercode || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.usercode)',
'            AS usercode FROM acreqapr a WHERE     compcode = :compcode',
'                       and DOCNUMBR=:P91_UPDOCNUM',
'                       and REFNUMBR is null',
'                   GROUP BY a.compcode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.usercode,',
'         a.apprvlev,',
'         a.warecode,',
'         a.RAISEDBY'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="color: rgb(66, 104, 185);font-weight:bold;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68828368218789732)
,p_name=>'P91_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(68828195928789730)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68828577759789732)
,p_name=>'P91_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(68828195928789730)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(68828782349789732)
,p_name=>'P91_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(68828195928789730)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(68794289783768537)
,p_name=>'all selected'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#selectunselectall'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(68794590071768537)
,p_event_id=>wwv_flow_api.id(68794289783768537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $( ''#selectunselectall'' ).is('':checked'') ) {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',true);',
'}',
'else {',
'  $(''input[type=checkbox][name=f30]'').attr(''checked'',false);',
'}'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68827787271787218)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- code update by Md. Zahidul Islam--',
'begin',
'select PROGNAME into :FX_PROG_NAME from SYMENMAS where PAGEID=:APP_PAGE_ID;',
'',
':FX_PAGE_NO:=:APP_PAGE_ID;',
'exception',
'',
'when no_data_found then',
' --apex_application.g_print_success_message :=''Error..No page found'';',
' htp.init();',
' owa_util.redirect_url(''f?p=''||:APP_ID||'':1:''||:APP_SESSION, true);',
' --apex_application.g_print_success_message :=''Error..No page found'';',
'when too_many_rows then',
' raise_application_error(-20003,''Too Many Page ID found in database'');',
'end;',
'--- code updated--',
'',
'',
'If :P87_PROGNM  is null and :P87_NO is null then',
'   :P87_PROGNM := :FX_PROG_NAME;',
'   :P87_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P87_PROGNM,',
'                                      p_parentnm =>:P87_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P87_OPRSTAMP := :app_user;',
'  --:P87_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P87_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'Elsif :FX_PROG_NAME <> :P87_PROGNM And :FX_PAGE_NO <> :P87_NO Then',
'   :FX_PROG_NAME := :P87_PROGNM;',
'   :FX_PAGE_NO := :P87_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68790567136768522)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(68784992357768508)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ACREQAPR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68789194387768517)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68790791956768522)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(68784992357768508)
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
 p_id=>wwv_flow_api.id(68790980128768523)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(68784992357768508)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'change'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'	vcount    Number;',
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F30.count LOOP',
' Select Count(*)  Into vcount',
'            From nmusrlev',
'            Where Compcode=APEX_APPLICATION.G_F01(i)',
'            And    TRDOCTYP=APEX_APPLICATION.G_F03(i)',
'            And    TRSUBTYP=APEX_APPLICATION.G_F04(i)',
'            And    APRLEVEL>APEX_APPLICATION.G_F05(i);',
'END LOOP;',
'FOR i in 1..APEX_APPLICATION.G_F30.count LOOP',
'update acreqapr',
'set APPRQNTY= 1234',
'where docnumbr=APEX_APPLICATION.G_F02(i)',
'and USERCODE=:APP_USER; ',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68789194387768517)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'update successfully..........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(68794071392768536)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Checkbox flug'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    -- Reset the hidden ADMIN_USER flag for all visible records to N',
'    -- Note: g_f04 maps to the hidden ADMIN_USER column',
'    FOR ii IN 1 .. APEX_Application.g_f17.COUNT',
'    LOOP',
'        APEX_Application.g_f17(ii) := ''NEW'';',
'    END LOOP;',
'',
'    -- Set the hidden ADMIN_USER flag for those records where the',
'    -- checkbox has been set by the user to Y',
'    -- Note: g_f40 is the checkbox column ADMIN_USER_CHECKBOX',
'    FOR ii IN 1 .. APEX_Application.g_f30.COUNT',
'    LOOP',
'        APEX_Application.g_f17(APEX_Application.g_f30(ii)) := ''APR'';',
'    END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(68789194387768517)
);
wwv_flow_api.component_end;
end;
/
