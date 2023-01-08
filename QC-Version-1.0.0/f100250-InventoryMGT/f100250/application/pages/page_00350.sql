prompt --application/pages/page_00350
begin
--   Manifest
--     PAGE: 00350
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
 p_id=>350
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Design and Formulation Setup'
,p_page_mode=>'MODAL'
,p_step_title=>'Design and Formulation Setup'
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
'body .ui-dialog .ui-dialog-title {',
'    color: #3d3d3d;',
'    margin-left: 50%;',
'}'))
,p_dialog_height=>'700'
,p_dialog_width=>'100%'
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
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180913124913'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107825620115262001)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P350_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P350_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(107830208235262035)
,p_name=>'sdsaddsad'
,p_region_name=>'MON'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype',
'                || ''/''',
'                || s.serlnumb ID,',
'                   s.docnumbr',
'                || ''/''',
'                || s.doctdate',
'                || ''/''',
'                || s.docttype',
'                || ''/''',
'                || s.subttype AS docdetail,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                s.custmrid || '':'' || p.prtyname AS partycde,',
'                (SELECT usercode || '':'' || username',
'                   FROM syusrmas u',
'                  WHERE usercode = s.raisedby',
'                    AND u.divncode = :compcode) AS raised_by,',
'                s.itemcode AS itemcode, s.itemdesc AS itemdesc,',
'                s.salerate AS rate,NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0) Quantity,',
'                nvl(s.saleRATE,0) * (NVL (s.apprqnty, 0) - NVL (e.trnsqnty, 0)) Amount,',
'                s.warecode || '':'' || w.waredesc AS warecode,',
'                s.statuscd AS statuscd',
'           FROM nmsalrec s, nmwhsmas w, nmitemas i, sycompty p,',
'                ',
'                (SELECT   NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) trnsqnty,d.apprqnty',
'                     FROM nmdevrec d,nmsalrec s,nmwhsmas w',
'                    WHERE d.updoctyp = ''SI''',
'                    and d.upsubtyp=1',
'                    and d.compcode=:compcode',
'                      AND d.compcode = s.compcode',
'                      AND d.itemcode = s.itemcode',
'                      AND d.updocnum = s.DOCNUMBR',
'                      and d.UPDOCDTE = s.doctdate',
'                      AND d.COSTCODE = s.COSTCODE',
'                      and d.STATUSCD =''APR''',
'                    AND NVL (s.trnsqnty, 0) - NVL (d.apprqnty, 0) > 0   ',
'                     AND d.doctdate =nvl(:p11 ,d.doctdate)                   ',
'                      AND w.warecode IN (SELECT warecode',
'                                 FROM sycstacc',
'                                WHERE grupcode = :app_user)',
'                 GROUP BY d.updocnum, d.updoctyp, d.upsubtyp, d.itemcode,d.UPDOCDTE,s.trnsqnty,d.apprqnty) e',
'           where s.DOCTTYPE=''SI''',
'and s.COMPCODE=:COMPCODE',
'AND S.COMPCODE=P.COMPCODE',
'AND S.PARTYCDE=P.PARTYCDE',
'and s.compcode=w.compcode',
'and s.itemcode=i.itemcode',
'and s.warecode=w.warecode',
'AND s.doctdate =nvl(:p11 ,s.doctdate)',
'AND NVL (s.trnsqnty, 0) - NVL (e.apprqnty, 0) > 0 ',
'and w.warecode in (select warecode from sycstacc where grupcode=:APP_USER) ',
'order by DOCTDATE desc'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39357784092573306)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39358142203573306)
,p_query_column_id=>2
,p_column_alias=>'DOCDETAIL'
,p_column_display_sequence=>2
,p_column_heading=>'DOCDETAIL'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39358536448573306)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'DOCNUMBR'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39358971554573306)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'DOCTDATE'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39359346299573306)
,p_query_column_id=>5
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>5
,p_column_heading=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39359704349573306)
,p_query_column_id=>6
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'RAISED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39360131751573306)
,p_query_column_id=>7
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39360533187573306)
,p_query_column_id=>8
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>8
,p_column_heading=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39360934201573306)
,p_query_column_id=>9
,p_column_alias=>'RATE'
,p_column_display_sequence=>9
,p_column_heading=>'RATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39361372289573306)
,p_query_column_id=>10
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>10
,p_column_heading=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39361691777573307)
,p_query_column_id=>11
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39362127693573307)
,p_query_column_id=>12
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>12
,p_column_heading=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39362498705573307)
,p_query_column_id=>13
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>13
,p_column_heading=>'STATUSCD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(156266595286884736)
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
 p_id=>wwv_flow_api.id(156408704139307511)
,p_plug_name=>'Budget Info.'
,p_region_name=>'nmprocur'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>5
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.COMPCODE,',
'        a.DESIGN_NO,',
'        a.DESIGN_DATE,',
'        sum(a.SALE_PRICE) SALE_PRICE,',
'        a.DESIGN_BY,',
'        a.COLORCDE,',
'        a.DESIGN_ID,',
'        wm_concat(distinct a.DESIGN_NAME) DESIGN_NAME,',
'        a.TGT_FG_ITEMCODE,',
'        a.TARGET_FG_QTY,',
'       wm_concat(b.ITEMCODE) ITEMCODE,sum(b.DESIGNRAW_QTY) DESIGNRAW_QTY,sum(b.DESIGNRAW_WQTY) DESIGNRAW_WQTY,sum(b.EST_PRICE) EST_PRICE,sum(b.WEIGHT) WEIGHT,',
'       ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
'                                    ||49',
'                                    ||'':''',
'                                    || :app_session',
'                                    || '':ADD:NO:''',
'                                    ||49',
'                                    ||'':P''',
'                                    ||49',
'                                    ||''_PROGNAME,P''',
'                                    ||49',
'                                    ||''_DOCNUMBR:''',
'                                    ||''prprecst,''',
'                                    ||a.DESIGN_NO',
'                                    ||'':''',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">Print</button><i class="iR"></i></span></a></div>'' print_column',
'  FROM PRODUCTION_DESIGN a,PRODUCTION_DESIGN_RAW b',
'  where  a.DESIGN_NO=b.DESIGN_NO',
'  group by a.COMPCODE,',
'        a.DESIGN_NO,',
'        a.DESIGN_DATE,',
'        a.DESIGN_BY,',
'        a.COLORCDE,',
'        a.DESIGN_ID,',
'        a.TGT_FG_ITEMCODE,',
'        a.TARGET_FG_QTY',
'        order by DESIGN_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P350_TRANTYPE,P350_SUBTTYPE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P350_LIST'
,p_plug_display_when_cond2=>'P'
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
 p_id=>wwv_flow_api.id(156408794094307511)
,p_name=>'test'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>121070704056543109
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39367914353573308)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>105
,p_column_identifier=>'V'
,p_column_label=>'Report Print'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38961581750692342)
,p_db_column_name=>'COMPCODE'
,p_display_order=>115
,p_column_identifier=>'AC'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38961625851692343)
,p_db_column_name=>'DESIGN_NO'
,p_display_order=>125
,p_column_identifier=>'AD'
,p_column_label=>'Design no'
,p_column_link=>'f?p=&APP_ID.:351:&SESSION.::&DEBUG.:RP:P351_DESIGN_NO:#DESIGN_NO#'
,p_column_linktext=>'#DESIGN_NO#'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38961712074692344)
,p_db_column_name=>'DESIGN_DATE'
,p_display_order=>135
,p_column_identifier=>'AE'
,p_column_label=>'Design Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38961886350692345)
,p_db_column_name=>'SALE_PRICE'
,p_display_order=>145
,p_column_identifier=>'AF'
,p_column_label=>'Sale price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38961925788692346)
,p_db_column_name=>'DESIGN_BY'
,p_display_order=>155
,p_column_identifier=>'AG'
,p_column_label=>'Design by'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962072755692347)
,p_db_column_name=>'COLORCDE'
,p_display_order=>165
,p_column_identifier=>'AH'
,p_column_label=>'Color'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962174343692348)
,p_db_column_name=>'DESIGN_ID'
,p_display_order=>175
,p_column_identifier=>'AI'
,p_column_label=>'Design ID'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962235907692349)
,p_db_column_name=>'DESIGN_NAME'
,p_display_order=>185
,p_column_identifier=>'AJ'
,p_column_label=>'Design Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962293801692350)
,p_db_column_name=>'TGT_FG_ITEMCODE'
,p_display_order=>195
,p_column_identifier=>'AK'
,p_column_label=>'Target Finished Goods Item'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962450920692351)
,p_db_column_name=>'TARGET_FG_QTY'
,p_display_order=>205
,p_column_identifier=>'AL'
,p_column_label=>'Target Finished Goods Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(38962535452692352)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>215
,p_column_identifier=>'AM'
,p_column_label=>'Raw Item'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39386673787682503)
,p_db_column_name=>'DESIGNRAW_QTY'
,p_display_order=>225
,p_column_identifier=>'AN'
,p_column_label=>'Raw Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39386718162682504)
,p_db_column_name=>'DESIGNRAW_WQTY'
,p_display_order=>235
,p_column_identifier=>'AO'
,p_column_label=>'Raw Wastage Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39386807509682505)
,p_db_column_name=>'EST_PRICE'
,p_display_order=>245
,p_column_identifier=>'AP'
,p_column_label=>'Raw Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(39386950153682506)
,p_db_column_name=>'WEIGHT'
,p_display_order=>255
,p_column_identifier=>'AQ'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(156413087729309076)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'40310'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DESIGN_NO:DESIGN_ID:DESIGN_NAME:DESIGN_DATE:DESIGN_BY:COLORCDE:TGT_FG_ITEMCODE:TARGET_FG_QTY:SALE_PRICE:ITEMCODE:DESIGNRAW_QTY:DESIGNRAW_WQTY:WEIGHT:EST_PRICE:PRINT_COLUMN:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(176055582211674188)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(181273631102617093)
,p_name=>'badge list'
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--responsive:t-BadgeList--small:t-BadgeList--fixed'
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.pending pending,d.progress "in-progress",e.Complete Complete',
'from (  SELECT  count(distinct a.DOCNUMBR) pending',
'  From Prbudget A,Nmslsofr B,prbgtdtl C',
'Where  A.COMPCODE=B.COMPCODE',
'And      A.SLSOFRNO_FK=B.SLSOFRNO',
'And      A.COMPCODE=C.COMPCODE',
'And      A.BOM_NO=C.BOM_NO',
'And     A.Compcode=:Compcode',
'And     A.Docttype=''BG''',
'And     A.Subttype=1) c,',
'       (SELECT count(distinct a.DOCNUMBR) progress',
'  From Prbudget A,Nmslsofr B,prbgtdtl C',
'Where  A.COMPCODE=B.COMPCODE',
'And      A.SLSOFRNO_FK=B.SLSOFRNO',
'And      A.COMPCODE=C.COMPCODE',
'And      A.BOM_NO=C.BOM_NO',
'And     A.Compcode=:Compcode',
'And     A.Docttype=''BG''',
'And     A.Subttype=1',
') d,',
'( SELECT  count(distinct a.DOCNUMBR) Complete',
'  From Prbudget A,Nmslsofr B,prbgtdtl C',
'Where  A.COMPCODE=B.COMPCODE',
'And      A.SLSOFRNO_FK=B.SLSOFRNO',
'And      A.COMPCODE=C.COMPCODE',
'And      A.BOM_NO=C.BOM_NO',
'And     A.Compcode=:Compcode',
'And     A.Docttype=''BG''',
'And     A.Subttype=1) e',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47597968594858218)
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
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39374162409573310)
,p_query_column_id=>1
,p_column_alias=>'PENDING'
,p_column_display_sequence=>1
,p_column_heading=>'Current '
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1513:&SESSION.::&DEBUG.:RP:P1513_LIST:P'
,p_column_linktext=>'#PENDING#'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39374515395573310)
,p_query_column_id=>2
,p_column_alias=>'in-progress'
,p_column_display_sequence=>2
,p_column_heading=>'Delivered'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1513:&SESSION.::&DEBUG.:RP:P1513_LIST:NP'
,p_column_linktext=>'#in-progress#'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(39374926851573310)
,p_query_column_id=>3
,p_column_alias=>'COMPLETE'
,p_column_display_sequence=>3
,p_column_heading=>'Complete'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1513:&SESSION.::&DEBUG.:RP:P1513_LIST:C'
,p_column_linktext=>'#COMPLETE#'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39363255105573307)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(156266595286884736)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39369532066573309)
,p_button_sequence=>1
,p_button_plug_id=>wwv_flow_api.id(156408704139307511)
,p_button_name=>'P350_ADD'
,p_button_static_id=>'P89_ADD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:351:&SESSION.:ADD:&DEBUG.:351::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39387257575682509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(156408704139307511)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39370351634573309)
,p_button_sequence=>21
,p_button_plug_id=>wwv_flow_api.id(156408704139307511)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P350_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_add varchar2(5);',
'begin',
'select DELSTATS into v_add from syrights',
'where COMPCODE=:COMPCODE',
'and USERCODE=:APP_USER',
'and PROGNAME=:PROGNAME;',
'if v_add=''Y'' and :P350_POSTSTATUS=''N'' then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39356255958573305)
,p_name=>'P350_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(107825620115262001)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39356619320573305)
,p_name=>'P350_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(107825620115262001)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39357077824573305)
,p_name=>'P350_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(107825620115262001)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39370760915573309)
,p_name=>'P350_TRANTYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(156408704139307511)
,p_prompt=>'Trantype'
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
 p_id=>wwv_flow_api.id(39371151729573309)
,p_name=>'P350_SUBTTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(156408704139307511)
,p_prompt=>'Subttype'
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
 p_id=>wwv_flow_api.id(39371537756573309)
,p_name=>'P350_REQUEST'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(156408704139307511)
,p_item_default=>':REQUEST'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Test'
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
 p_id=>wwv_flow_api.id(39371987460573309)
,p_name=>'P350_DELDOCNUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(156408704139307511)
,p_prompt=>'Delete docnumber'
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
 p_id=>wwv_flow_api.id(39372603503573309)
,p_name=>'P350_PRDOCTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(176055582211674188)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39373080393573309)
,p_name=>'P350_PRSUBTYP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(176055582211674188)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39373417812573309)
,p_name=>'P350_NARATION'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(176055582211674188)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39375344267573310)
,p_name=>'P350_LIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(181273631102617093)
,p_item_default=>'P'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39375870802573310)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'89'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39376257152573310)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39378132262573311)
,p_name=>'set value on P350_XURL'
,p_event_sequence=>9
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39378608724573311)
,p_event_id=>wwv_flow_api.id(39378132262573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P350_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39379038667573311)
,p_name=>'set value on P350_XURLTEST'
,p_event_sequence=>19
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39379526082573311)
,p_event_id=>wwv_flow_api.id(39379038667573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P350_XURLTEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/21 12:15 (Formatter Plus v4.8.8) */',
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
'   IF :PROGNAME = ''nmpurren''',
'   THEN',
'      v_url :=',
'            ''http://''',
'         || :p350_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'         || :PROGNAME',
'         || ''&'';',
'      v_url := v_url ||''P0=''||''100''|| ''&P13='' || :F_EMPNO_LIST;',
'return v_url;',
'   END IF;',
'END;'))
,p_attribute_07=>'P350_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
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
 p_id=>wwv_flow_api.id(39379927207573311)
,p_name=>'assign url'
,p_event_sequence=>29
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39380398789573311)
,p_event_id=>wwv_flow_api.id(39379927207573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P350_XURLTEST;',
'end;'))
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39380819541573311)
,p_name=>'call modal'
,p_event_sequence=>59
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39381367429573311)
,p_event_id=>wwv_flow_api.id(39380819541573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:65:&APP_SESSION.:::65:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'95'
,p_attribute_09=>'90'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39381697595573311)
,p_name=>'change row colour'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f01"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39382245876573311)
,p_event_id=>wwv_flow_api.id(39381697595573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'onclick=highLight(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39382645527573311)
,p_name=>'clear region on reports'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39383007209573311)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39383514461573312)
,p_event_id=>wwv_flow_api.id(39383007209573311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P350_DELDOCNUMBER'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmprocur input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P350_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39383976187573312)
,p_name=>'print document'
,p_event_sequence=>260
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#printbut'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39384462931573312)
,p_event_id=>wwv_flow_api.id(39383976187573312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' APEX_UTIL.DOWNLOAD_PRINT_DOCUMENT (',
' p_file_name => ''mydocument'',',
' p_content_disposition => ''attachment'',',
' p_application_id => :APP_ID,',
' p_report_query_name => ''multiple_requsition_entry'',',
' p_report_layout => ''multiple_requsition_entry'',',
' p_report_layout_type => ''xsl-fo'',',
' p_document_format => ''pdf'');',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47440084562696326)
,p_name=>'New'
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(39387257575682509)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47440114827696327)
,p_event_id=>wwv_flow_api.id(47440084562696326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39377358035573310)
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
'If :P350_PROGNM  is null and :P350_NO is null then',
'   :P350_PROGNM := :FX_PROG_NAME;',
'   :P350_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P350_PROGNM,',
'                                      p_parentnm =>:P350_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P350_OPRSTAMP := :app_user;',
'  --:P350_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P350_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P350_PROGNM;',
'   :FX_PAGE_NO := :P350_NO;',
'Elsif :FX_PROG_NAME <> :P350_PROGNM And :FX_PAGE_NO <> :P350_NO Then',
'   :FX_PROG_NAME := :P350_PROGNM;',
'   :FX_PAGE_NO := :P350_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39376589960573310)
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
':P350_DOCNUMBER:=l_order_id - 1;',
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
'  -- :p350_docnumber := sale;',
'',
'   BEGIN',
'      IF :p65_progname = ''nminvmny''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p350_xurl',
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
'         :p350_delverdocnum := v_devdoc;',
'         v_url :=',
'               ''http://''',
'            || :p350_xurl',
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
'         :p350_gatpassdocnum := v_gatdoc;',
'         v_url :=',
'               ''http://''',
'            || :p350_xurl',
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
'            || :p350_xurl',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39377691413573311)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P350_DELDOCNUMBER);',
'begin',
'   for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  where docnumbr   = l_deldoc(i) ',
'      and COMPCODE=:COMPCODE ',
'      and DOCTTYPE=:P350_TRANTYPE ',
'      and SUBTTYPE=:P350_SUBTTYPE',
'      and POSTFLAG=:P350_POSTSTATUS;',
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
 p_id=>wwv_flow_api.id(39376947354573310)
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
wwv_flow_api.component_end;
end;
/
