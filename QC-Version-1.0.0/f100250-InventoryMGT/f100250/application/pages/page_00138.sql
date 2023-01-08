prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Booking'
,p_alias=>'NMMRKBOK'
,p_page_mode=>'MODAL'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
'function getsprdetail(pThis)',
'{    ',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'var custmid= html_GetElement(''f45_''+vRow).value;',
'apex.item(''P138_CUSTOMRID'').setValue( custmid);',
'$(document).ready(function(){',
'  $(''#P138_CUSTOMRID'').trigger(''click'');',
'});',
'    ',
'var docnumr= html_GetElement(''f46_''+vRow).value;',
'apex.item(''P138_DOCNUMBR'').setValue( docnumr);',
'$(document).ready(function(){',
'  $(''#P138_DOCNUMBR'').trigger(''click'');',
'});',
'    ',
'var partycde= html_GetElement(''f47_''+vRow).value;',
'apex.item(''P138_PARTYCDE'').setValue( partycde);',
'$(document).ready(function(){',
'  $(''#P138_PARTYCDE'').trigger(''click'');',
'});',
'    ',
'var warecde= html_GetElement(''f48_''+vRow).value;',
'apex.item(''P138_WARCODE'').setValue( warecde);',
'$(document).ready(function(){',
'  $(''#P138_WARCODE'').trigger(''click'');',
'});',
'    ',
'    var costcde= html_GetElement(''f44_''+vRow).value;',
'apex.item(''P138_COSTCODE'').setValue( costcde);',
'$(document).ready(function(){',
'  $(''#P138_COSTCODE'').trigger(''click'');',
'});',
'}',
'</script>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.report-standard td.data {',
'    padding: 0px 0px !important;',
'}',
'table.formlayout td {',
'padding-bottom: 0px !important;',
'}',
'#tabs .bg {',
'    height: 8px ! important;',
'    }',
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}'))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200102204621'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136906302484262387)
,p_plug_name=>' M'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>250
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(136914684247262427)
,p_name=>'Booking'
,p_parent_plug_id=>wwv_flow_api.id(136906302484262387)
,p_template=>wwv_flow_api.id(47587389655858184)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
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
'"SMANCODE",',
'"ITEMCODE",',
'"COLORCDE",',
'"CUSTMRID",',
'"RAISEDBY",',
'APEX_ITEM.HIDDEN(45,A.CUSTMRID,null,''f45_'' || ''#ROWNUM#'',null) CUSTMR_ID,',
'APEX_ITEM.HIDDEN(46,A.DOCNUMBR,null,''f46_'' || ''#ROWNUM#'',null) DOCNUMBR_ID,',
'APEX_ITEM.HIDDEN(47,A.PARTYCD1,null,''f47_'' || ''#ROWNUM#'',null) PARTYCD1_ID,',
'APEX_ITEM.HIDDEN(48,A.WARECODE,null,''f48_'' || ''#ROWNUM#'',null) WARECDE_ID,',
'APEX_ITEM.HIDDEN(44,A.COSTCODE,null,''f44_'' || ''#ROWNUM#'',null) COSTCDE_ID,',
'(select distinct CUSTNAME from nmmrkcus where CUSTMRID= A.CUSTMRID',
'and COMPCODE=A.COMPCODE ) custname,',
'(SELECT DISTINCT smanname',
'                    FROM nmsmnmas',
'                   WHERE compcode = a.compcode',
'                     AND smancode = a.smancode) smname,',
'(SELECT INITCAP (s.nmcoddes)',
'     FROM nmcodmas s',
'    WHERE s.nmhrdcde = ''COM''',
'      AND s.modlcode = ''NM''',
'      AND s.compcode =a.compcode',
'      AND s.nmsofcde =  a.INTERESTED_BRAND) brand,',
'(SELECT INITCAP (s.nmcoddes) ',
'     FROM nmcodmas s',
'    WHERE s.nmhrdcde = ''MOD''',
'      AND s.modlcode = ''NM''',
'      AND s.compcode = a.compcode',
'      AND s.nmsofcde =  a.INTERESTED_MODEL) model,',
'(SELECT INITCAP (s.nmcoddes)',
'     FROM nmcodmas s',
'    WHERE s.nmhrdcde = ''CLR''',
'      AND s.modlcode = ''NM''',
'      AND s.compcode = a.compcode',
'      AND s.nmsofcde =  a.INTERIOR_COLOR) color,',
'(SELECT ITEMDES1  FROM NMITEMAS',
'    WHERE COMPCODE=a.COMPCODE',
'    AND ITEMCODE=a.ITEMCODE) itemname,',
'( SELECT INITCAP (nmcoddes) ',
'     FROM nmcodmas',
'    WHERE compcode = a.compcode',
'      AND nmhrdcde = ''VST''',
'      AND modlcode = ''NM''',
'      AND nmsofcde = a.VISITYPE) visitype,',
'"ADDRTYPE",',
'"CUSTMAIL",',
'"STRTDATE",',
'"VENDDATE",',
'"OPRSTAMP",',
'"TIMSTAMP",',
'"REMARKSS",',
'"CONFIRMC",',
'"PARTYCD1",',
'"PARTYCD2",',
'"COSTCODE",',
'"WARECODE",',
'"MODIFYDT",',
'"CURRENT_BRAND",',
'"CURRENT_MODEL",',
'"PURCHASED_FROM",',
'"PURCHASE_DATE",',
'"FUEL_TYPE",',
'"PURCHASE_TYPE",',
'"MRKFOR_SCH",',
'"AREACODE_PK",',
'"PAYMENT_MODE",',
'"STATUSCD",',
'"PARTYCDE",',
'"SALES_POTENTIAL",',
'Case when DOCNUMBR is not null then',
'''<a id="f49_#ROWNUM#" class="Booking"style="cursor: pointer;margin-left: 9%;font-size: 10px;font-weight: bold;"onclick="getsprdetail(this);"><font color="blue";>''|| ''  Booking ''||''</font></a>''',
'else null',
'end Booking,',
'  ''<input type="button" id="button" name="Booking" value="Booking" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100%) repea'
||'t scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; text-shado'
||'w: 0px -1px 0px rgb(40, 57, 102);" />''',
'          "Booking"',
'from "#OWNER#"."NMCUSVLG" "A"',
' where compcode = :compcode ',
'and docnumbr=nvl(:P138_TRCDOCNUMBR,docnumbr)',
'and nvl(SALES_POTENTIAL,0) between nvl(:P138_S_POTENTIAL,nvl(SALES_POTENTIAL,0)) and nvl(:P138_E_POTENTIAL,nvl(SALES_POTENTIAL,0)) ',
'and nvl(warecode,''A'')=nvl(:P138_S_WRECDE,nvl(warecode,''A''))',
'and nvl(smancode,''A'')=nvl(:P138_SMANCODE1,nvl(smancode,''A''))',
'and nvl(custmrid,''C'')=nvl(:P138_PROSCODE,nvl(custmrid,''C''))',
'and nvl(PURCHASE_TYPE,''A'')=NVL(:P138_PURTYPE,nvl(PURCHASE_TYPE,''A''))',
'and CONFIRMC=''Y'' ',
'AND STATUSCD=''APR'' ',
'AND OPEN_STATUS=''OPN''',
'AND SMANCODE IN',
'(select smancode from vwsman_tree_v ',
'                   where SMANCODE_tree  like',
'                         ''%''||(select smancode from nmsmnmas where username=:APP_USER and compcode=:compcode)||''%''',
'                     and compcode=:compcode',
'                )'))
,p_ajax_items_to_submit=>'P138_TRCDOCNUMBR,P138_S_POTENTIAL,P138_E_POTENTIAL,P138_S_WRECDE,P138_SMANCODE1,P138_PROSCODE,P138_PURTYPE,P138_OPEN_STATUS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_show_link=>'Y'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
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
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136929532470262455)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136929888259262455)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'COMPCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136930302428262455)
,p_query_column_id=>3
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136930678082262455)
,p_query_column_id=>4
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SUBTTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136931108890262455)
,p_query_column_id=>5
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>6
,p_column_heading=>'Tracking No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_cattributes=>'readonly=true'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCNUMBR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136931524422262455)
,p_query_column_id=>6
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>10
,p_column_heading=>'Visit/Enq Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_column_width=>8
,p_cattributes=>'readonly=true'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'DOCTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136931915632262460)
,p_query_column_id=>7
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SERLNUMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136932323606262460)
,p_query_column_id=>8
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'SMANCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136932675075262460)
,p_query_column_id=>9
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ITEMCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136915115781262437)
,p_query_column_id=>10
,p_column_alias=>'COLORCDE'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'COLORCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136915493081262443)
,p_query_column_id=>11
,p_column_alias=>'CUSTMRID'
,p_column_display_sequence=>7
,p_column_heading=>'Prospect Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT'
,p_column_width=>12
,p_cattributes=>'readonly=true'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CUSTMRID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136915919816262443)
,p_query_column_id=>12
,p_column_alias=>'RAISEDBY'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137252794910331112)
,p_query_column_id=>13
,p_column_alias=>'CUSTMR_ID'
,p_column_display_sequence=>48
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137253258458331115)
,p_query_column_id=>14
,p_column_alias=>'DOCNUMBR_ID'
,p_column_display_sequence=>49
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137594796649314527)
,p_query_column_id=>15
,p_column_alias=>'PARTYCD1_ID'
,p_column_display_sequence=>50
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137929239728934190)
,p_query_column_id=>16
,p_column_alias=>'WARECDE_ID'
,p_column_display_sequence=>51
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137929629697934196)
,p_query_column_id=>17
,p_column_alias=>'COSTCDE_ID'
,p_column_display_sequence=>52
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136916316473262443)
,p_query_column_id=>18
,p_column_alias=>'CUSTNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Prospect Name'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136916757179262443)
,p_query_column_id=>19
,p_column_alias=>'SMNAME'
,p_column_display_sequence=>21
,p_column_heading=>'Sales Executive'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136917143215262443)
,p_query_column_id=>20
,p_column_alias=>'BRAND'
,p_column_display_sequence=>14
,p_column_heading=>'Brand'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136917486803262451)
,p_query_column_id=>21
,p_column_alias=>'MODEL'
,p_column_display_sequence=>15
,p_column_heading=>'Model'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136917955325262451)
,p_query_column_id=>22
,p_column_alias=>'COLOR'
,p_column_display_sequence=>16
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136918349614262451)
,p_query_column_id=>23
,p_column_alias=>'ITEMNAME'
,p_column_display_sequence=>13
,p_column_heading=>'Vehicle/Product'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136918704939262452)
,p_query_column_id=>24
,p_column_alias=>'VISITYPE'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136919166131262452)
,p_query_column_id=>25
,p_column_alias=>'ADDRTYPE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'ADDRTYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136919542908262452)
,p_query_column_id=>26
,p_column_alias=>'CUSTMAIL'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CUSTMAIL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136919963976262452)
,p_query_column_id=>27
,p_column_alias=>'STRTDATE'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'STRTDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136920292591262452)
,p_query_column_id=>28
,p_column_alias=>'VENDDATE'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'VENDDATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136920683177262452)
,p_query_column_id=>29
,p_column_alias=>'OPRSTAMP'
,p_column_display_sequence=>27
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'OPRSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136921143011262452)
,p_query_column_id=>30
,p_column_alias=>'TIMSTAMP'
,p_column_display_sequence=>28
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'TIMSTAMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136921549076262452)
,p_query_column_id=>31
,p_column_alias=>'REMARKSS'
,p_column_display_sequence=>29
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'REMARKSS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136921901701262452)
,p_query_column_id=>32
,p_column_alias=>'CONFIRMC'
,p_column_display_sequence=>30
,p_column_heading=>'Confirm?'
,p_use_as_row_header=>'N'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Win;Y,Lost;N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CONFIRMC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136922277880262452)
,p_query_column_id=>33
,p_column_alias=>'PARTYCD1'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PARTYCD1'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136922723362262454)
,p_query_column_id=>34
,p_column_alias=>'PARTYCD2'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PARTYCD2'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136923069695262454)
,p_query_column_id=>35
,p_column_alias=>'COSTCODE'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'COSTCODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136923564590262454)
,p_query_column_id=>36
,p_column_alias=>'WARECODE'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'WARECODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136923901483262454)
,p_query_column_id=>37
,p_column_alias=>'MODIFYDT'
,p_column_display_sequence=>35
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'MODIFYDT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136924300860262454)
,p_query_column_id=>38
,p_column_alias=>'CURRENT_BRAND'
,p_column_display_sequence=>36
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CURRENT_BRAND'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136924761385262454)
,p_query_column_id=>39
,p_column_alias=>'CURRENT_MODEL'
,p_column_display_sequence=>37
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'CURRENT_MODEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136925161176262454)
,p_query_column_id=>40
,p_column_alias=>'PURCHASED_FROM'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PURCHASED_FROM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136925500297262454)
,p_query_column_id=>41
,p_column_alias=>'PURCHASE_DATE'
,p_column_display_sequence=>39
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PURCHASE_DATE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136925881439262454)
,p_query_column_id=>42
,p_column_alias=>'FUEL_TYPE'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'FUEL_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136926337219262454)
,p_query_column_id=>43
,p_column_alias=>'PURCHASE_TYPE'
,p_column_display_sequence=>19
,p_column_heading=>'Mode Of Cust.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'SELECT_LIST'
,p_inline_lov=>'STATIC:Hot;H,Warm;W,Cold;C'
,p_lov_show_nulls=>'YES'
,p_lov_null_text=>'Select Purchase Type'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PURCHASE_TYPE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136926679670262454)
,p_query_column_id=>44
,p_column_alias=>'MRKFOR_SCH'
,p_column_display_sequence=>41
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'MRKFOR_SCH'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136927077416262454)
,p_query_column_id=>45
,p_column_alias=>'AREACODE_PK'
,p_column_display_sequence=>42
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'AREACODE_PK'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136927493309262454)
,p_query_column_id=>46
,p_column_alias=>'PAYMENT_MODE'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PAYMENT_MODE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136927926356262455)
,p_query_column_id=>47
,p_column_alias=>'STATUSCD'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'STATUSCD'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136928343688262455)
,p_query_column_id=>48
,p_column_alias=>'PARTYCDE'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_derived_column=>'N'
,p_include_in_export=>'N'
,p_ref_schema=>'ORBRGS'
,p_ref_table_name=>'NMCUSVLG'
,p_ref_column_name=>'PARTYCDE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136928719991262455)
,p_query_column_id=>49
,p_column_alias=>'SALES_POTENTIAL'
,p_column_display_sequence=>18
,p_column_heading=>'Potential'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'8'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(137137720437092129)
,p_query_column_id=>50
,p_column_alias=>'BOOKING'
,p_column_display_sequence=>47
,p_column_heading=>'Booking'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_print_col_width=>'0'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136997801855386994)
,p_query_column_id=>51
,p_column_alias=>'Booking'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(136929090269262455)
,p_query_column_id=>52
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136906669388262402)
,p_plug_name=>'Booking'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>200
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136913888706262421)
,p_plug_name=>'d'
,p_parent_plug_id=>wwv_flow_api.id(136906669388262402)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136907155985262402)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136935902328262468)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P138_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P138_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(137858345346096295)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136933140356262461)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(136914684247262427)
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
 p_id=>wwv_flow_api.id(136914329169262421)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(136913888706262421)
,p_button_name=>'FOLLOWUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Follow-Up'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136933523876262461)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(136906302484262387)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136933870302262461)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136906302484262387)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:138::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(136934281129262461)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(136914684247262427)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
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
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(136941270560262507)
,p_branch_action=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(136941699088262510)
,p_branch_action=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(136933523876262461)
,p_branch_sequence=>1
,p_branch_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136907471483262402)
,p_name=>'P138_TRCDOCNUMBR'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Tracking Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ',
'         v.docnumbr||'' ( ''||INITCAP (c.CUSTMRID)||'' ) ''||INITCAP (c.custname) D,',
'         v.docnumbr R',
'    FROM nmcusvlg v, nmmrkcus c',
'   WHERE     v.compcode = :compcode',
'         AND v.compcode = c.compcode',
'         AND v.custmrid = c.custmrid',
'         AND v.docttype = ''CS''',
'         AND v.subttype = 2',
'         AND (c.custname LIKE ''%'' OR v.docnumbr LIKE ''%'')',
'         AND smancode IN (SELECT DISTINCT smancode',
'                            FROM vwsman_tree_v',
'                           WHERE SMANCODE_tree LIKE',
'                                       ''%''',
'                                    || (SELECT smancode',
'                                          FROM nmsmnmas',
'                                         WHERE username = :APP_USER AND compcode = :compcode)',
'                                    || ''%''',
'                                 AND compcode = :compcode)',
'ORDER BY 2 DESC'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136907908119262418)
,p_name=>'P138_S_WRECDE'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Showroom'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
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
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136908291511262418)
,p_name=>'P138_S_WAREDESC'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_api.id(136908720282262418)
,p_name=>'P138_S_VISITYPE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Visit Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmsofcde||'' ''||nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND modlcode = ''NM'' AND nmhrdcde = ''VST'''))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136909505456262418)
,p_name=>'P138_PROSCODE'
,p_item_sequence=>588
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Prospect'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT ',
'         v.docnumbr||'' ( ''||INITCAP (c.CUSTMRID)||'' ) ''||INITCAP (c.custname) D,',
'         c.CUSTMRID R',
'    FROM nmcusvlg v, nmmrkcus c',
'   WHERE     v.compcode = :compcode',
'         AND v.compcode = c.compcode',
'         AND v.custmrid = c.custmrid',
'         AND v.docttype = ''CS''',
'         AND v.subttype = 2',
'         AND (c.custname LIKE ''%'' OR v.docnumbr LIKE ''%'')',
'         AND smancode IN (SELECT DISTINCT smancode',
'                            FROM vwsman_tree_v',
'                           WHERE SMANCODE_tree LIKE',
'                                       ''%''',
'                                    || (SELECT smancode',
'                                          FROM nmsmnmas',
'                                         WHERE username = :APP_USER AND compcode = :compcode)',
'                                    || ''%''',
'                                 AND compcode = :compcode)',
'ORDER BY 2 DESC'))
,p_cSize=>8
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136909892940262418)
,p_name=>'P138_PROSNAME'
,p_item_sequence=>589
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_api.id(136910304799262418)
,p_name=>'P138_SMANCODE1'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT DISTINCT',
'         ',
'     INITCAP (smancode || '':'' || a.smanname) smanname, (a.smancode) smancode',
'    FROM nmsmnmas a',
'   WHERE a.compcode = :compcode',
'         AND smancode IN (SELECT smancode',
'                            FROM vwsman_tree_v',
'                           WHERE SMANCODE_tree LIKE',
'                                       ''%''',
'                                    || (SELECT smancode',
'                                          FROM nmsmnmas',
'                                         WHERE username = :APP_USER AND compcode = :compcode)',
'                                    || ''%''',
'                                 AND compcode = :compcode)',
'ORDER BY a.smancode'))
,p_cSize=>8
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136910704562262419)
,p_name=>'P138_S_SMANNAME'
,p_item_sequence=>611
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
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
 p_id=>wwv_flow_api.id(136911107468262419)
,p_name=>'P138_S_POTENTIAL'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Potential'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND modlcode = ''NM'' AND nmhrdcde = ''VST'''))
,p_cSize=>14
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136911513908262419)
,p_name=>'P138_E_POTENTIAL'
,p_item_sequence=>635
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmcoddes, nmsofcde',
'  from nmcodmas',
' where compcode = :compcode and modlcode = ''NM'' and nmhrdcde = ''VST'''))
,p_cSize=>14
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136912347173262419)
,p_name=>'P138_S_START_DATE'
,p_item_sequence=>615
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Start  Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(136912719453262419)
,p_name=>'P138_S_END_DATE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_api.id(136913127871262419)
,p_name=>'P138_OPEN_STATUS'
,p_item_sequence=>670
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_item_default=>'OPN'
,p_prompt=>'Open Status'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(136913564731262419)
,p_name=>'P138_PURTYPE'
,p_item_sequence=>680
,p_item_plug_id=>wwv_flow_api.id(136907155985262402)
,p_prompt=>'Mode of Cust.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Hot;H,Warm;W,Cold;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'List Elements'
,p_lov_null_value=>'0'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_tag_attributes=>'style="width:100%;"'
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
 p_id=>wwv_flow_api.id(136936355301262471)
,p_name=>'P138_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(136935902328262468)
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
 p_id=>wwv_flow_api.id(136936751478262471)
,p_name=>'P138_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(136935902328262468)
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
 p_id=>wwv_flow_api.id(136937119793262471)
,p_name=>'P138_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(136935902328262468)
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
 p_id=>wwv_flow_api.id(137251611521315716)
,p_name=>'P138_CUSTOMRID'
,p_item_sequence=>690
,p_item_plug_id=>wwv_flow_api.id(136913888706262421)
,p_prompt=>'Customrid'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(137251933978315718)
,p_name=>'P138_DOCNUMBR'
,p_item_sequence=>700
,p_item_plug_id=>wwv_flow_api.id(136913888706262421)
,p_prompt=>'Docnumbr'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
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
 p_id=>wwv_flow_api.id(137564076187277319)
,p_name=>'P138_PARTYCDE'
,p_item_sequence=>710
,p_item_plug_id=>wwv_flow_api.id(136913888706262421)
,p_prompt=>'Partycde'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137928156082908659)
,p_name=>'P138_WARCODE'
,p_item_sequence=>720
,p_item_plug_id=>wwv_flow_api.id(136913888706262421)
,p_prompt=>'Warcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(137928405524908660)
,p_name=>'P138_COSTCODE'
,p_item_sequence=>730
,p_item_plug_id=>wwv_flow_api.id(136913888706262421)
,p_prompt=>'Costcode'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136938556738262493)
,p_name=>'dy_potential'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_PROSCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136939051799262496)
,p_event_id=>wwv_flow_api.id(136938556738262493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT  distinct c.custname',
'   into :P138_PROSNAME',
'    FROM  nmmrkcus c',
'   WHERE     c.compcode = :compcode',
'   and CUSTMRID=:P138_PROSCODE;',
'exception',
'when no_data_found then',
':P138_PROSNAME:=:P138_PROSCODE;',
'when too_many_rows then',
':P138_PROSNAME:=''2'';',
'when others then',
':P138_PROSNAME:=''3'';',
'end;'))
,p_attribute_02=>'P138_PROSCODE'
,p_attribute_03=>'P138_PROSNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136939419081262502)
,p_name=>'dy_exec'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_SMANCODE1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136939916241262502)
,p_event_id=>wwv_flow_api.id(136939419081262502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' select distinct SMANNAME',
'into :P138_S_SMANNAME',
' from nmsmnmas',
' where COMPCODE=:COMPCODE',
' and SMANCODE=:P138_SMANCODE1;',
'end;'))
,p_attribute_02=>'P138_SMANCODE1'
,p_attribute_03=>'P138_S_SMANNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(136940305520262502)
,p_name=>'Followup History'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(136196114453430864)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(136940817564262505)
,p_event_id=>wwv_flow_api.id(136940305520262502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:134:&APP_SESSION.:::134:::'
,p_attribute_05=>'href'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'85'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(137440808200835345)
,p_name=>'call booking'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.Booking'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(137441208461835345)
,p_event_id=>wwv_flow_api.id(137440808200835345)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM_SKILLBUILDERS_MODAL_PAGE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P138_CUSTOMRID'
,p_attribute_02=>'STATIC'
,p_attribute_03=>'f?p=&APP_ID.:139:&APP_SESSION.:::139:::'
,p_attribute_06=>'div#success-message'
,p_attribute_07=>'STATIC_%'
,p_attribute_08=>'80'
,p_attribute_09=>'95'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(137441726517858626)
,p_name=>'CLick customer id'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P138_CUSTOMRID,P138_PARTYCDE,P138_WARCODE,P138_COSTCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(137442086720858626)
,p_event_id=>wwv_flow_api.id(137441726517858626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'null;',
'end;'))
,p_attribute_02=>'P138_CUSTOMRID,P138_DOCNUMBR,P138_PARTYCDE,P138_WARCODE,P138_COSTCODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136938071792262493)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P138_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136934752001262461)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(136914684247262427)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(136933523876262461)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(136935161634262468)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(136914684247262427)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.component_end;
end;
/
