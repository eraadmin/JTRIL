prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Location Level'
,p_alias=>'SMLOCNLVL'
,p_step_title=>'Location Level'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'',
'<script type="text/javascript">',
'function MM_swapImgRestore() { //v3.0',
'  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;',
'}',
'function MM_preloadImages() { //v3.0',
'  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();',
'    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)',
'    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}',
'}',
'',
'function MM_findObj(n, d) { //v4.01',
'  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {',
'    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}',
'  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];',
'  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);',
'  if(!x && d.getElementById) x=d.getElementById(n); return x;',
'}',
'',
'function MM_swapImage() { //v3.0',
'  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)',
'   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}',
'}',
'</script>'))
,p_javascript_code_onload=>'MM_preloadImages(''Refresh_1.gif'')'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140812'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50717070124097733)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47595508514858189)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(50004673963540076)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50717298266097734)
,p_plug_name=>'Location Level'
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
 p_id=>wwv_flow_api.id(50721890767097741)
,p_name=>'Smlocnmas Detail'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>25
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"COMPCODE",',
'"PARNTLOC",',
'"LOCNCODE",',
'"MENUSLNO",',
'"LEVLCODE",',
'"LOCDESCR",',
'"CREATEBY",',
'"CREATEDT",',
'"UPDATEBY",',
'"UPDATEDT"',
'from "#OWNER#"."SMLOCNMAS"',
'where "COMPCODE" = :P77_COMPCODE',
' and "LEVLCODE"= :P77_LOCLVLCODE',
''))
,p_display_when_condition=>'P77_LOCLVLCODE'
,p_display_condition_type=>'NEVER'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722086284097742)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722179332097744)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722293802097744)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_column_heading=>'Compcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_column_width=>3
,p_column_default=>'P54_COMPCODE'
,p_column_default_type=>'ITEM'
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722375126097744)
,p_query_column_id=>4
,p_column_alias=>'PARNTLOC'
,p_column_display_sequence=>4
,p_column_heading=>'Parent location'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LOCNCODE||''-''||LOCDESCR as display_value, LOCNCODE as return_value ',
'  from SMLOCNMAS',
'  where LEVLCODE=(select loclvlcode-1 from smlocnlvl where rowid=:P54_ROWID)',
' order by 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'PARNTLOC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722495247097744)
,p_query_column_id=>5
,p_column_alias=>'LOCNCODE'
,p_column_display_sequence=>5
,p_column_heading=>'Location code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>15
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LOCNCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722592601097745)
,p_query_column_id=>6
,p_column_alias=>'MENUSLNO'
,p_column_display_sequence=>7
,p_column_heading=>'Menu sl. no'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'MENUSLNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722690291097745)
,p_query_column_id=>7
,p_column_alias=>'LEVLCODE'
,p_column_display_sequence=>8
,p_column_heading=>'Level code'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LEVLCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722783999097745)
,p_query_column_id=>8
,p_column_alias=>'LOCDESCR'
,p_column_display_sequence=>6
,p_column_heading=>'Location descr'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'LOCDESCR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722888838097745)
,p_query_column_id=>9
,p_column_alias=>'CREATEBY'
,p_column_display_sequence=>9
,p_column_heading=>'Createby'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'CREATEBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50722972790097745)
,p_query_column_id=>10
,p_column_alias=>'CREATEDT'
,p_column_display_sequence=>10
,p_column_heading=>'Createdt'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'CREATEDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50723068033097745)
,p_query_column_id=>11
,p_column_alias=>'UPDATEBY'
,p_column_display_sequence=>11
,p_column_heading=>'Updateby'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'UPDATEBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(50723180787097745)
,p_query_column_id=>12
,p_column_alias=>'UPDATEDT'
,p_column_display_sequence=>12
,p_column_heading=>'Updatedt'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_include_in_export=>'N'
,p_print_col_width=>'0'
,p_ref_schema=>'ORBHRM'
,p_ref_table_name=>'SMLOCNMAS'
,p_ref_column_name=>'UPDATEDT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50726091133097747)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>0
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P77_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P77_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50726867673097748)
,p_plug_name=>'COMPANY'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>35
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align:right; height:20px; top: 10px;left: 50%;font-size:14px;color:#6633FF; font-weight:bold;"><br>User: &P1_USER_ID.<Br>&P1_USER_NAME.<Br></font>',
'</div>',
'',
'<div style="text-align:center; height:20px; position:absolute;position: absolute; top: 10px;left: 50%; margin-left: -160px;font-size:16px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''2'' color=''#336633''>&P1_COMPADD.</font>',
'',
'',
'<div',
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
'</div>',
'',
'',
''))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50727091113097748)
,p_plug_name=>'Location Level'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>45
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "SMLOCNLVL"."ROWID" "ROWID", ',
'   "SMLOCNLVL"."COMPCODE" "COMPCODE", ',
'   "SMLOCNLVL"."LOCLVLCODE" "LOCLVLCODE", ',
'   "SMLOCNLVL"."LVLCDLNGTH" "LVLCDLNGTH", ',
'   "SMLOCNLVL"."LOCLVLDESC" "LOCLVLDESC", ',
'   "SMLOCNLVL"."LEAFFLAG" "LEAFFLAG", ',
'   "SMLOCNLVL"."CREATEBY" "CREATEBY", ',
'   "SMLOCNLVL"."CREATEDT" "CREATEDT", ',
'   "SMLOCNLVL"."UPDATEBY" "UPDATEBY", ',
'   "SMLOCNLVL"."UPDATEDT" "UPDATEDT", ',
'   "SMLOCNLVL"."MANGREQ" "MANGREQ",',
'   (select RULEDESC from SMEMPRULCD where EMPRULCD=MNGROLCD) mngrolcd',
'FROM ',
'   "SMLOCNLVL"',
'WHERE ',
'    "SMLOCNLVL"."COMPCODE"=:P1_CACMPNAM'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(50727285465097748)
,p_name=>'Smlocnlvl'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_sort_asc_image=>'arrow_up_gray_light.gif'
,p_sort_asc_image_attr=>' width="13" height="12" '
,p_sort_desc_image=>'arrow_down_gray_light.gif'
,p_sort_desc_image_attr=>' width="13" height="12" '
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
,p_enable_mail_download=>'N'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ZAHID'
,p_internal_uid=>13572418339417254
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727474792097750)
,p_db_column_name=>'COMPCODE'
,p_display_order=>1
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'COMPCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727383550097748)
,p_db_column_name=>'ROWID'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=#APP_ID#:54:#APP_SESSION#:::RP:P54_ROWID:#ROWID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
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
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727588997097750)
,p_db_column_name=>'LOCLVLCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Location Level code'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'LOCLVLCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727667133097750)
,p_db_column_name=>'LVLCDLNGTH'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Level code length'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'LVLCDLNGTH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727767309097750)
,p_db_column_name=>'LOCLVLDESC'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location Level description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'LOCLVLDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727874841097750)
,p_db_column_name=>'LEAFFLAG'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Leaf flag'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'LEAFFLAG'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50727971087097750)
,p_db_column_name=>'CREATEBY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Createby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATEBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50728069958097750)
,p_db_column_name=>'CREATEDT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Createdt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'CREATEDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50728175291097750)
,p_db_column_name=>'UPDATEBY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updateby'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATEBY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50728296034097750)
,p_db_column_name=>'UPDATEDT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updatedt'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'UPDATEDT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50728392381097750)
,p_db_column_name=>'MANGREQ'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Manager req'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_static_id=>'MANGREQ'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50728494561097750)
,p_db_column_name=>'MNGROLCD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Manager'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MNGROLCD'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(50728581116097750)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'135738'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COMPCODE:ROWID:LOCLVLCODE:LVLCDLNGTH:LOCLVLDESC:LEAFFLAG:CREATEBY:CREATEDT:UPDATEBY:UPDATEDT:MANGREQ:MNGROLCD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50717667330097734)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P77_ROWID is not null And :FX_MOD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50723469110097745)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(50721890767097741)
,p_button_name=>'APPLY_CHANGES_ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'javascript:addRow();'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50718470041097736)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'GET_PREVIOUS_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'&lt;'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ROWID'')'
,p_button_condition=>'P77_ROWID_PREV'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50718281632097736)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'GET_NEXT_ROWID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'&gt;'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ROWID'')'
,p_button_condition=>'P77_ROWID_NEXT'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50718682737097736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'Refresh'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Refresh'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:77::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :FX_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50718068197097736)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'Exit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Exit Page'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50717498180097734)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P77_ROWID is null And :FX_ADD_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50723282111097745)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50721890767097741)
,p_button_name=>'APPLY_CHANGES_MRD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete Checked'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''APPLY_CHANGES_MRD'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from "#OWNER#"."SMLOCNMAS"',
'where "COMPCODE" = :P77_COMPCODE'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50717872606097736)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50717298266097734)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P77_ROWID is not null And :FX_DEL_ALLOWED =''Y'' then ',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50728791488097750)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50727091113097748)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50731078586097752)
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_ROWID:&P77_ROWID_NEXT.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(50718281632097736)
,p_branch_sequence=>10
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50731274904097752)
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_ROWID:&P77_ROWID_PREV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(50718470041097736)
,p_branch_sequence=>20
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50731491945097752)
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::P77_ROWID:&P77_ROWID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE,CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50731672893097752)
,p_branch_action=>'f?p=&APP_ID.:77:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50718872250097736)
,p_name=>'P77_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50719069905097738)
,p_name=>'P77_COMPCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_item_default=>':P1_CACMPNAM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Company code'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50719297893097739)
,p_name=>'P77_LOCLVLCODE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location level code'
,p_source=>'LOCLVLCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>25
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50719495800097739)
,p_name=>'P77_LVLCDLNGTH'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Level code length'
,p_source=>'LVLCDLNGTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>25
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50719672309097739)
,p_name=>'P77_LOCLVLDESC'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location level description'
,p_source=>'LOCLVLDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>40
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
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
 p_id=>wwv_flow_api.id(50719898674097739)
,p_name=>'P77_LEAFFLAG'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leaf flag'
,p_source=>'LEAFFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
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
 p_id=>wwv_flow_api.id(50720069117097739)
,p_name=>'P77_CREATEBY'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Createby'
,p_source=>'CREATEBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50720290042097739)
,p_name=>'P77_UPDATEBY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updateby'
,p_source=>'UPDATEBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50720478854097739)
,p_name=>'P77_UPDATEDT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updatedt'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'UPDATEDT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50720695894097739)
,p_name=>'P77_MANGREQ'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager req'
,p_source=>'MANGREQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>25
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50720877450097739)
,p_name=>'P77_ROWID_NEXT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_prompt=>'P77_ROWID_NEXT'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50721079794097741)
,p_name=>'P77_ROWID_PREV'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_prompt=>'P77_ROWID_PREV'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50721274032097741)
,p_name=>'P77_ROWID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_tag_attributes=>'class="fielddata"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50721492608097741)
,p_name=>'P77_LOCNLVLCDTEMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Locnlvlcdtemp'
,p_source=>'P77_LOCLVLCODE'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50721696074097741)
,p_name=>'P77_MNGROLCD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(50717298266097734)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Manager Role Code'
,p_source=>'MNGROLCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPRULCD||''-''||RULEDESC as display_value, EMPRULCD as return_value ',
'  from SMEMPRULCD',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>25
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50726278070097747)
,p_name=>'P77_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50726091133097747)
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
 p_id=>wwv_flow_api.id(50726479711097747)
,p_name=>'P77_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50726091133097747)
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
 p_id=>wwv_flow_api.id(50726693145097747)
,p_name=>'P77_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50726091133097747)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50723797139097745)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'PARNTLOC not null'
,p_validation_sequence=>30
,p_validation=>'PARNTLOC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'PARNTLOC'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50723967871097745)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'LOCNCODE not null'
,p_validation_sequence=>40
,p_validation=>'LOCNCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'LOCNCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50724179428097745)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'MENUSLNO must be numeric'
,p_validation_sequence=>50
,p_validation=>'MENUSLNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'MENUSLNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50724391109097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'LEVLCODE not null'
,p_validation_sequence=>60
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50724576311097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'LEVLCODE must be numeric'
,p_validation_sequence=>60
,p_validation=>'LEVLCODE'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'LEVLCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50724792589097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'LOCDESCR not null'
,p_validation_sequence=>70
,p_validation=>'LOCDESCR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'LOCDESCR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50724990791097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'CREATEBY not null'
,p_validation_sequence=>80
,p_validation=>'CREATEBY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CREATEBY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50725196305097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'CREATEDT not null'
,p_validation_sequence=>90
,p_validation=>'CREATEDT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CREATEDT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50725368869097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'CREATEDT must be a valid date'
,p_validation_sequence=>90
,p_validation=>'CREATEDT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'CREATEDT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50725586930097747)
,p_tabular_form_region_id=>wwv_flow_api.id(50721890767097741)
,p_validation_name=>'UPDATEDT must be a valid date'
,p_validation_sequence=>110
,p_validation=>'UPDATEDT'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_validation_condition=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_column=>'UPDATEDT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50729073604097750)
,p_validation_name=>'P77_LOCLVLCODE_Duplicate'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'LocnLvlCodeCnt number(2):=0;',
'',
'begin',
'  if :P77_LOCLVLCODE <> nvl(:P77_LOCNLVLCDTEMP,0) then',
'    begin',
'    select count(LOCLVLCODE) into  LocnLvlCodeCnt',
'        from SMLOCNLVL',
'        where LOCLVLCODE=:P77_LOCLVLCODE and COMPCODE=:P77_COMPCODE;  ',
'        ',
'    EXCEPTION',
'            WHEN others THEN',
'            LocnLvlCodeCnt:=0;',
'    end;',
'  end if;',
'if LocnLvlCodeCnt > 0 then',
' raise_application_error (-20001, ''Duplicate Code'');',
'end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'Location Level Code Already Exist.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(50719297893097739)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(50730582322097752)
,p_name=>'SaveBeforeExit'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50730880657097752)
,p_event_id=>wwv_flow_api.id(50730582322097752)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_SAVE_BEFORE_EXIT'
,p_attribute_01=>'You have made changes to data on this page.  If you navigate away from this page without first saving your data, the changes will be lost.'
,p_attribute_02=>':button'
,p_attribute_03=>'#pRequest'
,p_attribute_04=>'250'
,p_attribute_05=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50729194923097750)
,p_process_sequence=>10
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
'If :P77_PROGNM  is null and :P77_NO is null then',
'   :P77_PROGNM := :FX_PROG_NAME;',
'   :P77_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P77_PROGNM,',
'                                      p_parentnm =>:P77_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P77_OPRSTAMP := :app_user;',
'  --:P77_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P77_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P77_PROGNM;',
'   :FX_PAGE_NO := :P77_NO;',
'Elsif :FX_PROG_NAME <> :P77_PROGNM And :FX_PAGE_NO <> :P77_NO Then',
'   :FX_PROG_NAME := :P77_PROGNM;',
'   :FX_PAGE_NO := :P77_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50729390578097750)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from SMLOCNLVL'
,p_attribute_02=>'SMLOCNLVL'
,p_attribute_03=>'P77_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50729567531097750)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'SMLOCNLVL'
,p_attribute_03=>'P77_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_09=>'P77_ROWID_NEXT'
,p_attribute_10=>'P77_ROWID_PREV'
,p_attribute_13=>'P77_ROWID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50729799539097750)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of SMLOCNLVL'
,p_attribute_02=>'SMLOCNLVL'
,p_attribute_03=>'P77_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50725669624097747)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50721890767097741)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request like (''SAVE'') or :request like ''GET_NEXT%'' or :request like ''GET_PREV%'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50725871719097747)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(50721890767097741)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'SMLOCNMAS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'APPLY_CHANGES_MRD'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50729981050097750)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'54'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(50717872606097736)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50730179728097750)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'before_insert_check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
':P77_CREATEBY:= :app_user;',
'',
':P77_UPDATEBY:= :app_user;',
':P77_UPDATEDT:= sysdate;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P77_ROWID'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50730398714097750)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Before_Update _check'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P77_UPDATEBY := :app_user;',
':P77_UPDATEDT := sysdate;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P77_ROWID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
