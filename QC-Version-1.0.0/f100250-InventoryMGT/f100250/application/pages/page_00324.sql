prompt --application/pages/page_00324
begin
--   Manifest
--     PAGE: 00324
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
 p_id=>324
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Notification'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function() {',
'setInterval(function() {',
'$.event.trigger("notification1");',
'}, 5000);',
'});'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'400'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20180114174220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61949764058420561)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(155461837822601019)
,p_plug_name=>'Notification_Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61950007931420563)
,p_name=>'Purchase Management'
,p_parent_plug_id=>wwv_flow_api.id(155461837822601019)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wm_concat(distinct user_avatar) user_avatar,event_type,wm_concat(distinct event_date) event_date,wm_concat(distinct user_name) user_name,wm_concat( distinct event_desc) event_desc,',
'wm_concat(distinct event_title) event_title,wm_concat(distinct event_status) event_status from(select distinct (select decode(nvl(dbms_lob.getlength(itmimage),0),0,null,''<img id="''''" onclick="getimage(this)"  href="'' ',
'                          || ''" title="''',
'                          || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                          || ''src="'' ',
'                          || apex_util.get_blob_file_src(''P315_ITMIMAGE'',ITEMCODE,NULL,''attachment'')  ',
'                          || ''" height="75" width="75" />'') IMAGE  from itmimage where compcode=:COMPCODE and ITEMCODE=a.RAISEDBY)  user_avatar,',
'''u-color-''||ora_hash(RAISEDBY,44)||''-txt'' user_color,',
'''<font size="2" color="blue">''||DOCNUMBR||''</font>'' event_type,DOCTDATE event_date,(select USERNAME from syusrmas where compcode=a.compcode and USERCODE=a.RAISEDBY) user_name,APPRQNTY,',
'(select wm_concat(ITEMDES1) from nmitemas where compcode=a.compcode and itemcode=a.ITEMCODE) event_desc,',
'(select WAREDESC from nmwhsmas where compcode=a.compcode and WARECODE=a.WARECODE)  event_title,STATUSCD event_status from nmprocur a',
'where compcode=:COMPCODE)',
'group by event_type',
''))
,p_display_when_condition=>'P324_NONIFICATION_NO'
,p_display_when_cond2=>'4'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P315_ITMIMAGE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609234707858246)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  substr(username,0,2) user_avatar,',
'  ''u-color-''||ora_hash(username,44)||''-txt'' user_color',
'  user_name,',
'  event_date,',
'  event_type,',
'  event_title,',
'  event_desc,',
'  case status ',
'    when ''open'' then ''fa fa-clock-o''',
'    when ''closed'' then ''fa fa-check-circle-o''',
'    when ''on-hold'' then ''fa fa-exclamation-circle''',
'    when ''pending'' then ''fa fa-exclamation-triangle''',
'  end event_icon,',
'  case status ',
'    when ''open'' then ''is-new''',
'    when ''closed'' then ''is-removed''',
'    when ''on-hold'' then ''is-updated''',
'    when ''pending'' then ''is-updated''',
'  end event_status',
'from events'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950694942420570)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>7
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950105711420564)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950181385420565)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950219864420566)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950379106420567)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950492339420568)
,p_query_column_id=>6
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950572110420569)
,p_query_column_id=>7
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Event Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61950791989420571)
,p_name=>'Sales Management'
,p_parent_plug_id=>wwv_flow_api.id(155461837822601019)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wm_concat(distinct user_avatar) user_avatar,event_type,wm_concat(distinct event_date) event_date,wm_concat(distinct user_name) user_name,wm_concat( distinct event_desc) event_desc,',
'wm_concat(distinct event_title) event_title,wm_concat(distinct event_status) event_status from(select distinct (select decode(nvl(dbms_lob.getlength(itmimage),0),0,null,''<img id="''''" onclick="getimage(this)"  href="'' ',
'                          || ''" title="''',
'                          || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                          || ''src="'' ',
'                          || apex_util.get_blob_file_src(''P315_ITMIMAGE'',ITEMCODE,NULL,''attachment'')  ',
'                          || ''" height="75" width="75" />'') IMAGE  from itmimage where compcode=:COMPCODE and ITEMCODE=a.RAISEDBY)  user_avatar,',
'''u-color-''||ora_hash(RAISEDBY,44)||''-txt'' user_color,',
'''<font size="2" color="blue">''||DOCNUMBR||''</font>'' event_type,DOCTDATE event_date,(select USERNAME from syusrmas where compcode=a.compcode and USERCODE=a.RAISEDBY) user_name,APPRQNTY,',
'(select wm_concat(ITEMDES1) from nmitemas where compcode=a.compcode and itemcode=a.ITEMCODE) event_desc,',
'(select WAREDESC from nmwhsmas where compcode=a.compcode and WARECODE=a.WARECODE)  event_title,STATUSCD event_status from nmsalrec a',
'where compcode=:COMPCODE)',
'group by event_type',
''))
,p_display_when_condition=>'P324_NONIFICATION_NO'
,p_display_when_cond2=>'7'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P315_ITMIMAGE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609234707858246)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  substr(username,0,2) user_avatar,',
'  ''u-color-''||ora_hash(username,44)||''-txt'' user_color',
'  user_name,',
'  event_date,',
'  event_type,',
'  event_title,',
'  event_desc,',
'  case status ',
'    when ''open'' then ''fa fa-clock-o''',
'    when ''closed'' then ''fa fa-check-circle-o''',
'    when ''on-hold'' then ''fa fa-exclamation-circle''',
'    when ''pending'' then ''fa fa-exclamation-triangle''',
'  end event_icon,',
'  case status ',
'    when ''open'' then ''is-new''',
'    when ''closed'' then ''is-removed''',
'    when ''on-hold'' then ''is-updated''',
'    when ''pending'' then ''is-updated''',
'  end event_status',
'from events'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951438710420578)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>7
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950865555420572)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61950978329420573)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951023088420574)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951123263420575)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951308057420576)
,p_query_column_id=>6
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951413980420577)
,p_query_column_id=>7
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Event Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61951534121420579)
,p_name=>'Marketing Management'
,p_parent_plug_id=>wwv_flow_api.id(155461837822601019)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wm_concat(distinct user_avatar) user_avatar,event_type,wm_concat(distinct event_date) event_date,wm_concat(distinct user_name) user_name,wm_concat( distinct event_desc) event_desc,',
'wm_concat(distinct event_title) event_title,wm_concat(distinct event_status) event_status from(select distinct (select decode(nvl(dbms_lob.getlength(itmimage),0),0,null,''<img id="''''" onclick="getimage(this)"  href="'' ',
'                          || ''" title="''',
'                          || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                          || ''src="'' ',
'                          || apex_util.get_blob_file_src(''P315_ITMIMAGE'',ITEMCODE,NULL,''attachment'')  ',
'                          || ''" height="75" width="75" />'') IMAGE  from itmimage where compcode=:COMPCODE and ITEMCODE=a.RAISEDBY)  user_avatar,',
'''u-color-''||ora_hash(RAISEDBY,44)||''-txt'' user_color,',
'''<font size="2" color="blue">''||DOCNUMBR||''</font>'' event_type,DOCTDATE event_date,(select USERNAME from syusrmas where compcode=a.compcode and USERCODE=a.RAISEDBY) user_name,APPRQNTY,',
'(select wm_concat(ITEMDES1) from nmitemas where compcode=a.compcode and itemcode=a.ITEMCODE) event_desc,',
'(select WAREDESC from nmwhsmas where compcode=a.compcode and WARECODE=a.WARECODE)  event_title,STATUSCD event_status from nmcusvlg a',
'where compcode=:COMPCODE)',
'group by event_type',
''))
,p_display_when_condition=>'P324_NONIFICATION_NO'
,p_display_when_cond2=>'3'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P315_ITMIMAGE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609234707858246)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  substr(username,0,2) user_avatar,',
'  ''u-color-''||ora_hash(username,44)||''-txt'' user_color',
'  user_name,',
'  event_date,',
'  event_type,',
'  event_title,',
'  event_desc,',
'  case status ',
'    when ''open'' then ''fa fa-clock-o''',
'    when ''closed'' then ''fa fa-check-circle-o''',
'    when ''on-hold'' then ''fa fa-exclamation-circle''',
'    when ''pending'' then ''fa fa-exclamation-triangle''',
'  end event_icon,',
'  case status ',
'    when ''open'' then ''is-new''',
'    when ''closed'' then ''is-removed''',
'    when ''on-hold'' then ''is-updated''',
'    when ''pending'' then ''is-updated''',
'  end event_status',
'from events'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61952270936420586)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>7
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951698330420580)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951761320420581)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61951832960420582)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61952002860420583)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61952081293420584)
,p_query_column_id=>6
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(61952139539420585)
,p_query_column_id=>7
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Event Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(61978772369365464)
,p_name=>'Material Management'
,p_parent_plug_id=>wwv_flow_api.id(155461837822601019)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Timeline--compact'
,p_new_grid_column=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select wm_concat(distinct user_avatar) user_avatar,event_type,wm_concat(distinct event_date) event_date,wm_concat(distinct user_name) user_name,wm_concat( distinct event_desc) event_desc,',
'wm_concat(distinct event_title) event_title,wm_concat(distinct event_status) event_status from(select distinct (select decode(nvl(dbms_lob.getlength(itmimage),0),0,null,''<img id="''''" onclick="getimage(this)"  href="'' ',
'                          || ''" title="''',
'                          || ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" ''',
'                          || ''src="'' ',
'                          || apex_util.get_blob_file_src(''P315_ITMIMAGE'',ITEMCODE,NULL,''attachment'')  ',
'                          || ''" height="75" width="75" />'') IMAGE  from itmimage where compcode=:COMPCODE and ITEMCODE=a.RAISEDBY)  user_avatar,',
'''u-color-''||ora_hash(RAISEDBY,44)||''-txt'' user_color,',
'''<font size="2" color="blue">''||DOCNUMBR||''</font>'' event_type,DOCTDATE event_date,(select USERNAME from syusrmas where compcode=a.compcode and USERCODE=a.RAISEDBY) user_name,APPRQNTY,',
'(select wm_concat(ITEMDES1) from nmitemas where compcode=a.compcode and itemcode=a.ITEMCODE) event_desc,',
'(select WAREDESC from nmwhsmas where compcode=a.compcode and WARECODE=a.WARECODE)  event_title,STATUSCD event_status from nmstkrec a',
'where compcode=:COMPCODE',
'and docttype=''MI''',
'and subttype=2)',
'group by event_type',
''))
,p_display_when_condition=>'P324_NONIFICATION_NO'
,p_display_when_cond2=>'5'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P315_ITMIMAGE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47609234707858246)
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
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  substr(username,0,2) user_avatar,',
'  ''u-color-''||ora_hash(username,44)||''-txt'' user_color',
'  user_name,',
'  event_date,',
'  event_type,',
'  event_title,',
'  event_desc,',
'  case status ',
'    when ''open'' then ''fa fa-clock-o''',
'    when ''closed'' then ''fa fa-check-circle-o''',
'    when ''on-hold'' then ''fa fa-exclamation-circle''',
'    when ''pending'' then ''fa fa-exclamation-triangle''',
'  end event_icon,',
'  case status ',
'    when ''open'' then ''is-new''',
'    when ''closed'' then ''is-removed''',
'    when ''on-hold'' then ''is-updated''',
'    when ''pending'' then ''is-updated''',
'  end event_status',
'from events'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63971661501548541)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>7
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63957349968458790)
,p_query_column_id=>2
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63957782058458792)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63958216007458792)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63958549414458792)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63958928379458792)
,p_query_column_id=>6
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(63959337303458792)
,p_query_column_id=>7
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Event Status'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61949663382420560)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61949764058420561)
,p_button_name=>'OK'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Ok'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.:#&P324_RANDOMNO.'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61872357177569892)
,p_name=>'P324_NONIFICATION_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(155461837822601019)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61973771187243072)
,p_name=>'P324_RANDOMNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(155461837822601019)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Randomno'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64052850265097867)
,p_name=>'P324_PROCUREMENT_NONIFICATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(155461837822601019)
,p_prompt=>'Procurement Nonification'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64053126742097872)
,p_name=>'P324_SALES_NONIFICATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(155461837822601019)
,p_prompt=>'Sales Nonification'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(64053589455097872)
,p_name=>'P324_MATERIAL_NONIFICATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(155461837822601019)
,p_prompt=>'Material Nonification'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
