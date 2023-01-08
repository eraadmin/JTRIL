prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Invoice and installment Generate for Installment Sales'
,p_page_mode=>'MODAL'
,p_step_title=>'Invoice and installment Generate for Installment Sales'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'$(document).ready(function() {',
'$(''input,select'').keydown( function(e) {',
'        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;',
'        if(key == 13) {',
'            e.preventDefault();',
'            var inputs = $(this).closest(''form'').find('':input:enabled:visible:not(:button):not([type="radio"]):not([readonly="readonly"])'');',
'            var NxtKey = 1;',
'inputs.eq( inputs.index(this)+NxtKey).focus();',
'        }',
'    });',
'});',
'function createInstallment(pThis)',
'    {',
'        var $mydiv = $("#f07_0001");',
'        var j= document.getElementById(''P149_INSTALLMENT_NO'').value;',
'        var m = parseInt(document.getElementById("P149_PAYMENT_INTERVAL").value);',
'        var v= document.getElementById("P149_PAYMENT_START_DATE").value;',
'        var d = new Date(v);       ',
'        var k = 01;',
'        var v_closing_bal = 0;',
'        var v_opening =parseInt(document.getElementById(''P149_REMAINING_INVOICE_AMOUNT'').value);',
'        var v_count=0;',
'        ',
'        if ($mydiv.length){}',
'            else',
'            { for (i = 1; i <=j; i++)',
'               ',
'                {',
'                    ',
'                    javascript:addRow();',
'                    ',
'                    if (i<=9)',
'                    {  ',
'                        ',
'                        html_GetElement(''f02_000''+k).value =i;',
'                        html_GetElement(''f03_000''+k).value =document.getElementById(''P149_COMPCODE'').value;',
'                        html_GetElement(''f04_000''+k).value = ''SI'';',
'                        html_GetElement(''f05_000''+k).value = document.getElementById(''P149_SUBTTYPE'').value; ',
'                        html_GetElement(''f06_000''+k).value = document.getElementById(''P149_DOCNUMBR'').value; ',
'                        html_GetElement(''f07_000''+k).value = document.getElementById(''P149_DOCTDATE'').value;',
'                        html_GetElement(''f08_000''+k).value = document.getElementById(''P149_PARTYCDE'').value;',
'                        html_GetElement(''f17_000''+k).value = document.getElementById(''P149_OPRSTAMP'').value;',
'                        html_GetElement(''f18_000''+k).value = document.getElementById(''P149_TIMSTAMP'').value;',
'                        html_GetElement(''f21_000''+k).value = i;',
'                        html_GetElement(''f35_000''+k).value = Number(document.getElementById(''P149_INSTALLMENT_AMOUNT'').value).toFixed(2); ',
'                        html_GetElement(''f26_000''+k).value = document.getElementById(''P149_CURRCODE'').value;',
'                        html_GetElement(''f23_000''+k).value = d.toDateString();',
'                        html_GetElement(''f29_000''+k).value = Number(document.getElementById(''P149_REMAINING_INVOICE_AMOUNT'').value/j).toFixed(2);',
'                       ',
'                       if (k == 01) {',
'                           html_GetElement(''f27_000''+k).value = Number(v_opening).toFixed(2);',
'                       }',
'                        else{',
'                          html_GetElement(''f27_000''+k).value = Number(v_opening-html_GetElement(''f29_000''+k).value).toFixed(2);   ',
'                        v_opening=html_GetElement(''f27_000''+k).value ;  ',
'                        }',
'                        ',
'                        html_GetElement(''f32_000''+k).value = Number(html_GetElement(''f29_000''+k).value * document.getElementById(''P149_ANNUAL_INTEREST_RATE'').value/100).toFixed(2);',
'                        html_GetElement(''f38_000''+k).value = Number(html_GetElement(''f27_000''+k).value-html_GetElement(''f29_000''+k).value).toFixed(2);',
'                        d.setMonth(d.getMonth() + m);',
'                        k=k+1;',
'                        ',
'                    }',
'                   ',
'                   if (i>9)',
'                   {    ',
'                        html_GetElement(''f02_00''+k).value = i;',
'                        html_GetElement(''f03_00''+k).value =document.getElementById(''P149_COMPCODE'').value;',
'                        html_GetElement(''f04_00''+k).value = ''SI'';',
'                        html_GetElement(''f05_00''+k).value = document.getElementById(''P149_SUBTTYPE'').value; ',
'                        html_GetElement(''f06_00''+k).value = document.getElementById(''P149_DOCNUMBR'').value; ',
'                        html_GetElement(''f07_00''+k).value = document.getElementById(''P149_DOCTDATE'').value;',
'                        html_GetElement(''f08_00''+k).value = document.getElementById(''P149_PARTYCDE'').value;',
'                        html_GetElement(''f17_00''+k).value = document.getElementById(''P149_OPRSTAMP'').value;',
'                        html_GetElement(''f18_00''+k).value = document.getElementById(''P149_TIMSTAMP'').value;',
'                        html_GetElement(''f21_00''+k).value = i;',
'                        html_GetElement(''f35_00''+k).value = Number(document.getElementById(''P149_INSTALLMENT_AMOUNT'').value).toFixed(2);',
'                        html_GetElement(''f26_00''+k).value = document.getElementById(''P149_CURRCODE'').value;',
'                        html_GetElement(''f23_00''+k).value = d.toDateString();',
'                        html_GetElement(''f29_00''+k).value = Number(document.getElementById(''P149_REMAINING_INVOICE_AMOUNT'').value/j).toFixed(2); ',
'                       ',
'                        html_GetElement(''f27_00''+k).value= Number(v_opening-html_GetElement(''f29_00''+k).value).toFixed(2);   ',
'                        v_opening=html_GetElement(''f27_00''+k).value ;',
'                       ',
'                       if (k == j) {',
'                           html_GetElement(''f29_00''+k).value = Number(html_GetElement(''f27_00''+k).value).toFixed(2);',
'                       }',
'                        ',
'                        html_GetElement(''f32_00''+k).value = Number(html_GetElement(''f29_00''+k).value * document.getElementById(''P149_ANNUAL_INTEREST_RATE'').value/100).toFixed(2);',
'                        html_GetElement(''f38_00''+k).value = Number(html_GetElement(''f27_00''+k).value-html_GetElement(''f29_00''+k).value).toFixed(2);',
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
'var j= document.getElementById(''P149_INSTALLMENT_NO'').value;',
'var counter = 0;',
'',
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
'$(document).ready(function(){  $(''#P149_CLICK_FOR_SELECTOR_CHECK'').trigger(''click'');});',
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
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'else { $(''#sb'').toggle(''show'');}'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170801160644'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92055125572563841)
,p_plug_name=>'Sales Details'
,p_parent_plug_id=>wwv_flow_api.id(92041972315563807)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
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
 p_id=>wwv_flow_api.id(92057952904563843)
,p_plug_name=>'Installment Basic Info'
,p_parent_plug_id=>wwv_flow_api.id(92055125572563841)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>65
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Lease and Credit</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(92062283346563846)
,p_name=>'Installment Details'
,p_parent_plug_id=>wwv_flow_api.id(92055125572563841)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
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
'"STATUSCD",',
'"PRINCIPAL_AMT",',
'"INTEREST_AMT",',
'"OPENING_BALANCE",',
'"CLOSING_BALANCE",',
'"CUSTMRID",',
'"MSLCAMNT",',
'"ITEMRATE",',
'"DISCPCNT",',
'"DISCAMNT",',
'"ORGNQNTY",',
'"TRNSQNTY",',
'"MSFCAMNT",',
'"BATCHNUM",',
'"LOAN_AMOUNT",',
'"SCHEDULE_NO",',
'"SCHEDULE_DATE"',
'from "#OWNER#"."NMDTLSLS"',
'WHERE "COMPCODE" =''X''',
''))
,p_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Installment Details Info</span>'
,p_lazy_loading=>false
,p_query_num_rows=>12
,p_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(92063144482563849)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92063558038563849)
,p_query_column_id=>2
,p_column_alias=>'ROWID'
,p_column_display_sequence=>2
,p_column_heading=>'Rowid'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92063963667563849)
,p_query_column_id=>3
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Compcode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92064339380563849)
,p_query_column_id=>4
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>5
,p_column_heading=>'Docttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92064731031563849)
,p_query_column_id=>5
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>6
,p_column_heading=>'Subttype'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>16
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92065151081563852)
,p_query_column_id=>6
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>7
,p_column_heading=>'Invoice No.'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92065487206563852)
,p_query_column_id=>7
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>8
,p_column_heading=>'Doctdate'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92065889924563852)
,p_query_column_id=>8
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>3
,p_column_heading=>'SL#'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>1
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92066363876563852)
,p_query_column_id=>9
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>9
,p_column_heading=>'Partycde'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92066727699563852)
,p_query_column_id=>10
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>10
,p_column_heading=>'Smancode'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92067115501563852)
,p_query_column_id=>11
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>11
,p_column_heading=>'Commcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COMMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92067518116563852)
,p_query_column_id=>12
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>12
,p_column_heading=>'Itemcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92067954300563852)
,p_query_column_id=>13
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>13
,p_column_heading=>'Itemdesc'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92068272845563854)
,p_query_column_id=>14
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>14
,p_column_heading=>'Salerate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'SALERATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92068690528563854)
,p_query_column_id=>15
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Luomcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'LUOMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92069149076563854)
,p_query_column_id=>16
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>16
,p_column_heading=>'Apprqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'APPRQNTY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92069543233563854)
,p_query_column_id=>17
,p_column_alias=>'CURRCODE'
,p_column_display_sequence=>27
,p_column_heading=>'Currency'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'CURRCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92069942604563854)
,p_query_column_id=>18
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>32
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92070292658563854)
,p_query_column_id=>19
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>21
,p_column_heading=>'Costcode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92070679323563854)
,p_query_column_id=>20
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>17
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92071165567563854)
,p_query_column_id=>21
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>18
,p_column_heading=>'Oprstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92071471229563854)
,p_query_column_id=>22
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>19
,p_column_heading=>'Timstamp'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92071896857563854)
,p_query_column_id=>23
,p_column_alias=>'VINNUMBR'
,p_column_display_sequence=>20
,p_column_heading=>'Vinnumbr'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'VINNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92072274881563854)
,p_query_column_id=>24
,p_column_alias=>'NOFINSTL'
,p_column_display_sequence=>22
,p_column_heading=>'Installment No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>15
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'NOFINSTL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92072731999563868)
,p_query_column_id=>25
,p_column_alias=>'PAYMDATE'
,p_column_display_sequence=>23
,p_column_heading=>'Paymdate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'YES'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYMDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92073094869563868)
,p_query_column_id=>26
,p_column_alias=>'DWPAYMNT'
,p_column_display_sequence=>25
,p_column_heading=>'Dwpaymnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'DWPAYMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92073484461563868)
,p_query_column_id=>27
,p_column_alias=>'TOTINSMT'
,p_column_display_sequence=>26
,p_column_heading=>'Totinsmt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'TOTINSMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92073924687563868)
,p_query_column_id=>28
,p_column_alias=>'INSTLAMT'
,p_column_display_sequence=>36
,p_column_heading=>'EMI Amount'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>11
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INSTLAMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92074283140563868)
,p_query_column_id=>29
,p_column_alias=>'INVPEROD'
,p_column_display_sequence=>29
,p_column_heading=>'Invperod'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>16
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INVPEROD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92074746856563868)
,p_query_column_id=>30
,p_column_alias=>'PAYSDATE'
,p_column_display_sequence=>31
,p_column_heading=>'Payment Schedule'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'DATE_PICKER'
,p_lov_show_nulls=>'NO'
,p_column_width=>12
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYSDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92075166053563868)
,p_query_column_id=>31
,p_column_alias=>'PAYAMONT'
,p_column_display_sequence=>34
,p_column_heading=>'Payamont'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_column_width=>11
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PAYAMONT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92075561772563869)
,p_query_column_id=>32
,p_column_alias=>'SDATE'
,p_column_display_sequence=>24
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92075894185563869)
,p_query_column_id=>33
,p_column_alias=>'INVCAMNT'
,p_column_display_sequence=>35
,p_column_heading=>'Invcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INVCAMNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92076335680563869)
,p_query_column_id=>34
,p_column_alias=>'INTRSTRT'
,p_column_display_sequence=>37
,p_column_heading=>'Intrstrt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'INVCAMNT'
,p_ref_column_name=>'INTRSTRT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92062764598563849)
,p_query_column_id=>35
,p_column_alias=>'INTRAMNT'
,p_column_display_sequence=>38
,p_column_heading=>'Intramnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92076716287563869)
,p_query_column_id=>36
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>52
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92515522010465905)
,p_query_column_id=>37
,p_column_alias=>'PRINCIPAL_AMT'
,p_column_display_sequence=>30
,p_column_heading=>'Principal Amt'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'PRINCIPAL_AMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92515962680465912)
,p_query_column_id=>38
,p_column_alias=>'INTEREST_AMT'
,p_column_display_sequence=>33
,p_column_heading=>'Interest Amt'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>20
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'INTEREST_AMT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92516280501465913)
,p_query_column_id=>39
,p_column_alias=>'OPENING_BALANCE'
,p_column_display_sequence=>28
,p_column_heading=>'Opening Balance'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>25
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'OPENING_BALANCE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92516736328465913)
,p_query_column_id=>40
,p_column_alias=>'CLOSING_BALANCE'
,p_column_display_sequence=>39
,p_column_heading=>'Closing Balance'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_width=>25
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMDTLSLS'
,p_ref_column_name=>'CLOSING_BALANCE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92742780029484728)
,p_query_column_id=>41
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>40
,p_column_heading=>'Custmrid'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(92743218472484728)
,p_query_column_id=>42
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>41
,p_column_heading=>'Mslcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94375254536923330)
,p_query_column_id=>43
,p_column_alias=>'ITEMRATE'
,p_column_display_sequence=>42
,p_column_heading=>'Itemrate'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94375650518923333)
,p_query_column_id=>44
,p_column_alias=>'DISCPCNT'
,p_column_display_sequence=>43
,p_column_heading=>'Discpcnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94376009950923335)
,p_query_column_id=>45
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>44
,p_column_heading=>'Discamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94376436880923335)
,p_query_column_id=>46
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>45
,p_column_heading=>'Orgnqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94376817164923335)
,p_query_column_id=>47
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>46
,p_column_heading=>'Trnsqnty'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94377204971923335)
,p_query_column_id=>48
,p_column_alias=>'MSFCAMNT'
,p_column_display_sequence=>47
,p_column_heading=>'Msfcamnt'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
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
 p_id=>wwv_flow_api.id(94377601984923335)
,p_query_column_id=>49
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>48
,p_column_heading=>'Batchnum'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94377996262923335)
,p_query_column_id=>50
,p_column_alias=>'LOAN_AMOUNT'
,p_column_display_sequence=>49
,p_column_heading=>'Loan Amount'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94378413335923335)
,p_query_column_id=>51
,p_column_alias=>'SCHEDULE_NO'
,p_column_display_sequence=>50
,p_column_heading=>'Schedule No'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(94378794138923335)
,p_query_column_id=>52
,p_column_alias=>'SCHEDULE_DATE'
,p_column_display_sequence=>51
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92079886709563876)
,p_plug_name=>'Booking Info'
,p_parent_plug_id=>wwv_flow_api.id(92055125572563841)
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
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Booking Info</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92083903951563880)
,p_plug_name=>'Sales Information'
,p_parent_plug_id=>wwv_flow_api.id(92055125572563841)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>55
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Sales Information</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92089958846563904)
,p_plug_name=>'Product Procurement'
,p_parent_plug_id=>wwv_flow_api.id(92055125572563841)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>'<span style="font-size:12px;font-weight:bold;color:green;">Product Procurement</span>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(92101902453563916)
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
 p_id=>wwv_flow_api.id(92103910528563921)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>140
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P149_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P149_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92103528708563921)
,p_button_sequence=>105
,p_button_plug_id=>wwv_flow_api.id(92057952904563843)
,p_button_name=>'P149_CREATE_INSTALLMENT'
,p_button_static_id=>'P149_CREATE_INSTALLMENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CREATE   INSTALLMENT'
,p_button_alignment=>'CENTER'
,p_button_cattributes=>'style="margin-top: 20px;margin-left: 200px;"'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92058283216563843)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(92057952904563843)
,p_button_name=>'P149_COLLECTION'
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
 p_id=>wwv_flow_api.id(92077096992563869)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(92062283346563846)
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
 p_id=>wwv_flow_api.id(92042379159563819)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(92041972315563807)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P149_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92077541509563871)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(92062283346563846)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92042719817563823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(92041972315563807)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P149_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92077894904563871)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(92062283346563846)
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
 p_id=>wwv_flow_api.id(92102689784563918)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(92101902453563916)
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
 p_id=>wwv_flow_api.id(92102274543563918)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(92101902453563916)
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
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(92103155272563921)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(92101902453563916)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Invoice'
,p_button_position=>'NEXT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92043083836563824)
,p_name=>'P149_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92043499788563826)
,p_name=>'P149_COMPCODE'
,p_is_required=>true
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Compcode'
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
 p_id=>wwv_flow_api.id(92043932720563826)
,p_name=>'P149_DOCTTYPE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92044298551563826)
,p_name=>'P149_SERLNUMB'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92044691666563827)
,p_name=>'P149_REQDDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92045121254563827)
,p_name=>'P149_ITEMTYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92045530052563827)
,p_name=>'P149_ITEMLONG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92045884258563827)
,p_name=>'P149_ITEMRATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92046285108563827)
,p_name=>'P149_HUOMCODE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92046707431563827)
,p_name=>'P149_ORGNQNTY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92047152027563827)
,p_name=>'P149_TRNSQNTY'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92047524001563827)
,p_name=>'P149_UPDOCTYP'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92047880570563827)
,p_name=>'P149_STATUSCD'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92048304830563827)
,p_name=>'P149_UPSUBTYP'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92048738522563827)
,p_name=>'P149_UPDOCNUM'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92049115309563827)
,p_name=>'P149_UPDOCDTE'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92049487112563829)
,p_name=>'P149_UPDOCSRL'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92049871606563830)
,p_name=>'P149_COSTCODE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92050271376563830)
,p_name=>'P149_POSTFLAG'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92050733061563835)
,p_name=>'P149_OPRSTAMP'
,p_is_required=>true
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
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
 p_id=>wwv_flow_api.id(92051089063563835)
,p_name=>'P149_TIMSTAMP'
,p_is_required=>true
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
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
 p_id=>wwv_flow_api.id(92051504729563835)
,p_name=>'P149_TRANTYPE'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92051927749563837)
,p_name=>'P149_DELCCODE'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92052302571563837)
,p_name=>'P149_DELWCODE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92052681006563837)
,p_name=>'P149_MRNUMBER'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92053068360563837)
,p_name=>'P149_COSTRATE'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92053548839563837)
,p_name=>'P149_PAMTMODE'
,p_item_sequence=>760
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92053885183563837)
,p_name=>'P149_TOTDISAM'
,p_item_sequence=>770
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92054314414563837)
,p_name=>'P149_TOTALSRV'
,p_item_sequence=>780
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92054766392563837)
,p_name=>'P149_LIMITDAY'
,p_item_sequence=>790
,p_item_plug_id=>wwv_flow_api.id(92041972315563807)
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
 p_id=>wwv_flow_api.id(92055472263563841)
,p_name=>'P149_SUBTTYPE'
,p_is_required=>true
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct Initcap(NARATION),to_char(SUBTTYPE) ',
'                 FROM SYDOCMAS WHERE COMPCODE = :COMPCODE',
'                 AND TRANTYPE=''SI'' ',
'                 AND TRUNC(SYSDATE) BETWEEN trunc(strtperd) AND trunc(endperd)',
'                 AND SUBTTYPE=:P149_SUBTTYPE'))
,p_lov_cascade_parent_items=>'P149_SUBTTYPE,P147_DOCTTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92055936145563841)
,p_name=>'P149_SMANCODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(92055125572563841)
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
 p_id=>wwv_flow_api.id(92056272041563841)
,p_name=>'P149_ENUDTL_DOCNUMBR'
,p_item_sequence=>1050
,p_item_plug_id=>wwv_flow_api.id(92055125572563841)
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
 p_id=>wwv_flow_api.id(92056674909563843)
,p_name=>'P149_PAYMODE'
,p_is_required=>true
,p_item_sequence=>1060
,p_item_plug_id=>wwv_flow_api.id(92055125572563841)
,p_item_default=>'CRT'
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
,p_item_comment=>'STATIC2:Cash;CSH,Credit;CRT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92057067471563843)
,p_name=>'P149_ENUDTL_SUBTYPE'
,p_item_sequence=>1130
,p_item_plug_id=>wwv_flow_api.id(92055125572563841)
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
 p_id=>wwv_flow_api.id(92057550636563843)
,p_name=>'P149_SUBTYPE2'
,p_item_sequence=>1140
,p_item_plug_id=>wwv_flow_api.id(92055125572563841)
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
 p_id=>wwv_flow_api.id(92058721256563843)
,p_name=>'P149_DOWNPAYMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Down Payment'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92059091160563843)
,p_name=>'P149_REMAINING_INVOICE_AMOUNT'
,p_item_sequence=>2000
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Remaining Amount'
,p_display_as=>'NATIVE_HIDDEN'
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
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92059551325563843)
,p_name=>'P149_PAYMENT_START_DATE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Payment Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'focus'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_item_comment=>'onclick="count_checked ();"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92059885671563843)
,p_name=>'P149_PAYMENT_INTERVAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Payment Interval (Month)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(92060289271563846)
,p_name=>'P149_ANNUAL_INTEREST_RATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Interest Rate (%)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(92060701102563846)
,p_name=>'P149_INSTALLMENT_NO'
,p_item_sequence=>85
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'No of Installment'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92061145520563846)
,p_name=>'P149_INSTALLMENT_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Installment (EMI) Amount'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92061498210563846)
,p_name=>'P149_INTEREST_AMOUNT'
,p_item_sequence=>95
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Interest Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="background-color:#D8D8D8;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92061905865563846)
,p_name=>'P149_CLICK_FOR_SELECTOR_CHECK'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
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
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92080291158563876)
,p_name=>'P149_BOOKING_NO'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Booking No.'
,p_post_element_text=>'   '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92080685359563876)
,p_name=>'P149_BOOKING_DATE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Booking Date'
,p_post_element_text=>'   '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(92081111694563876)
,p_name=>'P149_APPRVDBY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92081529494563876)
,p_name=>'P149_APPRDATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92081870389563880)
,p_name=>'P149_RAISEDBY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92082282620563880)
,p_name=>'P149_SALESMAN_NAME'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92082745134563880)
,p_name=>'P149_REFNUMBR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92083111409563880)
,p_name=>'P149_REFNDATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92083475402563880)
,p_name=>'P149_TERMSCOD'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(92079886709563876)
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
 p_id=>wwv_flow_api.id(92084313865563880)
,p_name=>'P149_DOCNUMBR'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invoice No.'
,p_post_element_text=>'    '
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92084671509563886)
,p_name=>'P149_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date of Sales'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92085103129563886)
,p_name=>'P149_VTS'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'VTS'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:No;N,Yes;Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92085526889563886)
,p_name=>'P149_FEESRVNO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Fee Service No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92085871107563886)
,p_name=>'P149_ZONE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Zone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AREACODE||''-''||AREANAME d,WHSZONPK r',
'from nmwhznms',
'where COMPCODE=:COMPCODE',
'AND WHSZONPK=:P149_ZONE'))
,p_lov_cascade_parent_items=>'P149_ZONE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'disabled=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92086346252563899)
,p_name=>'P149_AREA'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (Naration), TO_CHAR (Subttype)',
'  FROM Sydocmas',
' WHERE     Compcode = :COMPCODE',
'       AND Trantype = ''SI''',
'       AND Subttype IN (44, 45, 46)',
'       AND TRUNC (SYSDATE) BETWEEN TRUNC (Strtperd) AND TRUNC (Endperd)',
'and Naration=''X'''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'disabled=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92086737856563901)
,p_name=>'P149_CUSTMRID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92087141738563901)
,p_name=>'P149_FILENO'
,p_item_sequence=>33
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'File No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92087531834563901)
,p_name=>'P149_CUSTOMER_NAME'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92087890933563901)
,p_name=>'P149_SO_DO_WO'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'SO/D/O W/O'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92088316339563901)
,p_name=>'P149_PRESENT_ADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Present Address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92088669898563901)
,p_name=>'P149_BRAND'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Brand'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (Naration), TO_CHAR (Subttype)',
'  FROM Sydocmas',
' WHERE     Compcode = :COMPCODE',
'       AND Trantype = ''SI''',
'       AND Subttype IN (44, 45, 46)',
'       AND TRUNC (SYSDATE) BETWEEN TRUNC (Strtperd) AND TRUNC (Endperd)',
'and Naration=''X'''))
,p_cSize=>28
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'disabled=true'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92089101466563901)
,p_name=>'P149_MODEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_prompt=>'Model'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (Naration), TO_CHAR (Subttype)',
'  FROM Sydocmas',
' WHERE     Compcode = :COMPCODE',
'       AND Trantype = ''SI''',
'       AND Subttype IN (44, 45, 46)',
'       AND TRUNC (SYSDATE) BETWEEN TRUNC (Strtperd) AND TRUNC (Endperd)',
'and Naration=''X'''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'disabled=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92089497209563904)
,p_name=>'P149_APPRQNTY'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(92083903951563880)
,p_use_cache_before_default=>'NO'
,p_prompt=>'No of Unit'
,p_source=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92090310038563904)
,p_name=>'P149_SALESTYPE'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Sales Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct Initcap(a.NMCODDES),a.NMSOFCDE',
'                 FROM NMCODMAS a  ,SYDOCMAS b',
'                  WHERE a.COMPCODE = :COMPCODE',
'                  AND a.COMPCODE=b.COMPCODE',
'                 AND a.MODLCODE=''NM''',
'                 AND a.NMHRDCDE=''CTY''',
'                 AND NMSOFCDE in (''AGN'',''BRO'',''DLR'',''NML'')',
'                  AND a.NMSOFCDE=:P149_SALESTYPE',
'                 ORDER BY 2',
''))
,p_lov_cascade_parent_items=>'P149_SALESTYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92090695449563904)
,p_name=>'P149_DEALER_AGENT_BROKER'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Dealer / Agent / Broker'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (prtyname) prtyname, partycde',
'    FROM sycompty',
'   WHERE compcode = :COMPCODE',
'         AND NVL (custtype, ''0'') = :P147_SALESTYPE',
'AND partycde=:P149_DEALER_AGENT_BROKER',
'ORDER BY partycde'))
,p_lov_cascade_parent_items=>'P149_DEALER_AGENT_BROKER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'disabled=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92091077349563904)
,p_name=>'P149_SALESPERSON'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Sales Person'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INITCAP (SMANNAME), SMANCODE',
'  FROM nmsmnmas',
' WHERE     Compcode = :COMPCODE',
'AND SMANCODE=:P149_SALESPERSON'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'disabled=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92091507243563904)
,p_name=>'P149_ITEMCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Code'
,p_post_element_text=>'    '
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>40
,p_tag_attributes=>'readonly=true '
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92091959074563904)
,p_name=>'P149_SALERATE'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Price'
,p_source=>'SALERATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92092317105563904)
,p_name=>'P149_ITEMDESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Name'
,p_source=>'ITEMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92092738449563904)
,p_name=>'P149_BODYBUILDINGCOST'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Body Building Cost'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92093087118563907)
,p_name=>'P149_VINNUMBR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Chassis No.'
,p_source=>'VINNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(92093555856563907)
,p_name=>'P149_DISCPCNT'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Discount'
,p_post_element_text=>'&nbsp;'
,p_source=>'DISCPCNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92093942763563907)
,p_name=>'P149_ENGINENO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Engine No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'readonly=true style="width:266px;"'
,p_grid_label_column_span=>2
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92094337702563907)
,p_name=>'P149_MSLCAMNT'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Net Price'
,p_source=>'MSLCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>31
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
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
 p_id=>wwv_flow_api.id(92094734394563908)
,p_name=>'P149_REGISTRATIONNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Registration No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92095164049563908)
,p_name=>'P149_REGISTRATIONTYPE'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Registration Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92095518767563910)
,p_name=>'P149_PLACEREGISTRATION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Place of Registration'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92095949101563910)
,p_name=>'P149_INSURANCENO'
,p_item_sequence=>75
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Insurance No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92096353047563911)
,p_name=>'P149_COMMCODE'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Brand'
,p_source=>'COMMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92096764003563911)
,p_name=>'P149_VHCLKYNO'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Vehicle No'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92097069862563911)
,p_name=>'P149_CURRCODE'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_item_default=>'BDT'
,p_prompt=>'Currency'
,p_source=>'CURRCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>3
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92097560753563911)
,p_name=>'P149_EXCGRATE'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exchange Rate'
,p_source=>'EXCGRATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92097954686563911)
,p_name=>'P149_LUOMCODE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_source=>'LUOMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>6
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92098318453563911)
,p_name=>'P149_DISCAMNT'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style="color:blue;">Dis. Amnt.</font>'
,p_source=>'DISCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>1
,p_cMaxlength=>255
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92098708590563911)
,p_name=>'P149_MSFCAMNT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font style=font-weight:normal;>Total (Foreign)</font>'
,p_source=>'MSFCAMNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>15
,p_cMaxlength=>255
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92099096813563911)
,p_name=>'P149_COLORCDE'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color'
,p_source=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT S.NMCODDES,S.NMSOFCDE',
'  FROM NMCODMAS S',
'  WHERE S.NMHRDCDE = ''CLR''',
'  and S.MODLCODE = ''NM''',
'  AND S.COMPCODE = :COMPCODE ',
' AND S.NMSOFCDE=:P149_COLORCDE'))
,p_lov_cascade_parent_items=>'P149_COLORCDE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>1
,p_cMaxlength=>20
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92099514015563911)
,p_name=>'P149_COLOR'
,p_item_sequence=>750
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92099880126563911)
,p_name=>'P149_PARTYCDE'
,p_is_required=>true
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Party Code'
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
 p_id=>wwv_flow_api.id(92100332082563916)
,p_name=>'P149_WARECODE'
,p_item_sequence=>800
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warehouse'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92100755208563916)
,p_name=>'P149_WAREHOUSE_NAME'
,p_item_sequence=>820
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_display_as=>'NATIVE_HIDDEN'
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
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92101127778563916)
,p_name=>'P149_BATCHNUM'
,p_item_sequence=>840
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92101513650563916)
,p_name=>'P149_REMARKSS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comments'
,p_source=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>180
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_api.id(92104343956563921)
,p_name=>'P149_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(92103910528563921)
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
 p_id=>wwv_flow_api.id(92104759014563921)
,p_name=>'P149_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(92103910528563921)
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
 p_id=>wwv_flow_api.id(92105149281563921)
,p_name=>'P149_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(92103910528563921)
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
 p_id=>wwv_flow_api.id(92118588669607355)
,p_name=>'P149_LOANAMNT'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Loan Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92118967044607355)
,p_name=>'P149_COLLECTIONRESPONSIBLE'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Collection Responsibility'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(92119312194607358)
,p_name=>'P149_INS_COMMENTS'
,p_item_sequence=>99
,p_item_plug_id=>wwv_flow_api.id(92057952904563843)
,p_prompt=>'Comments'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94062457056156112)
,p_name=>'P149_BROKER_NAME'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Broker Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94062747997156112)
,p_name=>'P149_BROKER_NID'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Broker Nid'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94063130776156112)
,p_name=>'P149_BROKER_MOBILE'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(92089958846563904)
,p_prompt=>'Broker Mobile'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(92105580955563924)
,p_validation_name=>'P149_VINNUMBR'
,p_validation_sequence=>10
,p_validation=>'P149_VINNUMBR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(92102274543563918)
,p_associated_item=>wwv_flow_api.id(92093087118563907)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92107963394563927)
,p_name=>'calculate discount percent'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_DISCPCNT,P149_SALERATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92108387370563932)
,p_event_id=>wwv_flow_api.id(92107963394563927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_DISC_AMOUNT  NUMBER;',
'BEGIN',
'   IF :P149_LUOMCODE = ''BDT''',
'   THEN',
'      :P149_DISCAMNT := (:P149_APPRQNTY * :P149_SALERATE * NVL (:P149_DISCPCNT, 0)) / 100;',
'      :P149_MSLCAMNT := :P149_APPRQNTY * :P149_SALERATE - NVL (:P149_DISCAMNT, 0);',
'      :P149_MSFCAMNT := :P149_APPRQNTY * :P149_SALERATE - NVL (:P149_DISCAMNT, 0);',
'   ELSE',
'      :P149_DISCAMNT := (:P149_APPRQNTY * :P149_SALERATE * NVL (:P149_DISCPCNT, 0)) / 100;',
'      V_DISC_AMOUNT := NVL (:P149_DISCAMNT, 0) * :P149_EXCGRATE;',
'      :P149_MSLCAMNT := :P149_APPRQNTY * :P149_SALERATE * :P149_EXCGRATE - V_DISC_AMOUNT;',
'      :P149_MSFCAMNT := :P149_APPRQNTY * :P149_SALERATE - :P149_DISCAMNT;',
'   END IF;',
'END;'))
,p_attribute_02=>'P149_APPRQNTY,P149_SALERATE,P149_MSFCAMNT,P149_MSLCAMNT,P149_DISCPCNT,P149_EXCGRATE'
,p_attribute_03=>'P149_MSLCAMNT,P149_MSFCAMNT,P149_DISCAMNT'
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
 p_id=>wwv_flow_api.id(92108940761563932)
,p_event_id=>wwv_flow_api.id(92107963394563927)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_SALERATE,P149_DISCPCNT,P149_DISCAMNT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92109324356563932)
,p_name=>'calculate discount amount'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_DISCAMNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92109850115563932)
,p_event_id=>wwv_flow_api.id(92109324356563932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_DISC_AMOUNT  NUMBER;',
'BEGIN',
'   IF :P149_LUOMCODE = ''BDT''',
'   THEN',
'      :P149_DISCPCNT := :P149_DISCAMNT/ (:P149_APPRQNTY * :P149_SALERATE) *100;',
'      :P149_MSLCAMNT := :P149_APPRQNTY * :P149_SALERATE - NVL (:P149_DISCAMNT, 0);',
'      :P149_MSFCAMNT := :P149_APPRQNTY * :P149_SALERATE - NVL (:P149_DISCAMNT, 0);',
'   ELSE',
'      :P149_DISCPCNT := :P149_DISCAMNT/ (:P149_APPRQNTY * :P149_SALERATE) *100;',
'      V_DISC_AMOUNT := NVL (:P149_DISCAMNT, 0) * :P149_EXCGRATE;',
'      :P149_MSLCAMNT := :P149_APPRQNTY * :P149_SALERATE * :P149_EXCGRATE - V_DISC_AMOUNT;',
'      :P149_MSFCAMNT := :P149_APPRQNTY * :P149_SALERATE - :P149_DISCAMNT;',
'   END IF;',
'END;'))
,p_attribute_02=>'P149_APPRQNTY,P149_SALERATE,P149_MSFCAMNT,P149_MSLCAMNT,P149_EXCGRATE,P149_DISCAMNT'
,p_attribute_03=>'P149_MSLCAMNT,P149_MSFCAMNT,P149_DISCPCNT'
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
 p_id=>wwv_flow_api.id(92110176342563932)
,p_name=>'set_subtype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_SUBTTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92110690171563932)
,p_event_id=>wwv_flow_api.id(92110176342563932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P149_SUBTYPE2:=:P149_SUBTTYPE;',
'end;'))
,p_attribute_02=>'P149_SUBTTYPE'
,p_attribute_03=>'P149_SUBTYPE2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92111104615563932)
,p_name=>'create installment Details'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(92103528708563921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92111631772563932)
,p_event_id=>wwv_flow_api.id(92111104615563932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'createInstallment(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92111984313563932)
,p_name=>'calculate remaining amount'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_DOWNPAYMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92112545728563932)
,p_event_id=>wwv_flow_api.id(92111984313563932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P149_REMAINING_INVOICE_AMOUNT := :P149_MSLCAMNT-:P149_DOWNPAYMENT;',
':P149_LOANAMNT := :P149_MSLCAMNT-:P149_DOWNPAYMENT;'))
,p_attribute_02=>'P149_MSLCAMNT,P149_DOWNPAYMENT'
,p_attribute_03=>'P149_REMAINING_INVOICE_AMOUNT,P149_LOANAMNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92112894192563943)
,p_name=>'calculate interest amount'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_INSTALLMENT_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92113406431563943)
,p_event_id=>wwv_flow_api.id(92112894192563943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   :P149_INTEREST_AMOUNT :=',
'        round((NVL(:P149_ANNUAL_INTEREST_RATE,0) / 100 * :P149_REMAINING_INVOICE_AMOUNT',
'        )',
'      * (:P149_PAYMENT_INTERVAL * :P149_INSTALLMENT_NO)',
'      / 12,2);',
'   :P149_INSTALLMENT_AMOUNT := round(',
'        (  :P149_REMAINING_INVOICE_AMOUNT',
'         +   (NVL(:P149_ANNUAL_INTEREST_RATE,0) / 100 * :P149_REMAINING_INVOICE_AMOUNT',
'             )',
'           * (:P149_PAYMENT_INTERVAL * :P149_INSTALLMENT_NO)',
'           / 12',
'        )',
'      / :P149_INSTALLMENT_NO,2);',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      RAISE_APPLICATION_ERROR (-200001, SQLERRM);',
'END;'))
,p_attribute_02=>'P149_ANNUAL_INTEREST_RATE,P149_REMAINING_INVOICE_AMOUNT,P149_PAYMENT_INTERVAL,P149_INSTALLMENT_NO,P149_REMAINING_INVOICE_AMOUNT'
,p_attribute_03=>'P149_INTEREST_AMOUNT,P149_INSTALLMENT_AMOUNT'
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
 p_id=>wwv_flow_api.id(92113846114563943)
,p_name=>'populate preinsert of salrec'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_DOWNPAYMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92114307566563943)
,p_event_id=>wwv_flow_api.id(92113846114563943)
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
'   :P149_OPRSTAMP := :APP_USER;',
'   :P149_TIMSTAMP := SYSDATE;',
'   :P149_SERLNUMB := ''000001'';',
'   :P149_ITEMTYPE := ''S'';',
'   :P149_ORGNQNTY := :P149_APPRQNTY;',
'   :P149_TRNSQNTY := :P149_APPRQNTY;',
'   :P149_UPDOCTYP := ''RC'';',
'   :P149_UPSUBTYP := :P149_ENUDTL_SUBTYPE;',
'   :P149_UPDOCNUM := :P149_ENUDTL_DOCNUMBR;',
'   :P149_REFNUMBR := :P149_BOOKING_NO || '' - '' || :P149_REFNUMBR;',
'docnumber_generation (:compcode,',
'                         ''NM'',',
'                         ''SI'',',
'                         :P149_SUBTTYPE,',
'                         SYSDATE,',
'                         NULL,',
'                         ''NM'',',
'                         newno',
'                        );',
'   :P149_DOCNUMBR := newno;',
'   ',
'EXCEPTION',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P149_SUBTTYPE'
,p_attribute_03=>'P149_OPRSTAMP,P149_TIMSTAMP,P149_SERLNUMB,P149_ITEMTYPE,P149_ORGNQNTY,P149_TRNSQNTY,P149_UPDOCTYP,P149_UPSUBTYP,P149_UPDOCNUM,P149_REFNUMBR,P149_PARTYCDE,P149_DOCNUMBR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92114672717563943)
,p_name=>'create collection'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(67427278729058849)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92115253932563943)
,p_event_id=>wwv_flow_api.id(92114672717563943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_recnum   NUMBER := :p149_installment_no;',
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
'                                  p_c002                 => :p149_itemcode,',
'                                  p_c003                 => :p149_subttype,',
'                                  p_c004                 => :p149_doctdate,',
'                                  p_c005                 => :p149_docnumbr,',
'                                  p_c006                 => :p149_custmrid,',
'                                  p_c007                 => :p149_downpayment,',
'                                  p_c008                 => :p149_payment_interval,',
'                                  p_c009                 => :p149_annual_interest_rate,',
'                                  p_c010                 => :p149_installment_no,',
'                                  p_c011                 => :p149_installment_amount,',
'                                  p_c012                 => :p149_currcode,',
'                                  p_c013                 => :p149_interest_amount,',
'                                  p_c014                 => :p149_oprstamp,',
'                                  p_c015                 => :p149_timstamp,',
'                                  p_c016                 => :p149_salerate,',
'                                  p_c017                 => :p149_mslcamnt,',
'                                  p_c018                 => :p149_vinnumbr,',
'                                  p_c019                 => :p149_payment_start_date',
'                                 );',
'   END LOOP;',
'',
'  ',
'',
'END;'))
,p_attribute_02=>'P149_ANNUAL_INTEREST_RATE,P149_APPRDATE,P149_APPRQNTY,P149_APPRVDBY,P149_BATCHNUM,P149_BOOKING_DATE,P149_BOOKING_NO,P149_BRAND,P149_COLLECTION,P149_COLOR,P149_COMMCODE,P149_COMPCODE,P149_COSTCODE,P149_COSTRATE'
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
 p_id=>wwv_flow_api.id(92115601277563943)
,p_name=>'click check selector'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(92102274543563918)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92116135728563943)
,p_event_id=>wwv_flow_api.id(92115601277563943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_CLICK_FOR_SELECTOR_CHECK'
,p_attribute_01=>'click_btn(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92116548294563944)
,p_name=>'hide submit button'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92117034674563944)
,p_event_id=>wwv_flow_api.id(92116548294563944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92820887389645622)
,p_name=>'hide installlment payment region on page load'
,p_event_sequence=>139
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92821340173645622)
,p_event_id=>wwv_flow_api.id(92820887389645622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(92062283346563846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(92820116114635627)
,p_name=>'hide installlment payment region'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(92103528708563921)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(92820527441635634)
,p_event_id=>wwv_flow_api.id(92820116114635627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(92062283346563846)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92106727562563927)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMSALREC'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'P149_ROWID'
,p_attribute_04=>'ROWID'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92079069659563874)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(92062283346563846)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMDTLSLS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(92102274543563918)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92079471139563876)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(92062283346563846)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMDTLSLS'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92107160494563927)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMSALREC'
,p_attribute_02=>'NMSALREC'
,p_attribute_03=>'P149_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(92102274543563918)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Saved Successfully!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92107525174563927)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into actrndtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   Dpr_nmpost_sales (:P149_compcode, ''SI'', :P97_subttype, :P149_docnumbr, :P149_doctdate);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Dpr_nmpost_sales ERROR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43669624315293272)
,p_process_when_type=>'NEVER'
,p_process_success_message=>'Dpr_nmpost_sales SUCCESS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92106274118563927)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update enudtl'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'UPDATE NMENUDTL',
'   SET TRNSQNTY = :P149_APPRQNTY',
' WHERE COMPCODE = :COMPCODE',
'   AND ITEMCODE = :P149_ITEMCODE',
'   AND DOCNUMBR = :P149_ENUDTL_DOCNUMBR',
'   AND BOOKCODE = :P149_BOOKING_NO;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43669624315293272)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92105893101563927)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pre insert nmsalrec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   newno    VARCHAR2 (10);',
'   docnum   VARCHAR2 (500);',
'BEGIN',
'   :p149_compcode := :compcode;',
'   :p149_oprstamp := :app_user;',
'   :p149_timstamp := SYSDATE;',
'   :p149_serlnumb := ''000001'';',
'   :p149_ITEMTYPE := ''S'';',
'   :p149_ORGNQNTY := :p149_APPRQNTY;',
'   :p149_TRNSQNTY := :p149_APPRQNTY;',
'   :p149_UPDOCTYP := ''RC'';',
'   :p149_UPSUBTYP := :P149_ENUDTL_SUBTYPE;',
'   :P149_UPDOCNUM := :P149_ENUDTL_DOCNUMBR;',
'   :P149_REFNUMBR := :P149_BOOKING_NO||'' - ''||:P149_REFNUMBR;',
'   :P149_PARTYCDE := :P149_PARTYCDE;',
'   docnumber_generation (:compcode, :modlcode, :P149_DOCTTYPE, :P149_SUBTTYPE, SYSDATE, NULL, :modlcode, newno);',
'   :P149_DOCNUMBR := newno;',
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
,p_process_when_button_id=>wwv_flow_api.id(92102274543563918)
,p_process_when_type=>'NEVER'
,p_process_comment=>'raise_application_error (-20001, :P120_DOCTTYPE||''-''|| :P120_SUBTTYPE);'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(92078366629563871)
,p_process_sequence=>70
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(92062283346563846)
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
'   :ORGNQNTY := :P149_APPRQNTY;',
'   :TRNSQNTY := :P149_APPRQNTY;',
'   :UPDOCTYP := ''BK'';',
'   :UPSUBTYP := 1;',
'   :UPDOCNUM := :P149_BOOKING_NO;',
'   :REFNUMBR := :P149_BOOKING_NO || '' - '' || :P149_REFNUMBR;',
'   :PARTYCDE := ''1'';--:P149_CUSTMRID;',
'   :DOCNUMBR := :P149_DOCNUMBR;',
'   :DOCTDATE := :P149_DOCTDATE;',
'   :DOCTTYPE := ''SI'';',
'   :SUBTTYPE := :P149_SUBTTYPE;',
'   :INVPEROD := :P149_PAYMENT_INTERVAL;',
'   :INVCAMNT := :P149_MSLCAMNT;',
'   :INTRSTRT := :P149_ANNUAL_INTEREST_RATE;',
'   :INTRAMNT := :P149_INTEREST_AMOUNT;',
'   :INSTLAMT := :P149_INSTALLMENT_AMOUNT;',
'   :TOTINSMT := :P149_INSTALLMENT_NO;',
'   :DWPAYMNT := :P149_DOWNPAYMENT;',
'   :STATUSCD := ''NEW'';',
'   :ITEMCODE := :P149_ITEMCODE;',
'   :ITEMDESC := :P149_ITEMDESC;',
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
 p_id=>wwv_flow_api.id(92078754582563874)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(92062283346563846)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pays date conversion'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
':PAYSDATE:=TO_DATE(:SDATE,''Dy Mon dd YYYY'');',
':INVCAMNT:=:P149_MSLCAMNT;',
':INTRSTRT:=:P149_ANNUAL_INTEREST_RATE;',
':INTRAMNT:=:P149_INTEREST_AMOUNT;',
':INVPEROD:=:P149_PAYMENT_INTERVAL;',
':DWPAYMNT:=:P149_DOWNPAYMENT;',
':TOTINSMT:=:P149_INSTALLMENT_NO;',
':VINNUMBR:=:P149_VINNUMBR;',
':ITEMCODE:=:P149_ITEMCODE;',
':ITEMDESC:=:P149_ITEMDESC;',
':DOCNUMBR:=:P149_DOCNUMBR;',
':PARTYCDE:=:P149_PARTYCDE;',
':STATUSCD:=''NEW'';',
':COSTCODE:=:P149_COSTCODE;',
':WARECODE:=:P149_WARECODE;',
':SMANCODE:=:P149_SMANCODE;',
':COMMCODE:=:P149_COMMCODE;',
':SALERATE:=:P149_SALERATE;',
':APPRQNTY:=:P149_APPRQNTY;',
':MSLCAMNT:=:P149_MSLCAMNT;',
':CUSTMRID:=:P149_CUSTMRID;',
':ITEMRATE:=:P149_SALERATE;',
':DISCPCNT:=:P149_DISCPCNT;',
':DISCAMNT:=:P149_DISCAMNT;',
':ORGNQNTY:=:P149_APPRQNTY;',
':TRNSQNTY:=:P149_APPRQNTY;',
':MSFCAMNT:=:P149_MSLCAMNT;',
':BATCHNUM:=:P149_VINNUMBR;',
':LOAN_AMOUNT:=:P149_LOANAMNT;',
':SCHEDULE_NO:=:NOFINSTL;',
':SCHEDULE_DATE:=:PAYSDATE;',
':STATUSCD :=''NEW'';',
':LUOMCODE :=:P149_LUOMCODE;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(92102274543563918)
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
