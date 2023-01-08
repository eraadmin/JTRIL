prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
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
 p_id=>301
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Cost Finalization ( PO )'
,p_page_mode=>'MODAL'
,p_step_title=>'Cost Finalization ( PO )'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
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
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function(){',
'   clicked_empno = $("#P10_PROGNAME").val();',
'   $(''a[href$="P10_PROGNAME:''+clicked_empno+''"]'').parent().parent().children().addClass(''highlight-employee'') ;',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'table.report-standard tr.normalRow td{',
'background-color: blue;',
'}',
'table.report-standard tr.altRow td{',
'background-color: red;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
''))
,p_nav_list_template_options=>'#DEFAULT#'
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
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161229113617'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117876438824810021)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY_1'
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
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
 p_id=>wwv_flow_api.id(117876855414810021)
,p_plug_name=>'docnumer show'
,p_parent_plug_id=>wwv_flow_api.id(117876438824810021)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
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
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117877169571810021)
,p_plug_name=>'Program name show'
,p_parent_plug_id=>wwv_flow_api.id(117876855414810021)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
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
,p_plug_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117877647811810021)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY_1'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P301_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P301_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117879258984810023)
,p_plug_name=>'Report 1'
,p_region_name=>'nmpurord'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT   s.docnumbr',
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
'               apex_item.checkbox (1,',
'                           DOCNUMBR,',
'                           ''onchange="spCheckChange(this);"'',',
'                           :f_empno_list,',
'                           '',''',
'                          ) checkbox,',
'apex_item.checkbox2(11, DOCNUMBR) delcheckbox,',
'                s.docnumbr AS docnumbr, s.doctdate AS doctdate,',
'                (SELECT usercode || '':'' || username',
'                   FROM syusrmas u',
'                  WHERE usercode = s.raisedby',
'                    AND u.divncode = :compcode) AS raised_by,',
'                s.itemcode AS itemcode, s.itemdesc AS itemdesc,',
'                s.statuscd AS statuscd,s.docttype,s.subttype,s.COSTCODE',
',',
'                ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''||apex_util.prepare_url ( ''f?p=&APP_ID.:''',
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
'                                    ||''nmlpoprt,''',
'                                    ||s.docnumbr',
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
'           FROM nmprocur s',
'           WHERE compcode = :compcode ',
'            AND docttype = ''LP''',
'            AND subttype = 1',
'            AND statuscd = DECODE (:P301_POSTSTATUS, ''M'', ''APR'', statuscd)',
'            AND (costcode IN (SELECT cabasecc',
'                                FROM sycstacc',
'                               WHERE compcode = :compcode  AND grupcode = :APP_USER))',
'       ORDER BY doctdate DESC--, docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_api.id(117879617539810023)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_DOCNUMBER:#DOCNUMBR#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>80724750414129529
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117880962555810026)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Checkbox'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CHECKBOX'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'DEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117881276327810028)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117881685045810028)
,p_db_column_name=>'DOCDETAIL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Details'
,p_column_link=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.::P97_DOCNUMBR1,P97_DOCTDATE1,P97_ITEMCODE1,P97_ROWID:#DOCNUMBR#,#DOCTDATE#,#ITEMCODE#,#ROWID#'
,p_column_linktext=>'#DOCDETAIL#'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCDETAIL'
,p_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_display_condition=>'MOD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117882071051810028)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Docnumbr'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DOCNUMBR'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117882547556810028)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Date'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTDATE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117882958721810028)
,p_db_column_name=>'RAISED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Raised By'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'RAISED_BY'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117883354930810028)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Itemcode'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117883695767810029)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Item Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'ITEMDESC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117884156918810029)
,p_db_column_name=>'STATUSCD'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Statuscd'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'STATUSCD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117884538933810029)
,p_db_column_name=>'COSTCODE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Costcode'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'COSTCODE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117884913142810029)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Docttype'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DOCTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117879740831810023)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Subttype'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SUBTTYPE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117880143413810023)
,p_db_column_name=>'PRINT_COLUMN'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Print Column'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(117880523785810025)
,p_db_column_name=>'DELCHECKBOX'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Delete'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(117885280034810029)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'807305'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DOCDETAIL:RAISED_BY:ITEMCODE:ITEMDESC:CHECKBOX:COSTCODE:DOCTTYPE:SUBTTYPE:PRINT_COLUMN:DELCHECKBOX'
,p_sort_column_1=>'DOCTDATE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'DOCNUMBR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(117892185335810034)
,p_name=>'sdsaddsad'
,p_region_name=>'MON'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(117892628477810034)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117893026204810034)
,p_query_column_id=>2
,p_column_alias=>'DOCDETAIL'
,p_column_display_sequence=>2
,p_column_heading=>'DOCDETAIL'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117893399705810034)
,p_query_column_id=>3
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>3
,p_column_heading=>'DOCNUMBR'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117893842061810034)
,p_query_column_id=>4
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>4
,p_column_heading=>'DOCTDATE'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117894172090810036)
,p_query_column_id=>5
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>5
,p_column_heading=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117894627136810036)
,p_query_column_id=>6
,p_column_alias=>'RAISED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'RAISED_BY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117895030784810036)
,p_query_column_id=>7
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117895409657810036)
,p_query_column_id=>8
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>8
,p_column_heading=>'ITEMDESC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117895826613810036)
,p_query_column_id=>9
,p_column_alias=>'RATE'
,p_column_display_sequence=>9
,p_column_heading=>'RATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117896263977810036)
,p_query_column_id=>10
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>10
,p_column_heading=>'QUANTITY'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117896622704810036)
,p_query_column_id=>11
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>11
,p_column_heading=>'AMOUNT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117897008300810036)
,p_query_column_id=>12
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>12
,p_column_heading=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117897450994810036)
,p_query_column_id=>13
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>13
,p_column_heading=>'STATUSCD'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(117897780529810037)
,p_name=>'Reports'
,p_region_name=>'IR'
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_1'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  apex_item.radiogroup',
'          (1,',
'           progname,',
'           progname,',
'           null,',
'           ''onchange="spCheckChange1(this);"onchange="spCheckChange(this);"onClick="toggle(this);"'',',
'           :progname,',
'           :progname,',
'           null,',
'           1',
'          ) progname, PROGDESC from symenmas',
'where PROGNAME in (''nmpurren'')'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
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
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117898264460810037)
,p_query_column_id=>1
,p_column_alias=>'PROGNAME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(117898606199810037)
,p_query_column_id=>2
,p_column_alias=>'PROGDESC'
,p_column_display_sequence=>2
,p_column_heading=>'Report Name'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117899374658810039)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117899768775810039)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(117899374658810039)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:999:&SESSION.:A:&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117900193777810039)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(117899374658810039)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure Delete the docnumber &P301_DELDOCNUMBER. Really?'', ''DELETE'');'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117885799247810031)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(117879258984810023)
,p_button_name=>'P301_REPORTNAME'
,p_button_static_id=>'P96_REPORTNAME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reportname'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117886202337810031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117879258984810023)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Purchase Order'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:97::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(117886647540810031)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(117879258984810023)
,p_button_name=>'ASD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Asd'
,p_button_position=>'TOP'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117877987333810023)
,p_name=>'P301_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(117877647811810021)
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
 p_id=>wwv_flow_api.id(117878386085810023)
,p_name=>'P301_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117877647811810021)
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
 p_id=>wwv_flow_api.id(117878794672810023)
,p_name=>'P301_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(117877647811810021)
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
 p_id=>wwv_flow_api.id(117887065438810031)
,p_name=>'P301_POSTSTATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_item_default=>'N'
,p_prompt=>'<strong>Post Status</strong>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cSize=>40
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117887368969810031)
,p_name=>'P301_ITEMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117887809078810032)
,p_name=>'P301_DOCNUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&F_EMPNO_LIST.'
,p_prompt=>'Docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(117888238977810032)
,p_name=>'P301_PROGNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&PROGNAME.'
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117888572711810032)
,p_name=>'P301_XURLTEST'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Xurltest'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(117889066223810032)
,p_name=>'P301_XURL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Xurl'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(117889456121810032)
,p_name=>'P301_DELVERDOCNUM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deliver Docnum'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DOCNUMBR ',
'from apex_order_items1 ',
'where ORDER_ID=:P301_DOCNUMBER;'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117889768812810032)
,p_name=>'P301_GATPASSDOCNUM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Gat pass docnum'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117890244192810032)
,p_name=>'P301_S_H_REGION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_item_default=>'0'
,p_prompt=>'S H Region'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
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
 p_id=>wwv_flow_api.id(117890648423810034)
,p_name=>'P301_TEST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&FX_TREE_NODE.'
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
 p_id=>wwv_flow_api.id(117890970496810034)
,p_name=>'P301_TRANTYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Trantype'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117891383815810034)
,p_name=>'P301_SUBTTYPE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(117891853261810034)
,p_name=>'P301_DELDOCNUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(117879258984810023)
,p_prompt=>'Deldocnumber'
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
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117901004251810039)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'96'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(117901379865810039)
,p_computation_sequence=>10
,p_computation_item=>'P65_PROGNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P65_PROGNAME.'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117903271178810040)
,p_name=>'set value on P301_XURL'
,p_event_sequence=>9
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117903782293810040)
,p_event_id=>wwv_flow_api.id(117903271178810040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117904211121810040)
,p_name=>'set value on P301_XURLTEST'
,p_event_sequence=>19
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117904713776810040)
,p_event_id=>wwv_flow_api.id(117904211121810040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_XURLTEST'
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
'         || :p301_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=D:\Orbrgs_Web\nm\bin\''',
'         || :PROGNAME',
'         || ''&'';',
'      v_url := v_url ||''P0=''||''100''|| ''&P13='' || :F_EMPNO_LIST;',
'return v_url;',
'   END IF;',
'END;'))
,p_attribute_07=>'P301_XURL'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117905089171810040)
,p_name=>'assign url'
,p_event_sequence=>29
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117905598068810040)
,p_event_id=>wwv_flow_api.id(117905089171810040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURLTEST:=:P301_XURLTEST;',
'end;'))
,p_attribute_02=>'P301_XURLTEST'
,p_attribute_03=>'XURLTEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117905974335810040)
,p_name=>'call modal'
,p_event_sequence=>59
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117906543028810040)
,p_event_id=>wwv_flow_api.id(117905974335810040)
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
 p_id=>wwv_flow_api.id(117906876092810042)
,p_name=>'change row colour'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f01"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117907386431810042)
,p_event_id=>wwv_flow_api.id(117906876092810042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'onclick=highLight(this);'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117907866897810042)
,p_name=>'clear region on reports'
,p_event_sequence=>240
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.highlight-row'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117908279807810042)
,p_event_id=>wwv_flow_api.id(117907866897810042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(117897780529810037)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(117908669287810042)
,p_name=>'Delete Multiple Docnumber'
,p_event_sequence=>250
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f11"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(117909208053810042)
,p_event_id=>wwv_flow_api.id(117908669287810042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P301_DELVERDOCNUM'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var deldoc=  $(''#nmpurord input[name="f11"]:checked'').map(function(){',
'                  return $(this).val()',
'              }).get().join('':'')',
'',
'$(''#P301_DELDOCNUMBER'').val(deldoc)'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117901747376810039)
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
'If :P301_PROGNM  is null and :P301_NO is null then',
'   :P301_PROGNM := :FX_PROG_NAME;',
'   :P301_NO := :FX_PAGE_NO;',
'End if;',
'',
'dpk_orbits_security.dpr_get_menu_permission (',
'                                      P_branch_code =>:P1_CACMPNAM,',
'                                      p_app_user =>:app_user,',
'                                      p_progname =>:P301_PROGNM,',
'                                      p_parentnm =>:P301_PARENT,',
'                                      p_add_allowed =>:FX_ADD_ALLOWED,',
'                                      p_mod_allowed =>:FX_MOD_ALLOWED,',
'                                      p_del_allowed =>:FX_DEL_ALLOWED,',
'                                      p_enq_allowed =>:FX_ENQ_ALLOWED',
'                                     );',
'  --:P301_OPRSTAMP := :app_user;',
'  --:P301_TIMSTAMP := SYSDATE;',
'--apex_application.g_print_success_message := :FX_PROG_NAME||'' - ''||:P301_PROGNM;',
'',
'If :FX_PROG_NAME  is null and :FX_PAGE_NO is null then',
'   :FX_PROG_NAME := :P301_PROGNM;',
'   :FX_PAGE_NO := :P301_NO;',
'Elsif :FX_PROG_NAME <> :P301_PROGNM And :FX_PAGE_NO <> :P301_NO Then',
'   :FX_PROG_NAME := :P301_PROGNM;',
'   :FX_PAGE_NO := :P301_NO;',
'End if;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117902116683810040)
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
':P301_DOCNUMBER:=l_order_id - 1;',
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
'  -- :p301_docnumber := sale;',
'',
'   BEGIN',
'      IF :p65_progname = ''nminvmny''',
'      THEN',
'         v_url :=',
'               ''http://''',
'            || :p301_xurl',
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
'         :p301_delverdocnum := v_devdoc;',
'         v_url :=',
'               ''http://''',
'            || :p301_xurl',
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
'         :p301_gatpassdocnum := v_gatdoc;',
'         v_url :=',
'               ''http://''',
'            || :p301_xurl',
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
'            || :p301_xurl',
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
 p_id=>wwv_flow_api.id(117902936660810040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Docnumber on Delete button'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  l_deldoc  apex_application_global.vc_arr2 := apex_util.string_to_table(:P301_DELDOCNUMBER);',
'begin',
'',
'  for i in 1 .. l_deldoc.count',
'   loop',
'      delete from nmprocur  where docnumbr   = l_deldoc(i);',
'   end loop;',
'',
'  ',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Delete Successfully...'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(117902530817810040)
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
