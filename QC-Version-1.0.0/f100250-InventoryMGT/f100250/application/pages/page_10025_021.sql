prompt --application/pages/page_10025_021
begin
--   Manifest
--     PAGE: 10025
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
 p_id=>1002500465
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Stock Ledger Info Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Stock Ledger Info Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function call_modal(pmodal,pwarecode,pbatchnum,pdoctdate,pitemcode){',
'	$s(''P1002500465_WARECODE'',pwarecode);',
'	$s(''P1002500465_BATCHNUM'',pbatchnum);',
'	$s(''P1002500465_DOCTDATE'',pdoctdate);',
'	$s(''P1002500465_ITEMCODE'',pitemcode);',
'    $s(''P1002500465_MODAL'',pmodal);',
'    ',
'    //apex.item(''P1002500465_MODAL'').setValue(pmodal);',
'    //apex_util.set_session_state(''P1002500465_MODAL'', pmodal);',
'    ',
'    //$(''.hide-reg'').hide();',
'    //$(''#''+pmodal+'').show();',
'    apex.region(pmodal).refresh();   ',
'',
'',
'    //$(''#total_purchase'').hide();',
'    //apex.region(pmodal).hide();',
'    //$(pmodal).show();',
'    ',
'    openModal(pmodal);',
'    //openModal(''modal_win'');',
'    //$(''.hide-reg'').hide();',
'}'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210210175404'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264715413956814878)
,p_plug_name=>'Detail Information'
,p_region_name=>'modal_win'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--slimPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47585534000858182)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264715489398814879)
,p_name=>'Total Purchase'
,p_region_name=>'total_purchase'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''RC''',
'   AND subttype IN (1, 2)',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123521026762323103)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123521456321323107)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123521842622323107)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123522237796323109)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264717325106814897)
,p_name=>'Transfer Receipt'
,p_region_name=>'transfer_receipt'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''RC''',
'   AND subttype IN (0, 1, 2)',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123522981913323110)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123523301201323110)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123523732793323110)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123524178839323110)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264717790522814902)
,p_name=>'Migrated Opening'
,p_region_name=>'migrated_opening'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''RC''',
'   AND subttype = 0',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123524866575323112)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123525233284323112)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123525608633323112)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123526075658323112)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264718256500814907)
,p_name=>'Sales Return'
,p_region_name=>'sales_return'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''RR''',
'   AND subttype IN (1, 2)',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123526768545323112)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123527160060323112)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123527519405323112)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123527941775323114)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264718822016814912)
,p_name=>'Total Issue'
,p_region_name=>'total_issue'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''IS''',
'   AND subttype <> 11',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)mcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123528635243323114)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123529028971323114)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123529436976323114)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123529850815323114)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264719324483814917)
,p_name=>'Total Sales'
,p_region_name=>'total_sales'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''SI''',
'   --AND subttype <> 11',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123530501662323114)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123530988889323114)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123531323758323115)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123531756940323115)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264719787936814922)
,p_name=>'Service Issue'
,p_region_name=>'service_issue'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (a.doctdate),',
'       a.docnumbr,',
'       a.partycde,',
'       a.apprqnty qty,',
'       a.refnumbr service_no,',
'       s.billnmbr',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec a, vwnmsbil s',
' WHERE a.docttype = ''IS''',
'   AND a.subttype = 11',
'   AND a.compcode = s.compcode',
'   AND a.warecode = s.warecode',
'   AND a.refnumbr = s.docnumbr',
'   AND a.compcode = :COMPCODE --NVL ( :COMPCODE, a.compcode)',
'   AND a.warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, a.warecode)',
'   AND a.batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, a.batchnum)',
'   AND TRUNC (a.doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (a.doctdate))',
'   AND a.itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, a.itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123532468741323115)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(A.DOCTDATE)'
,p_column_display_sequence=>4
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123532855465323115)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>1
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123533203789323115)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>2
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123533664518323115)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>3
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123534091320323115)
,p_query_column_id=>5
,p_column_alias=>'SERVICE_NO'
,p_column_display_sequence=>5
,p_column_heading=>'Service No'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123534490481323115)
,p_query_column_id=>6
,p_column_alias=>'BILLNMBR'
,p_column_display_sequence=>6
,p_column_heading=>'Bill No.'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(264720326417814927)
,p_name=>'TRN_ISSUE_QTY'
,p_region_name=>'TRN_ISSUE_QTY'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''MR''',
'   AND subttype = 11',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123535185828323117)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123535536701323117)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123535903964323117)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123536347866323117)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(265152099130441082)
,p_name=>'IR_QTY'
,p_region_name=>'IR_QTY'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC (doctdate),',
'       docnumbr,',
'       partycde,',
'       apprqnty qty',
'  --SUM (apprqnty) qty',
'  FROM nmstkrec',
' WHERE docttype = ''IR''',
'   --AND subttype = 11',
'   AND compcode = :COMPCODE --NVL ( :COMPCODE, compcode)',
'   AND warecode = :P1002500465_WARECODE --NVL ( :P1002500465_WARECODE, warecode)',
'   AND batchnum = :P1002500465_BATCHNUM --NVL ( :P1002500465_BATCHNUM, batchnum)',
'   AND TRUNC (doctdate) = :P1002500465_DOCTDATE --NVL ( :P1002500465_DOCTDATE, TRUNC (doctdate))',
'   AND itemcode = :P1002500465_ITEMCODE --NVL ( :P1002500465_ITEMCODE, itemcode)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_DOCTDATE, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123537009965323117)
,p_query_column_id=>1
,p_column_alias=>'TRUNC(DOCTDATE)'
,p_column_display_sequence=>1
,p_column_heading=>'Transaction Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123537463557323117)
,p_query_column_id=>2
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Document No.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123537895247323117)
,p_query_column_id=>3
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>3
,p_column_heading=>'Party Name'
,p_use_as_row_header=>'Y'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(123565171213323134)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123538224409323118)
,p_query_column_id=>4
,p_column_alias=>'QTY'
,p_column_display_sequence=>4
,p_column_heading=>'Qty'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(284820690258597078)
,p_name=>'Closing Stock'
,p_region_name=>'closing_stock'
,p_parent_plug_id=>wwv_flow_api.id(264715413956814878)
,p_template=>wwv_flow_api.id(47585534000858182)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_css_classes=>'hide-reg'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       WARECODE,',
'       BATCHNUM,',
'       ITEMCODE,',
'       ITEMNAME,',
'       CLOSING_QUANTITY,',
'       CLOSING_VALUE',
'  from VW_NMWHIMAS',
' WHERE compcode = :compcode',
'   AND warecode = NVL ( :P1002500465_WAREHOUSE, WARECODE)',
'   AND batchnum = NVL ( :P1002500465_BATCH, BATCHNUM)',
'   AND itemcode = NVL ( :P1002500465_ITEM, ITEMCODE)',
'   AND :P1002500465_FG = 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1002500465_WARECODE, P1002500465_BATCHNUM, P1002500465_ITEMCODE, P1002500465_FG'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
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
 p_id=>wwv_flow_api.id(123538929856323118)
,p_query_column_id=>1
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123539359612323118)
,p_query_column_id=>2
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>2
,p_column_heading=>'Warecode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123539725066323118)
,p_query_column_id=>3
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>3
,p_column_heading=>'Batchnum'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123540129192323118)
,p_query_column_id=>4
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123540534061323118)
,p_query_column_id=>5
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Itemname'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#ITEMCODE# - #ITEMNAME#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123540939121323118)
,p_query_column_id=>6
,p_column_alias=>'CLOSING_QUANTITY'
,p_column_display_sequence=>6
,p_column_heading=>'Closing Quantity'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123541372434323118)
,p_query_column_id=>7
,p_column_alias=>'CLOSING_VALUE'
,p_column_display_sequence=>7
,p_column_heading=>'Closing Value'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265153970229441101)
,p_plug_name=>'Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265154675242441108)
,p_plug_name=>'left'
,p_parent_plug_id=>wwv_flow_api.id(265153970229441101)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265154898799441110)
,p_plug_name=>'Center'
,p_parent_plug_id=>wwv_flow_api.id(265153970229441101)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265155144862441113)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(265153970229441101)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264700634876757617)
,p_plug_name=>'Stock Ledger Info Report'
,p_parent_plug_id=>wwv_flow_api.id(265155144862441113)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE,',
'       WARECODE,',
'       DFN_WARENAME(WARECODE,COMPCODE) WARENAME,',
'       DOCTDATE,',
'       ITEMCODE,',
'       DFN_ITEMNAME(ITEMCODE,COMPCODE) ITEMNAME,',
'       BATCHNUM,',
'       OPENING_BALANCE,',
'       MIGRATED_OPENING,',
'       TOTAL_PURCHASE,',
'       TRANSFER_RECEIPT,',
'       TOTAL_ISSUE,',
'       TOTAL_ISSUE_RETURN,',
'       TOTAL_PURCHASE_RETURN,',
'       TOTAL_SALES,',
'       SALES_RETURN,',
'       CLOSING_BALANCE,',
'       CLOSING_RATE,',
'       CLOSING_VALUE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       SERIALST,',
'       SERIALEN,',
'       UPDATE_TIMESTAMP,',
'       SERVICE_ISSUE,',
'       OPENING_TRANSIT,',
'       TRANSIT_RECEIPT,',
'       TRANSIT_QTY,',
'       TRANSIT_ISSUE,',
'       CLOSING_TRANSIT',
'  from #OWNER#.NMSTOCK_LEDGER',
' where COMPCODE = :COMPCODE',
'   and WARECODE = nvl(:P1002500465_WAREHOUSE,WARECODE)',
'   and BATCHNUM = nvl(:P1002500465_BATCH,BATCHNUM)',
'   and ITEMCODE = nvl(:P1002500465_ITEM,ITEMCODE)',
'   and DOCTDATE between nvl(:P1002500465_FDT,DOCTDATE) and nvl(:P1002500465_TDT,DOCTDATE)',
'   and :P1002500465_FG = 1',
'   ORDER BY DOCTDATE ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1002500465_WAREHOUSE, P1002500465_BATCH, P1002500465_ITEM, P1002500465_FDT, P1002500465_TDT, P1002500465_FG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(264700816069757618)
,p_name=>'Stock Ledger Info Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>340
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'RAZU'
,p_internal_uid=>264700816069757618
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123546021011323125)
,p_db_column_name=>'COMPCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123546401764323125)
,p_db_column_name=>'WARECODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123557297906323129)
,p_db_column_name=>'WARENAME'
,p_display_order=>12
,p_column_identifier=>'AC'
,p_column_label=>'Warehouse'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123546815104323125)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>22
,p_column_identifier=>'C'
,p_column_label=>'Doc. Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123547273570323125)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>32
,p_column_identifier=>'D'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123557663085323129)
,p_db_column_name=>'ITEMNAME'
,p_display_order=>42
,p_column_identifier=>'AD'
,p_column_label=>'Item Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123547617096323125)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>52
,p_column_identifier=>'E'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123548046618323125)
,p_db_column_name=>'OPENING_BALANCE'
,p_display_order=>62
,p_column_identifier=>'F'
,p_column_label=>'Opening Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123548418674323125)
,p_db_column_name=>'MIGRATED_OPENING'
,p_display_order=>72
,p_column_identifier=>'G'
,p_column_label=>'Migrated Opening'
,p_column_link=>'javascript:call_modal(''migrated_opening'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#MIGRATED_OPENING#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123548899183323125)
,p_db_column_name=>'TOTAL_PURCHASE'
,p_display_order=>82
,p_column_identifier=>'H'
,p_column_label=>'Total Purchase'
,p_column_link=>'javascript:call_modal(''total_purchase'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#TOTAL_PURCHASE#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123549269229323125)
,p_db_column_name=>'TRANSFER_RECEIPT'
,p_display_order=>92
,p_column_identifier=>'I'
,p_column_label=>'Transfer Receipt'
,p_column_link=>'javascript:call_modal(''transfer_receipt'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#TRANSFER_RECEIPT#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123549670433323125)
,p_db_column_name=>'TOTAL_ISSUE'
,p_display_order=>102
,p_column_identifier=>'J'
,p_column_label=>'Total Issue'
,p_column_link=>'javascript:call_modal(''total_issue'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#TOTAL_ISSUE#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123550041169323126)
,p_db_column_name=>'TOTAL_ISSUE_RETURN'
,p_display_order=>112
,p_column_identifier=>'K'
,p_column_label=>'Issue Return'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123550407749323126)
,p_db_column_name=>'TOTAL_PURCHASE_RETURN'
,p_display_order=>122
,p_column_identifier=>'L'
,p_column_label=>'Purchase Return'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123550801779323126)
,p_db_column_name=>'TOTAL_SALES'
,p_display_order=>132
,p_column_identifier=>'M'
,p_column_label=>'Total Sales'
,p_column_link=>'javascript:call_modal(''total_sales'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#TOTAL_SALES#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123551224140323126)
,p_db_column_name=>'SALES_RETURN'
,p_display_order=>142
,p_column_identifier=>'N'
,p_column_label=>'Sales Return'
,p_column_link=>'javascript:call_modal(''sales_return'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#SALES_RETURN#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123551682914323126)
,p_db_column_name=>'CLOSING_BALANCE'
,p_display_order=>152
,p_column_identifier=>'O'
,p_column_label=>'Closing Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123552049202323126)
,p_db_column_name=>'CLOSING_RATE'
,p_display_order=>162
,p_column_identifier=>'P'
,p_column_label=>'Closing Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123552482727323126)
,p_db_column_name=>'CLOSING_VALUE'
,p_display_order=>172
,p_column_identifier=>'Q'
,p_column_label=>'Closing Value'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123552889025323126)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>182
,p_column_identifier=>'R'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123553245026323126)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>192
,p_column_identifier=>'S'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123553665902323126)
,p_db_column_name=>'SERIALST'
,p_display_order=>202
,p_column_identifier=>'T'
,p_column_label=>'Serialst'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123554033096323128)
,p_db_column_name=>'SERIALEN'
,p_display_order=>212
,p_column_identifier=>'U'
,p_column_label=>'Serialen'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123554454446323128)
,p_db_column_name=>'UPDATE_TIMESTAMP'
,p_display_order=>222
,p_column_identifier=>'V'
,p_column_label=>'Update Timestamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123554876816323128)
,p_db_column_name=>'SERVICE_ISSUE'
,p_display_order=>232
,p_column_identifier=>'W'
,p_column_label=>'Service Issue'
,p_column_link=>'javascript:call_modal(''service_issue'',''#WARECODE#'',''#BATCHNUM#'',''#DOCTDATE#'',''#ITEMCODE#'');'
,p_column_linktext=>'#SERVICE_ISSUE#'
,p_column_link_attr=>'class="t-Button--stretch u-bold" title="Detail Info"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123555249143323128)
,p_db_column_name=>'OPENING_TRANSIT'
,p_display_order=>242
,p_column_identifier=>'X'
,p_column_label=>'Opening Transit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123555664937323128)
,p_db_column_name=>'TRANSIT_RECEIPT'
,p_display_order=>252
,p_column_identifier=>'Y'
,p_column_label=>'Transit Receipt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123556083149323128)
,p_db_column_name=>'TRANSIT_QTY'
,p_display_order=>262
,p_column_identifier=>'Z'
,p_column_label=>'Transit Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123556476040323129)
,p_db_column_name=>'TRANSIT_ISSUE'
,p_display_order=>272
,p_column_identifier=>'AA'
,p_column_label=>'Transit Issue'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(123556835350323129)
,p_db_column_name=>'CLOSING_TRANSIT'
,p_display_order=>282
,p_column_identifier=>'AB'
,p_column_label=>'Closing Transit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(264712455466759505)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1235580'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WARENAME:DOCTDATE:ITEMNAME:BATCHNUM:OPENING_BALANCE:MIGRATED_OPENING:TOTAL_PURCHASE:TRANSFER_RECEIPT:TOTAL_ISSUE:TOTAL_ISSUE_RETURN:TOTAL_PURCHASE_RETURN:TOTAL_SALES:SALES_RETURN:CLOSING_BALANCE:SERVICE_ISSUE:OPENING_TRANSIT:TRANSIT_RECEIPT:TRANSIT_Q'
||'TY:TRANSIT_ISSUE:CLOSING_TRANSIT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265155415205441115)
,p_plug_name=>'Button'
,p_parent_plug_id=>wwv_flow_api.id(265153970229441101)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>11
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265154820869441109)
,p_plug_name=>'button1'
,p_parent_plug_id=>wwv_flow_api.id(265155415205441115)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265155300301441114)
,p_plug_name=>'Button2'
,p_parent_plug_id=>wwv_flow_api.id(265155415205441115)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123559014091323131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(265154820869441109)
,p_button_name=>'SEARCH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123559708437323131)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(265155300301441114)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123518343506323100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(264715413956814878)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript:closeModal(''modal_win'');'
,p_button_css_classes=>'CANCEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(123545352813323123)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(265155144862441113)
,p_button_name=>'CL_STOCK'
,p_button_static_id=>'CL_STOCK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Closing Stock : &P1002500465_CL_STOCK. | Closing Value : &P1002500465_CL_VALUE.'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:465:&SESSION.::&DEBUG.:RP,465:P465_WARECODE,P465_BATCHNUM,P465_ITEMCODE:&P1002500465_WAREHOUSE.,&P1002500465_BATCH.,&P1002500465_ITEM.'
,p_button_css_classes=>'u-bold'
,p_button_comment=>'javascript:call_modal(''closing_stock'',''&WARECODE.'',''&BATCHNUM.'',''&DOCTDATE.'',''&ITEMCODE.'');'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123518742260323100)
,p_name=>'P1002500465_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(264715413956814878)
,p_prompt=>'Warehouse'
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
 p_id=>wwv_flow_api.id(123519127293323101)
,p_name=>'P1002500465_BATCHNUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(264715413956814878)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123519501044323101)
,p_name=>'P1002500465_DOCTDATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(264715413956814878)
,p_prompt=>'Transaction Date'
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
 p_id=>wwv_flow_api.id(123519936689323101)
,p_name=>'P1002500465_ITEMCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(264715413956814878)
,p_prompt=>'Item Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123520303513323101)
,p_name=>'P1002500465_MODAL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(264715413956814878)
,p_prompt=>'Modal'
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
 p_id=>wwv_flow_api.id(123542312590323121)
,p_name=>'P1002500465_WAREHOUSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(265154675242441108)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_cSize=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123542792506323121)
,p_name=>'P1002500465_BATCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265154675242441108)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT batchnum d, batchnum r',
'    FROM NMSTOCK_LEDGER',
'   WHERE compcode = :compcode',
'     AND warecode = :P1002500465_WAREHOUSE',
'     AND itemcode = nvl(:P1002500465_ITEM, itemcode)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P1002500465_WAREHOUSE'
,p_ajax_items_to_submit=>'P1002500465_ITEM'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123543147091323121)
,p_name=>'P1002500465_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265154675242441108)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.itemcode d, a.itemcode r  --dfn_itemname(a.itemcode,a.compcode) d, a.itemcode r ',
' FROM NMSTOCK_LEDGER a',
'WHERE compcode = :compcode ',
'  AND warecode = :P1002500465_WAREHOUSE',
'  AND batchnum = nvl(:P1002500465_BATCH,batchnum)',
'ORDER BY itemcode'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'-Select-'
,p_lov_cascade_parent_items=>'P1002500465_WAREHOUSE'
,p_ajax_items_to_submit=>'P1002500465_BATCH'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123543809460323121)
,p_name=>'P1002500465_FDT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265154898799441110)
,p_prompt=>'From Date '
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123544285885323121)
,p_name=>'P1002500465_TDT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(265154898799441110)
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123544679044323121)
,p_name=>'P1002500465_FG'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(265154898799441110)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123560118370323131)
,p_name=>'P1002500465_CL_STOCK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(265155300301441114)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123560576702323131)
,p_name=>'P1002500465_CL_VALUE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(265155300301441114)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(123560901862323131)
,p_name=>'P1002500465_BTN_LABEL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(265155300301441114)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(123562186373323132)
,p_name=>'refresh stock ledger region'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(123559014091323131)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123562638001323134)
,p_event_id=>wwv_flow_api.id(123562186373323132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_clstock number;',
' v_clvalue number; ',
'begin',
'SELECT round(SUM (closing_quantity),2) cl_qty, round(SUM (closing_value),2) cl_val',
'  INTO v_clstock, v_clvalue',
'  FROM vw_nmwhimas',
' WHERE compcode = :compcode',
'   AND warecode = NVL ( :P1002500465_WAREHOUSE, WARECODE)',
'   AND batchnum = NVL ( :P1002500465_BATCH, BATCHNUM)',
'   AND itemcode = NVL ( :P1002500465_ITEM, ITEMCODE);',
'   --AND doctdate BETWEEN NVL ( :P1002500465_FDT, DOCTDATE) AND NVL ( :P1002500465_TDT, DOCTDATE);',
'   ',
'   apex_util.set_session_state(''P1002500465_BTN_LABEL'', ''Closing Stock : ''||v_clstock||'' | Closing Value : ''||v_clvalue);',
'   apex_util.set_session_state(''P1002500465_FG'',1);',
'   ',
'exception',
'   when others then',
'   null;',
'end;',
'   '))
,p_attribute_02=>'P1002500465_WAREHOUSE, P1002500465_BATCH, P1002500465_ITEM'
,p_attribute_03=>'P1002500465_BTN_LABEL,P1002500465_FG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123563166717323134)
,p_event_id=>wwv_flow_api.id(123562186373323132)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var btn_label;',
'btn_label = $v(''P1002500465_BTN_LABEL'');',
'$(''#CL_STOCK'').text(btn_label);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123563623944323134)
,p_event_id=>wwv_flow_api.id(123562186373323132)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(265155144862441113)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(123564119584323134)
,p_event_id=>wwv_flow_api.id(123562186373323132)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(264700634876757617)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123561736948323132)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'closing stock and value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM (closing_quantity) cl_qty, SUM (closing_value) cl_val',
'  INTO :P1002500465_CL_STOCK, :P1002500465_CL_VALUE',
'  FROM vw_nmwhimas'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(123561317949323131)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
