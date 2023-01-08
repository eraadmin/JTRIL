prompt --application/pages/page_00250
begin
--   Manifest
--     PAGE: 00250
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
 p_id=>250
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Lead selection'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead selection'
,p_warn_on_unsaved_changes=>'N'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'highlight_nodes(document.getElementById(''row_&P5000_DOCNUMBR.''));',
'</script>'))
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function assignvalue(pThis)',
'{',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'document.getElementById(''P5000_DOCNUMBR'').value=',
'    html_GetElement(''f02_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_DOCNUMBR'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_COMPCODE'').value=',
'    html_GetElement(''f03_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_COMPCODE'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_DOCTTYPE'').value=',
'    html_GetElement(''f04_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_DOCTTYPE'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_SUBTTYPE'').value=',
'    html_GetElement(''f05_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_SUBTTYPE'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_DOCTDATE'').value=',
'    html_GetElement(''f06_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_DOCTDATE'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_PARTYCD1'').value=',
'    html_GetElement(''f07_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_PARTYCD1'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_SERLNUMB'').value=',
'    html_GetElement(''f09_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_SERLNUMB'').trigger(''click'');',
'});',
'    document.getElementById(''P5000_ITEMCODE'').value=',
'    html_GetElement(''f08_''+vRow).value;',
'$(document).ready(function(){',
'  $(''#P5000_ITEMCODE'').trigger(''click'');',
'});',
'}',
'</script>',
'',
'  <script type="text/javascript">',
'',
'      function toggle(chkBox)',
'      {',
'       $(''input[type="checkbox"]'').on(''change'', function() {',
'   $(''input[type="checkbox"]'').not(this).prop(''checked'', false);',
'});',
'      }',
'    </script>',
'<script language="JavaScript" type="text/javascript">',
'function highlight_nodes (pthis) {',
'if (pthis) {',
'for( var i = 0; i ',
'   < pthis.parentNode.parentNode.childNodes.length; i )',
'pthis.parentNode.parentNode.childNodes[i].style.backgroundColor = ''rgb(0, 207, 255)'';}',
'}',
'</script>'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'SYSADM'
,p_last_upd_yyyymmddhh24miss=>'20170731105959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(39971233758050174)
,p_plug_name=>'Customer Lead Selection'
,p_region_name=>'t'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DOCNUMBR,',
'       COMPCODE,',
'       DOCTTYPE,',
'       SUBTTYPE,',
'       DOCTDATE,',
'       SMANCODE,',
'       RAISEDBY,',
'       CUSTMRID,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       SERLNUMB,',
'       ITEMCODE,',
'       COLORCDE,',
'       APPRVDBY,',
'       APPRDATE,',
'       ADDRTYPE,',
'       TEFAXNUM,',
'       CUSTMAIL,',
'       STRTDATE,',
'       VENDDATE,',
'       REMARKSS,',
'       CONFIRMC,',
'       VISITPLC,',
'       PARTYCD1,',
'       PARTYCD2,',
'       PARTYCD3,',
'       PARTYCD4,',
'       POSBUYDTE,',
'       TSTDRIVE,',
'       SRSOFUND,',
'       FUNDSTAT,',
'       VHMADEIN,',
'       ALTRNTVE,',
'       VHCLYEAR,',
'       MILLAGEE,',
'       LOSOFCUS,',
'       RECHEDLE,',
'       VISITYPE,',
'       COSTCODE,',
'       WARECODE,',
'       MODIFYDT,',
'       CURRENT_BRAND,',
'       CURRENT_MODEL,',
'       PURCHASED_FROM,',
'       PURCHASE_DATE,',
'       AVERAGE_MILEAGE,',
'       CONTACT_MODE,',
'       INTERESTED_BRAND,',
'       INTERESTED_MODEL,',
'       INTERIOR_COLOR,',
'       EXTERIOR_COLOR,',
'       FUEL_TYPE,',
'       TEST_DRIVE_FLAG,',
'       TEST_DRIVE_MODEL,',
'       TEST_DRIVE_DATE,',
'       TEST_BOOKING_DATE,',
'       CUSTOMER_TEST_REMARKS,',
'       CUSTOMER_REMARKS_SALES,',
'       SALESMAN_REMARKS_SALES,',
'       NEXT_APOINTMENT_ON,',
'       SALES_POTENTIAL,',
'       REFERED_BY_SALES,',
'       VERIFIED_FLAG_SALES,',
'       VERIFIED_BY_SALES,',
'       INTIME,',
'       OUTTIME,',
'       EXIST_VECHICLE,',
'       PURCHASE_TYPE,',
'       MRKFOR_SCH,',
'       resnflst,',
'       ''FollowUP'' ViewModify/*,',
'       ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'       || APEX_UTIL.prepare_url (''f?p=&APP_ID.:'' || 252 || '':'' || :app_session ||''::NO::P''',
'                                    ||252',
'                                    ||''_LEADS_NO,P''',
'                                    ||252',
'                                    ||''_WARECODE:''',
'                                    ||DOCNUMBR',
'                                    ||'',''',
'                                    ||WARECODE',
'                                    || '':'')  ',
'       || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">FollowUp</button><i class="iR"></i></span></a></div>''',
'          FlowUp,',
'       (SELECT CUSTADR1',
'          FROM nmcusmas',
'         WHERE CUSTMRID = a.CUSTMRID)',
'          cusname*/',
'  FROM NMCUSVLG a',
' /*WHERE MRKFOR_SCH=''Y''*/',
'   --and NVL (A.APP_FLG, ''N'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'style="box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); displa'
||'y: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 15px; font-weight: bold; padding: 6px 24px; text-decoration: none; text-shadow: 0px -1px 0px rgb(40, 57, 102);"'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(39953635940877869)
,p_name=>'VIEWMODIFY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VIEWMODIFY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>730
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>8
,p_link_target=>'f?p=&APP_ID.:253:&SESSION.::&DEBUG.:RP:P253_LEADS_NO,P253_WARECODE,P253_UPDOCNUM:&DOCNUMBR.,&WARECODE.,&DOCNUMBR.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118396724988508)
,p_name=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCNUMBR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Traking No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118515473988509)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118555335988510)
,p_name=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118718323988511)
,p_name=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBTTYPE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118765580988512)
,p_name=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOCTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40118883009988513)
,p_name=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SMANCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Sales Executive'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.SMANNAME d,C.SMANCODE',
'from nmsmnmas c',
'where C.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155213769083764)
,p_name=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RAISEDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155328776083765)
,p_name=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMRID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Prospect'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.CUSTNAME d,C.CUSTMRID',
'from nmcusmas c',
'where C.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155371043083766)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155489147083767)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155606819083768)
,p_name=>'SERLNUMB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERLNUMB'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155636282083769)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.ITEMDES1 d,C.ITEMCODE',
'from nmitemas c',
'where C.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155739870083770)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155879922083771)
,p_name=>'APPRVDBY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRVDBY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40155978591083772)
,p_name=>'APPRDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156116984083773)
,p_name=>'ADDRTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADDRTYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156169176083774)
,p_name=>'TEFAXNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEFAXNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156232246083775)
,p_name=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>150
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156422078083776)
,p_name=>'STRTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STRTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156482815083777)
,p_name=>'VENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156597874083778)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156646003083779)
,p_name=>'CONFIRMC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Confirm?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_item_css_classes=>'class="ig-link"'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Win;Y,Lost;N'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'N'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156767730083780)
,p_name=>'VISITPLC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISITPLC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156927631083781)
,p_name=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40156958742083782)
,p_name=>'PARTYCD2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157035491083783)
,p_name=>'PARTYCD3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157229361083784)
,p_name=>'PARTYCD4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD4'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157252218083785)
,p_name=>'POSBUYDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSBUYDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157352394083786)
,p_name=>'TSTDRIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TSTDRIVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157531479083787)
,p_name=>'SRSOFUND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SRSOFUND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157598051083788)
,p_name=>'FUNDSTAT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUNDSTAT'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157706960083789)
,p_name=>'VHMADEIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VHMADEIN'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157784838083790)
,p_name=>'ALTRNTVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ALTRNTVE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157925379083791)
,p_name=>'VHCLYEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VHCLYEAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40157959398083792)
,p_name=>'MILLAGEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MILLAGEE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158067242083793)
,p_name=>'LOSOFCUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOSOFCUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158172517083794)
,p_name=>'RECHEDLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECHEDLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158280257083795)
,p_name=>'VISITYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VISITYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158338184083796)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158515238083797)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Business Center'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>420
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.WAREDESC d,C.WARECODE',
'from nmwhsmas c',
'where C.COMPCODE = :compcode'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158546203083798)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158675098083799)
,p_name=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158807784083800)
,p_name=>'CURRENT_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158838012083801)
,p_name=>'PURCHASED_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASED_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40158968226083802)
,p_name=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159035413083803)
,p_name=>'AVERAGE_MILEAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVERAGE_MILEAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159136037083804)
,p_name=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_MODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159310313083805)
,p_name=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159383557083806)
,p_name=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159444364083807)
,p_name=>'INTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERIOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159532887083808)
,p_name=>'EXTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTERIOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159642446083809)
,p_name=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUEL_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159797231083810)
,p_name=>'TEST_DRIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_DRIVE_FLAG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>550
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40159910796083811)
,p_name=>'TEST_DRIVE_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_DRIVE_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160024261083812)
,p_name=>'TEST_DRIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_DRIVE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160108919083813)
,p_name=>'TEST_BOOKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEST_BOOKING_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160141391083864)
,p_name=>'CUSTOMER_TEST_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_TEST_REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160277487083865)
,p_name=>'CUSTOMER_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_REMARKS_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160338379083866)
,p_name=>'SALESMAN_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALESMAN_REMARKS_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>610
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160477209083867)
,p_name=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_APOINTMENT_ON'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160587887083868)
,p_name=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALES_POTENTIAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160728946083869)
,p_name=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERED_BY_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160762601083870)
,p_name=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_FLAG_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>650
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160895669083871)
,p_name=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>660
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40160955657083872)
,p_name=>'INTIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40161077769083873)
,p_name=>'OUTTIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTTIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>680
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40161209783083874)
,p_name=>'EXIST_VECHICLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXIST_VECHICLE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>690
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40161247994083875)
,p_name=>'PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Purchase type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>700
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40161427204083876)
,p_name=>'MRKFOR_SCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRKFOR_SCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>710
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40161658502083879)
,p_name=>'RESNFLST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESNFLST'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Reason of Lost'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>720
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d,C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''COD''',
'and nvl(:CONFIRMC,''N'') = ''N''',
'--and :CONFIRMC = ''N'''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'R'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(40162091413083883)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(40118321729988507)
,p_internal_uid=>4982962937047368
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(40169406943084472)
,p_interactive_grid_id=>wwv_flow_api.id(40118321729988507)
,p_static_id=>'395680'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(40169524962084472)
,p_report_id=>wwv_flow_api.id(40169406943084472)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40169988384084475)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(40118396724988508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40170464111084477)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(40118515473988509)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40171002847084479)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(40118555335988510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40171456901084481)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(40118718323988511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40172012000084483)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(40118765580988512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40172446688084485)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(40118883009988513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40173030997084487)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(40155213769083764)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40173475500084489)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(40155328776083765)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40173945096084491)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(40155371043083766)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40174434207084493)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(40155489147083767)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40174952218084495)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(40155606819083768)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40175474984084497)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(40155636282083769)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40176019761084499)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(40155739870083770)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40176495292084501)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(40155879922083771)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40176996425084503)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(40155978591083772)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40177506234084505)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>16
,p_column_id=>wwv_flow_api.id(40156116984083773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40177990982084507)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(40156169176083774)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40178504605084509)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(40156232246083775)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40178939568084511)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(40156422078083776)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40179471573084513)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>20
,p_column_id=>wwv_flow_api.id(40156482815083777)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40179934361084515)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(40156597874083778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40180475951084517)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>67
,p_column_id=>wwv_flow_api.id(40156646003083779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40180941953084519)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(40156767730083780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40181457956084521)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(40156927631083781)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40181998094084523)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(40156958742083782)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40182458384084525)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>26
,p_column_id=>wwv_flow_api.id(40157035491083783)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40182939038084527)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>27
,p_column_id=>wwv_flow_api.id(40157229361083784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40183497089084529)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(40157252218083785)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40183964118084531)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>29
,p_column_id=>wwv_flow_api.id(40157352394083786)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40184339391084533)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(40157531479083787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40184860399084535)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>31
,p_column_id=>wwv_flow_api.id(40157598051083788)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40185421890084537)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(40157706960083789)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40185926030084538)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(40157784838083790)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40186384262084540)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(40157925379083791)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40186883262084542)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(40157959398083792)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40187379027084544)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>36
,p_column_id=>wwv_flow_api.id(40158067242083793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40187918116084546)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(40158172517083794)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40188396929084548)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(40158280257083795)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40188923762084550)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(40158338184083796)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40189394906084552)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(40158515238083797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40189912291084554)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(40158546203083798)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40190427482084557)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(40158675098083799)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40190926119084559)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(40158807784083800)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40191342341084561)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(40158838012083801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40191889162084563)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(40158968226083802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40192353419084565)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(40159035413083803)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40192915443084567)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(40159136037083804)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40193430064084569)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(40159310313083805)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40193844079084571)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(40159383557083806)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40194403747084573)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(40159444364083807)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40194896952084575)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(40159532887083808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40195355593084577)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(40159642446083809)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40195906900084579)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(40159797231083810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40196370157084581)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(40159910796083811)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40196890283084583)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(40160024261083812)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40197405765084585)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(40160108919083813)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40197917472084587)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(40160141391083864)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40198357665084589)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(40160277487083865)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40198922132084591)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>59
,p_column_id=>wwv_flow_api.id(40160338379083866)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40199342327084593)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>60
,p_column_id=>wwv_flow_api.id(40160477209083867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40199856914084595)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>61
,p_column_id=>wwv_flow_api.id(40160587887083868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40200418077084596)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>62
,p_column_id=>wwv_flow_api.id(40160728946083869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40200924160084598)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>63
,p_column_id=>wwv_flow_api.id(40160762601083870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40201366019084600)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>64
,p_column_id=>wwv_flow_api.id(40160895669083871)
,p_is_visible=>true
,p_is_frozen=>false
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
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40201863136084602)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>65
,p_column_id=>wwv_flow_api.id(40160955657083872)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40202343330084604)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>66
,p_column_id=>wwv_flow_api.id(40161077769083873)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40202868793084606)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>67
,p_column_id=>wwv_flow_api.id(40161209783083874)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40203385427084608)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>66
,p_column_id=>wwv_flow_api.id(40161247994083875)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40203831710084610)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(40161427204083876)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40261450938162739)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(40161658502083879)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(40320765055770917)
,p_view_id=>wwv_flow_api.id(40169524962084472)
,p_display_seq=>70
,p_column_id=>wwv_flow_api.id(39953635940877869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125390837185965649)
,p_plug_name=>'Customer Lead Selection'
,p_region_name=>'IR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT /*APEX_ITEM.hidden (2,',
'                         DOCNUMBR,',
'                         NULL,',
'                         ''f02_'' || ROWNUM,',
'                         NULL)*/',
'          DOCNUMBR,',
'    /*   APEX_ITEM.checkbox2 (1,',
'                            ROWNUM,',
'                            ''onclick="assignvalue(this);toggle(this);"'',',
'                            NULL,',
'                            NULL,',
'                            ''f01_'' || ROWNUM)',
'          RWID,*/',
'       APEX_ITEM.hidden (3,',
'                         COMPCODE,',
'                         NULL,',
'                         ''f03_'' || ROWNUM,',
'                         NULL)',
'          COMPCODE,',
'       APEX_ITEM.hidden (4,',
'                         DOCTTYPE,',
'                         NULL,',
'                         ''f04_'' || ROWNUM,',
'                         NULL)',
'          DOCTTYPE,',
'       APEX_ITEM.hidden (5,',
'                         SUBTTYPE,',
'                         NULL,',
'                         ''f05_'' || ROWNUM,',
'                         NULL)',
'          SUBTTYPE,',
'       APEX_ITEM.hidden (6,',
'                         DOCTDATE,',
'                         NULL,',
'                         ''f06_'' || ROWNUM,',
'                         NULL)',
'          DOCTDATE,',
'       SMANCODE,',
'       RAISEDBY,',
'       CUSTMRID,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       APEX_ITEM.hidden (9,',
'                         SERLNUMB,',
'                         NULL,',
'                         ''f09_'' || ROWNUM,',
'                         NULL)',
'          SERLNUMB,',
'       APEX_ITEM.hidden (8,',
'                         ITEMCODE,',
'                         NULL,',
'                         ''f08_'' || ROWNUM,',
'                         NULL)',
'          ITEMCODE,',
'       COLORCDE,',
'       APPRVDBY,',
'       APPRDATE,',
'       ADDRTYPE,',
'       TEFAXNUM,',
'       CUSTMAIL,',
'       STRTDATE,',
'       VENDDATE,',
'       REMARKSS,',
'       CONFIRMC,',
'       VISITPLC,',
'       APEX_ITEM.hidden (7,',
'                         PARTYCD1,',
'                         NULL,',
'                         ''f07_'' || ROWNUM,',
'                         NULL)',
'          PARTYCD1,',
'       PARTYCD2,',
'       PARTYCD3,',
'       PARTYCD4,',
'       POSBUYDTE,',
'       TSTDRIVE,',
'       SRSOFUND,',
'       FUNDSTAT,',
'       VHMADEIN,',
'       ALTRNTVE,',
'       VHCLYEAR,',
'       MILLAGEE,',
'       LOSOFCUS,',
'       RECHEDLE,',
'       VISITYPE,',
'       COSTCODE,',
'       WARECODE,',
'       MODIFYDT,',
'       CURRENT_BRAND,',
'       CURRENT_MODEL,',
'       PURCHASED_FROM,',
'       PURCHASE_DATE,',
'       AVERAGE_MILEAGE,',
'       CONTACT_MODE,',
'       INTERESTED_BRAND,',
'       INTERESTED_MODEL,',
'       INTERIOR_COLOR,',
'       EXTERIOR_COLOR,',
'       FUEL_TYPE,',
'       TEST_DRIVE_FLAG,',
'       TEST_DRIVE_MODEL,',
'       TEST_DRIVE_DATE,',
'       TEST_BOOKING_DATE,',
'       CUSTOMER_TEST_REMARKS,',
'       CUSTOMER_REMARKS_SALES,',
'       SALESMAN_REMARKS_SALES,',
'       NEXT_APOINTMENT_ON,',
'       SALES_POTENTIAL,',
'       REFERED_BY_SALES,',
'       VERIFIED_FLAG_SALES,',
'       VERIFIED_BY_SALES,',
'       INTIME,',
'       OUTTIME,',
'       EXIST_VECHICLE,',
'       CASE',
'          WHEN PURCHASE_TYPE = ''W'' THEN ''Warm''',
'          WHEN PURCHASE_TYPE = ''H'' THEN ''Hot''',
'          WHEN PURCHASE_TYPE = ''C'' THEN ''Cold''',
'       END',
'          PURCHASE_TYPE,',
'       MRKFOR_SCH,',
'       /*  ''<input type="button" id="button" name="FlowUp" value="FlowUp" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%'
||') repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; tex'
||'t-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'           "FlowUp",*/',
'       ''<div  style="padding-left: 10px;font-weight:bold;"><a href="''',
'       || APEX_UTIL.prepare_url (''f?p=&APP_ID.:'' || 252 || '':'' || :app_session ||''::NO::P''',
'                                    ||252',
'                                    ||''_LEADS_NO,P''',
'                                    ||252',
'                                    ||''_WARECODE:''',
'                                    ||DOCNUMBR',
'                                    ||'',''',
'                                    ||WARECODE',
'                                    || '':'')  ',
'       || ''" class="uButton uAltButton iconButton plus"><span><button id="printbut" style="display: block;',
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
'    transition: all 150ms ease;" type="button">FollowUp</button><i class="iR"></i></span></a></div>''',
'          FlowUp,',
'       (SELECT CUSTADR1',
'          FROM nmcusmas',
'         WHERE CUSTMRID = a.CUSTMRID)',
'          cusname',
'  FROM NMCUSVLG a',
' /*WHERE MRKFOR_SCH=''Y''*/',
'   --and NVL (A.APP_FLG, ''N'') = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>'style="box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); displa'
||'y: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 15px; font-weight: bold; padding: 6px 24px; text-decoration: none; text-shadow: 0px -1px 0px rgb(40, 57, 102);"'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(125390876948965649)
,p_name=>'CUSTOMER INTEREST REPORT'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'RILADM'
,p_internal_uid=>90255518156024510
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37858629237405068)
,p_db_column_name=>'COMPCODE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37859054728405068)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37859850294405069)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37860237027405069)
,p_db_column_name=>'SMANCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37860593613405070)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37860986326405070)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37861443128405071)
,p_db_column_name=>'APPRDATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37861836319405071)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37862258666405071)
,p_db_column_name=>'COSTCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37862564653405071)
,p_db_column_name=>'WARECODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37863005777405072)
,p_db_column_name=>'REMARKSS'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37863370423405072)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37863774471405072)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37864196424405073)
,p_db_column_name=>'MILLAGEE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Millagee'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37864622131405073)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37859435120405069)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>65
,p_column_identifier=>'D'
,p_column_label=>' Tracking No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37864970464405073)
,p_db_column_name=>'CUSNAME'
,p_display_order=>75
,p_column_identifier=>'CY'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37865381189405074)
,p_db_column_name=>'COLORCDE'
,p_display_order=>85
,p_column_identifier=>'CZ'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37865765024405074)
,p_db_column_name=>'ADDRTYPE'
,p_display_order=>95
,p_column_identifier=>'DA'
,p_column_label=>'Add. Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37866193196405074)
,p_db_column_name=>'TEFAXNUM'
,p_display_order=>105
,p_column_identifier=>'DB'
,p_column_label=>'Tefaxnum'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37866628440405074)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>115
,p_column_identifier=>'DC'
,p_column_label=>'Mail'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37867044161405075)
,p_db_column_name=>'STRTDATE'
,p_display_order=>125
,p_column_identifier=>'DD'
,p_column_label=>'Strtdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37867432207405075)
,p_db_column_name=>'VENDDATE'
,p_display_order=>135
,p_column_identifier=>'DE'
,p_column_label=>'Venddate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37867791464405075)
,p_db_column_name=>'CONFIRMC'
,p_display_order=>145
,p_column_identifier=>'DF'
,p_column_label=>'Confirmc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37868164345405076)
,p_db_column_name=>'VISITPLC'
,p_display_order=>155
,p_column_identifier=>'DG'
,p_column_label=>'Visitplc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37868655885405076)
,p_db_column_name=>'PARTYCD1'
,p_display_order=>165
,p_column_identifier=>'DH'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37869039591405076)
,p_db_column_name=>'PARTYCD2'
,p_display_order=>175
,p_column_identifier=>'DI'
,p_column_label=>'Partycd2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37869377074405077)
,p_db_column_name=>'PARTYCD3'
,p_display_order=>185
,p_column_identifier=>'DJ'
,p_column_label=>'Partycd3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37869823953405077)
,p_db_column_name=>'PARTYCD4'
,p_display_order=>195
,p_column_identifier=>'DK'
,p_column_label=>'Partycd4'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37870249376405077)
,p_db_column_name=>'POSBUYDTE'
,p_display_order=>205
,p_column_identifier=>'DL'
,p_column_label=>'Posbuydte'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37870562042405078)
,p_db_column_name=>'TSTDRIVE'
,p_display_order=>215
,p_column_identifier=>'DM'
,p_column_label=>'Tstdrive'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37871021376405078)
,p_db_column_name=>'SRSOFUND'
,p_display_order=>225
,p_column_identifier=>'DN'
,p_column_label=>'Srsofund'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37871452240405078)
,p_db_column_name=>'FUNDSTAT'
,p_display_order=>235
,p_column_identifier=>'DO'
,p_column_label=>'Fundstat'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37871819013405078)
,p_db_column_name=>'VHMADEIN'
,p_display_order=>245
,p_column_identifier=>'DP'
,p_column_label=>'Vhmadein'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37872171141405079)
,p_db_column_name=>'ALTRNTVE'
,p_display_order=>255
,p_column_identifier=>'DQ'
,p_column_label=>'Altrntve'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37872631512405079)
,p_db_column_name=>'VHCLYEAR'
,p_display_order=>265
,p_column_identifier=>'DR'
,p_column_label=>'Vhclyear'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37872979956405079)
,p_db_column_name=>'LOSOFCUS'
,p_display_order=>275
,p_column_identifier=>'DS'
,p_column_label=>'Losofcus'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37873364334405080)
,p_db_column_name=>'RECHEDLE'
,p_display_order=>285
,p_column_identifier=>'DT'
,p_column_label=>'Rechedle'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37873784071405080)
,p_db_column_name=>'VISITYPE'
,p_display_order=>295
,p_column_identifier=>'DU'
,p_column_label=>'Visitype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37874160429405080)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>305
,p_column_identifier=>'DV'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37874611282405081)
,p_db_column_name=>'CURRENT_BRAND'
,p_display_order=>315
,p_column_identifier=>'DW'
,p_column_label=>'Current Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37875039389405081)
,p_db_column_name=>'CURRENT_MODEL'
,p_display_order=>325
,p_column_identifier=>'DX'
,p_column_label=>'Current Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37875378555405081)
,p_db_column_name=>'PURCHASED_FROM'
,p_display_order=>335
,p_column_identifier=>'DY'
,p_column_label=>'Purchased From'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37875798030405081)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>345
,p_column_identifier=>'DZ'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37876224550405082)
,p_db_column_name=>'AVERAGE_MILEAGE'
,p_display_order=>355
,p_column_identifier=>'EA'
,p_column_label=>'Average Mileage'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37876646828405082)
,p_db_column_name=>'CONTACT_MODE'
,p_display_order=>365
,p_column_identifier=>'EB'
,p_column_label=>'Contact Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37876997178405082)
,p_db_column_name=>'INTERESTED_BRAND'
,p_display_order=>375
,p_column_identifier=>'EC'
,p_column_label=>'Interested Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37877449439405083)
,p_db_column_name=>'INTERESTED_MODEL'
,p_display_order=>385
,p_column_identifier=>'ED'
,p_column_label=>'Interested Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37877779567405083)
,p_db_column_name=>'INTERIOR_COLOR'
,p_display_order=>395
,p_column_identifier=>'EE'
,p_column_label=>'Interior Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37878226081405083)
,p_db_column_name=>'EXTERIOR_COLOR'
,p_display_order=>405
,p_column_identifier=>'EF'
,p_column_label=>'Exterior Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37878604883405084)
,p_db_column_name=>'FUEL_TYPE'
,p_display_order=>415
,p_column_identifier=>'EG'
,p_column_label=>'Fuel Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37878973912405084)
,p_db_column_name=>'TEST_DRIVE_FLAG'
,p_display_order=>425
,p_column_identifier=>'EH'
,p_column_label=>'Test Drive Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37879456215405084)
,p_db_column_name=>'TEST_DRIVE_MODEL'
,p_display_order=>435
,p_column_identifier=>'EI'
,p_column_label=>'Test Drive Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37879767153405085)
,p_db_column_name=>'TEST_DRIVE_DATE'
,p_display_order=>445
,p_column_identifier=>'EJ'
,p_column_label=>'Test Drive Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37880254891405085)
,p_db_column_name=>'TEST_BOOKING_DATE'
,p_display_order=>455
,p_column_identifier=>'EK'
,p_column_label=>'Test Booking Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37880569745405085)
,p_db_column_name=>'CUSTOMER_TEST_REMARKS'
,p_display_order=>465
,p_column_identifier=>'EL'
,p_column_label=>'Customer Test Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37881054345405085)
,p_db_column_name=>'CUSTOMER_REMARKS_SALES'
,p_display_order=>475
,p_column_identifier=>'EM'
,p_column_label=>'Customer Remarks Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37881439266405086)
,p_db_column_name=>'SALESMAN_REMARKS_SALES'
,p_display_order=>485
,p_column_identifier=>'EN'
,p_column_label=>'Salesman Remarks Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37881841673405086)
,p_db_column_name=>'NEXT_APOINTMENT_ON'
,p_display_order=>495
,p_column_identifier=>'EO'
,p_column_label=>'Next Apointment On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37882217893405086)
,p_db_column_name=>'SALES_POTENTIAL'
,p_display_order=>505
,p_column_identifier=>'EP'
,p_column_label=>'Sales Potential'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37882624707405087)
,p_db_column_name=>'REFERED_BY_SALES'
,p_display_order=>515
,p_column_identifier=>'EQ'
,p_column_label=>'Refered By Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37883005311405087)
,p_db_column_name=>'VERIFIED_FLAG_SALES'
,p_display_order=>525
,p_column_identifier=>'ER'
,p_column_label=>'Verified Flag Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37883417580405087)
,p_db_column_name=>'VERIFIED_BY_SALES'
,p_display_order=>535
,p_column_identifier=>'ES'
,p_column_label=>'Verified By Sales'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37883842888405088)
,p_db_column_name=>'INTIME'
,p_display_order=>545
,p_column_identifier=>'ET'
,p_column_label=>'Intime'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37884241429405088)
,p_db_column_name=>'OUTTIME'
,p_display_order=>555
,p_column_identifier=>'EU'
,p_column_label=>'Outtime'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37884601113405088)
,p_db_column_name=>'EXIST_VECHICLE'
,p_display_order=>565
,p_column_identifier=>'EV'
,p_column_label=>'Exist Vechicle'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37885003341405088)
,p_db_column_name=>'PURCHASE_TYPE'
,p_display_order=>575
,p_column_identifier=>'EW'
,p_column_label=>'Purchase Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37885456380405089)
,p_db_column_name=>'MRKFOR_SCH'
,p_display_order=>585
,p_column_identifier=>'EX'
,p_column_label=>'Mrkfor Sch'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37885831193405089)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>595
,p_column_identifier=>'FA'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37886165039405089)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>605
,p_column_identifier=>'FB'
,p_column_label=>' '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(37858195765405067)
,p_db_column_name=>'FLOWUP'
,p_display_order=>615
,p_column_identifier=>'FC'
,p_column_label=>'Follow Up'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(125431654187965930)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'27512'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:CUSNAME:COLORCDE:CUSTMAIL:PURCHASE_DATE:INTERESTED_BRAND:INTERESTED_MODEL:INTERIOR_COLOR:PURCHASE_TYPE:SUBTTYPE:DOCTDATE:PARTYCD1:ITEMCODE:SERLNUMB:DOCTTYPE:COMPCODE:FLOWUP:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(127297736411638388)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P250_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P250_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37922685232405226)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(39971233758050174)
,p_button_name=>'LEAD_SELECTION_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lead Selection'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:5001:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37887025204405091)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(125390837185965649)
,p_button_name=>'LEAD_SELECTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Lead Selection'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:5001:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37887429710405092)
,p_name=>'P250_DOCNUMBR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Docnumber'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37887785633405093)
,p_name=>'P250_TEST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
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
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37888180045405093)
,p_name=>'P250_COMPCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Compcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37888580147405093)
,p_name=>'P250_DOCTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Docttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37888972064405094)
,p_name=>'P250_SUBTTYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Subttype'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(37889398925405094)
,p_name=>'P250_DOCTDATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Doctdate'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37889805805405094)
,p_name=>'P250_ITEMCODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37890163129405094)
,p_name=>'P250_SERLNUMB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Serlnumb'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37890569426405094)
,p_name=>'P250_PARTYCD1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(125390837185965649)
,p_prompt=>'Partycd1'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37891298977405096)
,p_name=>'P250_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(127297736411638388)
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
 p_id=>wwv_flow_api.id(37891742595405096)
,p_name=>'P250_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(127297736411638388)
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
 p_id=>wwv_flow_api.id(37892124336405097)
,p_name=>'P250_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(127297736411638388)
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
 p_id=>wwv_flow_api.id(37923095896405226)
,p_name=>'P250_DOCNUMBR_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37923548654405227)
,p_name=>'P250_TEST_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37923874146405227)
,p_name=>'P250_COMPCODE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37924331517405227)
,p_name=>'P250_DOCTTYPE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37924747914405227)
,p_name=>'P250_SUBTTYPE_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37925106621405228)
,p_name=>'P250_DOCTDATE_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37925517630405228)
,p_name=>'P250_ITEMCODE_1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37925904466405228)
,p_name=>'P250_SERLNUMB_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37926341543405228)
,p_name=>'P250_PARTYCD1_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(39971233758050174)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37927775789405232)
,p_name=>'call modal window'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'input[name="f01"]'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37928311143405233)
,p_event_id=>wwv_flow_api.id(37927775789405232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P250_TEST'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:5003:&APP_SESSION.:::5003:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'80'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37928753293405233)
,p_name=>'click docnumber'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P250_COMPCODE,P250_DOCTTYPE,P250_SUBTTYPE,P250_DOCNUMBR,P250_DOCTDATE,P250_PARTYCD1,P250_ITEMCODE,P250_SERLNUMB'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37929235482405234)
,p_event_id=>wwv_flow_api.id(37928753293405233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P250_TEST:=:P250_DOCNUMBR;',
'end;'))
,p_attribute_02=>'P250_COMPCODE,P250_DOCTTYPE,P250_SUBTTYPE,P250_DOCNUMBR,P250_DOCTDATE,P250_PARTYCD1,P250_ITEMCODE,P250_SERLNUMB'
,p_attribute_03=>'P250_TEST'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37929645885405234)
,p_name=>'hide '
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37930104818405234)
,p_event_id=>wwv_flow_api.id(37929645885405234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tds = document.getElementsByTagName(''f05''),i;',
'for (i in tds) {',
'  tds[i].style.display = ''none'';',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37931411975405235)
,p_name=>'Change_field_enable'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.ig-link'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37931921142405235)
,p_event_id=>wwv_flow_api.id(37931411975405235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $te = $(this.triggeringElement);',
' ',
'//Get the ID of the row',
'var rowId = $te.closest(''tr'').data(''id'');',
' ',
'//Identify the particular interactive grid',
'var ig$ = apex.region("t").widget();',
' ',
'//Fetch the model for the interactive grid',
'var model = ig$.interactiveGrid("getViews","grid").model;',
' ',
'//Fetch the record for the particular rowId',
'var record = model.getRecord(rowId);',
' ',
'//Access the cell value via the column name',
'var sal = model.getValue(record,"CONFIRMC");',
' ',
'//Set the values for the JOB and SAL cells',
'if (sal == ''Y'') {',
'  // document.getelementbyid(''R'').disabled=''disabled'';',
'    var inputs=document.getelementbyid(''R_HDR''); //getElementsByTagName(''input'');',
'     inputs.disabled=true;',
'}',
'//model.setValue(record,"DNAME",sal); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37930540659405235)
,p_name=>'set_value'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37931055339405235)
,p_event_id=>wwv_flow_api.id(37930540659405235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :CONFIRMC = ''Y'' then',
' :RESNFLST := null;',
' raise_application_error(-20000,''Cannot Entry Reason for Winner...'');',
'end if;  '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37926754730405229)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(39971233758050174)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Customer Lead Selection - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37927376297405232)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check_change'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :CONFIRMC = ''Y'' then',
' :RESNFLST := null;',
' raise_application_error(-20000,''Cannot Entry Reason for Winner...'');',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
