prompt --application/pages/page_00256
begin
--   Manifest
--     PAGE: 00256
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
 p_id=>256
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Quotation'
,p_page_mode=>'MODAL'
,p_step_title=>'Quotation'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f27_''+vRow).value =',
'    parseInt(html_GetElement(''f23_''+vRow).value, 10) *',
'    parseInt(html_GetElement(''f24_''+vRow).value, 10);',
'for (i = 0; i <=vRow; i++)',
'{',
'var y= pad(i+1, 4);',
'var tmp= ''f02_''.concat(y);',
'html_GetElement(''f02_''+vRow).value = i+0;',
'};',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal1(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f26_''+vRow).value =',
'Number((Number(html_GetElement(''f23_''+vRow).value).toFixed(2)) *',
'    Number(html_GetElement(''f24_''+vRow).value).toFixed(2)*',
'(Number(html_GetElement(''f25_''+vRow).value).toFixed(2)/100)).toFixed(1);',
'html_GetElement(''f27_''+vRow).value =',
'   Number(html_GetElement(''f23_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f24_''+vRow).value).toFixed(2)-Number(html_GetElement(''f26_''+vRow).value).toFixed(2);',
'}',
'</script>',
'<script type="text/javascript">',
'function calculateTotal2(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'html_GetElement(''f27_''+vRow).value =',
'    Number(html_GetElement(''f23_''+vRow).value).toFixed(2) *',
'    Number(html_GetElement(''f24_''+vRow).value).toFixed(2)-Number(html_GetElement(''f26_''+vRow).value).toFixed(2);',
'html_GetElement(''f25_''+vRow).value =',
'    Number((Number(html_GetElement(''f26_''+vRow).value).toFixed(2) *',
'100)/(Number(html_GetElement(''f23_''+vRow).value).toFixed(2)*',
'Number(html_GetElement(''f24_''+vRow).value).toFixed(2))).toFixed(2);',
'}',
'</script>',
'',
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P256_TABULARITEMCODE'').value=',
'    html_GetElement(''f13_''+vRow).value;',
'//document.getElementById(''P256_ROWNUM'').value= ''f15_''+vRow;',
'$(document).ready(function(){',
'  $(''#P256_TABULARITEMCODE'').trigger(''click'');',
'});',
'html_GetElement(''f17_''+vRow).value=',
'document.getElementById(''P256_TABITEMDESC'').value;',
'html_GetElement(''f21_''+vRow).value=',
'document.getElementById(''P256_TABITEMRATE'').value;',
'html_GetElement(''f28_''+vRow).value=',
'document.getElementById(''P256_TABITEMUNIT'').value;',
'html_GetElement(''f20_''+vRow).value=',
'document.getElementById(''P256_TABITMGRADE'').value;',
'html_GetElement(''f14_''+vRow).value=',
'document.getElementById(''P256_TABCOMMGRUP'').value;',
'html_GetElement(''f16_''+vRow).value=',
'document.getElementById(''P256_TABITEMTYPE'').value;',
'html_GetElement(''f23_''+vRow).value=',
'document.getElementById(''P256_TABSALRATE'').value',
'}',
'</script>',
'',
'',
'',
'  ',
'',
'',
'',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function pad(n, width, z) {',
'  z = z || ''0'';',
'  n = n + '''';',
'  return n.length >= width ? n : new Array(width - n.length + 1).join(z) + n;',
'}',
'',
'$(document).ready(function () {   ',
'$(''#SAL_REPORT'').on("keydown",'':input'', (function (e) {   ',
'  var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;   ',
'  if (key == 13) {   ',
'    e.preventDefault();   ',
'    var inputs = $(this).closest(''form'').find('':input:visible'');   ',
'    inputs.eq(inputs.index(this) + 1).focus();   ',
'  }   ',
'}));  ',
'});  ',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px 0px 0px 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}'))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170803184149'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131965295252709998)
,p_plug_name=>' Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131977722267710008)
,p_plug_name=>' '
,p_region_template_options=>'t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131983629764710014)
,p_plug_name=>'Order and Booking Details'
,p_parent_plug_id=>wwv_flow_api.id(131977722267710008)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P256_TRANTYPE'
,p_plug_display_when_cond2=>'SI2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131990113615710022)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(131977722267710008)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131990490952710022)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(131990113615710022)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:right;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_api.id(132001155122710034)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(131990113615710022)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:50%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
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
 p_id=>wwv_flow_api.id(132919700508992105)
,p_plug_name=>'a'
,p_parent_plug_id=>wwv_flow_api.id(131990113615710022)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>600
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131986502453710014)
,p_plug_name=>' Customer Inormation'
,p_parent_plug_id=>wwv_flow_api.id(132919700508992105)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="float:left;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>81
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(131995146692710031)
,p_plug_name=>'&nbsp;'
,p_parent_plug_id=>wwv_flow_api.id(132919700508992105)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:100%;float:left;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132920194239998248)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(131990113615710022)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>62
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(132004796948710037)
,p_name=>' Qutation'
,p_parent_plug_id=>wwv_flow_api.id(132920194239998248)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>82
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"SERLNUMB",',
'"COMPCODE",',
'"DOCTTYPE",',
'"SUBTTYPE",',
'"DOCNUMBR",',
'"DOCTDATE",',
'"PARTYCDE",',
'"SMANCODE",',
'"RAISEDBY",',
'"APPRVDBY",',
'"APPRDATE",',
'(select COMMGRUP from nmitemas',
'where ITEMCODE=a.ITEMCODE) as "COMMCODE",',
'"ITEMCODE",',
'NULL "ITEMTYPE",',
'(select ITEMDES1 from nmitemas',
'where ITEMCODE=a.ITEMCODE) as ITEMDESC,',
'NULL "ITEMRATE",',
'NULL "MARKPCNT",',
'NULL "DISCPCNT",',
'NULL "DISCAMNT",',
'NULL "SALERATE",',
'NULL "HUOMCODE",',
'(select LUOMCODE from nmitemas',
'where ITEMCODE=a.ITEMCODE) as "LUOMCODE",',
'null "ORGNQNTY",',
'(select APPRQNTY from nmslsofr',
'where UPDOCNUM=a.DOCNUMBR) as "APPRQNTY",',
'NULL "TRNSQNTY",',
'NULL "MSFCAMNT",',
'NULL "CURRCODE",',
'NULL "EXCGRATE",',
'NULL "MSLCAMNT",',
'"REMARKSS",',
'NULL "COSTCODE",',
'NULL "WARECODE",',
'NULL "STATUSCD",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"COLORCDE",',
'"CUSTMRID",',
'"SLSOFRNO",',
'NULL "COSTRATE"',
'from "#OWNER#"."NMSLSOFR" "A"',
'WHERE A.COMPCODE = :COMPCODE',
'AND A.UPDOCNUM = ''''--nvl(:P256_REF_DOCNUM'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P256_REF_DOCNUM'
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39686982218296757)
,p_query_column_id=>1
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>2
,p_column_heading=>'Srl.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>1
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39687381781296757)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39687773144296757)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39688170551296758)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39688579523296758)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39689023259296758)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39848261028557340)
,p_query_column_id=>7
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>19
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select T.PRTYNAME d ,T.PARTYCDE',
'from nmmrkpty t',
'where T.COMPCODE = :compcode'))
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39689778542296759)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>20
,p_column_heading=>'Sales Man'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.SMANNAME d, s.SMANCODE',
'from nmsmnmas s',
'where s.compcode = :compcode',
'and nvl(s.SMANCODE,''C'') = nvl(:P256_REF_SMANCODE,nvl(s.SMANCODE,''C''))'))
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39690250350296759)
,p_query_column_id=>9
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'RAISEDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39690608579296759)
,p_query_column_id=>10
,p_column_alias=>'APPRVDBY'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRVDBY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39691026040296759)
,p_query_column_id=>11
,p_column_alias=>'APPRDATE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39691406490296760)
,p_query_column_id=>12
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39691805039296760)
,p_query_column_id=>13
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>13
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.ITEMDES1 d,S.ITEMCODE',
'from nmitemas s',
'where S.COMPCODE = :compcode',
'and nvl(s.itemcode,''C'') = nvl(:P256_REF_PRODUCT,nvl(s.itemcode,''C''))'))
,p_lov_show_nulls=>'NO'
,p_cattributes=>'onchange="calculateTotal3(this);"'
,p_derived_column=>'N'
,p_lov_display_extra=>'NO'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMCODE'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT i.itemcode||''-''||i.itemdes2 d,i.itemcode r',
'           FROM vwnmitem i, nmpmodel p',
'          WHERE i.compcode = :compcode ',
'            AND i.compcode = p.compcode(+)',
'            AND i.designcd = p.levlnumb(+)',
'            AND p.parntcde IS NULL',
'            AND i.itemcode <> ''OPENING''',
'            AND NVL (i.finishgd, ''N'') = ''Y''',
'            AND i.statuscd = ''ACT''',
'       ORDER BY 2'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39692254478296760)
,p_query_column_id=>14
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39692628640296760)
,p_query_column_id=>15
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>15
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>32
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39693001311296760)
,p_query_column_id=>16
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ITEMRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39693401468296761)
,p_query_column_id=>17
,p_column_alias=>'MARKPCNT'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'MARKPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39693802766296761)
,p_query_column_id=>18
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DISCPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39694193153296761)
,p_query_column_id=>19
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'DISCPCNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39694590632296761)
,p_query_column_id=>20
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39695045666296762)
,p_query_column_id=>21
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'HUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39695450821296762)
,p_query_column_id=>22
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>17
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.IUOMDESC d, s.IUOMCODE',
'from nmuommas s',
'where s.compcode = :compcode'))
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39695802829296762)
,p_query_column_id=>23
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>21
,p_column_heading=>'Original Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'ORGNQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39696197123296762)
,p_query_column_id=>24
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>24
,p_column_heading=>'Approve Qty.'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_cattributes=>'onchange="calculateTotal(this);"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39696577824296763)
,p_query_column_id=>25
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'TRNSQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39697057507296763)
,p_query_column_id=>26
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'MSFCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39697449032296763)
,p_query_column_id=>27
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39697817512296763)
,p_query_column_id=>28
,p_column_alias=>'EXCGRATE'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'EXCGRATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39698196704296764)
,p_query_column_id=>29
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'MSLCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39698622863296764)
,p_query_column_id=>30
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>33
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_column_width=>40
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39699012018296764)
,p_query_column_id=>31
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39699400351296764)
,p_query_column_id=>32
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39699810759296764)
,p_query_column_id=>33
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39700256554296765)
,p_query_column_id=>34
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39700590635296765)
,p_query_column_id=>35
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39701038382296765)
,p_query_column_id=>36
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COLORCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39701414219296765)
,p_query_column_id=>37
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>18
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST_FROM_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.CUSTNAME d, s.CUSTMRID',
'from nmmrkcus s',
'where s.compcode = :compcode',
'and nvl(s.CUSTMRID,''C'') = nvl(:P256_REF_CUSTOMER,nvl(s.CUSTMRID,''C''))'))
,p_lov_show_nulls=>'NO'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'CUSTMRID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(38368248316182553)
,p_query_column_id=>38
,p_column_alias=>'SLSOFRNO'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'SLSOFRNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39702611423296766)
,p_query_column_id=>39
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'NMSLSOFR'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39686249150296756)
,p_query_column_id=>40
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132034766144710061)
,p_plug_name=>'installment'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39680017829296751)
,p_button_sequence=>1080
,p_button_plug_id=>wwv_flow_api.id(131995146692710031)
,p_button_name=>'P256_SHOWHIDE'
,p_button_static_id=>'P56_SHOWHIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Showhide'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39667248608296743)
,p_button_sequence=>1370
,p_button_plug_id=>wwv_flow_api.id(131990490952710022)
,p_button_name=>'P256_ADDINSTALL'
,p_button_static_id=>'P56_ADDINSTALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Install'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39658334117296736)
,p_button_sequence=>1780
,p_button_plug_id=>wwv_flow_api.id(131977722267710008)
,p_button_name=>'P256_RUNREPORT'
,p_button_static_id=>'P56_RUNREPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Runreport'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_DOCNUMBR,P49_PROGNAME:&P256_DOCNUMBR49.,&P256_PROGNAME.'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39702988883296766)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(132004796948710037)
,p_button_name=>'ADD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Add Row'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39658752333296737)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(131977722267710008)
,p_button_name=>'SHOW_HIDE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Multiple Item Invoice'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39659119718296737)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(131977722267710008)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39659480679296737)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(131977722267710008)
,p_button_name=>'CREATE_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Another'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39659935759296737)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(131977722267710008)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'HELP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39703409792296767)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(132004796948710037)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'tabular Delete'
,p_button_position=>'LEFT_OF_TITLE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39665670389296741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(131965295252709998)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5004:&SESSION.::&DEBUG.:256::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39666102805296742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(131965295252709998)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P256_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39666489185296742)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(131965295252709998)
,p_button_name=>'CREATE_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_condition=>'P256_DOCNUMBR1'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39738814783296786)
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:5005::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(64081857760662427)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39739207739296787)
,p_branch_action=>'f?p=&APP_ID.:5005:&SESSION.::&DEBUG.:5005::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38368105459182552)
,p_name=>'P256_SLSOFRNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_offerno number;',
'begin',
'select max(nvl(SLSOFRNO,0))+1 into v_offerno from nmslsofr',
'where compcode=:compcode;',
'return v_offerno;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39646012302296728)
,p_name=>'P256_REGION'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39646360213296729)
,p_name=>'P256_COMPCODE'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_item_default=>'&COMPCODE.'
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39646848052296729)
,p_name=>'P256_OPRSTAMP'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Oprstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39647196880296729)
,p_name=>'P256_TIMSTAMP'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Timstamp'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39647655715296730)
,p_name=>'P256_DOCTTYPE'
,p_item_sequence=>1370
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Docttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39647964400296730)
,p_name=>'P256_SUBTTYPE'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39648443415296730)
,p_name=>'P256_SERLNUMB'
,p_item_sequence=>1390
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Serlnumb'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39648788408296730)
,p_name=>'P256_STATUSCD'
,p_item_sequence=>1400
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Statuscd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39649248450296730)
,p_name=>'P256_ITEMLONG_1'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Itemlong 1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39649647307296731)
,p_name=>'P256_MSFCAMNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Msfcamnt'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39649999143296731)
,p_name=>'P256_ROWID'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Rowid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39650429359296731)
,p_name=>'P256_DOCNUMBR1'
,p_item_sequence=>1480
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39650816748296731)
,p_name=>'P256_ITEMCODE1'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Itemcode1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39651253937296732)
,p_name=>'P256_COMPCODE_APPLICATION'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_item_default=>'&COMPCODE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39651608746296732)
,p_name=>'P256_DOCTDATE1'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Doctdate1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39652031029296732)
,p_name=>'P256_TABITEMTYPE'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabitemtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39652380968296732)
,p_name=>'P256_TABCOMMGRUP'
,p_item_sequence=>1590
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabcommgrup'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39652843805296733)
,p_name=>'P256_TABITEMSIZE'
,p_item_sequence=>1600
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabitemsize'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39653189007296733)
,p_name=>'P256_TABITMGRADE'
,p_item_sequence=>1610
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabitmgrade'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39653567991296733)
,p_name=>'P256_TABSIZEDESC'
,p_item_sequence=>1620
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabsizedesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39653976011296733)
,p_name=>'P256_TABGRADEDESC'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabgradedesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39654432783296734)
,p_name=>'P256_TABINMFGREF'
,p_item_sequence=>1640
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabinmfgref'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39654829569296734)
,p_name=>'P256_TABUSERCODE'
,p_item_sequence=>1650
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabusercode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39655253084296734)
,p_name=>'P256_TABULARITEMCODE'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabular Item'
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
 p_id=>wwv_flow_api.id(39655621762296734)
,p_name=>'P256_TABITEMDESC'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tabitemdesc'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39656021113296735)
,p_name=>'P256_TABCLOSINGBALANCE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39656363132296735)
,p_name=>'P256_TABITEMRATE'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39656793016296735)
,p_name=>'P256_TABITEMUNIT'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39657215160296735)
,p_name=>'P256_TABULARITEMCODE1'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabularitemcode1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39657623195296736)
,p_name=>'P256_TABSALRATE'
,p_item_sequence=>1810
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Tabsalrate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39660271460296737)
,p_name=>'P256_TRANTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_prompt=>'Quotation Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   naration d, trantype||subttype r',
'    FROM sydocmas',
'   WHERE compcode = :COMPCODE AND trantype = ''MQ''',
' AND MODLCODE = ''NM''',
'ORDER BY 2'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39660758693296738)
,p_name=>'P256_DOCNUMBR'
,p_item_sequence=>1450
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39661125911296738)
,p_name=>'P256_DOCTDATE'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39661482639296738)
,p_name=>'P256_PROGNAME'
,p_item_sequence=>1790
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_prompt=>'Progname'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39661910300296739)
,p_name=>'P256_DOCNUMBR49'
,p_item_sequence=>1800
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_prompt=>'Docnumbr49'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39662281611296739)
,p_name=>'P256_SALESTYPE'
,p_item_sequence=>1801
,p_item_plug_id=>wwv_flow_api.id(131977722267710008)
,p_item_default=>'CSH'
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_tag_attributes2=>'onkeypress="return tabE(this,event,''P56_TRANTYPE'')"'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39663025660296740)
,p_name=>'P256_ORDERNO'
,p_item_sequence=>970
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_prompt=>'Order No :'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT s.docnumbr||''-''||s.partycde||''-''||s.doctdate d,s.docnumbr r',
'           FROM nmslsofr s,',
'                (SELECT   compcode, updoctyp, upsubtyp, updocnum, itemcode,',
'                          SUM (apprqnty) apprqnty',
'                     FROM nmsalrec',
'                 GROUP BY compcode, updoctyp, upsubtyp, updocnum, itemcode) sls',
'          WHERE s.compcode = :compcode ',
'            AND s.docttype = :P256_REQREFTYPE',
'            AND s.subttype = :P256_REQSUBTYPE',
'            AND s.doctdate <= :P256_ORDERDATE',
'            AND s.compcode = sls.compcode(+)',
'            AND s.docnumbr = sls.updocnum(+)',
'            AND s.itemcode = sls.itemcode(+)',
'            AND s.apprqnty > NVL (sls.apprqnty, 0)',
'       ORDER BY 2 DESC'))
,p_lov_cascade_parent_items=>'P256_REQREFTYPE,P256_REQSUBTYPE,P256_ORDERDATE'
,p_ajax_items_to_submit=>'P256_REQREFTYPE,P256_REQSUBTYPE,P256_ORDERDATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_item_comment=>'onkeypress="return tabE(this,event,''P7_S_DOCNUM'')"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39663405657296740)
,p_name=>'P256_ORDERDATE'
,p_item_sequence=>980
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Order Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39663823554296740)
,p_name=>'P256_BOOKINGNO'
,p_item_sequence=>990
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_prompt=>'Booking No :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39664178517296740)
,p_name=>'P256_BOOKINGDT'
,p_item_sequence=>1000
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_prompt=>'Booking Date :'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39664652378296741)
,p_name=>'P256_REQREFTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_prompt=>'Reqreftype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39665008242296741)
,p_name=>'P256_REQSUBTYPE'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(131983629764710014)
,p_prompt=>'Reqsubtype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39667559507296743)
,p_name=>'P256_SALPRICE'
,p_item_sequence=>1240
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Sales Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39667973449296743)
,p_name=>'P256_CLOSINGBALANCE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'stock Qty.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>4
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39668413287296743)
,p_name=>'P256_INSTALLNO'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'No. of Install.'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39668777216296744)
,p_name=>'P256_QUENTITY'
,p_item_sequence=>1310
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISCPCNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39669170698296744)
,p_name=>'P256_AMOUNT'
,p_item_sequence=>1320
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39669606260296744)
,p_name=>'P256_INSTLLAMOUNT'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39669992338296744)
,p_name=>'P256_DISCPCNT'
,p_item_sequence=>1360
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Dis. %'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_DISAMOUNT'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39670419091296744)
,p_name=>'P256_DISAMOUNT'
,p_item_sequence=>1410
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Dis Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39670821134296745)
,p_name=>'P256_NETAMOUNT'
,p_item_sequence=>1420
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Net Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
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
 p_id=>wwv_flow_api.id(39671239806296745)
,p_name=>'P256_PERINSTALL'
,p_item_sequence=>1460
,p_item_plug_id=>wwv_flow_api.id(131990490952710022)
,p_prompt=>'Perinstall'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39671911305296746)
,p_name=>'P256_S_H_REGION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39672350836296746)
,p_name=>'P256_ITEMCODE'
,p_item_sequence=>1270
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_item_default=>':P256_TESTITEM'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Item Code'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode||''-''||itemdes2 d,a.itemcode r',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P256_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0'))
,p_lov_cascade_parent_items=>'P256_WARECODE'
,p_ajax_items_to_submit=>'P256_WARECODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_BATCHNUM'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39672661928296746)
,p_name=>'P256_ITEMDESC'
,p_item_sequence=>1280
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39673130358296746)
,p_name=>'P256_BATCHNUM'
,p_item_sequence=>1300
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT batchnum d,  batchnum r',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmwhimas w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P256_ITEMCODE',
'                      AND w.warecode = :P256_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                   HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC)'))
,p_lov_cascade_parent_items=>'P256_ITEMCODE,P256_WARECODE'
,p_ajax_items_to_submit=>'P256_ITEMCODE,P256_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P37_QUENTITY'')"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39673530238296747)
,p_name=>'P256_BRAND'
,p_item_sequence=>1330
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39673906101296747)
,p_name=>'P256_MODAL'
,p_item_sequence=>1340
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39674312951296747)
,p_name=>'P256_UNITOFMESURE'
,p_item_sequence=>1350
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Unit Of Mesurement'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39674718763296747)
,p_name=>'P256_ISSUMTHD'
,p_item_sequence=>1560
,p_item_plug_id=>wwv_flow_api.id(132001155122710034)
,p_prompt=>'Issumthd'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39675699515296749)
,p_name=>'P256_CUSTOMERID'
,p_item_sequence=>1040
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39676086125296749)
,p_name=>'P256_CUSTOMERNAME'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39676481936296749)
,p_name=>'P256_CUSADDRESS'
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39676894011296749)
,p_name=>'P256_AREACODE'
,p_item_sequence=>1065
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39677295390296750)
,p_name=>'P256_ZONE'
,p_item_sequence=>1070
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39677694998296750)
,p_name=>'P256_FILENO'
,p_item_sequence=>1080
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39678128736296750)
,p_name=>'P256_LASTPURCHASEDATE'
,p_item_sequence=>1090
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_prompt=>'Last Purchase Date'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39678536805296750)
,p_name=>'P256_LASTPRODUCT'
,p_item_sequence=>1100
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_prompt=>'Last Product'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39678859150296750)
,p_name=>'P256_LASTPURAMOUNT'
,p_item_sequence=>1110
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_prompt=>'Last Pur.  Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39679302864296751)
,p_name=>'P256_PARTYCODE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(131986502453710014)
,p_prompt=>'Party Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39680440766296752)
,p_name=>'P256_LEADTRCNO'
,p_item_sequence=>1015
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Tracking No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct '' Tracking No: ''||a.DOCNUMBR||'' Date: ''||a.DOCTDATE||'' Customer Id: ''||a.CUSTMRID||'' Itemcode: ''||a.ITEMCODE d,a.DOCNUMBR r from nmcusvlg a,nmslsofr b',
'where  a.DOCNUMBR NOT IN(select UPDOCNUM from nmslsofr',
'where UPDOCTYP=''CS''',
'and    UPSUBTYP=2)',
''))
,p_cSize=>25
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39680780900296752)
,p_name=>'P256_LEADTRCDT'
,p_item_sequence=>1016
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39681256841296752)
,p_name=>'P256_CUSTOMTYPE'
,p_item_sequence=>1030
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_item_default=>'COR'
,p_prompt=>'Customer Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width: 100%;"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct NMCODDES d,NMSOFCDE r from nmcodmas where NMSOFCDE in',
'(select distinct CUSTTYPE from nmcusmas)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''NM''',
'and NMHRDCDE=''CTY'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39681627129296752)
,p_name=>'P256_COSTCODE'
,p_item_sequence=>1170
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39682051047296753)
,p_name=>'P256_COSTCENTERNAME'
,p_item_sequence=>1180
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39682387553296753)
,p_name=>'P256_SALMANID'
,p_item_sequence=>1190
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39682844511296753)
,p_name=>'P256_WARECODE'
,p_item_sequence=>1250
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Ware Code'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39683175613296753)
,p_name=>'P256_TABULAR'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Tabular'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'onchange="calculateTotal3(this);"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39683614046296754)
,p_name=>'P256_ROWNUM'
,p_item_sequence=>1740
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Rownum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39684037993296754)
,p_name=>'P256_SALMANNAME'
,p_item_sequence=>1750
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39684438698296754)
,p_name=>'P256_CURRCODE'
,p_item_sequence=>1760
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Currcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39684808129296754)
,p_name=>'P256_EXCGRATE'
,p_item_sequence=>1770
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Excgrate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39685163650296754)
,p_name=>'P256_FACTRVAL'
,p_item_sequence=>1780
,p_item_plug_id=>wwv_flow_api.id(131995146692710031)
,p_prompt=>'Factrval'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39703823087296767)
,p_name=>'P256_TEST'
,p_item_sequence=>1820
,p_item_plug_id=>wwv_flow_api.id(132004796948710037)
,p_prompt=>'Test'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39708027947296769)
,p_name=>'P256_INSTALLAMOUNT'
,p_item_sequence=>1380
,p_item_plug_id=>wwv_flow_api.id(132034766144710061)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39709039300296771)
,p_name=>'P256_SALMANTYPE'
,p_item_sequence=>1160
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39805726008390932)
,p_name=>'P256_REF_DOCNUM'
,p_item_sequence=>1830
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Docnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39806045226390932)
,p_name=>'P256_REF_PRODUCT'
,p_item_sequence=>1840
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Product'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39806430263390932)
,p_name=>'P256_REF_CUSTOMER'
,p_item_sequence=>1850
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Customer'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39806765456390932)
,p_name=>'P256_REF_SMANCODE'
,p_item_sequence=>1860
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Smancode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39807211166390933)
,p_name=>'P256_REF_DOCNUMGEN'
,p_item_sequence=>1870
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Docnumgen'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39807628589390933)
,p_name=>'P256_REF_WARECODE'
,p_item_sequence=>1880
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Warecode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39807967178390933)
,p_name=>'P256_REF_PARTYCDE'
,p_item_sequence=>1890
,p_item_plug_id=>wwv_flow_api.id(131965295252709998)
,p_prompt=>'Ref Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39709482231296771)
,p_validation_name=>'P256_DOCTDATE'
,p_validation_sequence=>20
,p_validation=>'P256_DOCTDATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_associated_item=>wwv_flow_api.id(39661125911296738)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39709940911296771)
,p_validation_name=>'P256_CUSTOMERID'
,p_validation_sequence=>30
,p_validation=>'P256_CUSTOMERID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_associated_item=>wwv_flow_api.id(39675699515296749)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39710294846296771)
,p_validation_name=>'P256_COSTCODE'
,p_validation_sequence=>40
,p_validation=>'P256_COSTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_associated_item=>wwv_flow_api.id(39681627129296752)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39710677800296772)
,p_validation_name=>'P256_SALMANID'
,p_validation_sequence=>50
,p_validation=>'P256_SALMANID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_associated_item=>wwv_flow_api.id(39682387553296753)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39704288769296767)
,p_tabular_form_region_id=>wwv_flow_api.id(132004796948710037)
,p_validation_name=>'APPRQNTY'
,p_validation_sequence=>70
,p_validation=>'APPRQNTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'APPRQNTY'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39704732643296767)
,p_tabular_form_region_id=>wwv_flow_api.id(132004796948710037)
,p_validation_name=>'comparison salrate and itemrate'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f02.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f23 (i);',
'item := apex_application.g_f21 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ',
'            ||apex_application.g_f02.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_exec_cond_for_each_row=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39705064650296768)
,p_tabular_form_region_id=>wwv_flow_api.id(132004796948710037)
,p_validation_name=>'ITEMRATE'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   l_error   VARCHAR2 (4000);',
'sale VARCHAR2 (4000);',
'item VARCHAR2 (4000);',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f21.COUNT',
'   LOOP',
'    ',
'sale := apex_application.g_f23 (i);',
'item := apex_application.g_f21 (i);',
'if sale < item  then',
'l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Salerate cannot be less than itemrate''',
'            || sale',
'            ||''>'' ',
'            || item ',
'            ||apex_application.g_f21.COUNT;',
'end if;',
'   END LOOP;',
'',
'   RETURN LTRIM (l_error, ''</br>'');',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMRATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39705521369296768)
,p_tabular_form_region_id=>wwv_flow_api.id(132004796948710037)
,p_validation_name=>'ITEMCODE'
,p_validation_sequence=>100
,p_validation=>'ITEMCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(39666489185296742)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(39705888631296768)
,p_tabular_form_region_id=>wwv_flow_api.id(132004796948710037)
,p_validation_name=>'tabular field assign'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i IN 1 .. apex_application.g_f15.COUNT',
'LOOP',
'',
'apex_application.g_f17(i) := ''monir'';',
'',
'END LOOP;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_validation_condition_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'ITEMCODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39713053406296773)
,p_name=>'Change lead Tracking no'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_LEADTRCNO'
,p_condition_element=>'P256_LEADTRCNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39713534519296773)
,p_event_id=>wwv_flow_api.id(39713053406296773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select distinct CUSTMRID,SMANCODE,WARECODE,COSTCODE,DOCTDATE',
'into :P256_CUSTOMERID,:P256_SALMANID,:P256_COSTCODE,:P256_WARECODE,:P256_LEADTRCDT',
' from nmcusvlg',
'where DOCNUMBR=:P256_LEADTRCNO;',
'end;'))
,p_attribute_02=>'P256_LEADTRCNO'
,p_attribute_03=>'P256_CUSTOMERID,P256_SALMANID,P256_COSTCODE,P256_LEADTRCDT,P256_WARECODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39714042561296774)
,p_event_id=>wwv_flow_api.id(39713053406296773)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(132004796948710037)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39714379410296774)
,p_name=>'add row after refresh'
,p_event_sequence=>6
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(132004796948710037)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39714929016296774)
,p_event_id=>wwv_flow_api.id(39714379410296774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f15_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=5; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39715450482296774)
,p_event_id=>wwv_flow_api.id(39714379410296774)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f16"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f16"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f16"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f17"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f17"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f17"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f21"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f21"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f21"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f28"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f28"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f28"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f25"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f25"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f25"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
''))
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39715853017296774)
,p_name=>'change on customer id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_CUSTOMERID'
,p_condition_element=>'P256_CUSTOMERID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39716323395296775)
,p_event_id=>wwv_flow_api.id(39715853017296774)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_CUSTOMERID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT distinct r.PARTYAD1,r.PHONENUM,r.PEMAILID,r.PARTYCDE,r.PRTYNAME',
'into :P256_CUSADDRESS,:P256_AREACODE,:P256_ZONE,:P256_PARTYCODE,:P256_CUSTOMERNAME',
'  FROM nmcusvlg c, sycompty r',
' WHERE c.PARTYCD1 = r.PARTYCDE(+)',
'  AND c.compcode = r.compcode',
'       AND c.compcode = :compcode',
'and c.CUSTMRID=:P256_CUSTOMERID;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;'))
,p_attribute_02=>'P256_CUSTOMERID'
,p_attribute_03=>'P256_CUSADDRESS,P256_AREACODE,P256_ZONE,P256_PARTYCODE,P256_CUSTOMERNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39716816028296775)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_COSTCODE'
,p_condition_element=>'P256_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39717336666296775)
,p_event_id=>wwv_flow_api.id(39716816028296775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct  w.WAREDESC',
'into :P256_COSTCENTERNAME',
'FROM nmwhsmas w',
'where compcode = :compcode',
'AND WARECODE= :P256_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'',
''))
,p_attribute_02=>'P256_COSTCODE,P256_DOCNUMBR1,P256_DOCTDATE'
,p_attribute_03=>'P256_WARECODE,P256_COSTCENTERNAME,P256_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*BEGIN',
'IF :P5005_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P5005_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P5005_COSTCODE)',
'     AND costcode = :P5005_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'',
'BEGIN',
'IF :P5005_COSTCODE IS NOT NULL and :P5005_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P5005_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p5005_docnumbr1',
'         AND DOCTDATE = :P5005_DOCTDATE',
'         AND COSTCODE = :P5005_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'*/'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39717741532296776)
,p_name=>'change  on salmancode'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_SALMANID'
,p_condition_element=>'P256_SALMANID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39718240806296776)
,p_event_id=>wwv_flow_api.id(39717741532296776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_SALMANID IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.SMANNAME',
'into :P256_SALMANNAME',
'    FROM nmsmnmas  w',
'   WHERE w.compcode = :compcode',
'     AND w.SMANCODE =:P256_SALMANID ;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P256_SALMANID'
,p_attribute_03=>'P256_SALMANNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39718654591296776)
,p_name=>'change on itemcode'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_ITEMCODE'
,p_condition_element=>'P256_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39719077006296776)
,p_event_id=>wwv_flow_api.id(39718654591296776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT LUOMCODE,ITEMDES1,COMMGRUP,MODLCODE,ISSUMTHD',
'into :P256_UNITOFMESURE,:P256_ITEMDESC,:P256_BRAND,:P256_MODAL,:P256_ISSUMTHD',
'           FROM nmitemas ',
'          WHERE compcode = :compcode',
'            AND ITEMCODE = :P256_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct SALERATE',
'into :P256_SALPRICE ',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P256_ITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P256_ITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_ITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P256_CLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P256_WARECODE',
'            AND b.itemcode =:P256_ITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_ITEMCODE1 IS NOT NULL and :P256_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT  NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) ',
'into :P256_QUENTITY',
'       from    nmsalrec s,(SELECT   SUM (d.trnsqnty) trnsqnty, d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE',
'                     FROM nmdevrec d',
'                     group by d.updocnum,d.updoctyp,d.upsubtyp,d.ITEMCODE) e',
'                     WHERE s.docnumbr = :p256_docnumbr1 AND s.itemcode = :p256_itemcode1',
'     AND S.ITEMCODE=e.ITEMCODE',
'AND S.DOCNUMBR=e.UPDOCNUM',
'AND NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P256_ITEMCODE,P256_WARECODE,P256_ITEMCODE1,P256_DOCNUMBR1'
,p_attribute_03=>'P256_UNITOFMESURE,P256_ITEMDESC,P256_BRAND,P256_MODAL,P256_SALPRICE,P256_ISSUMTHD,P256_CLOSINGBALANCE,P256_QUENTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39719546080296776)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39719962524296777)
,p_event_id=>wwv_flow_api.id(39719546080296776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct PRDOCTYP,PRSUBTYP ',
'into :P256_REQREFTYPE,:P256_REQSUBTYPE',
'from nmwrkflw',
'where TRDOCTYP||TRSUBTYP=:P256_TRANTYPE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;'))
,p_attribute_02=>'P256_TRANTYPE'
,p_attribute_03=>'P256_REQREFTYPE,P256_REQSUBTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39720456433296777)
,p_name=>'installment amount'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67007262451595515)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39720938848296777)
,p_event_id=>wwv_flow_api.id(39720456433296777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P256_PERINSTALL:=(:P256_INSTLLAMOUNT/:P256_INSTALLNO);',
'end;'))
,p_attribute_02=>'P256_INSTLLAMOUNT,P256_INSTALLNO'
,p_attribute_03=>'P256_PERINSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39721432548296777)
,p_event_id=>wwv_flow_api.id(39720456433296777)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tt = window.document.getElementById(''P256_INSTALLNO'').value;',
' for(i=0;i<tt;i++)',
'{',
'var pp = ''f02_000''.concat(i+1);',
'javascript:apex.widget.tabular.addRow();',
'window.document.getElementById(pp).value = window.document.getElementById(''P256_PERINSTALL'').value;',
'',
'}'))
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pp = f02_000.concat(i);',
'',
'.concat(f02_000.concat(i)).concat('')'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39721786974296778)
,p_name=>'on change amount'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_QUENTITY'
,p_condition_element=>'P256_QUENTITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39722352342296778)
,p_event_id=>wwv_flow_api.id(39721786974296778)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P256_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39722858480296778)
,p_event_id=>wwv_flow_api.id(39721786974296778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/05 14:26 (Formatter Plus v4.8.8) */',
'BEGIN',
'   :p256_amount := :p256_salprice * :p256_quentity;',
'END;'))
,p_attribute_02=>'P256_SALPRICE,P256_QUENTITY'
,p_attribute_03=>'P256_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39723225260296778)
,p_name=>'on change discount percent'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_DISCPCNT'
,p_condition_element=>'P256_DISCPCNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39723723122296779)
,p_event_id=>wwv_flow_api.id(39723225260296778)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P256_DISAMOUNT:=(:P256_AMOUNT*:P256_DISCPCNT)/100;',
'end;'))
,p_attribute_02=>'P256_AMOUNT,P256_DISCPCNT'
,p_attribute_03=>'P256_DISAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39724114410296779)
,p_name=>'on change amount and disamount'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_AMOUNT,P256_DISCPCNT'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NOT_NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39724594026296779)
,p_event_id=>wwv_flow_api.id(39724114410296779)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P256_NETAMOUNT:=nvl(:P256_AMOUNT,0)-nvl(:P256_DISAMOUNT,0);',
'end;'))
,p_attribute_02=>'P256_AMOUNT,P256_DISAMOUNT'
,p_attribute_03=>'P256_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39725055239296779)
,p_name=>'query on page load'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39725555152296779)
,p_event_id=>wwv_flow_api.id(39725055239296779)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/06 17:44 (Formatter Plus v4.8.8) */',
'BEGIN',
'   IF      :p256_itemcode1 IS NOT NULL',
'and :P256_DOCNUMBR1 is not null',
'   THEN',
'      SELECT s.compcode, s.docttype, s.subttype, s.DOCNUMBR,s.doctdate,',
'             s.serlnumb, s.partycde, s.itemcode, s.smancode,',
'             s.commcode, s.itemdesc, s.itemlong,',
'             s.discpcnt, s.discamnt, s.salerate, s.custmrid,',
'             s.costcode, s.warecode, s.batchnum,s.MSFCAMNT',
'        INTO :p256_compcode, :p256_docttype, :p256_subttype,:P256_DOCNUMBR, :p256_doctdate,',
'             :p256_serlnumb, :p256_partycode, :p256_itemcode, :p256_salmanid,',
'             :p256_unitofmesure, :p256_itemdesc, :p256_itemlong_1,',
'             :p256_discpcnt, :p256_disamount, :p256_salprice, :p256_customerid,',
'             :p256_costcode, :p256_warecode, :p256_batchnum,:P256_NETAMOUNT',
'        FROM nmslsofr s',
'       WHERE s.docnumbr = :p256_docnumbr1 AND s.itemcode = :p256_itemcode1 and s.DOCTDATE=:P256_DOCTDATE1;',
'   END IF;',
'END;'))
,p_attribute_02=>'P256_DOCNUMBR1,P256_ITEMCODE1,P256_DOCTDATE1'
,p_attribute_03=>'P256_COMPCODE,P256_DOCTTYPE,P256_SUBTTYPE,P256_DOCNUMBR,P256_SERLNUMB,P256_PARTYCODE,P256_ITEMCODE,P256_SALMANID,P256_UNITOFMESURE,P256_ITEMDESC,P256_ITEMLONG_1,P256_DISCPCNT,P256_DISAMOUNT,P256_SALPRICE,P256_CUSTOMERID,P256_COSTCODE,P256_WARECODE,P2'
||'56_BATCHNUM,P256_NETAMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39725946853296780)
,p_name=>'change  on warecode'
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39726370955296780)
,p_event_id=>wwv_flow_api.id(39725946853296780)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_WARECODE IS NOT NULL and :P256_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT a.itemcode',
'into :P256_ITEMCODE ',
'           FROM nmsalrec a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''APR''',
'            AND a.itemcode = b.itemcode',
'            and a.DOCNUMBR=:P256_DOCNUMBR1',
'           -- AND NVL (a.finishgd, ''N'') = ''Y''',
'          AND b.warecode = :P256_WARECODE',
'           -- AND b.itemcode LIKE ''%'' || :3 || ''%''',
'            AND NVL (b.clbalqty, 0) > 0;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P256_DOCNUMBR1,P256_WARECODE'
,p_attribute_03=>'P256_ITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39726833640296780)
,p_name=>'change on batchnum'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39727314331296780)
,p_event_id=>wwv_flow_api.id(39726833640296780)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_ITEMCODE IS NOT NULL and :P256_DOCNUMBR is not null',
'   THEN',
'      BEGIN',
' SELECT  batchnum d',
'into :P256_BATCHNUM',
'           FROM (SELECT   b.batchnum',
'                     FROM nmbtrate b, nmsalrec w',
'                    WHERE b.compcode = :compcode',
'                      AND b.compcode = w.compcode',
'                      AND b.itemcode = w.itemcode',
'                      AND b.batchnum = w.batchnum',
'                      AND b.itemcode = :P256_ITEMCODE',
'                      AND w.warecode = :P256_WARECODE',
'                 GROUP BY b.batchnum,',
'                          b.batchdte,',
'                          b.itemrate,',
'                          b.costrate,',
'                          b.salerate',
'                 --  HAVING SUM (w.clbalqty) > 0',
'                 ORDER BY b.batchdte DESC);',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P256_ITEMCODE,P256_DOCNUMBR,P256_WARECODE'
,p_attribute_03=>'P256_BATCHNUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39727707497296781)
,p_name=>'change  on itemcode1'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_ITEMCODE1'
,p_condition_element=>'P256_ITEMCODE1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39728253381296781)
,p_event_id=>wwv_flow_api.id(39727707497296781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_ITEMCODE1 IS NOT NULL and :P256_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
' SELECT s.PAMTMODE,s.DOCTTYPE||s.SUBTTYPE',
'        INTO :P256_SALESTYPE,:P256_TRANTYPE',
'        FROM nmsalrec s',
'       WHERE s.docnumbr = :p256_docnumbr1 AND s.itemcode = :p256_itemcode1;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P256_DOCNUMBR1,P256_ITEMCODE1'
,p_attribute_03=>'P256_SALESTYPE,P256_TRANTYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39728560134296781)
,p_name=>'showhide stats'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(64783079482046798)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'parseInt(window.document.getElementById(''P256_S_H_REGION'').value) == 0'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39729062630296781)
,p_event_id=>wwv_flow_api.id(39728560134296781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.document.getElementById(''P256_S_H_REGION'').value = 1;',
'window.document.getElementById(''TR'').style.display="none";',
'window.document.getElementById(''IR'').style.display="block";',
'window.document.getElementById(''SR'').style.display="block";',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39729613732296782)
,p_event_id=>wwv_flow_api.id(39728560134296781)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if( parseInt(window.document.getElementById(''P256_S_H_REGION'').value) == 1)',
'{',
'window.document.getElementById(''TR'').style.display="block";',
'window.document.getElementById(''IR'').style.display="none";',
'window.document.getElementById(''SR'').style.display="none";',
'window.document.getElementById(''P256_S_H_REGION'').value = 0;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39730031207296782)
,p_name=>'show_hide'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_S_H_REGION'
,p_condition_element=>'P256_S_H_REGION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39730509886296782)
,p_event_id=>wwv_flow_api.id(39730031207296782)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(132004796948710037)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39731042191296782)
,p_event_id=>wwv_flow_api.id(39730031207296782)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(132001155122710034)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39731534738296783)
,p_event_id=>wwv_flow_api.id(39730031207296782)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(132004796948710037)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39732042006296783)
,p_event_id=>wwv_flow_api.id(39730031207296782)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(132001155122710034)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39732443749296783)
,p_name=>'add rows javascript'
,p_event_sequence=>170
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39732872155296783)
,p_event_id=>wwv_flow_api.id(39732443749296783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0003");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=5; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39733329548296783)
,p_name=>'disable  field on tabular item'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39733816071296784)
,p_event_id=>wwv_flow_api.id(39733329548296783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f16"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f16"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f16"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f17"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f17"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f17"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f28"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f28"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f28"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39734184846296784)
,p_name=>'on change tabular itemcode'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_TABULARITEMCODE'
,p_condition_element=>'P256_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39734749070296784)
,p_event_id=>wwv_flow_api.id(39734184846296784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT luomcode, itemdes1, itemtype,',
'                commgrup, usercode, inmfgref,',
'                 itemsize, itmgrade',
'           INTO :p256_tabitemunit, :p256_tabitemdesc, :p256_tabitemtype,',
'                :p256_tabcommgrup, :p256_tabusercode, :p256_tabinmfgref,',
'                :p256_tabitemsize, :p256_tabitmgrade',
'                ',
'           FROM nmitemas',
'          WHERE compcode = :compcode AND itemcode = :p256_tabularitemcode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
' SELECT DISTINCT i.sizedesc, i.gradedesc',
'          into :p256_tabsizedesc, :p256_tabgradedesc',
'           FROM vwnmitem i, nmpmodel p',
'          WHERE i.compcode = :compcode',
'            AND i.compcode = p.compcode(+)',
'            AND i.designcd = p.levlnumb(+)',
'            AND p.parntcde IS NULL',
'            AND i.itemcode <> ''OPENING''',
'           AND i.itemcode =:p256_tabularitemcode',
'            AND NVL (i.finishgd, ''N'') = ''Y''',
'            AND i.statuscd = ''ACT''',
'       ORDER BY i.itemcode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTRATE,SALERATE',
'into :P256_TABITEMRATE ,:P256_TABSALRATE',
'from nmbtrate ',
'where BATCHDTE=(select max(BATCHDTE) from nmbtrate',
'where COMPCODE=:compcode',
'and ITEMCODE=:P256_TABULARITEMCODE',
'group by ITEMCODE',
'having max(BATCHDTE)=max(BATCHDTE))',
'and COMPCODE=:compcode',
'and ITEMCODE=:P256_TABULARITEMCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            SELECT costrate',
'              into :P256_TABITEMRATE ',
'              FROM nmitemas',
'             WHERE compcode = :compcode AND itemcode = :P256_TABULARITEMCODE;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P256_TABULARITEMCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT  SUM (clbalqty) clsbln',
'into :P256_TABCLOSINGBALANCE',
'           FROM nmitemas a, nmwhimas b',
'          WHERE a.compcode = :compcode',
'            AND b.compcode = a.compcode',
'            AND a.statuscd = ''ACT''',
'            AND a.itemcode = b.itemcode',
'            AND NVL (a.finishgd, ''N'') = ''Y''',
'            AND b.warecode = :P256_WARECODE',
'            AND b.itemcode =:P256_TABULARITEMCODE',
'            AND NVL (b.clbalqty, 0) > 0',
'       GROUP BY a.itemcode, INITCAP (itemdes2), a.compcode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;'))
,p_attribute_02=>'P256_TABULARITEMCODE'
,p_attribute_03=>'P256_TABGRADEDESC,P256_TABUSERCODE,P256_TABINMFGREF,P256_TABITEMSIZE,P256_TABSIZEDESC,P256_TABITMGRADE,P256_TABITEMDESC,P256_TABCLOSINGBALANCE,P256_TABITEMRATE,P256_TABITEMUNIT,P256_TABITEMTYPE,P256_TABCOMMGRUP,P256_TABSALRATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39735120419296784)
,p_name=>'on page load for hide region default on tabular '
,p_event_sequence=>210
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39735589113296785)
,p_event_id=>wwv_flow_api.id(39735120419296784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P256_S_H_REGION:=1;',
'end;'))
,p_attribute_02=>'P256_S_H_REGION'
,p_attribute_03=>'P256_S_H_REGION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39736008622296785)
,p_name=>'validation on customer id'
,p_event_sequence=>220
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_CUSTOMERID,P256_COSTCODE,P256_SALMANID,P256_ITEMCODE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.da.testCondition( this.triggeringElement.id, ''NULL'' )'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39736463279296785)
,p_event_id=>wwv_flow_api.id(39736008622296785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( $v(''<P256_CUSTOMERID>'') ==='''' )',
'{',
'  alert(''Customer id cannot be blank'');',
'  $(''#P256_CUSTOMERID'').focus();',
'};',
'',
'if ( $v(''<P256_COSTCODE>'') ==='''' )',
'{',
'  alert(''Cost code cannot be blank'');',
'  $(''#P256_COSTCODE'').focus();',
'};',
'',
'if ( $v(''<P256_SALMANID>'') ==='''' )',
'{',
'  alert(''Salesman cannot be blank'');',
'  $(''#P256_SALMANID'').focus();',
'};',
'',
'if ( $v(''<P256_ITEMCODE>'') ==='''' )',
'{',
'  alert(''Itemcode cannot be blank'');',
'  $(''#P256_ITEMCODE'').focus();',
'};'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39736899736296785)
,p_name=>'change  on tabular itemcode'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_TABULARITEMCODE'
,p_condition_element=>'P256_TABULARITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39737441659296786)
,p_event_id=>wwv_flow_api.id(39736899736296785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P256_TABULARITEMCODE1 IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT DISTINCT ITEMCODE',
'           INTO :P256_TABULARITEMCODE',
'                ',
'           FROM nmitemas',
'          WHERE compcode = :compcode AND itemcode = :p256_tabularitemcode1;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;'))
,p_attribute_02=>'P256_TABULARITEMCODE1'
,p_attribute_03=>'P256_TABULARITEMCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39737829461296786)
,p_name=>'change on tabular item for super lov'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_TABULAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39738329871296786)
,p_event_id=>wwv_flow_api.id(39737829461296786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'input[name="f15"]'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39706206272296768)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(132004796948710037)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMSLSOFR'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39706604291296768)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(132004796948710037)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'nmslsofr'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39703409792296767)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39711022523296772)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'4'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39706861431296769)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(132004796948710037)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Process Insert  for multiple  tabular form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/12/02 16:46 (Formatter Plus v4.8.8) */',
'BEGIN',
'   INSERT INTO nmslsofr',
'               (compcode, docttype, subttype,',
'                docnumbr,',
'                doctdate,',
'                serlnumb, partycde, smancode, raisedby,',
'                apprvdby,',
'                apprdate,',
'                reqddate,',
'                commcode, itemcode, itemtype, itemdesc, itemlong,',
'                itemrate, markpcnt, discpcnt, discamnt, spldispc, spldisnt,',
'                salerate, huomcode, factrval, luomcode, orgnqnty,',
'                apprqnty, trnsqnty, msfcamnt, currcode, excgrate, mslcamnt,',
'                refnumbr, refndate, updoctyp, upsubtyp, updocnum, updocdte,',
'                updocsrl, remarkss, costcode, warecode, postflag, prntflag,',
'                pricflag, statuscd, oprstamp, timstamp, batchnum, bankname,',
'                colorcde, custmrid, termscod, costrate,',
'                slsofrno, itemsize, itmgrade, delvcond, ITEMRATP,',
'                ITRFDATE,PAMTMODE',
'               )',
'        VALUES (:p256_compcode_application, :p256_docttype, :p256_subttype,',
'                :p256_docnumbr,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :serlnumb, :p256_partycode, :p256_salmanid, :app_user,',
'                :app_user,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''),',
'                :commcode, :itemcode, :itemtype, :itemdesc, :itemdesc,',
'                :itemrate, NULL, :discpcnt, :discamnt, NULL, NULL,',
'                :salerate, :luomcode, :P256_FACTRVAL, :luomcode, :apprqnty,',
'                :apprqnty, NULL, :msfcamnt, :P256_CURRCODE, :P256_EXCGRATE, :msfcamnt,',
'                NULL, TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY''), NULL, NULL, NULL, NULL,',
'                NULL, :remarkss, :p256_costcode, :p256_warecode, NULL, NULL,',
'                NULL, ''NEW'', :app_user, SYSDATE, :batchnum, NULL,',
'                :colorcde, :p256_customerid, NULL, :salerate,',
'                apex_slsofr_seq.NEXTVAL, :itemsize, :itmgrade, :delvcond,:salerate,',
'                TO_DATE (TO_CHAR (SYSDATE, ''DD-MM-YYYY''), ''DD-MM-YYYY'')',
'               ,:P256_SALESTYPE',
'               );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_process_success_message=>'Record generate successfully<br>Sales Offer No. : &P256_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39711806924296772)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert in nmslsofr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vRow binary_integer;',
'v_docnum varchar2(50);',
'v_ofrnum number ;',
'BEGIN',
'',
'v_ofrnum:=0;',
'FOR i IN 1..apex_application.g_f14.COUNT LOOP',
'',
'select max(SLSOFRNO)+1 ',
'into v_ofrnum',
'from nmslsofr;',
'',
'        ',
'if apex_application.g_f23(i) is not null then    ',
'    INSERT INTO nmslsofr(COMPCODE, DOCTTYPE, SUBTTYPE, DOCNUMBR, DOCTDATE, ',
'                         SERLNUMB, PARTYCDE, SMANCODE, RAISEDBY, APPRVDBY,',
'                         APPRDATE, REQDDATE, COMMCODE, ITEMCODE, ITEMTYPE,',
'                         ITEMDESC, ITEMLONG, ITEMRATE, MARKPCNT, DISCPCNT,',
'                         DISCAMNT, SALERATE, HUOMCODE, FACTRVAL, LUOMCODE, ',
'                         ORGNQNTY, APPRQNTY, TRNSQNTY, MSFCAMNT, CURRCODE,',
'                         EXCGRATE, MSLCAMNT, REFNUMBR, REFNDATE, UPDOCTYP, ',
'                         UPSUBTYP, UPDOCNUM, UPDOCDTE, UPDOCSRL, REMARKSS, ',
'                         COSTCODE, WARECODE, STATUSCD, OPRSTAMP, TIMSTAMP, ',
'                         ACCTCODE, COSTRATE, CUSTMRID, COLORCDE, SLSOFRNO,',
'                         DISCTAMT, SOFNUMBR, DONUMBER, BATCHNUM,  PAMTMODE)',
'VALUES(:COMPCODE,:P256_DOCTTYPE,:P256_SUBTTYPE,:P256_DOCNUMBR,:P256_DOCTDATE,',
'''00001'',:P256_PARTYCODE,:P256_SALMANID,:APP_USER,:APP_USER,',
'NULL,NULL,APEX_APPLICATION.G_F12(i),APEX_APPLICATION.G_F14(i),''S'',',
'APEX_APPLICATION.G_F16(i),APEX_APPLICATION.G_F16(i),NULL,NULL,NULL,',
'NULL,NULL,APEX_APPLICATION.G_F18(i),NULL,APEX_APPLICATION.G_F18(i),',
'APEX_APPLICATION.G_F23(i),APEX_APPLICATION.G_F23(i),NULL,NULL,NULL,',
'NULL,NULL,NULL,NULL,APEX_APPLICATION.G_F04(i),',
'APEX_APPLICATION.G_F05(i),:P256_LEADTRCNO,:P256_LEADTRCDT,NULL,NULL,',
':P256_WARECODE,:P256_COSTCODE,''NEW'',:APP_USER,SYSDATE,',
'NULL,NULL,:P256_CUSTOMERID,NULL,v_ofrnum,',
'NULL,NULL,NULL,NULL,NULL);',
'end if;',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Sucessfully generate Quotation No : &P256_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39712591359296773)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update in nmslsofr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vRow binary_integer;',
'v_docnum varchar2(50);',
'v_ofrnum number ;',
'BEGIN',
'FOR i IN 1..apex_application.g_f14.COUNT LOOP',
' :P256_TEST:=',
'            :P256_TEST',
'         || CHR (10)',
'         || vRow',
'         || ''. ''',
'         ||apex_application.g_f23(i);',
'         if apex_application.g_f23(i) is not null then',
'update nmslsofr',
'set   ORGNQNTY=APEX_APPLICATION.G_F23(i),',
'       APPRQNTY=APEX_APPLICATION.G_F23(i)',
'where COMPCODE=:COMPCODE',
'and DOCNUMBR=:P256_DOCNUMBR',
'and DOCTDATE=:P256_DOCTDATE;',
'end if;',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39707306112296769)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(132004796948710037)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check duplicate item on tabular'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f15.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f15(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f15.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f15(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Itemcode cannot be duplicate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39711444171296772)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'comparison salerate and itemrate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'vAccNo1    VARCHAR2(1024);',
'vAccNo2    VARCHAR2(1024);',
'vAmount    NUMBER;',
'',
'BEGIN',
'--RAISE_APPLICATION_ERROR(-20010,''vAccNo1''  );',
'',
' FOR i IN 1 .. APEX_APPLICATION.g_f21.COUNT',
' LOOP',
'   vAccNo1  := APEX_APPLICATION.g_f21(i);',
'',
'  FOR j IN 1 .. APEX_APPLICATION.g_f23.COUNT',
'  LOOP',
'  BEGIN',
'    vAccNo2  := APEX_APPLICATION.g_f23(j);',
'    ',
'',
'    IF vAccNo1  = vAccNo2 ',
'    AND i <> j ',
'    THEN',
'      RAISE_APPLICATION_ERROR(-20010,''Salerate cannot be less than itemrate.''||vAccNo1  );',
'    END IF;',
'  END;',
'  END LOOP;',
' END LOOP; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39712166780296772)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(132004796948710037)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre_Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'newno varchar2(15);',
'docnum varchar2(500);',
'begin',
':COMPCODE:=:P256_COMPCODE_APPLICATION;',
':DOCTDATE:=SYSDATE;',
':SERLNUMB:=:SERLNUMB;',
':COMMCODE:=:LUOMCODE;',
':OPRSTAMP:=:APP_USER;',
':TIMSTAMP:=SYSDATE;',
':SLSOFRNO:=:P256_SLSOFRNO;',
'--:P256_TEST:=:P256_TRANTYPE;',
':DOCTTYPE:=''MQ'';--substr(:P256_TRANTYPE,1,2);',
':SUBTTYPE:=1;--substr(:P256_TRANTYPE,3,1);',
'docnumber_generation(:P256_COMPCODE_APPLICATION, ''NM'', ''MQ'',',
'                       1, to_date(to_char(sysdate,''DD-MM-YYYY''),''DD-MM-YYYY''),:P256_REF_WARECODE,',
'                        ''NM'', newno);',
' ',
':P256_DOCNUMBR:= newno; ',
'',
'exception',
'when no_data_found then',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,''Others Problem'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(39666489185296742)
);
wwv_flow_api.component_end;
end;
/
