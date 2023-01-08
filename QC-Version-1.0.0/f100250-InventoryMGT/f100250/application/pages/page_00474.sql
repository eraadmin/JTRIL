prompt --application/pages/page_00474
begin
--   Manifest
--     PAGE: 00474
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
 p_id=>474
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Campaign Stock Return'
,p_page_mode=>'MODAL'
,p_step_title=>'Campaign Stock Return'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function calculateTotal3(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P10_DOCNUMBER'').value=',
'    html_GetElement(''f14_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P10_DOCNUMBER'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'   clicked_empno = $("#P10_PROGNAME").val();',
'   $(''a[href$="P10_PROGNAME:''+clicked_empno+''"]'').parent().parent().children().addClass(''highlight-employee'') ;',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*body .ui-dialog .ui-dialog-title {',
'    color: #3d3d3d;',
'    margin-left: 50%;',
'}',
'*/'))
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_item_val VARCHAR2 (100):= apex_application.g_x01;',
'  v_checked_flag VARCHAR2 (1) := apex_application.g_x02;',
'BEGIN',
'  IF v_checked_flag = ''Y'' THEN',
'    -- Add to the list',
'    IF :f_empno_list IS NULL THEN',
'      :f_empno_list := '','' || v_item_val || '','';',
'    ELSE',
'      :f_empno_list := :f_empno_list || v_item_val|| '','' ;',
'    END IF;',
'  ELSE',
'    -- Remove from the list',
'    :f_empno_list := REPLACE (:f_empno_list, '','' || v_item_val || '','', '','');',
'    ',
'  END IF;',
' ',
'  -- Just for testing',
'  HTP.p (:f_empno_list);',
'END;'))
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20201103152321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(460245607724634446)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(460245792196634446)
,p_plug_name=>'docnumer show'
,p_parent_plug_id=>wwv_flow_api.id(460245607724634446)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script ></script>',
'<script>',
' ',
'  function spCheckChange(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp'').innerHTML=gReturn;',
'  }',
'   ',
'</script>',
' ',
'<div id="checkListDisp">&F_EMPNO_LIST.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(460245992461634449)
,p_plug_name=>'Program name show'
,p_parent_plug_id=>wwv_flow_api.id(460245792196634446)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script></script>',
'<script>',
' ',
'  function spCheckChange1(pThis){',
'    var get = new htmldb_Get(null,$v(''pFlowId''),''APPLICATION_PROCESS=CHECKBOX_CHANGE1'',$v(''pFlowStepId''));  ',
'    get.addParam(''x01'',pThis.value); //Value that was checked',
'    get.addParam(''x02'',pThis.checked ? ''Y'':''N''); // Checked Flag',
'    gReturn = get.get();',
'     ',
'    $x(''checkListDisp1'').innerHTML=gReturn;',
'  }',
'</script>',
'<div id="checkListDisp1">&PROGNAME.</div>'))
,p_plug_query_row_template=>wwv_flow_api.id(47597818077858193)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508687173493257184)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(508829282345679959)
,p_plug_name=>'Campaign Stock Return'
,p_region_name=>'nmstkmov'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            id,',
'            a.docnumbr',
'         || ''/''',
'         || a.doctdate',
'         || ''/''',
'         || a.docttype',
'         || ''/''',
'         || a.subttype',
'            AS docdetail,',
'         a.docttype,',
'         a.subttype,',
'         COUNT (a.itemcode) unit,',
'         APEX_ITEM.checkbox (1,',
'                             a.docnumbr,',
'                             ''onchange="spCheckChange(this);"'',',
'                             :f_empno_list,',
'                             '','')',
'            checkbox,',
'         APEX_ITEM.checkbox2 (11, a.docnumbr) delcheckbox,',
'         a.docnumbr AS docnumbr,',
'         a.doctdate AS doctdate,',
'         --LISTAGG (a.itemcode, '', '') WITHIN GROUP (ORDER BY a.itemcode) itemcode,',
'         --LISTAGG (a.itemdesc, '', '') WITHIN GROUP (ORDER BY a.itemdesc) itemdesc,',
'         a.statuscd AS statuscd,',
'         NVL (SUM (a.apprqnty), 0) Request_Qty,',
'         NVL (SUM (a.TRNSQNTY), 0) Sales_Qty,',
'         NVL (SUM (a.RETRNQTY), 0) Return_Qty,',
'         (SELECT INITCAP (a.raisedby || ''-'' || username)',
'            FROM syusrmas',
'           WHERE usercode = a.raisedby)',
'            raisedby,',
'         a.warecode,',
'         INITCAP ( (SELECT a.warecode || '' : '' || INITCAP (waredesc)',
'                      FROM nmwhsmas',
'                     WHERE warecode = a.warecode AND compcode = a.compcode))',
'            "Ware House",',
'         NULL post_status,',
'         INITCAP ( (SELECT costcode || '' : '' || INITCAP (costdesc)',
'                      FROM SYJOBMAS_SUB',
'                     WHERE costcode = a.SUB_COSTCODE AND compcode = a.compcode))',
'            "Sales Point",',
'         a.batchnum,',
'            ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'         || APEX_UTIL.prepare_url (',
'                  ''f?p=&APP_ID.:''',
'               || 49',
'               || '':''',
'               || :app_session',
'               || '':ADD:NO:''',
'               || 49',
'               || '':P''',
'               || 49',
'               || ''_PROGNAME,P''',
'               || 49',
'               || ''_DOCNUMBR,P''',
'               || 49',
'               || ''_DOCTTYPE,P''',
'               || 49',
'               || ''_SUBTTYPE:''',
'               || ''nmlpoprt,''',
'               || a.docnumbr',
'               || '',''',
'               || a.docttype',
'               || '',''',
'               || a.subttype',
'               || '':'')',
'         || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
'    font-size: 1.0em;',
'    font-weight: bold;',
'    text-transform: Initcap;',
'    padding: 3px 13px;',
'    margin: 1px auto;',
'    color: #ccc;',
'    background-color: #555;',
'    background: -webkit-linear-gradient(#888, #555);',
'    background: linear-gradient(#888, #555);',
'    border: 0 none;',
'    border-radius: 3px;',
'    text-shadow: 0 -1px 0 #000;',
'    box-shadow: 0 1px 0 #666, 0 0px 0 #444, 0 6px 6px rgba(0,0,0,0.6);',
'    cursor: pointer;',
'    -webkit-transition: all 150ms ease;',
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>''',
'            print_column',
'    FROM NMSTKMOV a',
'   WHERE     a.compcode = :compcode',
'         AND a.docttype = :p474_trantype',
'         AND a.subttype = :p474_subttype',
'         AND (a.costcode IN',
'                 (SELECT cabasecc',
'                    FROM sycstacc',
'                   WHERE compcode = :compcode AND grupcode = :app_user))',
'GROUP BY a.compcode,',
'         a.raisedby,',
'         a.warecode,',
'         a.docttype,',
'         a.subttype,',
'         a.docnumbr,',
'         a.doctdate,',
'         a.batchnum,',
'         a.statuscd,',
'         a.SUB_COSTCODE',
'ORDER BY a.doctdate DESC, a.docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P474_TRANTYPE,P474_SUBTTYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(508829372300679959)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'100'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>508829372300679959
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75760481201013264)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75760822377013265)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75761268107013265)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75761651796013265)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75762003046013267)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Transaction Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75762477174013268)
,p_db_column_name=>'STATUSCD'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763244163013268)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763658121013270)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764003035013270)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P474_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764462483013271)
,p_db_column_name=>'UNIT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75760020986013264)
,p_db_column_name=>'POST_STATUS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Post Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75759694780013262)
,p_db_column_name=>'WARECODE'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75762814491013268)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764823665013271)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>100
,p_column_identifier=>'AJ'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765244106013273)
,p_db_column_name=>'Ware House'
,p_display_order=>110
,p_column_identifier=>'AK'
,p_column_label=>'Ware House'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75757669213013259)
,p_db_column_name=>'REQUEST_QTY'
,p_display_order=>140
,p_column_identifier=>'AO'
,p_column_label=>'Request Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75758013077013260)
,p_db_column_name=>'SALES_QTY'
,p_display_order=>150
,p_column_identifier=>'AP'
,p_column_label=>'Sales Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75758441213013260)
,p_db_column_name=>'RETURN_QTY'
,p_display_order=>160
,p_column_identifier=>'AQ'
,p_column_label=>'Return Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75758814685013260)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>170
,p_column_identifier=>'AR'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75759235850013262)
,p_db_column_name=>'Sales Point'
,p_display_order=>180
,p_column_identifier=>'AS'
,p_column_label=>'Sales Point'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(508833665935681524)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'757656'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCDETAIL:DOCTDATE:UNIT:RAISEDBY:Ware House:Sales Point:BATCHNUM:REQUEST_QTY:SALES_QTY:RETURN_QTY:PRINT_COLUMN:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(528476160418046636)
,p_plug_name=>'item region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75756179767013256)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_api.id(508687173493257184)
,p_button_name=>'P474_ADD'
,p_button_static_id=>'P89_ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_SBMT_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.:ADD:&DEBUG.::P88_DOCTTYPE,P88_SUBTTYPE,P88_DOCDESC,P88_S_PRDTYP,P88_S_PRSTYP:&P474_TRANTYPE.,&P474_SUBTTYPE.,&P474_NARATION.,&P474_PRDOCTYP.,&P474_PRSUBTYP.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select ADDSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME= :PROGNAME; --''nmpurreq''; ',
'if v_add=''Y''then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'SUBMIT'
,p_icon_css_classes=>'&BTN_SBMT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75756578882013257)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(508687173493257184)
,p_button_name=>'DELETE'
,p_button_static_id=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_DELT_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Delete the docnumber &P474_DELDOCNUMBER.?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'/*',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P474_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'*/',
'return true;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_icon_css_classes=>'BTN_DELT_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75756984603013257)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(508687173493257184)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766092709013275)
,p_name=>'P474_POSTSTATUS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_item_default=>'NEW'
,p_prompt=>'<strong>Status</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Approve;APR,Non-Approve;NEW'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_css_classes=>'u-VisuallyHidden'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766446135013276)
,p_name=>'P474_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75766806209013276)
,p_name=>'P474_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767214042013276)
,p_name=>'P474_REQUEST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75767605416013276)
,p_name=>'P474_DELDOCNUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75768091119013278)
,p_name=>'P474_RANDOMNO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(508829282345679959)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_random number;',
'begin',
'select dbms_random.value(1,9) num into v_random from dual;',
'return v_random;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75768768447013278)
,p_name=>'P474_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(528476160418046636)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75769182780013278)
,p_name=>'P474_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(528476160418046636)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75769511145013279)
,p_name=>'P474_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(528476160418046636)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(75770002811013279)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(75770494151013279)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75772742177013282)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75773286633013284)
,p_event_id=>wwv_flow_api.id(75772742177013282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P474_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmprocur input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P474_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75773638993013284)
,p_name=>'Close Dialog'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75756984603013257)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75774109579013284)
,p_event_id=>wwv_flow_api.id(75773638993013284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75774551026013284)
,p_name=>'closeX'
,p_event_sequence=>280
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75775055166013285)
,p_event_id=>wwv_flow_api.id(75774551026013284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75771962212013282)
,p_process_sequence=>30
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
'If :P474_PROGNM  is null and :P474_NO is null then',
'   :P474_PROGNM := :FX_PROG_NAME;',
'   :P474_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P474_PROGNM,',
'                                      p_parentnm =>:P474_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P474_OPRSTAMP := :app_user;',
'  --:P474_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P474_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P474_PROGNM;',
'   :FX_PAGE_NO := :P474_NO;',
'Elsif :FX_PROG_NAME <> :P474_PROGNM And :FX_PAGE_NO <> :P474_NO Then',
'   :FX_PROG_NAME := :P474_PROGNM;',
'   :FX_PAGE_NO := :P474_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75771105643013281)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'assign value in docnumber from checkbox'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/14 13:19 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_error      VARCHAR2 (4000);',
'   sale         VARCHAR2 (4000);',
'   item         VARCHAR2 (4000);',
'   v_url        VARCHAR2 (500);',
'   v_devdoc     VARCHAR2 (500);',
'   v_gatdoc     VARCHAR2 (500);',
'   l_order_id   VARCHAR2 (50);',
'   l_seq        NUMBER;',
'BEGIN',
'   FOR i IN 1 .. apex_application.g_f01.COUNT',
'   LOOP',
'      sale := apex_application.g_f01 (i);',
'',
'      IF sale IS NOT NULL',
'      THEN',
'         l_error :=',
'               l_error',
'            || ''</br>''',
'            || ''Row ''',
'            || i',
'            || ''Can not be pass docnumber''',
'            || sale',
'            || ''>''',
'            || apex_application.g_f17.COUNT;',
'      END IF;',
'',
'      apex_collection.add_member (p_collection_name      => ''SALES'',',
'                                  p_c001                 => sale);',
'',
'   END LOOP;',
'',
'   BEGIN',
'      l_order_id := demo_order_items_seq.NEXTVAL;',
'      l_seq := demo_order_items_seq.CURRVAL;',
'',
'      FOR x IN (SELECT c001',
'                  FROM apex_collections',
'                 WHERE collection_name = ''SALES'')',
'      LOOP',
'         INSERT INTO apex_order_items1',
'                     (order_item_id, order_id, docnumbr',
'                     )',
'              VALUES (l_order_id, NULL, x.c001',
'                     )',
'           RETURNING order_item_id',
'                INTO l_order_id;',
'',
'         l_order_id := demo_order_items_seq.NEXTVAL;',
'      END LOOP;',
'',
'      COMMIT;',
'',
'      BEGIN',
'         FOR i IN l_seq .. l_order_id',
'         LOOP',
'            UPDATE apex_order_items1',
'               SET order_id = l_order_id - 1',
'             WHERE order_item_id = l_seq;',
':P474_DOCNUMBER:=l_order_id - 1;',
'            l_seq := l_seq + 1;',
'',
'         END LOOP;',
'',
'      END;',
'',
'      apex_collection.truncate_collection (p_collection_name => ''SALES'');',
'   EXCEPTION',
'      WHEN NO_DATA_FOUND',
'      THEN',
'         NULL;',
'      WHEN TOO_MANY_ROWS',
'      THEN',
'         NULL;',
'      WHEN OTHERS',
'      THEN',
'         NULL;',
'   END;',
'',
'   -- RETURN LTRIM (l_error, ''</br>'');',
'   :docnumbr := sale;',
'  -- :p474_docnumber := sale;',
'',
'   BEGIN',
'      IF :p65_progname = ''nminvmny''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p474_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmdlchln''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_devdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''DC''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p474_delverdocnum := v_devdoc;',
'         v_url :=',
'               ''http://''',
'            || :p474_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_devdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmgatpas''',
'      THEN',
'         SELECT DISTINCT docnumbr',
'                    INTO v_gatdoc',
'                    FROM nmdevrec',
'                   WHERE updocnum = sale',
'                     AND docttype = ''GP''',
'                     AND subttype = 1',
'                     AND compcode = :compcode;',
'',
'         :p474_gatpassdocnum := v_gatdoc;',
'         v_url :=',
'               ''http://''',
'            || :p474_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         v_url := v_url || ''P13='' || v_gatdoc;',
'         :xurltest := v_url;',
'      END IF;',
'',
'      IF :p65_progname = ''nmslmony''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p474_xurl',
'            || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'            || :p65_progname',
'            || ''&'';',
'         -- v_url := v_url || ''P13='' || sale;',
'         v_url := v_url || ''P0='' || 100 || ''&P13='' || sale;',
'         :xurltest := v_url;',
'      END IF;',
'   END;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75772342273013282)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P474_DELDOCNUMBER);',
'begin',
'   for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  ',
'       where docnumbr = l_deldoc(i) ',
'         and COMPCODE = :COMPCODE ',
'         and DOCTTYPE = :P474_TRANTYPE ',
'         and SUBTTYPE = :P474_SUBTTYPE',
'         and POSTFLAG = :P474_POSTSTATUS;',
'   end loop;',
'  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Delete Successfully....'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75771551062013281)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create or Truncate SALES Collection For REPORT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.create_or_truncate_collection',
'  (p_collection_name => ''SALES'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75770778256013281)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':DOCTTYPE := :DOCTTYPE;',
':SUBTTYPE := :SUBTTYPE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
