prompt --application/pages/page_00444
begin
--   Manifest
--     PAGE: 00444
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
 p_id=>444
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Confirmation'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20230101193904'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(117132756305950942)
,p_plug_name=>'Progress Info'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_api.id(53292964414742481)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(159839940397725861)
,p_plug_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(117132756305950942)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(163776640703410350)
,p_name=>'Product Information'
,p_parent_plug_id=>wwv_flow_api.id(159839940397725861)
,p_template=>wwv_flow_api.id(47588528672858186)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT seq_id SL,',
'       c002 ITEMCODE,',
'       c003 ITEMDESC,',
'       c004 LUOMCODE,        ',
'       c005 HUOMCODE,',
'       c006 LUOMDESC,',
'       c007 ITEMTYPE,',
'       c008 COSTRATE,',
'       c009 SALERATE,',
'       c010 COMMCODE,',
'       c011 ORGNQNTY,',
'       c012 REMARKS,',
'       c013 POSTFLAG,',
'       c014 APPRQNTY,',
'       c015 TRNSQNTY,',
'       c016 MSLCAMNT,',
'       c017 BATCHNUM,',
'       c018 BATCH_QTY,',
'       c019 SCPCNT,',
'       c020 DISCAMNT,',
'       c021 SPLDISPC,',
'       c022 SPLDISNT,',
'       c023 ISSQTY,',
'       c024 STOCK',
'  FROM apex_collections',
' WHERE collection_name = ''ORDER_ITEMS''',
' ORDER BY sl'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(47606600251858234)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52871189349751471)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>1
,p_column_heading=>'Sl#'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52871898090751473)
,p_query_column_id=>2
,p_column_alias=>'ITEMCODE'
,p_column_display_sequence=>2
,p_column_heading=>'Product Code'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52872298871751473)
,p_query_column_id=>3
,p_column_alias=>'ITEMDESC'
,p_column_display_sequence=>3
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52872608161751475)
,p_query_column_id=>4
,p_column_alias=>'LUOMCODE'
,p_column_display_sequence=>4
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52873082379751475)
,p_query_column_id=>5
,p_column_alias=>'HUOMCODE'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53034511572841139)
,p_query_column_id=>6
,p_column_alias=>'LUOMDESC'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52873886829751475)
,p_query_column_id=>7
,p_column_alias=>'ITEMTYPE'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52874290059751475)
,p_query_column_id=>8
,p_column_alias=>'COSTRATE'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52874664007751475)
,p_query_column_id=>9
,p_column_alias=>'SALERATE'
,p_column_display_sequence=>15
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52875067051751476)
,p_query_column_id=>10
,p_column_alias=>'COMMCODE'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52875480398751476)
,p_query_column_id=>11
,p_column_alias=>'ORGNQNTY'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52875887514751478)
,p_query_column_id=>12
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>12
,p_column_heading=>'Remarks'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(52876269817751478)
,p_query_column_id=>13
,p_column_alias=>'POSTFLAG'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53034628033841140)
,p_query_column_id=>14
,p_column_alias=>'APPRQNTY'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53034717435841141)
,p_query_column_id=>15
,p_column_alias=>'TRNSQNTY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53034840823841142)
,p_query_column_id=>16
,p_column_alias=>'MSLCAMNT'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53034923475841143)
,p_query_column_id=>17
,p_column_alias=>'BATCHNUM'
,p_column_display_sequence=>7
,p_column_heading=>'Batch No.'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and nvl(invmthd,''N'') = ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035007473841144)
,p_query_column_id=>18
,p_column_alias=>'BATCH_QTY'
,p_column_display_sequence=>8
,p_column_heading=>'Stock Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and nvl(invmthd,''N'') = ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035159426841145)
,p_query_column_id=>19
,p_column_alias=>'SCPCNT'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035250383841146)
,p_query_column_id=>20
,p_column_alias=>'DISCAMNT'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035325039841147)
,p_query_column_id=>21
,p_column_alias=>'SPLDISPC'
,p_column_display_sequence=>24
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035440470841148)
,p_query_column_id=>22
,p_column_alias=>'SPLDISNT'
,p_column_display_sequence=>25
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035503637841149)
,p_query_column_id=>23
,p_column_alias=>'ISSQTY'
,p_column_display_sequence=>10
,p_column_heading=>'Issue Qty.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(53035646134841150)
,p_query_column_id=>24
,p_column_alias=>'STOCK'
,p_column_display_sequence=>9
,p_column_heading=>'Stock'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and nvl(invmthd,''N'') <> ''N'';'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(163773109118409041)
,p_plug_name=>'Document Information'
,p_parent_plug_id=>wwv_flow_api.id(117132756305950942)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52868946623751465)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(117132756305950942)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52869758890751467)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(117132756305950942)
,p_button_name=>'FINISH'
,p_button_static_id=>'SUBMIT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Finish'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(''Are you sure to Finish?'',''PLACE_ORDER'');'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52870148369751467)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(117132756305950942)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52887061862751495)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&SUCCESS_APP.:&SUCCESS_PAGE.:&SESSION.::&DEBUG.:RP,:P1_DOCNUMBR,P1_PROGNAME:&P444_DOCNUMBR.,nmtrnprt&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(35368143935135441)
,p_branch_name=>'Go To Page 49'
,p_branch_action=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49:P49_DOCNUMBR,P49_PROGNAME:&P444_DOCNUMBR.,nmtrnprt&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'PLACE_ORDER'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52886656236751495)
,p_branch_name=>'Go To Page 443'
,p_branch_action=>'f?p=&APP_ID.:&P444_PREVPAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_VALIDATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(52870148369751467)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51545029447684725)
,p_name=>'P444_S_PRDTYP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51545192714684726)
,p_name=>'P444_S_PRSTYP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51545243206684727)
,p_name=>'P444_RCDOCNUMBR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52876973434751478)
,p_name=>'P444_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52877390047751481)
,p_name=>'P444_WARENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_prompt=>'Source Warehouse/Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52877793653751481)
,p_name=>'P444_COSTCODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52878164663751481)
,p_name=>'P444_SRCWARECODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52878590991751481)
,p_name=>'P444_SRCWARENAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_prompt=>'Destination Warehouse/Business Unit'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52878956239751481)
,p_name=>'P444_APRPERSON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52879321627751481)
,p_name=>'P444_APRPERSNM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P444_APRPERSON'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52879782932751481)
,p_name=>'P444_DOCNUMBR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52880185144751481)
,p_name=>'P444_DOCTDATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52880508528751487)
,p_name=>'P444_STATUSCD'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52880906816751487)
,p_name=>'P444_PREVPAGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52881350002751487)
,p_name=>'P444_NEXTPAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(163773109118409041)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52883739585751492)
,p_name=>'Close Dialg'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52868946623751465)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52884236045751492)
,p_event_id=>wwv_flow_api.id(52883739585751492)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(52884644655751493)
,p_name=>'Close Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(52868946623751465)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52885144630751493)
,p_event_id=>wwv_flow_api.id(52884644655751493)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52885647072751493)
,p_event_id=>wwv_flow_api.id(52884644655751493)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if; ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(52886177862751493)
,p_event_id=>wwv_flow_api.id(52884644655751493)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52882580184751490)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Previous Page Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   SELECT c001 DOCTDATE,',
'   		  c002 WARECODE, ',
'		  c002 ||''-''|| c003 warename,',
'          c004 SRCWARECODE, ',
'		  c004 ||''-''|| c005 srcwarename,',
'          c006 APRPERSON,',
'          c007 APRPERSNM,',
'          c008 COSTCODE,',
'          c009 S_PRDTYP,',
'          c010 S_PRSTYP',
'     INTO :P444_DOCTDATE, :P444_WARECODE, :P444_WARENAME, :P444_SRCWARECODE, :P444_SRCWARENAME, :P444_APRPERSON, :P444_APRPERSNM, :P444_COSTCODE, :P444_S_PRDTYP, :P444_S_PRSTYP',
'     FROM apex_collections',
'    WHERE collection_name = ''DOC_INFO'';',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      raise_application_error (-20001, SQLCODE || '' '' || SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52883310253751490)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'    for i in',
'    (   SELECT seq_id SL,',
'               c002 ITEMCODE,',
'               c003 ITEMDESC,',
'               c004 LUOMCODE,        ',
'               c005 HUOMCODE,',
'               c006 LUOMDESC,',
'               c007 ITEMTYPE,',
'               c008 COSTRATE,',
'               c009 SALERATE,',
'               c010 COMMCODE,',
'               c011 ORGNQNTY,',
'               c012 REMARKS,',
'               c013 POSTFLAG,',
'               c014 APPRQNTY,',
'               c015 TRNSQNTY,',
'               c016 MSLCAMNT,',
'               c017 BATCHNUM,',
'               c018 BATCH_QTY,',
'               c019 SCPCNT,',
'               c020 DISCAMNT,',
'               c021 SPLDISPC,',
'               c022 SPLDISNT,',
'               c023 ISSQTY,',
'               c024 STOCK,',
'               c025 ITEMRATE',
'          FROM apex_collections',
'         WHERE collection_name = ''ORDER_ITEMS''',
'         ORDER BY sl)',
'loop',
'',
'BEGIN',
'    dpr_batch_wise_transfer (P_COMPCODE =>  :COMPCODE,',
'                             p_docttype =>  :DOCTTYPE,',
'                             p_subttype =>  :SUBTTYPE,',
'                             p_docnumbr =>  :P444_DOCNUMBR,',
'                             p_doctdate =>  :P444_DOCTDATE,',
'                             p_serlnumb =>  i.SL,',
'                             p_raisedby =>  :APP_USER,',
'                             p_reqddate =>  null, --SYSDATE,',
'                             p_commcode =>  i.COMMCODE,',
'                             p_itemcode =>  i.ITEMCODE,',
'                             p_itemtype =>  i.ITEMTYPE,',
'                             p_itemdesc =>  i.ITEMDESC,             ',
'                             p_itemlong =>  i.ITEMDESC,',
'                             p_itemrate =>  nvl(i.COSTRATE,i.ITEMRATE),',
'                             p_salerate =>  i.SALERATE,',
'                             p_huomcode =>  i.HUOMCODE,',
'                             p_luomcode =>  i.luomcode,',
'                             p_orgnqnty =>  i.ISSQTY,',
'                             p_apprqnty =>  i.ISSQTY,',
'                             p_msfcamnt =>  i.ISSQTY * nvl(i.COSTRATE,i.ITEMRATE), --i.msfcamnt,',
'                             p_currcode =>  ''BDT'', --i.currcode,',
'                             p_excgrate =>  1,',
'                             p_mslcamnt =>  i.ISSQTY * nvl(i.COSTRATE,i.ITEMRATE) * 1, --i.mslcamnt,',
'                             p_refndate =>  null, -- sysdate,',
'                             p_updoctyp =>  ''RC'', --:DOCTTYPE,',
'                             p_upsubtyp =>  10, --:SUBTTYPE,',
'                             p_updocnum =>  :P444_RCDOCNUMBR, --:P444_DOCNUMBR,',
'                             p_updocdte =>  :P444_DOCTDATE,',
'                             p_remarkss =>  i.REMARKS,',
'                             p_costcode =>  :P444_COSTCODE,',
'                             p_warecode =>  :P444_WARECODE, --v_DSWHSCDE, --i.srcwrecd,',
'                             p_statuscd =>  :P444_STATUSCD,',
'                             p_oprstamp =>  :APP_USER,',
'                             p_batchnum =>  i.BATCHNUM,',
'                             p_costrate =>  i.costrate,',
'                             p_issqty   =>  i.ISSQTY,',
'                             p_srcwrecd => :P444_SRCWARECODE, --v_SRWHSCDE, --i.warecode, ',
'                             p_sndpersn =>  NULL,',
'                             p_srccmpcd => :COMPCODE,',
'                             p_postflag => i.postflag,',
'                             p_TIMSTAMP => SYSDATE,',
'                             p_mrdocnumbr => :P444_RCDOCNUMBR);    ',
'EXCEPTION',
'WHEN OTHERS THEN',
'raise_application_error(-20001, SQLERRM);                                          ',
'END;',
'end loop;',
'    ',
'-- Truncate the collection after the order has been placed ',
'if apex_collection.collection_exists(p_collection_name => ''DOC_INFO'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''DOC_INFO'');',
'end if;  ',
'',
'if apex_collection.collection_exists(p_collection_name => ''ORDER_ITEMS'') = true then',
'   apex_collection.truncate_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*                    ',
'INSERT INTO NMSTKREC (SERLNUMB,',
'                      ITEMCODE,',
'                      ITEMDESC,',
'                      LUOMCODE,',
'                      HUOMCODE,',
'                      --LUOMDESC,',
'                      ITEMTYPE,',
'                      COSTRATE,',
'                      SALERATE,',
'                      COMMCODE,',
'                      ORGNQNTY,',
'                      REMARKSS,',
'                      POSTFLAG,',
'                      ITEMRATE,',
'                      COMPCODE,',
'                      DOCTTYPE,',
'                      SUBTTYPE,',
'                      DOCTDATE,',
'                      OPRSTAMP,',
'                      TIMSTAMP,',
'                      RAISEDBY,',
'                      REQDDATE,',
'                      ITEMLONG,',
'                      CURRCODE,',
'                      APPRQNTY,',
'                      --DISCAMNT,',
'                      --MSLCAMNT,',
'                      --MSFCAMNT,',
'                      EXCGRATE,',
'                      REFNDATE,',
'                      WARECODE,',
'                      SRCWRECD,',
'                      COSTCODE,',
'                      STATUSCD,',
'                      PRICFLAG,',
'                      DOCNUMBR,',
'                      BATCHNUM,',
'                      APPRVDBY',
'                      )',
'                      ',
'              values (i.SL,',
'                      i.ITEMCODE,',
'                      i.ITEMDESC,',
'                      i.LUOMCODE,',
'                      i.HUOMCODE,',
'                      --i.LUOMCODE_DESC,',
'                      i.ITEMTYPE,',
'                      i.COSTRATE,',
'                      i.SALERATE,',
'                      i.COMMCODE,',
'                      i.ORGNQNTY,',
'                      i.REMARKS,',
'                      i.POSTFLAG,',
'                      i.COSTRATE,',
'                      :COMPCODE,',
'                      :DOCTTYPE,',
'                      :SUBTTYPE,',
'                      :P444_DOCTDATE,',
'                      :APP_USER,',
'                      sysdate,',
'                      :APP_USER,',
'                      sysdate,',
'                      i.ITEMDESC,',
'                      ''BDT'',',
'                      i.ORGNQNTY,',
'                      --:DISCAMNT,',
'                      --:MSLCAMNT,',
'                      --:MSFCAMNT,',
'                      1,',
'                      sysdate,',
'                      :P444_WARECODE,',
'                      :P444_SRCWARECODE,',
'                      :P444_COSTCODE,',
'                      :P444_STATUSCD,',
'                      ''N'',',
'                      :P444_DOCNUMBR,',
'                      :P444_DOCNUMBR,',
'                      :P444_APRPERSON',
'                      );    ',
'                      ',
'                      ',
'        IF i.POSTFLAG=''Y'' THEN',
'                BEGIN',
'                   dpr_insert_approval (:COMPCODE,',
'                                        :P444_DOCNUMBR,',
'                                        :DOCTTYPE,',
'                                        :SUBTTYPE);',
'                EXCEPTION',
'                    WHEN OTHERS THEN',
'                    raise_application_error(-20001,''insert nmreqapr ''||sqlcode||'' ''||sqlerrm);',
'                END;     ',
'        END IF;                         ',
'*/'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52882967143751490)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'docnumber generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    newno varchar2(20);',
'    docnum varchar2(500);',
'begin',
'BEGIN',
'    docnumber_generation(:COMPCODE, ''NM'', ''RC'',',
'                         10, :P444_DOCTDATE, :P442_SRCWARECODE,',
'                         ''NM'', newno); ',
'    :P444_DOCNUMBR:= newno; ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''RC No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''RC Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'BEGIN    ',
'    docnumber_generation(:COMPCODE, ''NM'', :DOCTTYPE,',
'                         :SUBTTYPE, :P444_DOCTDATE, :P442_WARECODE,',
'                         ''NM'', docnum); ',
'    :P444_RCDOCNUMBR:= docnum;     ',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''IS No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''IS Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'',
'exception',
'    when no_data_found then',
'    raise_application_error(-20001,''No data found'');',
'    when too_many_rows then',
'    raise_application_error(-20001,''Too many rows found'');',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Record generate successfully<br>Requisition No. : &P444_DOCNUMBR.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52882169667751490)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRE-INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PKG_APPROVAL.PRC_CHK_APPRNEED (:COMPCODE,',
'                               :DOCTTYPE,',
'                               :SUBTTYPE,',
'                               :P444_STATUSCD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'PLACE_ORDER'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52881769462751489)
,p_process_sequence=>40
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P2',
'  INTO :P444_NEXTPAGE, :P444_PREVPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001,SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
