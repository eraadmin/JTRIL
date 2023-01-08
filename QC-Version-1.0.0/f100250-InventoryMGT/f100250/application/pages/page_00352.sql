prompt --application/pages/page_00352
begin
--   Manifest
--     PAGE: 00352
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
 p_id=>352
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Production'
,p_step_title=>'Production'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-BadgeList-item',
'{',
'    background-color:green;',
'}',
'',
'.t-BadgeList--dash .t-BadgeList-label {',
'    text-align: center;',
'    white-space: normal !important;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    font-size: 1.4rem;',
'    line-height: 2rem;',
'    ',
'}',
'',
'',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-label {',
'    font-size: 12px;',
'    font-weight: bold;',
'}',
'.t-BadgeList--circular .t-BadgeList-label {',
'    color: #1F68A7;',
'}',
'.t-Region h2.t-Region-title {',
'    color: rgb(255, 255, 255);',
'}',
'.t-Region-headerItems--title {',
'    text-align: center;',
'    padding: 0.0rem 0.0rem;',
'    background-color: #1F68A7;',
'}',
'.t-BadgeList--circular.t-BadgeList--large .t-BadgeList-item {',
'   ',
'    background-color: azure;',
'}',
'.scrollbar{',
'width:500px;',
'height:200px;',
'background-color:lightgray;',
'overflow-y:scroll;',
'float:left;',
'line-height: 3px;',
'}',
'.CSSTableGenerator{',
'height:400px;',
'} ',
'',
'.t-BadgeList-value {',
'    position: relative;',
'    font-size: 2rem !important;',
'    font-weight:extra-bold;',
'    top:-5px;',
'    color:white;',
'}',
'.t-BadgeList-label',
'{ ',
' top:-12px;    ',
' color:white;',
'}',
'',
'',
'.t-BadgeList--dash a.t-BadgeList-wrap {',
'    transition: box-shadow .2s;',
'    text-decoration: none;',
'    text-align: center;',
'    height:none;',
'white-space:normal !important;',
'    padding: .0px;',
'    padding: 0.0rem 0.0rem;',
'    color: #000FFF;',
'    top:-10;',
'     background-color: #008000;',
'    	line-height: 3rem;',
'}',
''))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_deep_linking=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This is the Home Page of the Sales.  It is intended to be a sales dashboard of sorts - displaying some metrics which are derived in real-time from the database.',
'<p>',
'The <strong>My Quota</strong> region is a Flash chart type called  Dial Chart.  It is dynamically rendered based on a SQL Statement each time the page is viewed.  <strong>My Top Orders</strong> displays the top five orders for the currently signed in'
||' user, based on order total.  The <strong>Tasks</strong> region is an example of using a List to provide easy navigation to common tasks.'))
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180322111932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40332603088033162)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44467419649048402)
,p_plug_name=>'Production Status'
,p_parent_plug_id=>wwv_flow_api.id(40332603088033162)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null url,''Production Order Submitted'' Head,count(*)total from nmslsofr',
'union all',
'select null url,''Work In Progress'' Head,count(*)total from nmslsofr o ',
'where production_complete=''N'' and exists (select 1 from prbom b where o.SLSOFRNO=b.SLSOFRNO_FK and o.itemcode=b.FG_ITEMCODE)',
'union all',
'select null url,''Production Completed'' Head,count(*)total from nmslsofr where production_complete=''Y''',
'union all',
'select null url,''Production Remaining'' Head,count(*)total from nmslsofr',
'where production_complete=''N''',
'',
'',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_attribute_01=>'HEAD'
,p_attribute_02=>'TOTAL'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44469176160660057)
,p_plug_name=>'Monthly Status'
,p_parent_plug_id=>wwv_flow_api.id(40332603088033162)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null url,''Forecast for the month of ''||chr(10)||to_char(sysdate,''Mon-RRRR'') Forecast,count(*)total from nmslsfst',
'where to_char(trunc(doctdate),''MMRR'')= to_char(trunc(sysdate),''MMRR'')',
'union all',
'select null url,''Production Order for the month of '' ||chr(10)|| to_char(sysdate,''Mon-RRRR'')Production,count(*)total from nmslsofr',
'where to_char(trunc(doctdate),''MMRR'')= to_char(trunc(sysdate),''MMRR'')',
'union all',
'select null url,''Production Plan for the month of '' Production,count(*)total from prplan',
'where to_char(trunc(PLANDATE),''DDMMRR'')= to_char(trunc(sysdate),''DDMMRR'')',
'union all',
'select null url,''RM/PM Request for Transfer'' Production,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''MMRR'')= to_char(trunc(sysdate),''MMRR'')',
'and docttype=''MI''',
'and bom_no is not null',
'union all',
'select null url,''RM/PM Request for Transfer'' Production,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''MMRR'')= to_char(trunc(sysdate),''MMRR'')',
'and docttype=''MI''',
'and bom_no is not null',
'union all',
'select null url,''Total RM/PM Issued'' Production,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''MMRR'')= to_char(trunc(sysdate),''MMRR'')',
'and docttype=''IS''',
'and bom_no is not null',
'',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_attribute_01=>'FORECAST'
,p_attribute_02=>'TOTAL'
,p_attribute_05=>'3'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44477949401814817)
,p_plug_name=>'Todays Status'
,p_parent_plug_id=>wwv_flow_api.id(40332603088033162)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null url,''Work In Progress'' Head,count(*)total from nmslsofr o ',
'where production_complete=''N'' and exists (select 1 from prbom b where o.SLSOFRNO=b.SLSOFRNO_FK and o.itemcode=b.FG_ITEMCODE and trunc(b.DOCTDATE)=trunc(sysdate))',
'union all',
'select null url,''Production Completed'' Head,count(*)total from nmslsofr where production_complete=''Y''',
'union all',
'select null url,''No of RM/PM Issue Request'' Head,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''ddMMRR'')= to_char(trunc(sysdate),''ddMMRR'')',
'and docttype=''MI''',
'union all',
'select null url,''No of RM/PM Issued'' Head,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''DDMMRR'')= to_char(trunc(sysdate),''DDMMRR'')',
'and docttype=''IS''',
'and bom_no is not null',
'union all',
'select null url,''No of RM/PM Received'' Head,count(*)total from nmstkrec',
'where to_char(trunc(doctdate),''DDMMRR'')= to_char(trunc(sysdate),''DDMMRR'')',
'and docttype=''RC''',
'and bom_no is not null',
'',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_num_rows=>15
,p_attribute_01=>'HEAD'
,p_attribute_02=>'TOTAL'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39955387270879459)
,p_button_sequence=>10
,p_button_name=>'VIEW_MONTH_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View target details'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RIR,4:IRGTE_ORDER_DATE:&P352_THIS_MONTH.'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39955692607879459)
,p_button_sequence=>20
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Customers'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39956108386879459)
,p_button_sequence=>40
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Products'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:352:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39956514680879459)
,p_button_sequence=>60
,p_button_name=>'VIEW_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Orders'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:352:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39956896561879459)
,p_button_sequence=>80
,p_button_name=>'VIEW_MONTH_BUDGET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Budget for this Month'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:352:&SESSION.::&DEBUG.:RIR,4:IRGTE_ORDER_DATE:&P352_THIS_MONTH.'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39957319877879460)
,p_button_sequence=>90
,p_button_name=>'VIEW_RECEIVABLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Receivable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39957708719879460)
,p_button_sequence=>90
,p_button_name=>'VIEW_RECEIVABLE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Receivable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:37::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(39958163350879460)
,p_button_sequence=>90
,p_button_name=>'VIEW_Payable'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'View Payable'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'rightarrow insetButton'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(39975261208879464)
,p_branch_action=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:1,30:P30_SEARCH:&P1_SEARCH.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NEVER'
,p_branch_comment=>'Created 13-APR-2012 07:39 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39951655099879457)
,p_name=>'P352_START_DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(FINYEARB,''dd/mm/rrrr'') FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_rowspan=>3
,p_grid_column=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39952017895879457)
,p_name=>'P352_END_DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_char(FINYEARE,''dd/mm/rrrr'') FROM ACCOMPAR',
'WHERE (yclosflg=''N'' or to_char(finyearb,''RRRR'')=TO_CHAR(SYSDATE,''RRRR''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'RIGHT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39952449670879457)
,p_name=>'P352_APPOINTDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_privname varchar2(500);',
'v_appcunt  varchar2(500);',
'BEGIN',
'',
'select distinct PRIVNAME',
'into v_privname',
'from syprivlg',
'where USERCODE=:APP_USER',
'and COMPCODE=''100''',
'and PRIVCODE=''002''',
'and GRANTCDE=''Y'';',
'',
'Select distinct ''(''||(select count(count(Distinct Docnumbr))from nmreqapr',
'where  COMPCODE=s.compcode',
'and USERCODE=:APP_USER',
'and STATUSCD=''NEW''',
'group by DOCNUMBR)||'')'' as docnum',
'into v_appcunt',
'From SYDOCMAS s',
'Where s.compcode = ''100''',
';',
'return(v_appcunt||'' ''||v_privname);',
'   ',
'exception',
'when others then null; ',
'END;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_css_classes=>'searchField fullWidth'
,p_tag_attributes=>'style="width: 100%; color: #6633FF; font-weight: bold; font-size: 120%; margin-right: -188%;float:right;"'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39952816298879458)
,p_name=>'P352_XURLTEST'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39953274461879458)
,p_name=>'P352_XURL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
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
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(39953596822879458)
,p_name=>'P352_PROGNAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_api.id(39954051273879458)
,p_name=>'P352_XURLTEST_BUTTON'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(40332603088033162)
,p_prompt=>'Xurltest Button'
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
 p_id=>wwv_flow_api.id(39958502644879460)
,p_name=>'P352_COMPNAME'
,p_item_sequence=>30
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Compname'
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
 p_id=>wwv_flow_api.id(39958903671879460)
,p_name=>'P352_COMPADD'
,p_item_sequence=>40
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Compadd'
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
 p_id=>wwv_flow_api.id(39959382215879460)
,p_name=>'P352_VALDFLAG'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Valdflag'
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
 p_id=>wwv_flow_api.id(39959759718879460)
,p_name=>'P352_USER_NAME'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'User Name'
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
 p_id=>wwv_flow_api.id(39960099876879460)
,p_name=>'P352_USER_ID'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'User Id'
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
 p_id=>wwv_flow_api.id(39960584231879460)
,p_name=>'P352_PROGID'
,p_item_sequence=>80
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Progid'
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
 p_id=>wwv_flow_api.id(39960919712879460)
,p_name=>'P352_MSG'
,p_item_sequence=>90
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Msg'
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
 p_id=>wwv_flow_api.id(39961319328879460)
,p_name=>'P352_BUDGET_THIS_MONTH'
,p_item_sequence=>100
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'This Month'
,p_source=>'select to_char(to_date(to_char(sysdate ,''YYMM'')||''01'',''YYMMDD''),''DS'') from dual'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(39961811975879461)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39962912532879461)
,p_name=>'Stock ledger card report generate'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60761132999332647)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39963447837879462)
,p_event_id=>wwv_flow_api.id(39962912532879461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmstklgr,4,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39963838187879462)
,p_name=>'Receivable Report genterate'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60746046710901330)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39964353119879462)
,p_event_id=>wwv_flow_api.id(39963838187879462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmrcable,1,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39964705743879462)
,p_name=>'Payable Report Generate'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60746442366905479)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39965201098879462)
,p_event_id=>wwv_flow_api.id(39964705743879462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmpyable,2,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39965668055879462)
,p_name=>'Monthly Sales generate'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60760737716324532)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39966114272879462)
,p_event_id=>wwv_flow_api.id(39965668055879462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmslssum,4,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39966552415879462)
,p_name=>'purchase'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(60760923649330011)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39967025983879462)
,p_event_id=>wwv_flow_api.id(39966552415879462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmmonpur,4,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39967479763879463)
,p_name=>'Sales and target v achievement'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(38718518966364416)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39967906622879463)
,p_event_id=>wwv_flow_api.id(39967479763879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P352_PROGNAME,P352_BOARDNAME,P352_HIDECNCBTN:nmtrgach,4,1'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39968374976879463)
,p_name=>'modal window'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P352_GROUPID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'document.getElementById("P352_GROUPID").value != '''''
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39968881284879463)
,p_event_id=>wwv_flow_api.id(39968374976879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_XURLTEST'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:&P352_GROUPID.:&SESSION.::&DEBUG.::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'92'
,p_attribute_09=>'95'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39969297394879463)
,p_event_id=>wwv_flow_api.id(39968374976879463)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_GROUPID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39969740967879463)
,p_name=>'Call new tab page from report link'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.show_modal'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>' $v(''P352_XURLTEST'') !== '' '''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39970219224879463)
,p_event_id=>wwv_flow_api.id(39969740967879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open(''http://10.11.201.70:8082/apex/&P352_XURLTEST.'', ''_blank'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39970625890879463)
,p_name=>'hostname set in P6_XURL'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39971186731879463)
,p_event_id=>wwv_flow_api.id(39970625890879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_XURL'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'location.hostname;'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39971587292879463)
,p_name=>'hostname set in global item'
,p_event_sequence=>100
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39972057935879463)
,p_event_id=>wwv_flow_api.id(39971587292879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':XURL:=:P352_XURLTEST_BUTTON;',
'end;'))
,p_attribute_02=>'P352_XURLTEST_BUTTON'
,p_attribute_03=>'XURL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39972396725879463)
,p_name=>'url genetate in P352_XURLTEST_BUTTON'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.button-alt1'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39972947837879464)
,p_event_id=>wwv_flow_api.id(39972396725879463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_XURLTEST_BUTTON'
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
' ',
'      v_url :=',
'            ''http://''',
'         || :p352_xurl',
'         || '':7001/reports/rwservlet?userid=orbrgs/orbrgs@orbrgs&desformat=PDF&destype=cache&paramform=NO&report=''',
';',
'    --  v_url := v_url || ''P13='' || :F_EMPNO_LIST;',
'return v_url;',
' ',
'',
'  ',
'END;'))
,p_attribute_07=>'P352_XURL'
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
 p_id=>wwv_flow_api.id(39973359925879464)
,p_name=>'value assign into item'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P352_GROUPID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39973790472879464)
,p_event_id=>wwv_flow_api.id(39973359925879464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_XURL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pageurl purl   from vwdashboard',
'where boardname=''CUSTOMER''',
'and pageurl=:P352_GROUPID'))
,p_attribute_07=>'P352_GROUPID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(39974239707879464)
,p_name=>'clear group id'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(39974737307879464)
,p_event_id=>wwv_flow_api.id(39974239707879464)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P352_GROUPID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39962092067879461)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROC_ON_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2015/01/19 15:44 (Formatter Plus v4.8.8) */',
'   --system',
'',
'',
'DECLARE',
'   vnmsession   NUMBER                   := :SESSION;',
'   v_pageid     NUMBER;',
'   v_link       VARCHAR2 (100);',
'   v1           VARCHAR2 (100);',
'   v_progtype   symenmas.progtype%TYPE;',
'BEGIN',
'',
'   SELECT cacmpnam,',
'          INITCAP (   caaddrs1',
'                   || caaddrs2',
'                   || '' ''',
'                   || caaddrs3',
'                   || '',  ''',
'                   || caaddrs4',
'                   || ''.''',
'                  )',
'     INTO :p352_compname,',
'          :p352_compadd',
'     FROM syparmas',
'    WHERE cacmpcde = ''100'';',
'',
'   dpr_random_quotes (:p352_msg);',
'',
'   DELETE FROM stglobtm',
'         WHERE UPPER (colmc2) = UPPER (:app_user);',
'',
'   SELECT username, username, :app_user',
'     INTO :p352_user_name, :fx_username, :p352_user_id',
'     FROM syusrmas',
'    WHERE usercode = :APP_USER;',
'',
'   FOR c1 IN (SELECT DISTINCT a.compcode, a.usercode, a.parentnm, a.progname,',
'                              a.menuleaf',
'                         FROM syrights a',
'                        WHERE a.compcode = ''100''',
'                          AND a.usercode = :app_user',
'              UNION',
'              SELECT DISTINCT :compcode compcode, :app_user usercode,',
'                              a.parentnm, a.progname, a.menuleaf',
'                         FROM syrights a',
'                        WHERE compcode = ''100''',
'                              AND a.usercode = :app_user',
'              UNION',
'              SELECT :compcode compcode, :app_user usercode, ''ROOTP'',',
'                     ''ROOT'' progname, ''M'' menuleaf',
'                FROM DUAL',
'               WHERE :compcode IS NOT NULL)',
'   LOOP',
'      v_link := NULL;',
'',
'      IF c1.menuleaf = ''L''',
'      THEN',
'         BEGIN',
'            SELECT pageid, progtype',
'              INTO v_pageid, v_progtype',
'              FROM symenmas b',
'             WHERE progname = c1.progname;',
'         EXCEPTION',
'            WHEN NO_DATA_FOUND',
'            THEN',
'               v_pageid := NULL;',
'               v_progtype := ''F'';',
'         END;',
'',
'         IF v_pageid IS NOT NULL AND v_progtype IN (''R'', ''F'')',
'         THEN',
'            v_link :=',
'                  ''javascript:change_page(''''''',
'               || c1.progname',
'               || '''''',''',
'               || v_pageid',
'               || '',''''''',
'               || c1.parentnm',
'               || '''''',''''''',
'               || v_progtype',
'               || '''''')'';',
'         END IF;',
'      ELSE',
'         v_progtype := ''F'';',
'      END IF;',
'',
'      INSERT INTO stglobtm',
'                  (colmc1, colmc2, colmc3, colmc4,',
'                   colmc5, colmc7',
'                  )',
'           VALUES (c1.compcode, c1.usercode, c1.parentnm, c1.progname,',
'                   c1.menuleaf, v_link',
'                  );',
'   END LOOP;',
'',
'EXCEPTION',
'   WHEN NO_DATA_FOUND',
'   THEN',
'      :p352_compname := ''Please Select Your Company'';',
'',
'END;',
'',
'',
'begin',
'DPR_GENERATE_DASHBOARD(''100'',to_date(:P352_START_DATE,''dd/mm/rrrr''),to_date(:P352_END_DATE,''dd/mm/rrrr''));',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(39962526556879461)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_APPID NUMBER:=v(''APP_ID'');',
'V_APPSES NUMBER:=v(''APP_SESSION'');',
'V_APAGEID VARCHAR2(10);',
'BEGIN',
'SELECT PAGEURL',
'INTO V_APAGEID',
'FROM DASHBOARD_GROUP',
'WHERE GROUPID=NVL(:P352_GROUPID,1);',
'',
':P352_XURLTEST := ''f?p=''||V_APPID||'':''||V_APAGEID||'':''||V_APPSES;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
