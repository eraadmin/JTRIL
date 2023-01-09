prompt --application/pages/page_05001
begin
--   Manifest
--     PAGE: 05001
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
 p_id=>5001
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Customer Sorting'
,p_step_title=>'Customer Sorting'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-inputContainer, .t-Form-inputContainer.col, .t-Form-labelContainer, .t-Form-labelContainer.col {',
'    padding: 0.2rem;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122712662821898282)
,p_plug_name=>'Customer Sorting'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122713026682904988)
,p_plug_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(122712662821898282)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122716054208509203)
,p_name=>' '
,p_parent_plug_id=>wwv_flow_api.id(122712662821898282)
,p_template=>wwv_flow_api.id(47571367397858173)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  --APEX_ITEM.CHECKBOX2(1,A.DOCNUMBR,NULL,NULL,NULL,''f01_#ROWNUM#'') C,',
'        --APEX_ITEM.CHECKBOX(1,1,decode(1,1,''CHECKDED'',NULL)) C,',
'       APEX_ITEM.CHECKBOX(1,ROWNUM,''f01_#ROWNUM#'') C,',
'       APEX_ITEM.HIDDEN(2,A.COMPCODE,null,''f02_#ROWNUM#'',null) COMPCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(3, B.PRTYNAME,''f03_#ROWNUM#'') customer_name,',
'       APEX_ITEM.DISPLAY_AND_SAVE(4, B.PHONENUM,''f04_#ROWNUM#'') PHONE,',
'      -- APEX_ITEM.DISPLAY_AND_SAVE(5,(B.PARTYAD1|| '' ''||B.PARTYAD2||'' ''||B.PARTYAD3|| '' ''|| B.PARTYAD4),''f05_#ROWNUM#'') address,',
'( B.PARTYAD1|| '' ''||B.PARTYAD2||'' ''||B.PARTYAD3|| '' ''|| B.PARTYAD4 ) address,',
'       APEX_ITEM.DISPLAY_AND_SAVE(6,A.INTERESTED_BRAND,''f06_#ROWNUM#'') brand,',
'       APEX_ITEM.DISPLAY_AND_SAVE(7,A.INTERESTED_BRAND,''f07_#ROWNUM#'') MODEL,',
'       APEX_ITEM.DISPLAY_AND_SAVE(8,A.INTERIOR_COLOR,''f08_#ROWNUM#'') color,',
'       APEX_ITEM.DISPLAY_AND_SAVE(9,A.SALES_POTENTIAL,''f09_#ROWNUM#'') potential,',
'       APEX_ITEM.DISPLAY_AND_SAVE(10,A.PURCHASE_TYPE,''f10_#ROWNUM#'') purchase_typ,',
'       APEX_ITEM.DISPLAY_AND_SAVE(11,A.DOCNUMBR,''f11_#ROWNUM#'') DOCNUMBR,',
'       APEX_ITEM.DISPLAY_AND_SAVE(12,A.DOCTDATE,''f12_#ROWNUM#'') DOCTDATE,',
'       APEX_ITEM.HIDDEN(13,A.DOCTTYPE,null,''f13_#ROWNUM#'',null) DOCTTYPE, ',
'       APEX_ITEM.DISPLAY_AND_SAVE(14,A.SERLNUMB,''f14_#ROWNUM#'') SERLNUMB,',
'       APEX_ITEM.DISPLAY_AND_SAVE(15,A.ITEMCODE,''f15_#ROWNUM#'') ITEMCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(16,A.SMANCODE,''f16_#ROWNUM#'') SMANCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(17,A.PARTYCD1,''f17_#ROWNUM#'') PARTYCD1,',
'       APEX_ITEM.HIDDEN(18,A.SUBTTYPE,null,''f18_#ROWNUM#'',null) SUBTTYPE,',
'        case when PURCHASE_TYPE=''W'' then ''Warm''',
'       when PURCHASE_TYPE=''H'' then ''Hot''',
'       when PURCHASE_TYPE=''C'' then ''Cold''',
'       end PURCHASE_TYPE1',
'  FROM nmcusvlg A,sycompty B',
' WHERE A.COMPCODE =:COMPCODE ',
'       AND A.COMPCODE = B.COMPCODE',
'       AND A.PARTYCD1 = B.PARTYCDE ',
'       and( A.PURCHASE_TYPE = nvl(trim(upper(:P5001_PURTYPE)),A.PURCHASE_TYPE)',
'       OR A.SALES_POTENTIAL between nvl(:P5001_POTENFRM,A.SALES_POTENTIAL) and nvl(:P5001_POTENTO,A.SALES_POTENTIAL)',
'       OR A.DOCNUMBR= nvl(:P5001_TRCNO,A.DOCNUMBR) ',
'       OR A.SMANCODE=nvl(:P5001_SALMAN,A.SMANCODE)',
'       OR A.STRTDATE=nvl(:P5001_VISTSTRT,A.STRTDATE)',
'       OR A.VENDDATE=nvl(:P5001_VISITEND,A.VENDDATE)',
'       OR A.VISITYPE=nvl(:P5001_VISTYPE,A.VISITYPE))',
'       and MRKFOR_SCH=''N'''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5001_PURTYPE,P5001_POTENFRM,P5001_POTENTO,P5001_TRCNO,P5001_SALMAN,P5001_VISTSTRT,P5001_VISITEND,P5001_VISTYPE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'<marquee behavior="alternate" style="width:400px;"><h1 style="color:black; text-align:center;">No data found........</h1></marquee>'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APEX_ITEM.CHECKBOX(1,A.COMPCODE) C,',
'       APEX_ITEM.DISPLAY_AND_SAVE(2,A.COMPCODE) COMPCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(3, B.PRTYNAME) customer_name,',
'       APEX_ITEM.DISPLAY_AND_SAVE(4, B.PHONENUM) PHONE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(5,(B.PARTYAD1|| '' ''||B.PARTYAD2||'' ''||B.PARTYAD3|| '' ''|| B.PARTYAD4)) address,',
'       APEX_ITEM.DISPLAY_AND_SAVE(6,A.INTERESTED_BRAND) brand,',
'       APEX_ITEM.DISPLAY_AND_SAVE(7,A.INTERESTED_BRAND) MODEL,',
'       APEX_ITEM.DISPLAY_AND_SAVE(8,A.INTERIOR_COLOR) color,',
'       APEX_ITEM.DISPLAY_AND_SAVE(9,A.SALES_POTENTIAL) potential,',
'       APEX_ITEM.DISPLAY_AND_SAVE(10,A.PURCHASE_TYPE) purchase_typ,',
'       APEX_ITEM.DISPLAY_AND_SAVE(11,A.DOCNUMBR) DOCNUMBR,',
'       APEX_ITEM.DISPLAY_AND_SAVE(12,A.DOCTDATE) DOCTDATE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(13,A.DOCTTYPE) DOCTTYPE, ',
'       APEX_ITEM.DISPLAY_AND_SAVE(14,A.SERLNUMB) SERLNUMB,',
'       APEX_ITEM.DISPLAY_AND_SAVE(15,A.ITEMCODE) ITEMCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(16,A.SMANCODE) SMANCODE,',
'       APEX_ITEM.DISPLAY_AND_SAVE(17,A.PARTYCD1) PARTYCD1',
'  FROM nmcusvlg A, SYCOMPTY B',
' WHERE     A.COMPCODE = B.COMPCODE',
'       AND A.PARTYCD1 = B.PARTYCDE',
'       AND (A.PURCHASE_TYPE = trim(upper(:P5001_PTYP)) OR A.SALES_POTENTIAL = :P5001_SPOTE)'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122716615998509211)
,p_query_column_id=>1
,p_column_alias=>'C'
,p_column_display_sequence=>1
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122716950111509216)
,p_query_column_id=>2
,p_column_alias=>'COMPCODE'
,p_column_display_sequence=>17
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122717323802509218)
,p_query_column_id=>3
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Customer Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122717723606509218)
,p_query_column_id=>4
,p_column_alias=>'PHONE'
,p_column_display_sequence=>6
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122718115830509218)
,p_query_column_id=>5
,p_column_alias=>'ADDRESS'
,p_column_display_sequence=>5
,p_column_heading=>'Address'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <input type="text" name="f05" size="20" maxlength="2000" value="#ADDRESS#" readonly style="',
'    width: 500px;">'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122718488219509218)
,p_query_column_id=>6
,p_column_alias=>'BRAND'
,p_column_display_sequence=>8
,p_column_heading=>'Brand'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122718928850509218)
,p_query_column_id=>7
,p_column_alias=>'MODEL'
,p_column_display_sequence=>9
,p_column_heading=>'Model'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122719281203509218)
,p_query_column_id=>8
,p_column_alias=>'COLOR'
,p_column_display_sequence=>10
,p_column_heading=>'Color'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122719676441509218)
,p_query_column_id=>9
,p_column_alias=>'POTENTIAL'
,p_column_display_sequence=>11
,p_column_heading=>'Potential'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122720152489509218)
,p_query_column_id=>10
,p_column_alias=>'PURCHASE_TYP'
,p_column_display_sequence=>12
,p_column_heading=>'Purchase Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122720475640509218)
,p_query_column_id=>11
,p_column_alias=>'DOCNUMBR'
,p_column_display_sequence=>2
,p_column_heading=>'Schedule No.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122720894371509218)
,p_query_column_id=>12
,p_column_alias=>'DOCTDATE'
,p_column_display_sequence=>3
,p_column_heading=>'Schedule Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122781698477769354)
,p_query_column_id=>13
,p_column_alias=>'DOCTTYPE'
,p_column_display_sequence=>18
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122721330392509218)
,p_query_column_id=>14
,p_column_alias=>'SERLNUMB'
,p_column_display_sequence=>13
,p_column_heading=>'Serlnumb'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122721717155509218)
,p_query_column_id=>15
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>7
,p_column_heading=>'Item Code'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122722067226509224)
,p_query_column_id=>16
,p_column_alias=>'SMANCODE'
,p_column_display_sequence=>15
,p_column_heading=>'Smancode'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122722497709509224)
,p_query_column_id=>17
,p_column_alias=>'PARTYCD1'
,p_column_display_sequence=>16
,p_column_heading=>'Partycd1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123028847962238738)
,p_query_column_id=>18
,p_column_alias=>'SUBTTYPE'
,p_column_display_sequence=>19
,p_column_heading=>' '
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124887310035211565)
,p_query_column_id=>19
,p_column_alias=>'PURCHASE_TYPE1'
,p_column_display_sequence=>14
,p_column_heading=>'Purchase Type'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124553070183186308)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background:gray;"'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P5001_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P5001_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124584088833240454)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47595508514858189)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(7533132934253244474)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(122798962602921374)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(122713026682904988)
,p_button_name=>'SRC'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'BOTTOM'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(122714747315941307)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(122716054208509203)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'CREATE'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(122737966191520955)
,p_branch_name=>'BRNCH'
,p_branch_action=>'f?p=&APP_ID.:5000:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(122714747315941307)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122713495226923766)
,p_name=>'P5001_SPOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Potential '
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
 p_id=>wwv_flow_api.id(122713778767923771)
,p_name=>'P5001_PTYP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Purchase Type'
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
 p_id=>wwv_flow_api.id(123016009221078889)
,p_name=>'P5001_TEST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(122716054208509203)
,p_prompt=>'Test'
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
 p_id=>wwv_flow_api.id(124553415262186320)
,p_name=>'P5001_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(124553070183186308)
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
 p_id=>wwv_flow_api.id(124553726899186322)
,p_name=>'P5001_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(124553070183186308)
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
 p_id=>wwv_flow_api.id(124554119613186322)
,p_name=>'P5001_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(124553070183186308)
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
 p_id=>wwv_flow_api.id(126144552052797183)
,p_name=>'P5001_TRCNO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Tracking No.'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct DOCNUMBR||'' / ''||DOCTDATE d,DOCNUMBR r from nmcusvlg',
'where COMPCODE=:COMPCODE'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
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
 p_id=>wwv_flow_api.id(126144814613797186)
,p_name=>'P5001_WAREHOUSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Warehouse'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct WAREDESC||'' ( ''||WARECODE||'' )'' d,WARECODE r from nmwhsmas',
'where COMPCODE=:COMPCODE'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
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
 p_id=>wwv_flow_api.id(126145181005797188)
,p_name=>'P5001_VISTYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Visit Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
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
 p_id=>wwv_flow_api.id(126145617660797188)
,p_name=>'P5001_AREA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Area'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
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
 p_id=>wwv_flow_api.id(126146014443797188)
,p_name=>'P5001_SALMAN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Salesman'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SMANNAME||'' ( ''||SMANCODE||'' )'' d,SMANCODE r from nmsmnmas',
'where COMPCODE=:COMPCODE'))
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
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
 p_id=>wwv_flow_api.id(126146434052797188)
,p_name=>'P5001_POTENFRM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Potential From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
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
 p_id=>wwv_flow_api.id(126146810000797188)
,p_name=>'P5001_POTENTO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
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
 p_id=>wwv_flow_api.id(126147178124797188)
,p_name=>'P5001_VISTSTRT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Visit Startdate'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126147598124797188)
,p_name=>'P5001_VISITEND'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Visit Enddate'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(126148044529797188)
,p_name=>'P5001_PURTYPE'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(122713026682904988)
,p_prompt=>'Purchase Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Warm;W,Hot;H,Cold;C'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>9
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122798053128800616)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSPRC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vRow binary_integer;',
'BEGIN',
'/*FOR I IN 1..APEX_APPLICATION.G_F02.COUNT LOOP',
'--APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE :=APEX_APPLICATION.G_F02(I);',
'apex_debug.message(''i:''||i||'':''||apex_application.g_f02(i));',
'/*IF APEX_APPLICATION.G_F01(I)=2 THEN',
'RAISE_APPLICATION_ERROR(-20001,''NOT A VALID NUMBER''|| APEX_APPLICATION.G_F11(I)|| APEX_APPLICATION.G_F01(I));',
'APEX_APPLICATION.G_PRINT_SUCCESS_MESSAGE :=APEX_APPLICATION.G_F02(I);',
'ELSE',
'INSERT INTO NM_MARKETING(COMPCODE, DOCNUMBR, DOCTDATE, DOCTTYPE, ITEMCODE, OPRSTAMP, PARTYCDE, SERLNUMB, SUBTTYPE, TIMSTAMP)',
'VALUES(',
'APEX_APPLICATION.G_F02(I),APEX_APPLICATION.G_F11(I),',
'APEX_APPLICATION.G_F12(I),APEX_APPLICATION.G_F13(I),',
'NVL(APEX_APPLICATION.G_F15(I),0),:APP_USER,',
'APEX_APPLICATION.G_F17(I),NVL(APEX_APPLICATION.G_F14(I),1),',
'7,SYSDATE);',
'--ELSE',
'--RAISE_APPLICATION_ERROR(-20001,''NOT A VALID NUMBER'');',
'END IF;',
'END LOOP;*/',
'--apex_debug.message(''count:''||apex_application.g_f01.COUNT);',
'FOR i IN 1..apex_application.g_f01.COUNT LOOP',
'vRow := apex_application.g_f01(i);',
'--:P5001_TEST:=''123'';',
'      /*   :P5001_TEST:=',
'            :P5001_TEST',
'         || CHR (10)',
'         || vRow',
'         || ''. ''',
'         ||apex_application.g_f02(vRow)',
'         || '' / ''',
'         ||apex_application.g_f03(vRow)',
'         || '' / ''',
'         ||apex_application.g_f04(vRow)',
'         || '' / ''',
'         ||apex_application.g_f06(vRow)',
'         || '' / ''',
'         ||apex_application.g_f07(vRow)',
'         || '' / ''',
'         ||apex_application.g_f08(vRow)',
'         || '' / ''',
'         ||apex_application.g_f09(vRow)',
'         || '' / ''',
'         ||apex_application.g_f10(vRow)',
'         || '' / ''',
'         ||apex_application.g_f11(vRow)',
'         || '' / ''',
'         ||apex_application.g_f12(vRow)',
'         || '' / ''',
'         ||apex_application.g_f13(vRow)',
'         || '' / ''',
'         ||apex_application.g_f14(vRow)',
'         || '' / ''',
'         ||apex_application.g_f15(vRow)',
'         || '' / ''',
'         ||apex_application.g_f16(vRow)',
'         || '' / ''',
'         ||apex_application.g_f17(vRow);*/',
'   /*      INSERT INTO NM_MARKETING(COMPCODE, DOCNUMBR, DOCTDATE, ',
'                                  DOCTTYPE, ITEMCODE, OPRSTAMP, ',
'                                  PARTYCDE, SERLNUMB, SUBTTYPE, ',
'                                  TIMSTAMP)',
'VALUES(apex_application.g_f02(vRow),apex_application.g_f11(vRow),',
'apex_application.g_f12(vRow),apex_application.g_f13(vRow),',
'NVL(apex_application.g_f15(vRow),0),:APP_USER,',
'apex_application.g_f17(vRow),NVL(apex_application.g_f14(vRow),1),',
'apex_application.g_f18(vRow),SYSDATE);*/',
'update nmcusvlg',
'set MRKFOR_SCH=''Y''',
'where COMPCODE=apex_application.g_f02(vRow)',
'and   DOCNUMBR=apex_application.g_f11(vRow)',
'and   DOCTDATE=apex_application.g_f12(vRow)',
'and   DOCTTYPE=apex_application.g_f13(vRow)',
'and   SUBTTYPE=apex_application.g_f18(vRow);  ',
'END LOOP;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(122714747315941307)
,p_process_success_message=>'DATA INSERTED'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR I IN 1..APEX_APPLICATION.G_F01.COUNT LOOP',
'',
'--IF APEX_APPLICATION.G_F01(I)=2 THEN',
'--RAISE_APPLICATION_ERROR(-20001,''NOT A VALID NUMBER'');',
'--ELSE',
'INSERT INTO NM_MARKETING(COMPCODE, DOCNUMBR, DOCTDATE, DOCTTYPE, ITEMCODE, OPRSTAMP, PARTYCDE, SERLNUMB, SUBTTYPE, TIMSTAMP)',
'',
'',
'VALUES(',
'APEX_APPLICATION.G_F02(I),APEX_APPLICATION.G_F11(I),',
'APEX_APPLICATION.G_F12(I),APEX_APPLICATION.G_F13(I),',
'NVL(APEX_APPLICATION.G_F15(I),0),:APP_USER,',
'APEX_APPLICATION.G_F17(I),NVL(APEX_APPLICATION.G_F14(I),1),',
'7,SYSDATE);',
'--ELSE',
'--RAISE_APPLICATION_ERROR(-20001,''NOT A VALID NUMBER'');',
'--END IF;',
'END LOOP;',
'END;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122905941589880107)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSCOL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_collection_name varchar2(50);',
'    l_bind_names      APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_bind_values     APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_query           varchar2(32767);',
'    v_count           number;',
'',
'begin',
'',
'    l_collection_name := ''INSERTDATA'';',
'',
'    if apex_collection.collection_exists(l_collection_name)',
'    then',
'        apex_collection.delete_collection(',
'        p_collection_name => l_collection_name',
'        );',
'    end if;',
'',
'    l_query := ',
'       ''select A.COMPCODE,'' -- c001 => f01',
'    || '' B.PRTYNAME, ''    -- c002 => f02',
'    || '' B.PHONENUM, ''   -- c003 => f03',
'    || '' (B.PARTYAD1||B.PARTYAD2||B.PARTYAD3||B.PARTYAD4), ''  -- c004 => f04',
'    || '' A.INTERESTED_BRAND, ''    -- c005 => f05',
'    || '' A.INTERESTED_BRAND, ''    -- c006 => f06',
'    || '' A.INTERIOR_COLOR, ''    -- c007 => f07',
'    || '' A.SALES_POTENTIAL, ''    -- c008 => f08',
'    || '' A.PURCHASE_TYPE, ''    -- c009 => f09',
'    || '' A.DOCNUMBR, ''    -- c010 => f10',
'    || '' A.DOCTDATE, ''    -- c011 => f11',
'    || '' A.DOCTTYPE, ''    -- c012 => f12 ',
'    || '' A.SERLNUMB, ''    -- c013 => f13',
'    || '' A.ITEMCODE, ''    -- c014 => f14',
'    || '' A.SMANCODE, ''    -- c015 => f15',
'    || '' A.PARTYCD1, ''    -- c016 => f16',
'    || '' null, ''    -- c017 => f17',
'    || '' null, ''    -- c018 => f18',
'    || '' null, ''    -- c019 => f19',
'    || '' null, ''    -- c020 => f20',
'    || '' null, ''    -- c021 => f21',
'    || '' null, ''    -- c022 => f22',
'    || '' null, ''    -- c023 => f23',
'    || '' null, ''    -- c024 => f24',
'    || '' null, ''    -- c025 => f25',
'    || '' null, ''    -- c026 => f26',
'    || '' null, ''    -- c027 => f27',
'    || '' null, ''    -- c028 => f28',
'    || '' null, ''    -- c029 => f29',
'    || '' null, ''    -- c030 => f30',
'    || '' null, ''    -- c031 => f31',
'    || '' null, ''    -- c032 => f32',
'    || '' null, ''    -- c033 => f33 ',
'    || '' null, ''    -- c034 => f34 ',
'    || '' null, ''    -- c035 => f35 ',
'    || '' null, ''    -- c036 => f36 ',
'    || '' null, ''    -- c037 => f37 ',
'    || '' null, ''    -- c038 => f38 ',
'    || '' null, ''    -- c039 => f39 ',
'    || '' null, ''    -- c040 => f40 ',
'    || '' null, ''    -- c041 => f41 ',
'    || '' null, ''    -- c042 => f42 ',
'    || '' null, ''    -- c043 => f43 ',
'    || '' null, ''    -- c044 => f44 ',
'    || '' null, ''    -- c045 => f45 ',
'    || '' null, ''    -- c046 => f46',
'    || '' ''''O'''', ''   -- c047 => f47 ',
'    || '' wwv_flow_item.md5(A.COMPCODE,',
'     B.PRTYNAME,',
'	 B.PHONENUM,',
'     (B.PARTYAD1||B.PARTYAD2||B.PARTYAD3||B.PARTYAD4),',
'     A.INTERESTED_BRAND,',
'     A.INTERESTED_BRAND,',
'     A.INTERIOR_COLOR,',
'     A.SALES_POTENTIAL,',
'     A.PURCHASE_TYPE,',
'     A.DOCNUMBR,',
'     A.DOCTDATE,',
'     A.DOCTTYPE, ',
'     A.SERLNUMB,',
'     A.ITEMCODE,',
'    A.SMANCODE,',
'    A.PARTYCD1) '' -- c048',
'    || ''from ',
'          nmcusvlg A, SYCOMPTY B',
' WHERE     A.COMPCODE = B.COMPCODE',
'       AND A.PARTYCD1 = B.PARTYCDE''; ',
'   ',
'    apex_collection.create_collection_from_query_b(',
'        p_collection_name => l_collection_name,',
'        p_query           => l_query',
'        );',
'',
'             ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT# '
,p_process_when_type=>'NEVER'
,p_process_success_message=>'SUCCESS'
);
wwv_flow_api.component_end;
end;
/
