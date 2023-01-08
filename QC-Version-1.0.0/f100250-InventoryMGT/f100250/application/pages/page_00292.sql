prompt --application/pages/page_00292
begin
--   Manifest
--     PAGE: 00292
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
 p_id=>292
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Lead Generate'
,p_page_mode=>'MODAL'
,p_step_title=>'Lead Generate'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript"> ',
'function tabE(obj,e,s)',
'{',
'  if(e.keyCode==13)',
'  {',
'    window.document.getElementById(s).focus();',
'    return false; ',
'  } ',
'} ',
'</script> ',
'<script type="text/javascript">',
'function setitemcode()',
'{',
'var grid = apex.region("cusvlg_detail").widget().interactiveGrid("getViews", "grid");  ',
'var m = grid.model;  ',
' ',
'var selectedRow = grid.view$.grid("getSelection") ;  ',
'',
'  ',
'selectedRow.forEach(function(o, index) {  ',
'    var id          = $(selectedRow[index][0]).data(''id'');  ',
'    var record      = m.getRecord(id);',
'    var srl =id.substr(2, 4);;',
'    var itemcode=m.getValue(record,"ITEMCODE");',
'    var srl1=m.getValue(record,"SERLNUMB");',
'   // alert(itemcode);',
'    document.getElementById(''P292_TABULARITEMCODE'').value=itemcode;',
'     $(document).ready(function(){',
'  $(''#P292_TABULARITEMCODE'').trigger(''click'');',
'});',
'  //  alert(document.getElementById(''P316_WARECODE'').value);',
'    if(srl1==""){',
'      m.setValue(record, "SERLNUMB", srl );   ',
'    }',
'      ',
' //   m.setValue(record, "ORGNQNTY", trnsqnty);',
'//    m.setValue(record, "APPRQNTY", trnsqnty);',
'  //  m.setValue(record, "COSTNAME", document.getElementById(''P316_COSTNAME'').value);',
'  //  m.setValue(record, "WARECODE", document.getElementById(''P316_WARECODE'').value);',
'   // m.setValue(record, "WARNAME", document.getElementById(''P316_COSTNAME'').value);',
'/*apex.server.process ( ',
'  "MY_APP_PROCESS"',
',   {   x01: itemcode',
'    ,   x02: ''mysecond custom value''',
'    ,   x03: ''my third custom value''',
'    }',
' , { dataType: ''text''',
' ,success: function(pData){alert(pData)}',
'}',
'); */   ',
'});',
'//var ab=document.getElementById(''P308_TRNDATE'').value;',
'}',
'</script> '))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'function getCustomerCode(pThis)',
'{',
'',
'var vRow = pThis.id.substr(pThis.id.indexOf(''_'')+1);',
'   ',
'html_GetElement(''f02_''+vRow).value = document.getElementById(''P292_COMPCODE'').value;',
'html_GetElement(''f03_''+vRow).value = document.getElementById(''P292_CUSTOMER_CODE'').value;',
'',
'}',
'',
'',
'        ',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#R3405872052950649',
'',
'{',
'    float:right;',
'    display:block;',
'    width:35% !important;  ',
'    margin-top:-25px;',
'    padding:0px 0px; ',
'}',
'',
'#R3436862711303705',
'{',
'    float:left;',
'    display:block;',
'    width:100% !important;  ',
'',
'}',
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
'.t-Form-labelContainer.col-null {',
'    width: 13%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'<style> input {width:33px} </style>'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20181204102717'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(152521017331074026)
,p_plug_name=>'Button'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170544762134285974)
,p_plug_name=>'Customer Visits & Inquiries Entry'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody:t-Form--noPadding:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170550376108285980)
,p_plug_name=>'Customers Inquiry Main Container'
,p_parent_plug_id=>wwv_flow_api.id(170544762134285974)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>25
,p_plug_display_point=>'SUB_REGIONS'
,p_translate_title=>'N'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170550745242285982)
,p_plug_name=>'Customers Information'
,p_parent_plug_id=>wwv_flow_api.id(170550376108285980)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44121735197800866)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(170550745242285982)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>2
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(38959801017692325)
,p_plug_name=>'Product type'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44121021462800859)
,p_plug_name=>'Classification'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47301063523874981)
,p_plug_name=>'Customer Family Information'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170561567623285989)
,p_plug_name=>'Multiple family info'
,p_region_name=>'cusvlg_detail'
,p_parent_plug_id=>wwv_flow_api.id(47301063523874981)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>22
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPCODE, CUSTMRID, FAMILY_MEMBER_NAME, ',
'CUSTOMER_RELATION, OPRSTAMP, TIMSTAMP, ITEMCODE, ',
'COLORCDE, CUSTMAIL, STRTDATE, VENDDATE, REMARKSS, ',
'CONFIRMC, PARTYCD1, PARTYCD2, PARTYCD3, PARTYCD4, ',
'POSBUYDTE, LOSOFCUS, COSTCODE, WARECODE, MODIFYDT, ',
'CURRENT_BRAND, CURRENT_MODEL, PURCHASED_FROM, ',
'PURCHASE_DATE, AVERAGE_MILEAGE, CONTACT_MODE, INTERESTED_BRAND, ',
'INTERESTED_MODEL, INTERIOR_COLOR, EXTERIOR_COLOR, FUEL_TYPE, ',
'NEXT_APOINTMENT_ON, SALES_POTENTIAL, REFERED_BY_SALES, VERIFIED_FLAG_SALES, ',
'VERIFIED_BY_SALES, INTIME, OUTTIME, PAYMENT_MODE, INSTALLMENT_PAY, ',
'DOWN_PAYMENT, NO_OF_INSTALLMENT, POSIBLE_INST_START_DATE, COLLECT_PERSON, ',
'INTEREST_AMOUNT, LOAN_AMOUNT, MONTHLY_INSTALLMENT, STATUSCD, BOOKCODE, ',
'BOOKDATE, WHSZONFK, ORGNQNTY, APPRQNTY, SAME_BRAND_QTY, OTHER_BRAND_QTY, ',
'APP_FLG, UPDOCNUM, UPDOCTYP, UPSUBTYP, BIRTHDATE, ANNIVERSARY_DATE, ',
'FEEDBACK1, FEEDBACK2, FEEDBACK3, FEEDBACK4           ',
'from NMCUSVLG_FAMILY_INFO',
'where compcode=:COMPCODE',
'AND CUSTMRID=:P292_CUSTMRID',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_comment=>unistr('<div style=\201Doverflow: auto; max-height: 250px; %;\201C></div>')
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38648866977292422)
,p_name=>'FAMILY_MEMBER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAMILY_MEMBER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Family member name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
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
 p_id=>wwv_flow_api.id(38648896766292423)
,p_name=>'CUSTOMER_RELATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_RELATION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Customer relation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Husband;H,Wife;W,Father;F,Mother;M,Brother;B,Sister;SI,Son;SO,Daughter;D,Brother in law;BL,Sister in law;SL'
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_api.id(38649076273292424)
,p_name=>'COLORCDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLORCDE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649176655292425)
,p_name=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMAIL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649251738292426)
,p_name=>'STRTDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STRTDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649324105292427)
,p_name=>'VENDDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>290
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649447652292428)
,p_name=>'CONFIRMC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIRMC'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>300
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649575510292429)
,p_name=>'PARTYCD2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>310
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649683552292430)
,p_name=>'PARTYCD3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>320
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649735431292431)
,p_name=>'PARTYCD4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD4'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>330
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649865835292432)
,p_name=>'POSBUYDTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSBUYDTE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>340
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38649936177292433)
,p_name=>'LOSOFCUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOSOFCUS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>350
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650026998292434)
,p_name=>'AVERAGE_MILEAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AVERAGE_MILEAGE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>360
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650153928292435)
,p_name=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_MODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>370
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650288624292436)
,p_name=>'INTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERIOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>380
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650294229292437)
,p_name=>'EXTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTERIOR_COLOR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>390
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650475606292438)
,p_name=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FUEL_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>400
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650546581292439)
,p_name=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NEXT_APOINTMENT_ON'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>410
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650607327292440)
,p_name=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALES_POTENTIAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>420
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650751286292441)
,p_name=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERED_BY_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>430
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650803428292442)
,p_name=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_FLAG_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>440
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38650893827292443)
,p_name=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY_SALES'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>450
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651088744292444)
,p_name=>'INTIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>460
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651117670292445)
,p_name=>'OUTTIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUTTIME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>470
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651268495292446)
,p_name=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_MODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>480
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651325744292447)
,p_name=>'INSTALLMENT_PAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INSTALLMENT_PAY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>490
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651455655292448)
,p_name=>'DOWN_PAYMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOWN_PAYMENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>500
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651504479292449)
,p_name=>'NO_OF_INSTALLMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NO_OF_INSTALLMENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>510
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651624632292450)
,p_name=>'POSIBLE_INST_START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POSIBLE_INST_START_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>520
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651745483292451)
,p_name=>'COLLECT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COLLECT_PERSON'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>530
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38651844535292452)
,p_name=>'INTEREST_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTEREST_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>540
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38957591047692303)
,p_name=>'LOAN_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOAN_AMOUNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>550
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38957697466692304)
,p_name=>'MONTHLY_INSTALLMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MONTHLY_INSTALLMENT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>560
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38957816367692305)
,p_name=>'STATUSCD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUSCD'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>570
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38957964003692306)
,p_name=>'BOOKCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>580
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958046856692307)
,p_name=>'BOOKDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>590
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958108812692308)
,p_name=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WHSZONFK'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>600
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958275557692309)
,p_name=>'APPRQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPRQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>610
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958372769692310)
,p_name=>'SAME_BRAND_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAME_BRAND_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>620
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958488732692311)
,p_name=>'OTHER_BRAND_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OTHER_BRAND_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>630
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958546778692312)
,p_name=>'APP_FLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_FLG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>640
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38958612836692313)
,p_name=>'BIRTHDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BIRTHDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Birth Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>650
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_api.id(38958770479692314)
,p_name=>'ANNIVERSARY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANNIVERSARY_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Anniversary Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>660
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_api.id(38958814436692315)
,p_name=>'FEEDBACK1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>670
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(38958941147692316)
,p_name=>'FEEDBACK2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK2'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>680
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38959040427692317)
,p_name=>'FEEDBACK3'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK3'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>690
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38959119489692318)
,p_name=>'FEEDBACK4'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK4'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>700
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38959288245692319)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(38959303641692320)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(46097445167754180)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(46097611408754181)
,p_name=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMPCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P292_COMPCODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(46098211012754187)
,p_name=>'COSTCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COSTCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46098404318754189)
,p_name=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46098434293754190)
,p_name=>'CURRENT_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46098586726754191)
,p_name=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTMRID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46098934396754195)
,p_name=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_BRAND'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099080438754196)
,p_name=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INTERESTED_MODEL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099190430754197)
,p_name=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEMCODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099502472754200)
,p_name=>'MODIFYDT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MODIFYDT'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099640822754202)
,p_name=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPRSTAMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099780537754203)
,p_name=>'ORGNQNTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGNQNTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099862808754204)
,p_name=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARTYCD1'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46099925322754205)
,p_name=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46100047244754206)
,p_name=>'PURCHASED_FROM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASED_FROM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47298708559874957)
,p_name=>'REMARKSS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKSS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47299050477874961)
,p_name=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIMSTAMP'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47299218480874963)
,p_name=>'UPDOCNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCNUM'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47299377691874964)
,p_name=>'UPDOCTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDOCTYP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47299456239874965)
,p_name=>'UPSUBTYP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPSUBTYP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(47299613850874966)
,p_name=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WARECODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(46097342301754179)
,p_internal_uid=>78443725371155523
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET:SAVE'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>150
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.toolbarData = [',
'        ',
'    ];',
'    return config;',
'}'))
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(47307277135875222)
,p_interactive_grid_id=>wwv_flow_api.id(46097342301754179)
,p_static_id=>'395732'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(47307397292875222)
,p_report_id=>wwv_flow_api.id(47307277135875222)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38963636760718995)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(38648866977292422)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38964102481718997)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(38648896766292423)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38964642931718998)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>38
,p_column_id=>wwv_flow_api.id(38649076273292424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38965112598718999)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>39
,p_column_id=>wwv_flow_api.id(38649176655292425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38965678374719000)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(38649251738292426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38966126868719001)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>41
,p_column_id=>wwv_flow_api.id(38649324105292427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38966666156719001)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>42
,p_column_id=>wwv_flow_api.id(38649447652292428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38967106426719002)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>43
,p_column_id=>wwv_flow_api.id(38649575510292429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38967635420719003)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>44
,p_column_id=>wwv_flow_api.id(38649683552292430)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38968154009719004)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>45
,p_column_id=>wwv_flow_api.id(38649735431292431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38968685548719004)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>46
,p_column_id=>wwv_flow_api.id(38649865835292432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38969145232719005)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>47
,p_column_id=>wwv_flow_api.id(38649936177292433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38969653804719006)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>48
,p_column_id=>wwv_flow_api.id(38650026998292434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38970134830719007)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>49
,p_column_id=>wwv_flow_api.id(38650153928292435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38970592810719008)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>50
,p_column_id=>wwv_flow_api.id(38650288624292436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38971129370719008)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>51
,p_column_id=>wwv_flow_api.id(38650294229292437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38971673959719009)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>52
,p_column_id=>wwv_flow_api.id(38650475606292438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38972179829719010)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>53
,p_column_id=>wwv_flow_api.id(38650546581292439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38972606127719011)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>54
,p_column_id=>wwv_flow_api.id(38650607327292440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38973102103719012)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>55
,p_column_id=>wwv_flow_api.id(38650751286292441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38973642115719013)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>56
,p_column_id=>wwv_flow_api.id(38650803428292442)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38974113098719013)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>57
,p_column_id=>wwv_flow_api.id(38650893827292443)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38974621664719014)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>58
,p_column_id=>wwv_flow_api.id(38651088744292444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38975170632719015)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>59
,p_column_id=>wwv_flow_api.id(38651117670292445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38975619352719016)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>60
,p_column_id=>wwv_flow_api.id(38651268495292446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38976146653719016)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>61
,p_column_id=>wwv_flow_api.id(38651325744292447)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38976626457719017)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>62
,p_column_id=>wwv_flow_api.id(38651455655292448)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38977111315719018)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>63
,p_column_id=>wwv_flow_api.id(38651504479292449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38977596193719019)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>64
,p_column_id=>wwv_flow_api.id(38651624632292450)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38978169683719020)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>65
,p_column_id=>wwv_flow_api.id(38651745483292451)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38978606489719020)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>66
,p_column_id=>wwv_flow_api.id(38651844535292452)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38979173701719021)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>67
,p_column_id=>wwv_flow_api.id(38957591047692303)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38979594829719022)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>68
,p_column_id=>wwv_flow_api.id(38957697466692304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38980111266719023)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>69
,p_column_id=>wwv_flow_api.id(38957816367692305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38980655767719024)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>70
,p_column_id=>wwv_flow_api.id(38957964003692306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38981156026719024)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>71
,p_column_id=>wwv_flow_api.id(38958046856692307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38981666112719025)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>72
,p_column_id=>wwv_flow_api.id(38958108812692308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38982169163719026)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>73
,p_column_id=>wwv_flow_api.id(38958275557692309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38982653418719027)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>74
,p_column_id=>wwv_flow_api.id(38958372769692310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38983180073719027)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>75
,p_column_id=>wwv_flow_api.id(38958488732692311)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38983681480719028)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>76
,p_column_id=>wwv_flow_api.id(38958546778692312)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38984123558719029)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>37
,p_column_id=>wwv_flow_api.id(38958612836692313)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38984638006719030)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>40
,p_column_id=>wwv_flow_api.id(38958770479692314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38985166026719031)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>79
,p_column_id=>wwv_flow_api.id(38958814436692315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38985682251719031)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>80
,p_column_id=>wwv_flow_api.id(38958941147692316)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38986100261719032)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>81
,p_column_id=>wwv_flow_api.id(38959040427692317)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38986616511719033)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>82
,p_column_id=>wwv_flow_api.id(38959119489692318)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(38997994456930026)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(38959288245692319)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47307888717875223)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(46097445167754180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47308325950875225)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(46097611408754181)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47310397088875233)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(46098211012754187)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47311326692875236)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(46098404318754189)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47311721731875239)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(46098434293754190)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47312305419875240)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(46098586726754191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47314287665875245)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>17
,p_column_id=>wwv_flow_api.id(46098934396754195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47314727419875248)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>18
,p_column_id=>wwv_flow_api.id(46099080438754196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47315289922875248)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>15
,p_column_id=>wwv_flow_api.id(46099190430754197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47316719307875251)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>19
,p_column_id=>wwv_flow_api.id(46099502472754200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47317804933875255)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(46099640822754202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47318266969875256)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>22
,p_column_id=>wwv_flow_api.id(46099780537754203)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>20
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47318774061875262)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>23
,p_column_id=>wwv_flow_api.id(46099862808754204)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47319310569875265)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>24
,p_column_id=>wwv_flow_api.id(46099925322754205)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47319774861875267)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>25
,p_column_id=>wwv_flow_api.id(46100047244754206)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47320226967875269)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>28
,p_column_id=>wwv_flow_api.id(47298708559874957)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>50
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47322302829875273)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>30
,p_column_id=>wwv_flow_api.id(47299050477874961)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47323245874875278)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>32
,p_column_id=>wwv_flow_api.id(47299218480874963)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47323775967875279)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>33
,p_column_id=>wwv_flow_api.id(47299377691874964)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47324249253875279)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>34
,p_column_id=>wwv_flow_api.id(47299456239874965)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(47324779384875281)
,p_view_id=>wwv_flow_api.id(47307397292875222)
,p_display_seq=>35
,p_column_id=>wwv_flow_api.id(47299613850874966)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50954078551389703)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109197893074482214)
,p_plug_name=>'Customer Information'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h125:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170555969686285985)
,p_plug_name=>' Visit Information'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_plug_comment=>'<span style="font-size:1.2em"><u>Contact Info</u></span></br>'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170568753039286002)
,p_plug_name=>'Test Drive & Sales Info'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47254114517312988)
,p_plug_name=>'Region Display Selector'
,p_parent_plug_id=>wwv_flow_api.id(170568753039286002)
,p_plug_display_sequence=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170559222561285988)
,p_plug_name=>'Customer''s Interest'
,p_parent_plug_id=>wwv_flow_api.id(47254114517312988)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170569207667286002)
,p_plug_name=>'Test Drive'
,p_parent_plug_id=>wwv_flow_api.id(170559222561285988)
,p_region_template_options=>'#DEFAULT#:i-h320:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>75
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<span style="font-size:0.9em"><u>Test Drive Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(191852020852649139)
,p_plug_name=>' Customers Interest'
,p_parent_plug_id=>wwv_flow_api.id(47254114517312988)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--noUI:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170571549832286002)
,p_plug_name=>'Remarks'
,p_parent_plug_id=>wwv_flow_api.id(44121735197800866)
,p_region_template_options=>'#DEFAULT#:i-h150:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170566395993286000)
,p_plug_name=>'Customer''s Current Vehicle Info'
,p_parent_plug_id=>wwv_flow_api.id(170550745242285982)
,p_region_template_options=>'#DEFAULT#:i-h280:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_header=>'<span style="font-size:0.9em"><u>Customer''s Current Vehicle Info</u></span></br>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170558748793285988)
,p_plug_name=>'Customer Interests & Queries'
,p_parent_plug_id=>wwv_flow_api.id(170550376108285980)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>96
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(170551131073285982)
,p_plug_name=>'general info'
,p_parent_plug_id=>wwv_flow_api.id(170544762134285974)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--noPadding:t-Form--leftLabels'
,p_region_attributes=>'display-none=yes'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>35
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
,p_plug_comment=>'<span style="font-size:0.9em"><u>Customers Information</u></span></br>'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195973319896781947)
,p_plug_name=>'test'
,p_parent_plug_id=>wwv_flow_api.id(170544762134285974)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--hiddenOverflow:t-Form--leftLabels'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>12
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'Y'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(195978766340045687)
,p_plug_name=>'sal'
,p_parent_plug_id=>wwv_flow_api.id(170544762134285974)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>45
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47747424968283536)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(109197893074482214)
,p_button_name=>'Search'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_redirect_url=>'f?p=&APP_ID.:390:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106446494063951364)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Delete'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106400819960951294)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(152521017331074026)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:280:&SESSION.::&DEBUG.:RP,280::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106401227526951294)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(152521017331074026)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P292_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106401662046951297)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(152521017331074026)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P292_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106401992397951297)
,p_button_sequence=>75
,p_button_plug_id=>wwv_flow_api.id(152521017331074026)
,p_button_name=>'CLEAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:292:&SESSION.::&DEBUG.:RP,237::'
,p_button_condition=>'P292_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(106400372918951292)
,p_button_sequence=>65
,p_button_plug_id=>wwv_flow_api.id(152521017331074026)
,p_button_name=>'CREATE_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Customer'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:90:&SESSION.::&DEBUG.:90::'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38959624953692323)
,p_name=>'P292_PURPOSE_BUY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purpose Buy'
,p_source=>'PURPOSE_BUY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Birth Day;B,Anniversary Day;A,Others;O,Corporate gift;C'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38959760763692324)
,p_name=>'P292_FEEDBACK5'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(50954078551389703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'I found the item i was looking for'
,p_source=>'FEEDBACK5'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121214220800860)
,p_name=>'P292_WEB_SITE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Web site'
,p_source=>'WEB_SITE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121217601800861)
,p_name=>'P292_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_source=>'TAGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121326942800862)
,p_name=>'P292_CATEGORY_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_source=>'CATEGORY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121431677800863)
,p_name=>'P292_LINKEDIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Linkedin'
,p_source=>'LINKEDIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121551045800864)
,p_name=>'P292_FACEBOOK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Facebook'
,p_source=>'FACEBOOK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44121698484800865)
,p_name=>'P292_TWITTER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Twitter'
,p_source=>'TWITTER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47416585162308967)
,p_name=>'P292_TABULARITEMCODE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47416852660308969)
,p_name=>'P292_TABCOMMGRUP'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47417257227308969)
,p_name=>'P292_TABSALEPERC'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47417695731308969)
,p_name=>'P292_TABITEMTYPE'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47418067561308969)
,p_name=>'P292_TABCOSTRATE'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47418506120308969)
,p_name=>'P292_TABITEMDESC'
,p_item_sequence=>600
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47418912041308969)
,p_name=>'P292_TABCLOSINGBALANCE'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47419259067308969)
,p_name=>'P292_TABITEMRATE'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(47419622045308969)
,p_name=>'P292_TABITEMUNIT'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_api.id(44121021462800859)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50953820300389701)
,p_name=>'P292_BIRTHDATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Birth Date'
,p_source=>'BIRTHDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50953995976389702)
,p_name=>'P292_ANNIVERSARY_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Anniversary Date'
,p_source=>'ANNIVERSARY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50954129134389704)
,p_name=>'P292_FEEDBACK1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50954078551389703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'I am satisfied with the collection and availability of the products'
,p_source=>'FEEDBACK1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_colspan=>12
,p_grid_column=>1
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50954284910389705)
,p_name=>'P292_FEEDBACK2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50954078551389703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'I find the store representatives cooperative'
,p_source=>'FEEDBACK2'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50954320235389706)
,p_name=>'P292_FEEDBACK3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50954078551389703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'I am happy with the store ambiance (Cleanliness, Smell , Sitting arrangement)'
,p_source=>'FEEDBACK3'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51503721920842957)
,p_name=>'P292_FEEDBACK4'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50954078551389703)
,p_use_cache_before_default=>'NO'
,p_prompt=>'I will refer AMISHE to my friends and family in the future'
,p_source=>'FEEDBACK4'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(47630058251858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106402672617951305)
,p_name=>'P292_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106403113407951308)
,p_name=>'P292_COMPCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'COMPCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106403562726951308)
,p_name=>'P292_DOCTTYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>'CS'
,p_source=>'DOCTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106403913124951308)
,p_name=>'P292_SUBTTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>'2'
,p_source=>'SUBTTYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106404343953951308)
,p_name=>'P292_DOCNUMBR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_source=>'DOCNUMBR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106404702397951308)
,p_name=>'P292_RAISEDBY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'RAISEDBY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106405153294951309)
,p_name=>'P292_OPRSTAMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'OPRSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106405542359951309)
,p_name=>'P292_TIMSTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TIMSTAMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106405956191951309)
,p_name=>'P292_PARTYCD1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(170544762134285974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106407264657951311)
,p_name=>'P292_DELRTYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_item_default=>'IND'
,p_prompt=>'<font color="red">&COLM4.</font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.NMCODDES d,C.NMSOFCDE r',
'FROM nmcodmas C',
'WHERE C.NMHRDCDE = ''CTY''',
'AND C.MODLCODE = ''NM''',
'and c.COMPCODE = :COMPCODE ',
'AND C.NMSOFCDE IN (''IND'',''COR'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>10
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106407607927951312)
,p_name=>'P292_OCCUPATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'Occupation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Bussiness;BUSSINESS,Service holder;Service holder,Private Jobs;Teacher;Teacher,Doctor;Doctor,Govt. Jobs;GOVT. JOBS;Homemaker,Homemaker;Student,Student;Lawyer,Lawyer;Other,Other'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106407981912951312)
,p_name=>'P292_PRTYNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'<font color="red">Customer Name</font>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106408367906951312)
,p_name=>'P292_PHONENUM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'Office Phone'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106408678350951314)
,p_name=>'P292_MOBILENO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'<font color="red">Mobile No</font>'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.CUSTMOBL',
'FROM  nmmrkcus r',
'where r.compcode = :compcode',
'order by 1'))
,p_cSize=>80
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106409129928951314)
,p_name=>'P292_IDENTIFY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'National Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106409510703951314)
,p_name=>'P292_WHSZONFK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106409913979951314)
,p_name=>'P292_PARTYAD2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'Permanent Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106410352565951314)
,p_name=>'P292_PARTYAD1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_prompt=>'Present Address'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106410724100951316)
,p_name=>'P292_PARTYCDE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_use_cache_before_default=>'NO'
,p_source=>'PARTYCD1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106411395070951316)
,p_name=>'P292_WARECODE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_warecode varchar2(10);',
'begin',
'SELECT DISTINCT  c.WARECODE into v_warecode',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''Y''',
'         AND j.WARECODE not like (''D%'');',
'         return v_warecode;',
'         exception',
'         when no_data_found then',
'         v_warecode:=null;',
'         when too_many_rows then',
'         v_warecode:=null;',
'         when others then',
'         v_warecode:=null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">&COLM5.</font>'
,p_source=>'WARECODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT waredesc D,WARECODE',
'FROM',
'( SELECT DISTINCT INITCAP (J.WAREDESC)||'' (''||c.WARECODE||'')'' waredesc, c.WARECODE, 1 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
' AND nvl(J.MAINSTOR,''N'') = ''Y''',
' UNION ALL',
'  SELECT DISTINCT INITCAP (J.WAREDESC)||'' (''||c.WARECODE||'')'' waredesc, c.WARECODE, 2 ROWN',
'    FROM nmwhsmas j, sycstacc c',
'   WHERE     j.compcode = :compcode',
'         AND j.compcode = c.compcode',
'         AND j.WARECODE = c.WARECODE',
'         AND c.grupcode = :APP_USER',
'         AND nvl(J.MAINSTOR,''N'') = ''N''',
'         AND j.WARECODE not like (''D%'')',
'ORDER BY ROWN)'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
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
 p_id=>wwv_flow_api.id(106411812257951316)
,p_name=>'P292_SMANCODE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_smnmas varchar2(100);',
'begin',
'/*SELECT USERNAME into v_smnmas',
'          FROM syusrmas s',
'          where USERCODE=:APP_USER;*/',
'SELECT DISTINCT      J.SMANCODE into v_smnmas',
'  FROM nmsmnmas j,',
'       (SELECT c.NMCODDES, S.USERCODE, c.COMPCODE',
'          FROM syusrmas s, SYEMPMAS e, NMCODMAS c',
'         WHERE     e.PYEMPCDE = s.USERCODE',
'               AND e.PYCOMCDE = s.DIVNCODE',
'               AND c.COMPCODE = S.DIVNCODE',
'               AND NMHRDCDE = ''DEG''',
'               AND NMSOFCDE = PYDEPCDE) q',
' WHERE     j.compcode = :compcode',
'       AND J.SMANCODE = q.usercode(+)',
'       AND J.COMPCODE = q.COMPCODE(+)',
'       AND J.COSTCODE IN',
'              (SELECT S.COSTCODE',
'                 FROM NMWHSMAS S',
'                WHERE S.COMPCODE = :COMPCODE',
'                      AND S.WARECODE = :P292_WARECODE)',
'      AND   SMANCODE=:APP_USER;',
'      ',
'      return v_smnmas;',
'      exception',
'         when no_data_found then',
'         v_smnmas:=null;',
'         when too_many_rows then',
'         v_smnmas:=null;',
'         when others then',
'         v_smnmas:=null;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'<font color="red">&COLM6.</font>'
,p_source=>'SMANCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'          INITCAP (J.SMANNAME)',
'       || ''-''',
'       || j.SMANCODE',
'       || ''-''',
'       || NVL (INITCAP (q.NMCODDES), ''N/A'')',
'          salesman,',
'       J.SMANCODE',
'  FROM nmsmnmas j,',
'       (SELECT c.NMCODDES, S.USERCODE, c.COMPCODE',
'          FROM syusrmas s, SYEMPMAS e, NMCODMAS c',
'         WHERE     e.PYEMPCDE = s.USERCODE',
'               AND e.PYCOMCDE = s.DIVNCODE',
'               AND c.COMPCODE = S.DIVNCODE',
'               AND NMHRDCDE = ''DEG''',
'               AND NMSOFCDE = PYDEPCDE) q',
' WHERE     j.compcode = :compcode',
'       AND J.SMANCODE = q.usercode(+)',
'       AND J.COMPCODE = q.COMPCODE(+)',
'       AND J.COSTCODE IN',
'              (SELECT S.COSTCODE',
'                 FROM NMWHSMAS S',
'                WHERE S.COMPCODE = :COMPCODE',
'                      AND S.WARECODE = :P292_WARECODE)  --,:P292_WRECDE))'))
,p_lov_cascade_parent_items=>'P292_WARECODE'
,p_ajax_items_to_submit=>'P292_WARECODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT smanname sales_person, smancode',
'  FROM nmsmnmas',
' WHERE compcode = :compcode '))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106412223886951316)
,p_name=>'P292_SMNNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106412641972951316)
,p_name=>'P292_WHRNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106412974926951316)
,p_name=>'P292_DOCTDATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Visit Date'
,p_source=>'DOCTDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_tag_attributes=>'readonly="readonly"'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106413446867951316)
,p_name=>'P292_NMPRDTYP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(38959801017692325)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">&COLM7.</font>'
,p_source=>'NMPRDTYP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(nmcoddes) nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''PTY''',
' and compcode=:COMPCODE',
' order by 1',
'-- and NMSOFTYP=:P292_CATEGORR'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'COMPCODE,P292_CATEGORR'
,p_ajax_items_to_submit=>'COMPCODE,P292_CATEGORR'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'7'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106413795472951316)
,p_name=>'P292_VISITYPE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source of Enq.'
,p_source=>'SRCOFENQ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''ENQ'''))
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106414198914951317)
,p_name=>'P292_CONTACT_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Contact Mode'
,p_source=>'CONTACT_MODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC2:Walk In;WI,eMail;EM,Reference;RF,Outdoor Sales Call;OS,Over Phone;OP,Visit;VS,SMS;SM,Corporate Presentation;CP,',
'Showroom Appointment;SA,Test Drive;TD,Internet;IN,Others;OT'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106414574779951317)
,p_name=>'P292_WRECDE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106415010688951317)
,p_name=>'P292_PTYP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mode'
,p_source=>'PURCHASE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NMCODDES,NMSOFCDE from nmcodmas a',
'where a.compcode=:COMPCODE',
'and a.NMHRDCDE=''MOS''',
'and a.MODLCODE=''NM''',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>7
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NMCODDES AS D, NMSOFCDE AS R',
'  FROM NMCODMAS',
' WHERE NMHRDCDE = ''PTY'''))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106415421030951317)
,p_name=>'P292_SALES_POTENTIAL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sales Potential'
,p_source=>'SALES_POTENTIAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 100%;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106415858429951317)
,p_name=>'P292_POSBUYDTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Possible<br>Pur. Date.'
,p_source=>'POSBUYDTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106416217541951317)
,p_name=>'P292_CATEGORR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_item_default=>'DMN'
,p_prompt=>'Category'
,p_source=>'CATEGORR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''CTG''',
' and compcode=:COMPCODE'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106416648108951317)
,p_name=>'P292_USGSEGMT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Usage Segment'
,p_source=>'USGSEGMT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nmcoddes,nmsofcde',
'from nmcodmas',
'where compcode=:compcode',
'and modlcode=''NM''',
'and nmhrdcde = ''AMT'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106416994509951317)
,p_name=>'P292_WHSZONFK_1'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red"> Zone</font>'
,p_source=>'WHSZONFK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.AREA_NAME_TREE_TYPE,s.WHSZONPK',
'from VW_NMWHZNMAS s',
'where S.COMPCODE = :compcode',
'and s.WHSZONPK in (select I.WHSZONFK',
'                               from nmprdhdi i ',
'                               where I.SMANCODE = :P292_SMANCODE --nvl(:P292_SMANCODE,i.SMANCODE)',
'                                and to_date(:P292_DOCTDATE,''dd-mon-yyyy'') between to_date(I.STARTDATE,''dd-mon-yyyy'') and to_date(I.ENDDATE,''dd-mon-yyyy''))'))
,p_lov_cascade_parent_items=>'P292_SMANCODE,P292_DOCTDATE'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_cattributes_element=>'style=''width:100%;'''
,p_tag_attributes=>'style=''width:100%;'''
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106417762886951319)
,p_name=>'P292_CURRENT_BRAND'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand & Model'
,p_source=>'CURRENT_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes d,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''COM'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106418115645951319)
,p_name=>'P292_CURRENT_MODEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>' '
,p_source=>'CURRENT_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select modelnam d,modlcode',
'from vwnmitem',
'where compcode = :compcode ',
'and nvl(commgrup,''0'')=nvl(:P292_CURRENT_BRAND,nvl(commgrup,''0''))',
'order by 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106418535559951319)
,p_name=>'P292_PURCHASED_FROM'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Purchased From'
,p_source=>'PURCHASED_FROM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>512
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106418908041951322)
,p_name=>'P292_PURCHASE_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date'
,p_source=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106419323168951322)
,p_name=>'P292_VHMADEIN'
,p_item_sequence=>181
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Made By'
,p_source=>'VHMADEIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106419675521951323)
,p_name=>'P292_VHCLYEAR'
,p_item_sequence=>182
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Year'
,p_source=>'VHCLYEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106420088430951323)
,p_name=>'P292_AVERAGE_MILEAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mileage'
,p_source=>'AVERAGE_MILEAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106420562675951323)
,p_name=>'P292_ALTRNTVE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Alternative'
,p_source=>'ALTRNTVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106420886823951323)
,p_name=>'P292_SRSOFUND'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Source of fund'
,p_source=>'SRSOFUND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106421336663951323)
,p_name=>'P292_FUNDSTAT'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fund Status'
,p_source=>'FUNDSTAT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106421688883951323)
,p_name=>'P292_ETBCUSTM'
,p_is_required=>true
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">ETB (Eicher<br>Truck Bus)</font>'
,p_source=>'ETBCUSTM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>10
,p_tag_attributes=>'title="Customer total usable cars..." '
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106422126093951323)
,p_name=>'P292_CMPETION'
,p_is_required=>true
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Compe<br>tion</font>'
,p_source=>'CMPETION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>10
,p_cMaxlength=>200
,p_tag_attributes=>'title="Customer total usable cars of this brand..."style=''width:200px;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106422510367951323)
,p_name=>'P292_PROFILEE'
,p_is_required=>true
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Profile</font>'
,p_source=>'PROFILEE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select S.NMCODDES d,S.NMSOFCDE',
'from nmcodmas s',
'where S.COMPCODE = :compcode',
'and S.NMHRDCDE = ''STU''',
'and (:P292_ETBCUSTM +:P292_CMPETION) between s.SERIALNM and s.NMAMOUNT;'))
,p_lov_cascade_parent_items=>'P292_ETBCUSTM,P292_CMPETION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 500px;'' title="Customer total usable cars..." #0372F0;font-weight:bold;margin-top:0%;background-color:'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106422938297951323)
,p_name=>'P292_PIPLNSTS'
,p_is_required=>true
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">Pipline<br>Status</font>'
,p_source=>'PIPLNSTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.NMCODDES d, C.NMSOFCDE',
'from nmcodmas c',
'where C.COMPCODE = :compcode',
'and C.NMHRDCDE = ''PIP'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width:200px;'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106423324298951323)
,p_name=>'P292_AREA'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(170566395993286000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   areadesc "Area Name",areacode "Area Cocde"',
'    FROM nmwhznms z',
'   WHERE z.compcode = :compcode AND locatype = ''UPZ'' AND areadesc IS NOT NULL',
'ORDER BY 1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106430364217951342)
,p_name=>'P292_TEST_DRIVE_FLAG'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(170569207667286002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Test Drive Flag'
,p_source=>'TEST_DRIVE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'style="width:90%;"'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106430728239951342)
,p_name=>'P292_TEST_DRIVE_MODEL'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(170569207667286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Drive Model'
,p_source=>'TEST_DRIVE_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106431166911951342)
,p_name=>'P292_TEST_DRIVE_DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(170569207667286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Drive Date'
,p_source=>'TEST_DRIVE_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106431539970951342)
,p_name=>'P292_TEST_BOOKING_DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(170569207667286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Test Booking Date'
,p_source=>'TEST_BOOKING_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>25
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106431908069951344)
,p_name=>'P292_CUSTOMER_TEST_REMARKS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(170569207667286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_TEST_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>27
,p_cMaxlength=>512
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106432662963951347)
,p_name=>'P292_INTERESTED_BRAND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(191852020852649139)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&COLM1.'
,p_source=>'INTERESTED_BRAND'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''MOD''  and MODLCODE = ''NM'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106433006443951347)
,p_name=>'P292_INTERESTED_MODEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(191852020852649139)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&COLM2.'
,p_source=>'INTERESTED_MODEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes, nmsofcde',
'  FROM nmcodmas',
' WHERE modlcode = ''NM'' AND nmhrdcde = ''STY''',
' and compcode=:COMPCODE'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P292_INTERESTED_MODEL'
,p_ajax_items_to_submit=>'P292_INTERESTED_MODEL'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106433418880951348)
,p_name=>'P292_INTERIOR_COLOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(191852020852649139)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Interior Color'
,p_source=>'INTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106433837509951348)
,p_name=>'P292_EXTERIOR_COLOR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(191852020852649139)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Exterior Color'
,p_source=>'EXTERIOR_COLOR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nmcoddes,nmsofcde',
'  FROM nmcodmas',
' WHERE compcode = :compcode AND nmhrdcde = ''CLR'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106434196104951348)
,p_name=>'P292_ITEMCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(191852020852649139)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<font color="red">&COLM3.</font>'
,p_source=>'ITEMCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT c.ITEMDES1 d,C.ITEMCODE',
'from VWNMITEM c',
'where C.COMPCODE = :compcode',
'--and c.finishgd = ''Y'' ',
'--and nvl(c.commgrup,''0'')=:P292_INTERESTED_BRAND',
'--and nvl(C.MODLCODE,''C'') = :P292_INTERESTED_MODEL',
'/*and nvl(c.commgrup,''0'')=nvl(:P292_INTERESTED_BRAND,nvl(c.commgrup,''0''))',
'and nvl(C.MODLCODE,''C'') = nvl(:INTERESTED_MODEL,nvl(C.MODLCODE,''C''))*/'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style=''width: 500px;;'''
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106434608719951348)
,p_name=>'P292_FUEL_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_item_default=>'DS'
,p_prompt=>'Fuel Type'
,p_source=>'FUEL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Petrol;PT,Mobil;MB,Gasoline;GL,Diesel;DS,Kerosene;KS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_cattributes_element=>'style="width:100%;"'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106435313159951350)
,p_name=>'P292_CUSTOMER_REMARKS_SALES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer Remarks'
,p_source=>'CUSTOMER_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cMaxlength=>512
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
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
 p_id=>wwv_flow_api.id(106435703875951350)
,p_name=>'P292_SALESMAN_REMARKS_SALES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Salesman Remarks'
,p_source=>'SALESMAN_REMARKS_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>300
,p_cMaxlength=>512
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106436085504951351)
,p_name=>'P292_REFERED_BY_SALES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_source=>'REFERED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106436526390951351)
,p_name=>'P292_NEXT_APOINTMENT_ON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_source=>'NEXT_APOINTMENT_ON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106436901608951351)
,p_name=>'P292_VERIFIED_FLAG_SALES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_FLAG_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106437359360951351)
,p_name=>'P292_VERIFIED_BY_SALES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(170571549832286002)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY_SALES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106438063744951353)
,p_name=>'P292_CUSTMRID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(170555969686285985)
,p_use_cache_before_default=>'NO'
,p_source=>'CUSTMRID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106438425369951353)
,p_name=>'P292_CUSTOMER_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106438823173951355)
,p_name=>'P292_DESIGNATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106439207013951355)
,p_name=>'P292_PRESENT_ADDR'
,p_item_sequence=>45
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106439650493951356)
,p_name=>'P292_CONTACT_PERSON'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106440040866951356)
,p_name=>'P292_HOME_PHONE'
,p_item_sequence=>51
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106440422422951356)
,p_name=>'P292_MOBILE_NO'
,p_item_sequence=>61
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106440830385951356)
,p_name=>'P292_OFFICE_PHONE'
,p_item_sequence=>71
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106441241551951356)
,p_name=>'P292_TEFAXNUM'
,p_item_sequence=>81
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_use_cache_before_default=>'NO'
,p_source=>'TEFAXNUM'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106441592167951356)
,p_name=>'P292_CUSTMAIL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(109197893074482214)
,p_use_cache_before_default=>'NO'
,p_prompt=>'E-mail adress'
,p_source=>'CUSTMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106442022925951358)
,p_name=>'P292_CUST_COMPANY'
,p_item_sequence=>101
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106442395273951358)
,p_name=>'P292_INDUSTRY_TYPE'
,p_item_sequence=>111
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106442835188951358)
,p_name=>'P292_CITY_NAME'
,p_item_sequence=>121
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106443176527951359)
,p_name=>'P292_CITY_CODE'
,p_item_sequence=>131
,p_item_plug_id=>wwv_flow_api.id(170551131073285982)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106443889027951359)
,p_name=>'P292_TRACNO'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(195973319896781947)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106444294763951359)
,p_name=>'P292_MOBILNO_1'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(195973319896781947)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106444691606951359)
,p_name=>'P292_MOBILNO'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(195973319896781947)
,p_prompt=>'Mobile No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT CUSTMOBL||''/''||CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  union all',
'  ( SELECT  CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null',
'  minus',
'  SELECT  CUSTMOBL Mobile,CUSTMOBL',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  and CUSTMOBL is not null)'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'onkeypress="return tabE(this,event,''P237_CUSTMID'')"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106445123272951362)
,p_name=>'P292_NATIONLID'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(195973319896781947)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(106445562149951362)
,p_name=>'P292_CUSTMID'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(195973319896781947)
,p_prompt=>'Customer ID'
,p_display_as=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmmrkcus',
' WHERE compcode = :compcode',
'  union all',
'  ( SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmcusmas',
' WHERE compcode = :compcode',
'  minus',
'SELECT custmrid,Custname,Custadr1 , custadr2,IDENTIFY,custphon,CUSTMOBL,Custmail ',
'  FROM nmmrkcus',
' WHERE compcode = :compcode)'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_03=>'2,1'
,p_attribute_08=>'NOT_ENTERABLE'
,p_attribute_09=>'15'
,p_attribute_10=>'&nbsp;'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(106447639391951370)
,p_validation_name=>'P292_SMANCODE'
,p_validation_sequence=>10
,p_validation=>'P292_SMANCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_when_button_pressed=>wwv_flow_api.id(106401662046951297)
,p_associated_item=>wwv_flow_api.id(106411812257951316)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52842384567009401)
,p_validation_name=>'P292_MOBILENO'
,p_validation_sequence=>30
,p_validation=>'P292_MOBILENO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_api.id(106408678350951314)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106451133884951372)
,p_name=>'show hide test drive info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_TEST_DRIVE_FLAG'
,p_condition_element=>'P292_TEST_DRIVE_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106451620527951372)
,p_event_id=>wwv_flow_api.id(106451133884951372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P292_TEST_DRIVE_MODEL,P292_TEST_DRIVE_DATE,P292_TEST_BOOKING_DATE,P292_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106452094987951373)
,p_event_id=>wwv_flow_api.id(106451133884951372)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P292_TEST_DRIVE_MODEL,P292_TEST_DRIVE_DATE,P292_TEST_BOOKING_DATE,P292_CUSTOMER_TEST_REMARKS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106452477143951373)
,p_name=>'fetch area and city '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_AREA'
,p_condition_element=>'P292_AREA'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106453030010951373)
,p_event_id=>wwv_flow_api.id(106452477143951373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'/*',
'   BEGIN',
'      SELECT areadesc',
'        INTO :P292_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :COMPCODE',
'         AND locatype = ''UPZ''',
'         AND areacode = :P292_AREA',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20001, SQLERRM);',
'   END;',
'*/',
'   BEGIN',
'      SELECT areacode, areadesc',
'        INTO :P292_CITY_CODE, :P292_CITY_NAME',
'        FROM nmwhznms z',
'       WHERE z.compcode = :compcode',
'         AND z.areacode =',
'                     (SELECT zonlcode',
'                        FROM nmwhznms a',
'                       WHERE a.compcode = :COMPCODE ',
'                         AND a.areacode = :P292_AREA)',
'         AND z.locatype = ''ZLA''',
'         AND areadesc IS NOT NULL;',
'   EXCEPTION',
'      WHEN OTHERS',
'      THEN',
'         raise_application_error (-20002, SQLERRM);',
'   END;',
'END;'))
,p_attribute_02=>'P292_AREA'
,p_attribute_03=>'P292_CITY_CODE,P292_CITY_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106453430124951373)
,p_name=>'check_exists'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_MOBILNO_COPY'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106453954652951373)
,p_event_id=>wwv_flow_api.id(106453430124951373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'',
':P292_NEW := :P292_MOBILNO_COPY;',
'/*',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P292_CUSTMRID,',
'                  :P292_CUSTOMER_CODE,',
'                  :P292_PRESENT_ADDR,',
'                  :P292_CONTACT_PERSON,',
'                  :P292_HOME_PHONE,',
'                  :P292_OFFICE_PHONE,',
'                  :P292_TEFAXNUM,',
'                  :P292_CUSTMAIL,',
'                  :P292_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P292_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'            begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P292_PRTYNAME,',
'                  :P292_DELRTYPE,',
'                  :P292_IDENTIFY,',
'                  :P292_MOBILENO,',
'                  :P292_PARTYAD2,',
'                  :P292_PARTYAD1,',
'                  :P292_WHSZONFK,',
'                  :P292_OCCUPATION,',
'                  :P292_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'*/',
'end;'))
,p_attribute_02=>'P292_MOBILNO_COPY'
,p_attribute_03=>'P292_WEB_SITE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>'P237_OCCUPATION,P237_WHSZONFK_1,P237_PARTYAD1,P237_PARTYAD2,P237_MOBILENO,P237_IDENTIFY,P237_DELRTYPE,P237_PRTYNAME,P237_SMANCODE,P237_PARTYCDE,P237_CUSTMAIL,P237_TEFAXNUM,P237_OFFICE_PHONE,P237_HOME_PHONE,P237_CONTACT_PERSON,P237_PRESENT_ADDR,P237_C'
||'USTOMER_CODE,P237_CUSTMRID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106454287725951373)
,p_name=>'salesman assign on page load when doc number is null'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106454814288951373)
,p_event_id=>wwv_flow_api.id(106454287725951373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_smncde varchar2(20);',
'begin',
'if :P292_DOCNUMBR is null then',
'select distinct SMANCODE into :P292_SMANCODE from nmsmnmas',
'where COMPCODE=:COMPCODE',
'and  USERNAME=:APP_USER;',
'end if;',
'end;'))
,p_attribute_02=>'P292_DOCNUMBR'
,p_attribute_03=>'P292_SMANCODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106455298983951373)
,p_event_id=>wwv_flow_api.id(106454287725951373)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P292_DOCNUMBR is null then',
'select distinct SMANNAME into :P292_SMNNAME from nmsmnmas',
'where SMANCODE=:P292_SMANCODE;',
'end if;',
'end;'))
,p_attribute_02=>'P292_SMANCODE'
,p_attribute_03=>'P292_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106455740201951375)
,p_name=>'Change mobile No.'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_MOBILNO_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106456203290951375)
,p_event_id=>wwv_flow_api.id(106455740201951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'begin',
'    SELECT count(*)',
'     into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO_1;',
'  exception',
'  when no_data_found then',
'    raise_application_error(-20001,sqlerrm);',
' end;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P292_CUSTMRID,',
'                  :P292_CUSTOMER_CODE,',
'                  :P292_PRESENT_ADDR,',
'                  :P292_CONTACT_PERSON,',
'                  :P292_HOME_PHONE,',
'                  :P292_OFFICE_PHONE,',
'                  :P292_TEFAXNUM,',
'                  :P292_CUSTMAIL,',
'                  :P292_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO_1;',
'',
'          select distinct smancode ',
'           into :P292_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'            begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P292_PRTYNAME,',
'                  :P292_DELRTYPE,',
'                  :P292_IDENTIFY,',
'                  :P292_MOBILENO,',
'                  :P292_PARTYAD2,',
'                  :P292_PARTYAD1,',
'                  :P292_WHSZONFK,',
'                  :P292_OCCUPATION,',
'                  :P292_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
' exception',
' when no_data_found then',
'      raise_application_error(-20001,sqlerrm);',
'end;'))
,p_attribute_02=>'P292_MOBILNO_1'
,p_attribute_03=>'P292_CUSTMRID,P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P292_HOME_PHONE,P292_OFFICE_PHONE,P292_TEFAXNUM,P292_PARTYCDE,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK_1,P292_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106456659324951375)
,p_name=>'Change National Id '
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_NATIONLID'
,p_condition_element=>'P292_NATIONLID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106457139288951375)
,p_event_id=>wwv_flow_api.id(106456659324951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT CUSTMRID',
'  INTO :P292_CUSTMRID',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE',
'AND IDENTIFY= :P292_NATIONLID;',
'end;'))
,p_attribute_02=>'P292_NATIONLID'
,p_attribute_03=>'P292_CUSTMRID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106457555008951375)
,p_name=>'Change Customer ID'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_CUSTMID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106457998645951375)
,p_event_id=>wwv_flow_api.id(106457555008951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P292_CUSTMID is not null then',
'SELECT Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'      CONTPERS,',
'PARTYCDE,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email,',
'      TEFAXNUM,',
'      PARTYCDE',
'  INTO  :P292_CUSTOMER_CODE,:P292_PRESENT_ADDR, :P292_CONTACT_PERSON,:P137_PARTYCD1,',
'        :P292_HOME_PHONE, :P292_MOBILE_NO, :P292_CUSTMAIL,:P292_TEFAXNUM,:P292_PARTYCDE',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE AND custmrid = :P292_CUSTMID;',
' end if;',
'if :P292_PARTYCDE is not null then',
'  begin',
'     SELECT PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P292_PRTYNAME,',
'          :P292_DELRTYPE,',
'          :P292_IDENTIFY,',
'          :P292_MOBILENO,',
'          :P292_PARTYAD2,',
'          :P292_PARTYAD1,',
'          :P292_WHSZONFK,',
'          :P292_OCCUPATION,',
'          :P292_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'   end;',
'end if;',
'EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_CUSTMID);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_CUSTMID);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P292_CUSTMID,P292_PARTYCDE'
,p_attribute_03=>'P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P137_PARTYCD1,P292_HOME_PHONE,P292_MOBILE_NO,P292_TEFAXNUM,P292_PARTYCDE,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK,P292_OCCUPATION,P292_P'
||'HONENUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106458383721951375)
,p_name=>'Change smanname'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_SMANCODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106458902846951375)
,p_event_id=>wwv_flow_api.id(106458383721951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  SELECT DISTINCT INITCAP (J.SMANNAME) ',
'   into :P292_SMNNAME',
'    FROM nmsmnmas j',
'   WHERE j.compcode = :compcode',
'     and J.SMANCODE = :P292_SMANCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P292_SMANCODE'
,p_attribute_03=>'P292_SMNNAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106459310704951375)
,p_name=>'add rows javascript'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106459803459951375)
,p_event_id=>wwv_flow_api.id(106459310704951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $mydiv = $("#f14_0011");',
'    if ($mydiv.length){',
'/*alert(''test'');*/',
'}',
'else',
'{',
'for (i = 0; i <=4; i++)',
'{',
'javascript:addRow();',
'};',
'};',
'/*document.getElementById(''ITEMDESC'').readOnly = true;*/',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106460240216951375)
,p_name=>'Change Tracking No'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_TRACNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106460731433951376)
,p_event_id=>wwv_flow_api.id(106460240216951375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'      SELECT distinct s.CUSTMRID,',
'          s.CUSTNAME,',
'          s.CUSTADR1,',
'          s.CONTPERS,',
'          s.CUSTPHON,',
'          s.CUSTMOBL,',
'          s.TEFAXNUM,',
'          s.CUSTMAIL,',
'          s.PARTYCDE',
'     INTO :P292_CUSTMRID,',
'          :P292_CUSTOMER_CODE,',
'          :P292_PRESENT_ADDR,',
'          :P292_CONTACT_PERSON,',
'          :P292_HOME_PHONE,',
'          :P292_OFFICE_PHONE,',
'          :P292_TEFAXNUM,',
'          :P292_CUSTMAIL,',
'          :P292_PARTYCDE',
'      FROM nmmrkcus s,nmcusvlg g',
'    WHERE s.compcode = :COMPCODE --AND CUSTMOBL = :P292_MOBILNO',
'     and S.CUSTMRID = G.CUSTMRID',
'     and G.DOCNUMBR = :P292_TRACNO;',
'     ',
'  select distinct smancode ',
'   into :P292_SMANCODE',
'   from nmsmnmas ',
'   where username=:APP_USER',
'     and SMANTYPE = ''CO'';',
'-- RAISE_APPLIIA',
' begin',
'     SELECT distinct PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P292_PRTYNAME,',
'          :P292_DELRTYPE,',
'          :P292_IDENTIFY,',
'          :P292_MOBILENO,',
'          :P292_PARTYAD2,',
'          :P292_PARTYAD1,',
'          :P292_WHSZONFK,',
'          :P292_OCCUPATION,',
'          :P292_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'   exception',
'    when too_many_rows then',
'     null;',
'    when no_data_found then',
'     null;',
'    when others then',
'     null;',
'  end;',
'  exception',
'    when too_many_rows then',
'     null;',
'    when no_data_found then',
'     null;',
'    when others then',
'     null;',
'END;'))
,p_attribute_02=>'P292_TRACNO'
,p_attribute_03=>'P292_CUSTMRID,P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P292_HOME_PHONE,P292_OFFICE_PHONE,P292_TEFAXNUM,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK_1,P292_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106462039347951376)
,p_name=>'change_partycde'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_PARTYCDE'
,p_condition_element=>'P292_PARTYCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106462487215951376)
,p_event_id=>wwv_flow_api.id(106462039347951376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' SELECT PRTYNAME,',
'      DELRTYPE,',
'      IDENTIFY,',
'      MOBILENO,',
'      PARTYAD2,',
'      PARTYAD1,',
'      WHSZONFK',
' INTO :P292_PRTYNAME,',
'      :P292_DELRTYPE,',
'      :P292_IDENTIFY,',
'      :P292_MOBILENO,',
'      :P292_PARTYAD2,',
'      :P292_PARTYAD1,',
'      :P292_WHSZONFK',
' FROM nmmrkpty',
'WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'end;'))
,p_attribute_02=>'P292_PARTYCDE'
,p_attribute_03=>'P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106462963286951376)
,p_name=>'set_val'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106463434390951376)
,p_event_id=>wwv_flow_api.id(106462963286951376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    SELECT j.WARECODE',
'     into :P292_WRECDE',
'     FROM nmwhsmas j, sycstacc c',
'     WHERE     j.compcode = :compcode',
'       AND j.compcode = c.compcode',
'       AND j.WARECODE = c.WARECODE',
'       AND c.grupcode = :APP_USER',
'       AND NVL (J.MAINSTOR, ''N'') = ''Y'';',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(106463861473951376)
,p_name=>'Change_Mobile'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_MOBILNO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106464298562951376)
,p_event_id=>wwv_flow_api.id(106463861473951376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
'if :P292_MOBILNO is not null then',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P292_CUSTMRID,',
'                  :P292_CUSTOMER_CODE,',
'                  :P292_PRESENT_ADDR,',
'                  :P292_CONTACT_PERSON,',
'                  :P292_HOME_PHONE,',
'                  :P292_OFFICE_PHONE,',
'                  :P292_TEFAXNUM,',
'                  :P292_CUSTMAIL,',
'                  :P292_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO;',
'',
'          select distinct smancode ',
'           into :P292_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'           begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P292_PRTYNAME,',
'                  :P292_DELRTYPE,',
'                  :P292_IDENTIFY,',
'                  :P292_MOBILENO,',
'                  :P292_PARTYAD2,',
'                  :P292_PARTYAD1,',
'                  :P292_WHSZONFK,',
'                  :P292_OCCUPATION,',
'                  :P292_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'end if;',
'end;'))
,p_attribute_02=>'P292_MOBILNO'
,p_attribute_03=>'P292_CUSTMRID,P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P292_HOME_PHONE,P292_OFFICE_PHONE,P292_TEFAXNUM,P292_PARTYCDE,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK_1,P292_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
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
 p_id=>wwv_flow_api.id(106464713213951376)
,p_name=>'Change_Mobile_1'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_MOBILNO_2'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(106465247915951376)
,p_event_id=>wwv_flow_api.id(106464713213951376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' vc number;',
'begin',
' SELECT count(*)',
' into vc',
'      FROM nmmrkcus',
'    WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO_2;',
'   if vc=0 then',
'    raise_application_error(-20001,''This customer not exists...'');',
'   else',
'        BEGIN',
'           SELECT CUSTMRID,',
'                  CUSTNAME,',
'                  CUSTADR1,',
'                  CONTPERS,',
'                  CUSTPHON,',
'                  CUSTMOBL,',
'                  TEFAXNUM,',
'                  CUSTMAIL,',
'                  PARTYCDE',
'             INTO :P292_CUSTMRID,',
'                  :P292_CUSTOMER_CODE,',
'                  :P292_PRESENT_ADDR,',
'                  :P292_CONTACT_PERSON,',
'                  :P292_HOME_PHONE,',
'                  :P292_OFFICE_PHONE,',
'                  :P292_TEFAXNUM,',
'                  :P292_CUSTMAIL,',
'                  :P292_PARTYCDE',
'             FROM nmmrkcus',
'            WHERE compcode = :COMPCODE AND CUSTMOBL = :P292_MOBILNO_2;',
'',
'          select distinct smancode ',
'           into :P292_SMANCODE',
'           from nmsmnmas ',
'           where username=:APP_USER',
'             and SMANTYPE = ''CO'';	',
'',
'           begin',
'             SELECT PRTYNAME,',
'                  DELRTYPE,',
'                  IDENTIFY,',
'                  MOBILENO,',
'                  PARTYAD2,',
'                  PARTYAD1,',
'                  WHSZONFK,',
'                  OCCUPATION,',
'                  phonenum',
'             INTO :P292_PRTYNAME,',
'                  :P292_DELRTYPE,',
'                  :P292_IDENTIFY,',
'                  :P292_MOBILENO,',
'                  :P292_PARTYAD2,',
'                  :P292_PARTYAD1,',
'                  :P292_WHSZONFK,',
'                  :P292_OCCUPATION,',
'                  :P292_phonenum',
'             FROM nmmrkpty',
'            WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'',
'          end;',
'        END;',
'   end if;',
'end;'))
,p_attribute_02=>'P292_MOBILNO_2'
,p_attribute_03=>'P292_CUSTMRID,P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P292_HOME_PHONE,P292_OFFICE_PHONE,P292_TEFAXNUM,P292_PARTYCDE,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK_1,P292_OCCUPATION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44121919538800868)
,p_name=>'change custmrid'
,p_event_sequence=>170
,p_bind_type=>'one'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44122064057800869)
,p_event_id=>wwv_flow_api.id(44121919538800868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P292_PARTYAD1:=''123'';',
'',
'END;'))
,p_attribute_02=>'P292_CUSTMRID'
,p_attribute_03=>'P292_PARTYAD1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44122162763800870)
,p_name=>'change page load on customer Id'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_CUSTMRID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P292_DOCNUMBR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44122259834800871)
,p_event_id=>wwv_flow_api.id(44122162763800870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if :P292_CUSTMRID is not null then',
'SELECT Custname,',
'       Custadr1 || '','' || custadr2 Address,',
'      CONTPERS,',
'PARTYCDE,',
'       custphon Phone,',
'       CUSTMOBL Mobile,',
'       Custmail Email,',
'      TEFAXNUM,',
'      PARTYCDE',
'  INTO  :P292_CUSTOMER_CODE,:P292_PRESENT_ADDR, :P292_CONTACT_PERSON,:P137_PARTYCD1,',
'        :P292_HOME_PHONE, :P292_MOBILE_NO, :P292_CUSTMAIL,:P292_TEFAXNUM,:P292_PARTYCDE',
'  FROM nmmrkcus',
' WHERE compcode = :COMPCODE AND custmrid = :P292_CUSTMRID;',
' end if;',
'if :P292_PARTYCDE is not null then',
'  begin',
'     SELECT PRTYNAME,',
'          DELRTYPE,',
'          IDENTIFY,',
'          MOBILENO,',
'          PARTYAD2,',
'          PARTYAD1,',
'          WHSZONFK,',
'          OCCUPATION,',
'          phonenum',
'     INTO :P292_PRTYNAME,',
'          :P292_DELRTYPE,',
'          :P292_IDENTIFY,',
'          :P292_MOBILENO,',
'          :P292_PARTYAD2,',
'          :P292_PARTYAD1,',
'          :P292_WHSZONFK,',
'          :P292_OCCUPATION,',
'          :P292_phonenum',
'     FROM nmmrkpty',
'    WHERE compcode = :COMPCODE AND PARTYCDE = :P292_PARTYCDE;',
'    EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_PARTYCDE);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_PARTYCDE);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_PARTYCDE);',
'   end;',
'end if;',
'EXCEPTION',
' WHEN no_data_found',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_CUSTMRID);',
' WHEN too_many_rows',
'   THEN',
'      raise_application_error (-20001, SQLERRM||'' ''||:P292_CUSTMRID);',
'   WHEN OTHERS',
'   THEN',
'      raise_application_error (-20001, SQLERRM);',
'END;'))
,p_attribute_02=>'P292_CUSTMRID,P292_PARTYCDE'
,p_attribute_03=>'P292_CUSTOMER_CODE,P292_PRESENT_ADDR,P292_CONTACT_PERSON,P137_PARTYCD1,P292_HOME_PHONE,P292_MOBILE_NO,P292_TEFAXNUM,P292_PARTYCDE,P292_PRTYNAME,P292_DELRTYPE,P292_IDENTIFY,P292_MOBILENO,P292_PARTYAD2,P292_PARTYAD1,P292_WHSZONFK,P292_OCCUPATION,P292_P'
||'HONENUM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(46096144956754167)
,p_name=>'Change Itemcode'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_ITEMCODE'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(46096240710754168)
,p_event_id=>wwv_flow_api.id(46096144956754167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'--:P292_TWITTER:=''1259'';',
'select DESIGNCD d,DESIGNCD,MODLCODE ',
'into :P292_TWITTER,:P292_INTERESTED_BRAND,:P292_INTERESTED_MODEL ',
'from nmitemas ',
'where compcode=:COMPCODE ',
'and ITEMCODE=:P292_ITEMCODE;',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_attribute_02=>'P292_ITEMCODE'
,p_attribute_03=>'P292_TWITTER,P292_INTERESTED_MODEL,P292_INTERESTED_BRAND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38646917861292403)
,p_name=>'customer assign'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_MOBILENO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38647001509292404)
,p_event_id=>wwv_flow_api.id(38646917861292403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'SELECT count(*) into v_count',
'FROM  nmmrkcus r',
'where r.compcode = :compcode',
'and r.CUSTMOBL=:P292_MOBILENO ;',
'if v_count > 0 THEN',
'SELECT distinct r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.PARTYCDE,r.IDENTIFY,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE,t.DELRTYPE,t.OCCUPATION',
'into :P292_CUSTMRID,:P292_PRTYNAME,:P292_PARTYAD2,:P292_PARTYAD1,:P292_PHONENUM,:P292_PARTYCDE,:P292_IDENTIFY,:P292_CUSTMAIL,:P292_BIRTHDATE,:P292_ANNIVERSARY_DATE,:P292_DELRTYPE,:P292_OCCUPATION',
'FROM  nmmrkcus r,nmcusvlg s,nmmrkpty t',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.compcode = t.compcode',
'and r.CUSTMRID=t.CUSTMRID',
'and r.CUSTMOBL=:P292_MOBILENO;',
'else',
':P292_CUSTMRID:=NULL;',
':P292_PRTYNAME:=NULL;',
':P292_PARTYAD2:=NULL;',
':P292_PARTYAD1:=NULL;',
':P292_PHONENUM:=NULL;',
':P292_PARTYCDE:=NULL;',
':P292_CUSTMAIL:=NULL;',
':P292_BIRTHDATE:=NULL;',
':P292_ANNIVERSARY_DATE:=NULL;',
':P292_DELRTYPE:=NULL;',
':P292_IDENTIFY:=NULL;',
':P292_OCCUPATION:=NULL;',
'END IF;',
'exception',
'when no_data_found then',
':P292_CUSTMRID:=NULL;',
':P292_PRTYNAME:=NULL;',
':P292_PARTYAD2:=NULL;',
':P292_PARTYAD1:=NULL;',
':P292_PHONENUM:=NULL;',
':P292_PARTYCDE:=NULL;',
'v_count:=0;',
'when too_many_rows then',
'v_count:=0;',
'when others then',
'v_count:=0;',
'end;'))
,p_attribute_02=>'P292_MOBILENO'
,p_attribute_03=>'P292_CUSTMRID,P292_PRTYNAME,P292_PARTYAD2,P292_PARTYAD1,P292_PHONENUM,P292_PARTYCDE,P292_CUSTMAIL,P292_BIRTHDATE,P292_ANNIVERSARY_DATE,P292_DELRTYPE,P292_OCCUPATION,P292_IDENTIFY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48460404009756303)
,p_name=>'Customer assign'
,p_event_sequence=>210
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_PRTYNAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48460498814756304)
,p_event_id=>wwv_flow_api.id(48460404009756303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count number;',
'begin',
'SELECT count(*) into v_count',
'FROM  nmmrkcus r',
'where r.compcode = :compcode',
'and r.CUSTMOBL=:P292_MOBILENO ;',
'if v_count > 0 THEN',
'SELECT distinct r.CUSTMRID,r.CUSTNAME D,r.CUSTADR1,r.CUSTADR2,r.CUSTPHON,r.PARTYCDE,r.IDENTIFY,s.CUSTMAIL,s.BIRTHDATE,s.ANNIVERSARY_DATE,t.DELRTYPE,t.OCCUPATION',
'into :P292_CUSTMRID,:P292_PRTYNAME,:P292_PARTYAD2,:P292_PARTYAD1,:P292_PHONENUM,:P292_PARTYCDE,:P292_IDENTIFY,:P292_CUSTMAIL,:P292_BIRTHDATE,:P292_ANNIVERSARY_DATE,:P292_DELRTYPE,:P292_OCCUPATION',
'FROM  nmmrkcus r,nmcusvlg s,nmmrkpty t',
'where r.compcode = :compcode',
'and r.compcode = s.compcode',
'and r.CUSTMRID=s.CUSTMRID',
'and r.compcode = t.compcode',
'and r.CUSTMRID=t.CUSTMRID',
'and r.CUSTMOBL=:P292_MOBILENO;',
'else',
':P292_CUSTMRID:=NULL;',
':P292_PRTYNAME:=NULL;',
':P292_PARTYAD2:=NULL;',
':P292_PARTYAD1:=NULL;',
':P292_PHONENUM:=NULL;',
':P292_PARTYCDE:=NULL;',
':P292_CUSTMAIL:=NULL;',
':P292_BIRTHDATE:=NULL;',
':P292_ANNIVERSARY_DATE:=NULL;',
':P292_DELRTYPE:=NULL;',
':P292_IDENTIFY:=NULL;',
':P292_OCCUPATION:=NULL;',
'END IF;',
'exception',
'when no_data_found then',
':P292_CUSTMRID:=NULL;',
':P292_PRTYNAME:=NULL;',
':P292_PARTYAD2:=NULL;',
':P292_PARTYAD1:=NULL;',
':P292_PHONENUM:=NULL;',
':P292_PARTYCDE:=NULL;',
'v_count:=0;',
'when too_many_rows then',
'v_count:=0;',
'when others then',
'v_count:=0;',
'end;'))
,p_attribute_02=>'P292_MOBILENO'
,p_attribute_03=>'P292_CUSTMRID,P292_PRTYNAME,P292_PARTYAD2,P292_PARTYAD1,P292_PHONENUM,P292_PARTYCDE,P292_CUSTMAIL,P292_BIRTHDATE,P292_ANNIVERSARY_DATE,P292_DELRTYPE,P292_OCCUPATION,P292_IDENTIFY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106449561091951372)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P292_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
,p_process_when=>'P292_DOCNUMBR'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106449947395951372)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of NMCUSVLG'
,p_attribute_02=>'NMCUSVLG'
,p_attribute_03=>'P292_DOCNUMBR'
,p_attribute_04=>'DOCNUMBR'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Successfully Change........'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38959472298692321)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(170561567623285989)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Multiple customer family information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106450333069951372)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(106401662046951297)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106447876847951370)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(106401992397951297)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106448721129951370)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert nmmrkpty'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' V_DOCNUM varchar2(10);',
'v_customer varchar2(20);',
'vcount number;',
'begin',
'select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where CUSTMOBL = :P292_MOBILENO',
'       and compcode = :compcode;',
' if vcount=0 then',
'if :P292_DOCNUMBR is  null then',
'select TO_CHAR (sysdate, ''rrrrmmdd'')|| LPAD (seq_custmrid.NEXTVAL, 5, 0) a',
'into :P292_CUSTMRID',
'from dual;',
'',
'',
'Select        upper(''CU'')|| lpad(to_char(max(to_number(substr(PARTYCD1,3,5)))+1),4,0) a ',
'into :P292_PARTYCDE',
'      from             NMcusvlg;',
'end if;',
'else',
'select CUSTMRID,PARTYCDE',
'      into :P292_CUSTMRID,:P292_PARTYCDE',
'      from nmmrkcus',
'      where CUSTMOBL = :P292_MOBILENO',
'       and compcode = :compcode;',
'end if;',
'',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(106401662046951297)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(106450688685951372)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'preinsert on NMCUSVLG'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_docnum varchar2(50);',
' nxtptycde number(10);',
' vcount number;',
'begin',
'/*if :P292_PARTYCDE is not null then',
'    begin ',
'     select CUSTMRID',
'      into :P292_CUSTMRID',
'     from nmmrkcus',
'     where compcode = :compcode',
'      and PARTYCDE = :P292_PARTYCDE;',
'     exception',
'     when no_data_found then',
'      :P292_CUSTMRID := '''';',
'    end;',
'end if;*/',
'IF :P292_DOCNUMBR IS NULL  THEN',
':P292_COMPCODE:=:COMPCODE;',
'Docnumber_Generation(:COMPCODE,''NM'',''CS'', 2, sysdate,:P292_WARECODE, ''NM'', v_docnum);',
':P292_DOCNUMBR:=v_docnum;',
'END IF;',
'IF :P292_CUSTMRID IS not NULL THEN',
'--------------',
'    /*begin',
'      Select        max(to_number(substr(partycde,3,5))) ',
'      into             nxtptycde ',
'      from             NMMRKPTY',
'      where upper(partytyp)=upper(''CU'');',
'',
'     If nxtptycde is NULL then',
'         nxtptycde := 0;',
'      End If;',
'',
'      nxtptycde      := nxtptycde + 1;',
'    If :P292_PARTYCDE is Null then',
'      :P292_PARTYCDE := upper(''CU'')|| lpad(to_char(nxtptycde ),4,0);',
'    end if;',
'',
'    if :P292_WHSZONFK is null then',
'     :P292_WHSZONFK := :P292_WHSZONFK_1;',
'    end if;',
'    exception',
'    when no_data_found then',
'    raise_application_error(-200001,''fsf'');',
'    when too_many_rows then',
'    null;',
'    when others then',
'    raise_application_error(-200001,''fsf'');',
'    end;*/',
'--------------',
'  begin',
'      select count(*)',
'      into vcount',
'      from nmmrkcus',
'      where PARTYCDE = :P292_PARTYCDE',
'       and compcode = :compcode;',
'       exception',
'    when no_data_found then',
'    vcount := 0;',
'    when too_many_rows then',
'    vcount := 0;',
'    when others then',
'    vcount := 0;',
'',
'end;',
'if vcount = 0 then',
'insert into nmmrkpty(COMPCODE,PARTYTYP,PARTYCDE,DELRTYPE,OCCUPATION,PRTYNAME,IDENTIFY,MOBILENO,PARTYAD2,PARTYAD1,WHSZONFK,OPRSTAMP,TIMSTAMP,PHONENUM,CUSTMRID,CUSTOMER_CODE,CREDDAYS )',
'values (:COMPCODE,''CU'',:P292_PARTYCDE,:P292_DELRTYPE,:P292_OCCUPATION,:P292_PRTYNAME,:P292_IDENTIFY,:P292_MOBILENO,:P292_PARTYAD2,:P292_PARTYAD1,:P292_WHSZONFK,:APP_USER,sysdate,',
'       :P292_PHONENUM,:P292_CUSTMRID,:P292_CUSTMRID,90);',
'commit;',
'ELSE',
'    UPDATE nmmrkpty',
'    SET DELRTYPE = :P292_DELRTYPE,',
'        OCCUPATION = :P292_OCCUPATION,',
'        PRTYNAME = :P292_PRTYNAME,',
'        IDENTIFY = :P292_IDENTIFY,',
'        MOBILENO = :P292_MOBILENO,',
'        PARTYAD2 = :P292_PARTYAD2,',
'        PARTYAD1 = :P292_PARTYAD1,',
'        WHSZONFK = :P292_WHSZONFK,',
'        PHONENUM = :P292_PHONENUM',
'    WHERE PARTYCDE = :P292_PARTYCDE',
'     AND COMPCODE = :COMPCODE;',
'    COMMIT;',
'end if;  ',
'',
'END IF;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Success Customer visit log &P292_DOCNUMBR. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(38959510081692322)
,p_process_sequence=>80
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_region_id=>wwv_flow_api.id(170561567623285989)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Pre-Insert nmcusvlg_family_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':CUSTMRID:=:P292_CUSTMRID;',
':PARTYCD1:=:P292_PARTYCDE;',
':UPDOCNUM:=:P292_DOCNUMBR;',
':UPDOCTYP:=:P292_DOCTTYPE;',
':WARECODE:=:P292_WARECODE;',
':OPRSTAMP:=:APP_USER;',
':TIMSTAMP:=SYSDATE;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
