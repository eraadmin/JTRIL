prompt --application/pages/page_00146
begin
--   Manifest
--     PAGE: 00146
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
 p_id=>146
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Tabular Form Cascading Popup LOV'
,p_step_title=>'Tabular Form Cascading Popup LOV'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#IMAGE_PREFIX#/libraries/jquery-ui/1.8.22/ui/minified/jquery.effects.highlight.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'(function($){;',
' /*** Cascading popup list ***/',
' $.fn.htmldbCascadePopup=function(parent,tempItem,options){',
'  options = $.extend({',
'   loadingTxt    : "Loading ...",',
'   loadingCss    : {"width":"80px","float":"left"}',
'  },options);',
'  return this.each(function(i){',
'   var $self = $(this),',
'   $anchor   = $self.next("a"),',
'   $parent   = $(parent).eq(i),',
'   popupFn   = new Function($anchor.attr("href").substr(11));',
'   $parent.change(function(){$self.val("").effect("highlight",{},2000).focus();});',
'   $anchor.click(function(e){',
'    e.preventDefault();',
'    var parentVal = $parent.val();',
'    if(!parentVal){parentVal="";};',
'    apex.server.process("DUMMY",{',
'     p_arg_names  : tempItem,',
'     p_arg_values : parentVal',
'	 },{',
'	  dataType   : "text",',
'	  beforeSend : function(){',
'       $self',
'       .hide()',
'       .after($("<div/>",{"html":options.loadingTxt,"css":options.loadingCss,"class":"ui-autocomplete-loading"})',
'	    .width($self.outerWidth())',
'	    .height($self.outerHeight())',
'       );',
'	  },',
'	  complete : function(){',
'	   popupFn();',
'       $self',
'       .show()',
'       .next("div.ui-autocomplete-loading")',
'       .remove();',
'	  }',
'    });',
'   });',
'  });',
' };',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-autocomplete-loading{',
' background: url("#IMAGE_PREFIX#libraries/jquery-ui/1.8/themes/base/images/ui-anim_basic_16x16.gif") no-repeat scroll right center transparent;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'"PAGE_1_HELP"'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(90389734588630400)
,p_plug_name=>'Info'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'Help Text'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(90390084779630409)
,p_name=>'Employees'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"EMPNO",',
'"EMPNO" EMPNO_DISPLAY,',
'"ENAME",',
'"JOB",',
'"MGR",',
'"HIREDATE",',
'"SAL",',
'"COMM",',
'"DEPTNO"',
'from "#OWNER#"."DBSWH_EMP"',
''))
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90393638747630416)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90394064661630416)
,p_query_column_id=>2
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>2
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'EMPNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90390505470630409)
,p_query_column_id=>3
,p_column_alias=>'EMPNO_DISPLAY'
,p_column_display_sequence=>3
,p_column_heading=>'Employee no.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'BLOG_SAMPLES'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'EMPNO_DISPLAY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90390945877630414)
,p_query_column_id=>4
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'BLOG_SAMPLES'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'ENAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90391174369630414)
,p_query_column_id=>5
,p_column_alias=>'JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT JOB d,',
'  JOB r',
'FROM DBSWH_EMP',
'ORDER BY 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'JOB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90391575366630414)
,p_query_column_id=>6
,p_column_alias=>'MGR'
,p_column_display_sequence=>10
,p_column_heading=>'Manager'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ename AS DIS,',
'  empno AS RET',
'FROM dbswh_emp',
'WHERE deptno = :G_POPUP_PARENT_VALUE',
'ORDER BY 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_schema=>'BLOG_SAMPLES'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'MGR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90392036534630414)
,p_query_column_id=>7
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Hired on'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'HIREDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90392464474630414)
,p_query_column_id=>8
,p_column_alias=>'SAL'
,p_column_display_sequence=>6
,p_column_heading=>'Salary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'POPUP_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT sal AS DIS,',
'  sal AS RET',
'FROM dbswh_emp',
'WHERE job = :G_POPUP_PARENT_VALUE',
'ORDER BY 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'SAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90392787756630414)
,p_query_column_id=>9
,p_column_alias=>'COMM'
,p_column_display_sequence=>7
,p_column_heading=>'Commission'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'COMM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(90393197871630414)
,p_query_column_id=>10
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>9
,p_column_heading=>'Department'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT dname,',
'  deptno',
'FROM dbswh_dept',
'ORDER BY 1'))
,p_lov_show_nulls=>'NO'
,p_column_width=>16
,p_include_in_export=>'Y'
,p_ref_table_name=>'DBSWH_EMP'
,p_ref_column_name=>'DEPTNO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90394416094630416)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(90390084779630409)
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90395628932630420)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(90390084779630409)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Submit'
,p_button_position=>'CHANGE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90395228822630419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(90390084779630409)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(90394811211630419)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(90390084779630409)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(90403069239630433)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90398501241630422)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'ENAME not null'
,p_validation_sequence=>30
,p_validation=>'ENAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'ENAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90398917616630422)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'JOB not null'
,p_validation_sequence=>40
,p_validation=>'JOB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'JOB'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90399301837630422)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'MGR must be numeric'
,p_validation_sequence=>50
,p_validation=>'MGR'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'MGR'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90396154499630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'HIREDATE must be a valid date'
,p_validation_sequence=>60
,p_validation=>'HIREDATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'HIREDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90397713338630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'HIREDATE not null'
,p_validation_sequence=>60
,p_validation=>'HIREDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'HIREDATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90396475518630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'SAL not null'
,p_validation_sequence=>70
,p_validation=>'SAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'SAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90396953101630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'SAL must be numeric'
,p_validation_sequence=>70
,p_validation=>'SAL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'SAL'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90397334672630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'COMM must be numeric'
,p_validation_sequence=>80
,p_validation=>'COMM'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'COMM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90398073468630420)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'DEPTNO must be numeric'
,p_validation_sequence=>90
,p_validation=>'DEPTNO'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'DEPTNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(90399751975630422)
,p_tabular_form_region_id=>wwv_flow_api.id(90390084779630409)
,p_validation_name=>'DEPTNO not null'
,p_validation_sequence=>90
,p_validation=>'DEPTNO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_when_button_pressed=>wwv_flow_api.id(90395628932630420)
,p_associated_column=>'DEPTNO'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90402149625630431)
,p_name=>'Set cascading Popup LOV'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(90390084779630409)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90402582788630431)
,p_event_id=>wwv_flow_api.id(90402149625630431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("[name=f05],[name=f09]").htmldbCascadePopup(',
'"[name=f04],[name=f08]",',
'"G_POPUP_PARENT_VALUE"',
');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(90401204167630431)
,p_name=>'Add row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(90394416094630416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(90401739150630431)
,p_event_id=>wwv_flow_api.id(90401204167630431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.widget.tabular.addRow();',
'$("[name=f05]:last,[name=f09]:last").htmldbCascadePopup(',
'"[name=f04]:last,[name=f08]:last",',
'"G_POPUP_PARENT_VALUE"',
');'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90399978826630422)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(90390084779630409)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'DBSWH_EMP'
,p_attribute_03=>'EMPNO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(90395628932630420)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90400387576630422)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(90390084779630409)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'DBSWH_EMP'
,p_attribute_03=>'EMPNO'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(90400782400630431)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DUMMY'
,p_process_sql_clob=>'HTP.PRN(''OK'');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
