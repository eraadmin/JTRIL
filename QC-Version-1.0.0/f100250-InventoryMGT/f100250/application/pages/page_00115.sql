prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Installment Sales Invoice'
,p_page_mode=>'MODAL'
,p_step_title=>'Installment Sales Invoice'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function createInstallment(pThis)',
'    {',
'        var $mydiv = $("#f07_0001");',
'        var j= document.getElementById(''P115_INSTALLMENT_NO'').value;',
'        var m = parseInt(document.getElementById("P115_PAYMENT_INTERVAL").value);',
'        var v= document.getElementById("P115_PAYMENT_START_DATE").value;',
'        var d = new Date(v);       ',
'        var k = 01; ',
'',
'        if ($mydiv.length){}',
'            else',
'            { for (i = 1; i <=j; i++)',
'                {',
'                    javascript:addRow(); ',
'                    if (i<=9)',
'                    {',
'                        html_GetElement(''f02_000''+k).value =i;',
'                        html_GetElement(''f03_000''+k).value =document.getElementById(''P115_COMPCODE'').value;',
'                        html_GetElement(''f04_000''+k).value = ''SI'';',
'                        html_GetElement(''f05_000''+k).value = document.getElementById(''P115_SUBTTYPE'').value; ',
'                        html_GetElement(''f06_000''+k).value = document.getElementById(''P115_DOCNUMBR'').value; ',
'                        html_GetElement(''f07_000''+k).value = document.getElementById(''P115_DOCTDATE'').value;',
'                        html_GetElement(''f08_000''+k).value = document.getElementById(''P115_PARTYCDE'').value;',
'                        html_GetElement(''f17_000''+k).value = document.getElementById(''P115_OPRSTAMP'').value;',
'                        html_GetElement(''f18_000''+k).value = document.getElementById(''P115_TIMSTAMP'').value;',
'                        html_GetElement(''f21_000''+k).value = i;',
'                        html_GetElement(''f25_000''+k).value = document.getElementById(''P115_INSTALLMENT_AMOUNT'').value;  ',
'                        html_GetElement(''f26_000''+k).value = document.getElementById(''P115_CURRCODE'').value;',
'                        html_GetElement(''f31_000''+k).value = d.toDateString();',
'                        d.setMonth(d.getMonth() + m);',
'                        k=k+1;',
'                    }',
'                   ',
'                   if (i>9)',
'                   { ',
'                        html_GetElement(''f02_00''+k).value = i;',
'                        html_GetElement(''f03_00''+k).value =document.getElementById(''P115_COMPCODE'').value;',
'                        html_GetElement(''f04_00''+k).value = ''SI'';',
'                        html_GetElement(''f05_00''+k).value = document.getElementById(''P115_SUBTTYPE'').value; ',
'                        html_GetElement(''f06_00''+k).value = document.getElementById(''P115_DOCNUMBR'').value; ',
'                        html_GetElement(''f07_00''+k).value = document.getElementById(''P115_DOCTDATE'').value;',
'                        html_GetElement(''f08_00''+k).value = document.getElementById(''P115_PARTYCDE'').value;',
'                        html_GetElement(''f17_00''+k).value = document.getElementById(''P115_OPRSTAMP'').value;',
'                        html_GetElement(''f18_00''+k).value = document.getElementById(''P115_TIMSTAMP'').value;',
'                        html_GetElement(''f21_00''+k).value = i;',
'                        html_GetElement(''f25_00''+k).value = document.getElementById(''P115_INSTALLMENT_AMOUNT'').value;  ',
'                        html_GetElement(''f26_00''+k).value = document.getElementById(''P115_CURRCODE'').value;',
'                        ',
'                        html_GetElement(''f31_00''+k).value = d.toDateString();',
'                        d.setMonth(d.getMonth() + m);',
'                        k=k+1;',
'                    }',
'                }          ',
'            }',
'     $(''#check-all-rows'').hide(); ',
'    }',
'',
'',
'',
'function count_checked ()',
'{',
'var j= document.getElementById(''P115_INSTALLMENT_NO'').value;',
'var counter = 0;',
'for (var i = 0; i < document.wwv_flow.f01.length; i++)',
'{',
'var curr_id = document.wwv_flow.f01[i].id;',
'',
'if ($x(curr_id).checked==true)',
'   {counter = counter + 1;}',
'}',
'    ',
'if (counter!=j)',
'{',
'    alert (''Please select all of the rows in Installment!'');',
'    return false;',
'}',
'',
'}',
'',
'function click_btn(pThis){',
'$(document).ready(function(){  $(''#P115_CLICK_FOR_SELECTOR_CHECK'').trigger(''click'');});',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {padding: 0px 0px !important;}',
'table.formlayout td {padding-bottom:0px !important;}',
'',
'',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}',
'.t-Form-label {',
'    padding: .0rem 0;',
'    line-height: 1.0rem;',
'    display: inline-block;',
'    -webkit-hyphens: auto;',
'    -moz-hyphens: auto;',
'    -ms-hyphens: auto;',
'    hyphens: auto;',
'    font-size: 1.2rem;',
'    margin-top: 0px;',
'}',
''))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'else { $(''#sb'').toggle(''show'');}'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43667985539293267)
,p_plug_name=>'Installment Sales Invoice'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43713587698293294)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(43667985539293267)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:block;float:left;width:100%;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>15
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
 p_id=>wwv_flow_api.id(43682818254293281)
,p_plug_name=>'Installment Basic Info'
,p_parent_plug_id=>wwv_flow_api.id(43713587698293294)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 357px;'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Installment Basic Info</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(43687597552293283)
,p_name=>'Installment Details'
,p_parent_plug_id=>wwv_flow_api.id(43713587698293294)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'SUB_REGIONS'
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
'"PARTYCDE",',
'"SMANCODE",',
'"COMMCODE",',
'"ITEMCODE",',
'"ITEMDESC",',
'"SALERATE",',
'"LUOMCODE",',
'"APPRQNTY",',
'"CURRCODE",',
'"REMARKSS",',
'"COSTCODE",',
'"WARECODE",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"VINNUMBR",',
'"NOFINSTL",',
'"PAYMDATE",',
'"DWPAYMNT",',
'"TOTINSMT",',
'"INSTLAMT",',
'"INVPEROD",',
'"PAYSDATE",',
'"PAYAMONT",',
'NULL "SDATE",',
'"INVCAMNT",',
'"INTRSTRT",',
'"INTRAMNT",',
'"STATUSCD"',
'from "#OWNER#"."NMDTLSLS"',
'WHERE "COMPCODE" =''X''',
''))
,p_header=>'Installment Details Info'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>12
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'Please Press CREATE INSTALLMENT Button.'
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
 p_id=>wwv_flow_api.id(43688041647293283)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43688405589293286)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43688778004293286)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43689240875293286)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43689582661293286)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43689989994293286)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Invoice#'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43690427238293286)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Doctdate'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43690837099293286)
,p_query_column_id=>8
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'SL#'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43691252071293286)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_column_heading=>'Partycde'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43691601262293286)
,p_query_column_id=>10
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Smancode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43692025586293286)
,p_query_column_id=>11
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Commcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43692368281293286)
,p_query_column_id=>12
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Itemcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43692820873293287)
,p_query_column_id=>13
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>13
,p_column_heading=>'Itemdesc'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43693178065293287)
,p_query_column_id=>14
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>14
,p_column_heading=>'Salerate'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43693653261293287)
,p_query_column_id=>15
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Luomcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43693975606293287)
,p_query_column_id=>16
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>16
,p_column_heading=>'Apprqnty'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43694423785293287)
,p_query_column_id=>17
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Currency'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43694865422293287)
,p_query_column_id=>18
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>30
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43695173637293287)
,p_query_column_id=>19
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>21
,p_column_heading=>'Costcode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43695607576293287)
,p_query_column_id=>20
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>17
,p_column_heading=>'Warecode'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43696054334293287)
,p_query_column_id=>21
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>18
,p_column_heading=>'Oprstamp'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43696387745293287)
,p_query_column_id=>22
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'Timstamp'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43696791081293287)
,p_query_column_id=>23
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>20
,p_column_heading=>'Vinnumbr'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'VINNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43697216871293287)
,p_query_column_id=>24
,p_column_alias=>'NOFINSTL'
,p_column_display_sequence=>22
,p_column_heading=>'Inst.#'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>2
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'NOFINSTL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43697579802293287)
,p_query_column_id=>25
,p_column_alias=>'PAYMDATE'
,p_column_display_sequence=>23
,p_column_heading=>'Paymdate'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYMDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43697982650293287)
,p_query_column_id=>26
,p_column_alias=>'DWPAYMNT'
,p_column_display_sequence=>24
,p_column_heading=>'Dwpaymnt'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DWPAYMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43698378574293289)
,p_query_column_id=>27
,p_column_alias=>'TOTINSMT'
,p_column_display_sequence=>25
,p_column_heading=>'Totinsmt'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'TOTINSMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43698802836293289)
,p_query_column_id=>28
,p_column_alias=>'INSTLAMT'
,p_column_display_sequence=>26
,p_column_heading=>'Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>11
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INSTLAMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43699223778293289)
,p_query_column_id=>29
,p_column_alias=>'INVPEROD'
,p_column_display_sequence=>28
,p_column_heading=>'Invperod'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INVPEROD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43699585788293289)
,p_query_column_id=>30
,p_column_alias=>'PAYSDATE'
,p_column_display_sequence=>29
,p_column_heading=>'Payment Schedule'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYSDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43700066496293289)
,p_query_column_id=>31
,p_column_alias=>'PAYAMONT'
,p_column_display_sequence=>31
,p_column_heading=>'Payamont'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>11
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYAMONT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43700392572293289)
,p_query_column_id=>32
,p_column_alias=>'SDATE'
,p_column_display_sequence=>32
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43701597657293289)
,p_query_column_id=>33
,p_column_alias=>'INVCAMNT'
,p_column_display_sequence=>33
,p_column_heading=>'Invcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43700806978293289)
,p_query_column_id=>34
,p_column_alias=>'INTRSTRT'
,p_column_display_sequence=>34
,p_column_heading=>'Intrstrt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(43701265599293289)
,p_query_column_id=>35
,p_column_alias=>'INTRAMNT'
,p_column_display_sequence=>35
,p_column_heading=>'Intramnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(87028508975025347)
,p_query_column_id=>36
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>36
,p_column_heading=>'Statuscd'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43716811285293295)
,p_plug_name=>'Booking Info'
,p_parent_plug_id=>wwv_flow_api.id(43713587698293294)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 357px;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Booking Info</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43721614253293297)
,p_plug_name=>'Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(43713587698293294)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 357px;'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Sales Info</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43726048461293298)
,p_plug_name=>'Item Details'
,p_parent_plug_id=>wwv_flow_api.id(43713587698293294)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height: 357px;'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Item Details</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43682437968293281)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>25
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43811312030741397)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>140
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P115_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P115_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43683600423293281)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(43682818254293281)
,p_button_name=>'P115_CREATE_INSTALLMENT'
,p_button_static_id=>'P86_CREATE_INSTALLMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Installment'
,p_button_position=>'BELOW_BOX'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43683191502293281)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(43682818254293281)
,p_button_name=>'P115_COLLECTION'
,p_button_static_id=>'P86_COLLECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Collection'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43702008903293289)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43687597552293283)
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
 p_id=>wwv_flow_api.id(43668458653293270)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43667985539293267)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P115_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43702433336293289)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43687597552293283)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43669624315293272)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(43667985539293267)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Create Invoice'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43670002302293272)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43667985539293267)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P115_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43702786683293289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(43687597552293283)
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
 p_id=>wwv_flow_api.id(43669260598293272)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(43682437968293281)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43668817507293270)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(43682437968293281)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'sb'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(43743899790293317)
,p_branch_name=>'go to installment 106'
,p_branch_action=>'f?p=&APP_ID.:106:&SESSION.::&DEBUG.::P106_INVOICE_NO,P106_SUBTYPE,P106_INVOICE_AMOUNT,P106_CURRENCY,P106_COMPCODE,P106_PARTYCDE,P106_DOCTDATE:&P86_DOCNUMBR.,&P86_SUBTTYPE.,&P86_MSLCAMNT.,&P86_CURRCODE.,&P86_COMPCODE.,&P86_CUSTMRID.,&P86_DOCTDATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(66743697507637205)
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43670401218293272)
,p_name=>'P115_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43670833151293273)
,p_name=>'P115_COMPCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Compcode'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43671245086293273)
,p_name=>'P115_DOCTTYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SI'
,p_prompt=>'Trasaction'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43671638381293273)
,p_name=>'P115_SERLNUMB'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Serlnumb'
,p_source=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43672018900293275)
,p_name=>'P115_REQDDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reqddate'
,p_source=>'REQDDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43672378461293275)
,p_name=>'P115_ITEMTYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemtype'
,p_source=>'ITEMTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43672787572293275)
,p_name=>'P115_ITEMLONG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemlong'
,p_source=>'ITEMLONG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>240
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43673253064293276)
,p_name=>'P115_ITEMRATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Itemrate'
,p_source=>'ITEMRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43673592067293276)
,p_name=>'P115_HUOMCODE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Huomcode'
,p_source=>'HUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674045461293276)
,p_name=>'P115_ORGNQNTY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Orgnqnty'
,p_source=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674370571293276)
,p_name=>'P115_TRNSQNTY'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trnsqnty'
,p_source=>'TRNSQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43674792705293276)
,p_name=>'P115_UPDOCTYP'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updoctyp'
,p_source=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>2
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43675234050293276)
,p_name=>'P115_STATUSCD'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_item_default=>'NEW'
,p_prompt=>'Status'
,p_source=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>37
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43675576019293276)
,p_name=>'P115_UPSUBTYP'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Upsubtyp'
,p_source=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43675973029293278)
,p_name=>'P115_UPDOCNUM'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocnum'
,p_source=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>8
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43676438218293278)
,p_name=>'P115_UPDOCDTE'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocdte'
,p_source=>'UPDOCDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43676785613293278)
,p_name=>'P115_UPDOCSRL'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updocsrl'
,p_source=>'UPDOCSRL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43677235864293278)
,p_name=>'P115_COSTCODE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Costcode'
,p_source=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43677641036293278)
,p_name=>'P115_POSTFLAG'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Postflag'
,p_source=>'POSTFLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>1
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678023856293278)
,p_name=>'P115_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Oprstamp'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678421004293279)
,p_name=>'P115_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Timstamp'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43678864487293279)
,p_name=>'P115_TRANTYPE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Trantype'
,p_source=>'TRANTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>3
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43679207865293279)
,p_name=>'P115_DELCCODE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delccode'
,p_source=>'DELCCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43679610290293279)
,p_name=>'P115_DELWCODE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delwcode'
,p_source=>'DELWCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43680064193293279)
,p_name=>'P115_MRNUMBER'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mrnumber'
,p_source=>'MRNUMBER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43680419094293279)
,p_name=>'P115_COSTRATE'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Costrate'
,p_source=>'COSTRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43680859198293279)
,p_name=>'P115_PAMTMODE'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pamtmode'
,p_source=>'PAMTMODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>5
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43681241022293279)
,p_name=>'P115_TOTDISAM'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Totdisam'
,p_source=>'TOTDISAM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43681571470293279)
,p_name=>'P115_TOTALSRV'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Totalsrv'
,p_source=>'TOTALSRV'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43682048103293281)
,p_name=>'P115_LIMITDAY'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(43667985539293267)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Limitday'
,p_source=>'LIMITDAY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43684011723293281)
,p_name=>'P115_DOWNPAYMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Down Payment'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43684453264293281)
,p_name=>'P115_REMAINING_INVOICE_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Remaining Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true '
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43684773186293283)
,p_name=>'P115_PAYMENT_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Payment Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_item_comment=>'onclick="count_checked ();"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43685196548293283)
,p_name=>'P115_PAYMENT_INTERVAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Payment Interval (Month)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43685636327293283)
,p_name=>'P115_ANNUAL_INTEREST_RATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Interest Rate (%)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43686040212293283)
,p_name=>'P115_INSTALLMENT_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Number of Installment'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43686380636293283)
,p_name=>'P115_INSTALLMENT_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Installment Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43686791458293283)
,p_name=>'P115_INTEREST_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_prompt=>'Interest Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#D8D8D8;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43687228396293283)
,p_name=>'P115_CLICK_FOR_SELECTOR_CHECK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(43682818254293281)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true onclick="count_checked ();" style="width:10px;background-color:#dbdbdb;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43714024391293294)
,p_name=>'P115_SUBTTYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Transaction Type</font>'
,p_post_element_text=>'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (Naration), TO_CHAR (Subttype)',
'  FROM Sydocmas',
' WHERE     Compcode = :COMPCODE',
'       AND Trantype = ''SI''',
'       AND Subttype IN (44, 45, 46)',
'       AND TRUNC (SYSDATE) BETWEEN TRUNC (Strtperd) AND TRUNC (Endperd)'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43714433076293294)
,p_name=>'P115_SMANCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>4
,p_cMaxlength=>6
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43714817351293294)
,p_name=>'P115_ENUDTL_DOCNUMBR'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_prompt=>'Enudtl Docnumbr'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43715173912293294)
,p_name=>'P115_PAYMODE'
,p_is_required=>true
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Cash;CSH,Credit;CRT'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'LEFT-TOP'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43715597552293294)
,p_name=>'P115_ENUDTL_SUBTYPE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_prompt=>'Enudtl Subtype'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43715997502293295)
,p_name=>'P115_SUBTYPE2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(43713587698293294)
,p_prompt=>'Subtype2'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43716380096293295)
,p_name=>'P115_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sales Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43717172512293295)
,p_name=>'P115_CUSTMRID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Customer ID</font>'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43717588898293295)
,p_name=>'P115_CUSTOMER_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_prompt=>'<font style=font-weight:normal;>Customer Name</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43718061814293295)
,p_name=>'P115_BOOKING_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_prompt=>'<font style=font-weight:normal;>Booking#</font>'
,p_post_element_text=>'   '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43718388266293295)
,p_name=>'P115_BOOKING_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_prompt=>'<font style=font-weight:normal;>Booking Date</font>'
,p_post_element_text=>'   '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43718844086293297)
,p_name=>'P115_APPRVDBY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Approved By'
,p_post_element_text=>'   '
,p_source=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'readonly=true '
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43719189076293297)
,p_name=>'P115_APPRDATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Approved on</font>'
,p_post_element_text=>'   '
,p_source=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(43719632670293297)
,p_name=>'P115_RAISEDBY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Booked By'
,p_post_element_text=>'   '
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'readonly=true '
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43719993672293297)
,p_name=>'P115_SALESMAN_NAME'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_prompt=>'<font style=font-weight:normal;>Salesman</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43720402908293297)
,p_name=>'P115_REFNUMBR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ref. No.'
,p_source=>'REFNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43720822360293297)
,p_name=>'P115_REFNDATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'REFNDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43721262449293297)
,p_name=>'P115_TERMSCOD'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(43716811285293295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Terms & Cond.</font>'
,p_source=>'TERMSCOD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43722037106293297)
,p_name=>'P115_DOCNUMBR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_prompt=>'Invoice No.'
,p_post_element_text=>'    '
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>8
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43722368964293297)
,p_name=>'P115_SALERATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Salerate</font>'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43722827958293297)
,p_name=>'P115_CURRCODE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Currency'
,p_source=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>3
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43723216438293297)
,p_name=>'P115_EXCGRATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate'
,p_source=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43723604072293297)
,p_name=>'P115_APPRQNTY'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Qnty'
,p_source=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43724048150293297)
,p_name=>'P115_LUOMCODE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43724373763293297)
,p_name=>'P115_DISCPCNT'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Discount</font>'
,p_post_element_text=>'&nbsp;'
,p_source=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43724794760293297)
,p_name=>'P115_DISCAMNT'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Dis. Amnt.</font>'
,p_source=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43725212561293298)
,p_name=>'P115_MSLCAMNT'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Total (Local)</font>'
,p_source=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>16
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43725584769293298)
,p_name=>'P115_MSFCAMNT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(43721614253293297)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Total (Foreign)</font>'
,p_source=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43726452804293298)
,p_name=>'P115_PARTYCDE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Party Code'
,p_source=>'PARTYCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43726826316293298)
,p_name=>'P115_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_prompt=>'<font style=font-weight:normal;>Item Code</font>'
,p_post_element_text=>'    '
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43727201435293298)
,p_name=>'P115_VINNUMBR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>VIN Number</font>'
,p_source=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43727587375293304)
,p_name=>'P115_ITEMDESC'
,p_item_sequence=>175
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Item Name</font>'
,p_source=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43727971438293304)
,p_name=>'P115_ENGINENO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_prompt=>'Engine No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width:266px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43728377981293304)
,p_name=>'P115_COMMCODE'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_prompt=>'Brand'
,p_source=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>3
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43728853404293304)
,p_name=>'P115_BRAND'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>28
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43729246561293304)
,p_name=>'P115_VHCLKYNO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_prompt=>'Vehicle No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="width:266px;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43729643595293306)
,p_name=>'P115_COLORCDE'
,p_item_sequence=>740
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color'
,p_source=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
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
 p_id=>wwv_flow_api.id(43729977984293306)
,p_name=>'P115_COLOR'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>28
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43730416380293306)
,p_name=>'P115_WARECODE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43730776235293306)
,p_name=>'P115_WAREHOUSE_NAME'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>28
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43731197344293306)
,p_name=>'P115_BATCHNUM'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Batch#'
,p_source=>'BATCHNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>35
,p_cMaxlength=>20
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43731614159293309)
,p_name=>'P115_REMARKSS'
,p_item_sequence=>1200
,p_item_plug_id=>wwv_flow_api.id(43726048461293298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Remarks</font>'
,p_source=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>180
,p_cHeight=>1
,p_tag_attributes=>'style="width:266px;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43811651192741400)
,p_name=>'P115_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(43811312030741397)
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
 p_id=>wwv_flow_api.id(43812026959741400)
,p_name=>'P115_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(43811312030741397)
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
 p_id=>wwv_flow_api.id(43812463265741400)
,p_name=>'P115_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(43811312030741397)
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
 p_id=>wwv_flow_api.id(84333134597851910)
,p_validation_name=>'P115_VINNUMBR'
,p_validation_sequence=>10
,p_validation=>'P115_VINNUMBR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(43668817507293270)
,p_associated_item=>wwv_flow_api.id(43727201435293298)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43737932727293314)
,p_name=>'calculate discount percent'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_DISCPCNT,P115_SALERATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43738373901293315)
,p_event_id=>wwv_flow_api.id(43737932727293314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_DISC_AMOUNT  NUMBER;',
'BEGIN',
'   IF :P115_LUOMCODE = ''BDT''',
'   THEN',
'      :P115_DISCAMNT := (:P115_APPRQNTY * :P115_SALERATE * NVL (:P115_DISCPCNT, 0)) / 100;',
'      :P115_MSLCAMNT := :P115_APPRQNTY * :P115_SALERATE - NVL (:P115_DISCAMNT, 0);',
'      :P115_MSFCAMNT := :P115_APPRQNTY * :P115_SALERATE - NVL (:P115_DISCAMNT, 0);',
'   ELSE',
'      :P115_DISCAMNT := (:P115_APPRQNTY * :P115_SALERATE * NVL (:P115_DISCPCNT, 0)) / 100;',
'      V_DISC_AMOUNT := NVL (:P115_DISCAMNT, 0) * :P115_EXCGRATE;',
'      :P115_MSLCAMNT := :P115_APPRQNTY * :P115_SALERATE * :P115_EXCGRATE - V_DISC_AMOUNT;',
'      :P115_MSFCAMNT := :P115_APPRQNTY * :P115_SALERATE - :P115_DISCAMNT;',
'   END IF;',
'END;'))
,p_attribute_02=>'P115_APPRQNTY,P115_SALERATE,P115_MSFCAMNT,P115_MSLCAMNT,P115_DISCPCNT,P115_EXCGRATE'
,p_attribute_03=>'P115_MSLCAMNT,P115_MSFCAMNT,P115_DISCAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      :P120_MSLCAMNT := :P120_APPRQNTY * :P120_SALERATE;',
'      :P120_MSFCAMNT := :P120_APPRQNTY * :P120_SALERATE;',
'      :P120_MSLCAMNT := :P120_APPRQNTY * :P120_SALERATE * :P120_EXCGRATE;',
'      :P120_MSFCAMNT := :P120_APPRQNTY * :P120_SALERATE;'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43738935087293315)
,p_event_id=>wwv_flow_api.id(43737932727293314)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P115_SALERATE,P115_DISCPCNT,P115_DISCAMNT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43737018558293314)
,p_name=>'calculate discount amount'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_DISCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43737472934293314)
,p_event_id=>wwv_flow_api.id(43737018558293314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_DISC_AMOUNT  NUMBER;',
'BEGIN',
'   IF :P115_LUOMCODE = ''BDT''',
'   THEN',
'      :P115_DISCPCNT := :P115_DISCAMNT/ (:P115_APPRQNTY * :P115_SALERATE) *100;',
'      :P115_MSLCAMNT := :P115_APPRQNTY * :P115_SALERATE - NVL (:P115_DISCAMNT, 0);',
'      :P115_MSFCAMNT := :P115_APPRQNTY * :P115_SALERATE - NVL (:P115_DISCAMNT, 0);',
'   ELSE',
'      :P115_DISCPCNT := :P115_DISCAMNT/ (:P115_APPRQNTY * :P115_SALERATE) *100;',
'      V_DISC_AMOUNT := NVL (:P115_DISCAMNT, 0) * :P115_EXCGRATE;',
'      :P115_MSLCAMNT := :P115_APPRQNTY * :P115_SALERATE * :P115_EXCGRATE - V_DISC_AMOUNT;',
'      :P115_MSFCAMNT := :P115_APPRQNTY * :P115_SALERATE - :P115_DISCAMNT;',
'   END IF;',
'END;'))
,p_attribute_02=>'P115_APPRQNTY,P115_SALERATE,P115_MSFCAMNT,P115_MSLCAMNT,P115_EXCGRATE,P115_DISCAMNT'
,p_attribute_03=>'P115_MSLCAMNT,P115_MSFCAMNT,P115_DISCPCNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      :P120_DISCPCNT := :P120_DISCAMNT/:P120_MSFCAMNT*100;',
'      :P120_DISCPCNT := :P120_DISCAMNT/:P120_MSFCAMNT*100;',
'      :P120_MSLCAMNT := :P120_APPRQNTY * :P120_SALERATE;',
'      :P120_MSFCAMNT := :P120_APPRQNTY * :P120_SALERATE;',
'',
'      :P120_MSLCAMNT := :P120_APPRQNTY * :P120_SALERATE * :P120_EXCGRATE;',
'      :P120_MSFCAMNT := :P120_APPRQNTY * :P120_SALERATE;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43734359571293311)
,p_name=>'set_subtype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43734813526293311)
,p_event_id=>wwv_flow_api.id(43734359571293311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P115_SUBTYPE2:=:P115_SUBTTYPE;',
'end;'))
,p_attribute_02=>'P115_SUBTTYPE'
,p_attribute_03=>'P115_SUBTYPE2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43735232876293314)
,p_name=>'create installment'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43683600423293281)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43735697635293314)
,p_event_id=>wwv_flow_api.id(43735232876293314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'createInstallment(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43741078136293317)
,p_name=>'calculate remaining amount'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_DOWNPAYMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43741605272293317)
,p_event_id=>wwv_flow_api.id(43741078136293317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P115_REMAINING_INVOICE_AMOUNT := :P115_MSLCAMNT-:P115_DOWNPAYMENT;'
,p_attribute_02=>'P115_MSLCAMNT,P115_DOWNPAYMENT'
,p_attribute_03=>'P115_REMAINING_INVOICE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43741985437293317)
,p_name=>'calculate interest amount'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_INSTALLMENT_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43742562525293317)
,p_event_id=>wwv_flow_api.id(43741985437293317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P115_INTEREST_AMOUNT :=',
'        round((NVL(:P115_ANNUAL_INTEREST_RATE,0) / 100 * :P115_REMAINING_INVOICE_AMOUNT',
'        )',
'      * (:P115_PAYMENT_INTERVAL * :P115_INSTALLMENT_NO)',
'      / 12,2);',
'   :P115_INSTALLMENT_AMOUNT := round(',
'        (  :P115_REMAINING_INVOICE_AMOUNT',
'         +   (NVL(:P115_ANNUAL_INTEREST_RATE,0) / 100 * :P115_REMAINING_INVOICE_AMOUNT',
'             )',
'           * (:P115_PAYMENT_INTERVAL * :P115_INSTALLMENT_NO)',
'           / 12',
'        )',
'      / :P115_INSTALLMENT_NO,2);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-200001, SQLERRM);',
'END;'))
,p_attribute_02=>'P115_ANNUAL_INTEREST_RATE,P115_REMAINING_INVOICE_AMOUNT,P115_PAYMENT_INTERVAL,P115_INSTALLMENT_NO,P115_REMAINING_INVOICE_AMOUNT'
,p_attribute_03=>'P115_INTEREST_AMOUNT,P115_INSTALLMENT_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'P86_ANNUAL_INTEREST_RATE,P86_REMAINING_INVOICE_AMOUNT,P86_PAYMENT_INTERVAL,P86_INSTALLMENT_NO,P86_REMAINING_INVOICE_AMOUNT',
'',
'',
'P86_INTEREST_AMOUNT,P86_INSTALLMENT_AMOUNT'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43742867220293317)
,p_name=>'populate preinsert of salrec'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P115_DOWNPAYMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43743446429293317)
,p_event_id=>wwv_flow_api.id(43742867220293317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'DECLARE',
'   newno    VARCHAR2 (10);',
'   docnum   VARCHAR2 (500);',
'BEGIN',
'   :P115_COMPCODE := :COMPCODE;',
'   :P115_OPRSTAMP := :APP_USER;',
'   :P115_TIMSTAMP := SYSDATE;',
'   :P115_SERLNUMB := ''000001'';',
'   :P115_ITEMTYPE := ''S'';',
'   :P115_ORGNQNTY := :P115_APPRQNTY;',
'   :P115_TRNSQNTY := :P115_APPRQNTY;',
'   :P115_UPDOCTYP := ''RC'';',
'   :P115_UPSUBTYP := :P115_ENUDTL_SUBTYPE;',
'   :P115_UPDOCNUM := :P115_ENUDTL_DOCNUMBR;',
'   :P115_REFNUMBR := :P115_BOOKING_NO || '' - '' || :P115_REFNUMBR;',
'   :P115_PARTYCDE := ''AZAD'';',
'docnumber_generation (:compcode,',
'                         ''NM'',',
'                         ''SI'',',
'                         :p115_subttype,',
'                         SYSDATE,',
'                         NULL,',
'                         ''NM'',',
'                         newno',
'                        );',
'   :P115_DOCNUMBR := newno;',
'   ',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P115_SUBTTYPE'
,p_attribute_03=>'P115_COMPCODE,P115_OPRSTAMP,P115_TIMSTAMP,P115_SERLNUMB,P115_ITEMTYPE,P115_ORGNQNTY,P115_TRNSQNTY,P115_UPDOCTYP,P115_UPSUBTYP,P115_UPDOCNUM,P115_REFNUMBR,P115_PARTYCDE,P115_DOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43740204912293315)
,p_name=>'create collection'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67427278729058849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43740747949293317)
,p_event_id=>wwv_flow_api.id(43740204912293315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_recnum   NUMBER := :p115_installment_no;',
'BEGIN',
'   IF NOT apex_collection.collection_exists (''INSTALLMENT_INFO'')',
'   THEN',
'      apex_collection.create_or_truncate_collection (''INSTALLMENT_INFO'');',
'   END IF;',
'',
'   FOR i IN 1 .. v_recnum',
'   LOOP',
'      apex_collection.add_member (p_collection_name      => ''INSTALLMENT_INFO'',',
'                                  p_c001                 => :compcode,',
'                                  p_c002                 => :p115_itemcode,',
'                                  p_c003                 => :p115_subttype,',
'                                  p_c004                 => :p115_doctdate,',
'                                  p_c005                 => :p115_docnumbr,',
'                                  p_c006                 => :p115_custmrid,',
'                                  p_c007                 => :p115_downpayment,',
'                                  p_c008                 => :p115_payment_interval,',
'                                  p_c009                 => :p115_annual_interest_rate,',
'                                  p_c010                 => :p115_installment_no,',
'                                  p_c011                 => :p115_installment_amount,',
'                                  p_c012                 => :p115_currcode,',
'                                  p_c013                 => :p115_interest_amount,',
'                                  p_c014                 => :p115_oprstamp,',
'                                  p_c015                 => :p115_timstamp,',
'                                  p_c016                 => :p115_salerate,',
'                                  p_c017                 => :p115_mslcamnt,',
'                                  p_c018                 => :p115_vinnumbr,',
'                                  p_c019                 => :p115_payment_start_date',
'                                 );',
'   END LOOP;',
'',
'  ',
'',
'END;'))
,p_attribute_02=>'P115_ANNUAL_INTEREST_RATE,P115_APPRDATE,P115_APPRQNTY,P115_APPRVDBY,P115_BATCHNUM,P115_BOOKING_DATE,P115_BOOKING_NO,P115_BRAND,P115_COLLECTION,P115_COLOR,P115_COMMCODE,P115_COMPCODE,P115_COSTCODE,P115_COSTRATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
' FOR j IN (SELECT ac.c001 com_code, ac.c002 item_code, ac.c003 sub_type,',
'                    ac.c004 doctdate, ac.c005 docnumbr, ac.c006 custmrid,',
'                    ac.c007 downpayment, ac.c008 payment_interval,',
'                    ac.c009 annual_interest_rate, ac.c010 installment_no,',
'                    ac.c011 installment_amount, ac.c012 currcode,',
'                    ac.c013 interest_amount, ac.c014 oprstamp,',
'                    ac.c015 timstamp, ac.c016 salerate, ac.c017 mslcamnt,',
'                    ac.c018 vinnumbr, ac.c019 payment_start_date',
'               FROM apex_collections ac',
'              WHERE ac.collection_name = ''INSTALLMENT_INFO'')',
'   LOOP',
'      INSERT INTO nmdtlsls',
'                  (compcode, docttype, subttype, docnumbr, doctdate,',
'                   serlnumb, partycde, raisedby, itemcode, salerate,',
'                   currcode, oprstamp, timstamp, vinnumbr, invcamnt,',
'                   intrstrt, intramnt,',
'                   invperod, nofinstl, instlamt, dwpaymnt,',
'                   totinsmt, paysdate',
'                  )',
'           VALUES (j.com_code, ''SI'', j.sub_type, j.docnumbr, j.doctdate,',
'                   j, custmrid, :app_user, j.itemcode, j.salerate,',
'                   j.currcode, :app_user, SYSDATE, j.vinnumbr, j.mslcamn,',
'                   j.annual_interest_rate, j.interest_amount,',
'                   j.payment_interval, j, installment_amount, j.downpayment,',
'                   installment_no, j.payment_start_date',
'                  );',
'      --j.payment_start_date := ADD_MONTHS (j.payment_start_date, j.payment_interval);',
'',
'   END LOOP;'))
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
 p_id=>wwv_flow_api.id(43736092888293314)
,p_name=>'click check selector'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(43668817507293270)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43736615686293314)
,p_event_id=>wwv_flow_api.id(43736092888293314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P115_CLICK_FOR_SELECTOR_CHECK'
,p_attribute_01=>'click_btn(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43739268829293315)
,p_name=>'hide submit button'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43739801913293315)
,p_event_id=>wwv_flow_api.id(43739268829293315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43732331127293309)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMSALREC'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'P115_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43713227936293294)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43687597552293283)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMDTLSLS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43668817507293270)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43712808842293294)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(43687597552293283)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMDTLSLS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43733952231293311)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMSALREC'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'P115_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43668817507293270)
,p_process_success_message=>'Saved Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43733523346293309)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   Dpr_nmpost_sales (:P115_compcode, ''SI'', :P97_subttype, :P115_docnumbr, :P115_doctdate);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Dpr_nmpost_sales ERROR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43669624315293272)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Dpr_nmpost_sales SUCCESS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43733118039293309)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update enudtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE NMENUDTL',
'   SET TRNSQNTY = :P115_APPRQNTY',
' WHERE COMPCODE = :COMPCODE',
'   AND ITEMCODE = :P115_ITEMCODE',
'   AND DOCNUMBR = :P115_ENUDTL_DOCNUMBR',
'   AND BOOKCODE = :P115_BOOKING_NO;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43669624315293272)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43732694581293309)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   newno    VARCHAR2 (10);',
'   docnum   VARCHAR2 (500);',
'BEGIN',
'   :p115_compcode := :compcode;',
'   :p115_oprstamp := :app_user;',
'   :p115_timstamp := SYSDATE;',
'   :p115_serlnumb := ''000001'';',
'   :p115_ITEMTYPE := ''S'';',
'   :p115_ORGNQNTY := :p115_APPRQNTY;',
'   :p115_TRNSQNTY := :p115_APPRQNTY;',
'   :p115_UPDOCTYP := ''RC'';',
'   :p115_UPSUBTYP := :P115_ENUDTL_SUBTYPE;',
'   :P115_UPDOCNUM := :P115_ENUDTL_DOCNUMBR;',
'   :P115_REFNUMBR := :P115_BOOKING_NO||'' - ''||:P115_REFNUMBR;',
'   :P115_PARTYCDE := :P115_PARTYCDE;',
'   docnumber_generation (:compcode, :modlcode, :P115_DOCTTYPE, :P115_SUBTTYPE, SYSDATE, NULL, :modlcode, newno);',
'   :P115_DOCNUMBR := newno;',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      raise_application_error (-20001, ''No data found'');',
'   WHEN TOO_MANY_ROWS',
'   THEN',
'      raise_application_error (-20001, ''Too many rows found'');',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43668817507293270)
,p_process_comment=>'raise_application_error (-20001, :P120_DOCTTYPE||''-''|| :P120_SUBTTYPE);'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43712002016293292)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(43687597552293283)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'preinsert NMDTLSLS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/05/14 11:16 (Formatter Plus v4.8.8) */',
'DECLARE',
'   newno    VARCHAR2 (10);',
'   docnum   VARCHAR2 (500);',
'BEGIN',
'   :COMPCODE := :COMPCODE;',
'   :OPRSTAMP := :APP_USER;',
'   :TIMSTAMP := SYSDATE;',
'   :ITEMTYPE := ''S'';',
'   :ORGNQNTY := :P115_APPRQNTY;',
'   :TRNSQNTY := :P115_APPRQNTY;',
'   :UPDOCTYP := ''BK'';',
'   :UPSUBTYP := 1;',
'   :UPDOCNUM := :P115_BOOKING_NO;',
'   :REFNUMBR := :P115_BOOKING_NO || '' - '' || :P115_REFNUMBR;',
'   :PARTYCDE := ''1'';--:P115_CUSTMRID;',
'   :DOCNUMBR := :P115_DOCNUMBR;',
'   :DOCTDATE := :P115_DOCTDATE;',
'   :DOCTTYPE := ''SI'';',
'   :SUBTTYPE := :P115_SUBTTYPE;',
'   :INVPEROD := :P115_PAYMENT_INTERVAL;',
'   :INVCAMNT := :P115_MSLCAMNT;',
'   :INTRSTRT := :P115_ANNUAL_INTEREST_RATE;',
'   :INTRAMNT := :P115_INTEREST_AMOUNT;',
'   :INSTLAMT := :P115_INSTALLMENT_AMOUNT;',
'   :TOTINSMT := :P115_INSTALLMENT_NO;',
'   :DWPAYMNT := :P115_DOWNPAYMENT;',
'   :STATUSCD := ''NEW'';',
'   :ITEMCODE := :P115_ITEMCODE;',
'   :ITEMDESC := :P115_ITEMDESC;',
':PAYSDATE:=sysdate;',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
' raise_application_error(-200001,sqlerrm);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'sqlerrm'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(66743697507637205)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
,p_only_for_changed_rows=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43712398783293294)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(43687597552293283)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pays date conversion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
':PAYSDATE:=TO_DATE(:SDATE,''Dy Mon dd YYYY'');',
':INVCAMNT:=:P115_MSLCAMNT;',
':INTRSTRT:=:P115_ANNUAL_INTEREST_RATE;',
':INTRAMNT:=:P115_INTEREST_AMOUNT;',
':INVPEROD:=:P115_PAYMENT_INTERVAL;',
':DWPAYMNT:=:P115_DOWNPAYMENT;',
':TOTINSMT:=:P115_INSTALLMENT_NO;',
':VINNUMBR:=:P115_VINNUMBR;',
':ITEMCODE:=:P115_ITEMCODE;',
':DOCNUMBR:=:P115_DOCNUMBR;',
':PARTYCDE:=:P115_PARTYCDE;',
':STATUSCD:=''NEW'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43668817507293270)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
