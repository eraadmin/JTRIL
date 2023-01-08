prompt --application/pages/page_00427
begin
--   Manifest
--     PAGE: 00427
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
 p_id=>427
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Document Information'
,p_page_mode=>'MODAL'
,p_step_title=>'&PROGDESC.'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(19712461351817939)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20221017124353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44734639685185623)
,p_plug_name=>'Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_api.id(47596507795858189)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_api.id(24685888503784642)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175230340940634746)
,p_plug_name=>'Doc Info Left'
,p_parent_plug_id=>wwv_flow_api.id(44734639685185623)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175243271305638842)
,p_plug_name=>'Doc Info Right'
,p_parent_plug_id=>wwv_flow_api.id(44734639685185623)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175261831387637129)
,p_plug_name=>'Doc Info Center'
,p_parent_plug_id=>wwv_flow_api.id(44734639685185623)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noUI:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:&BACKGROUND_COLOR.;"'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24689809791790618)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(44734639685185623)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24690652950790620)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(44734639685185623)
,p_button_name=>'NEXT'
,p_button_static_id=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(47630535519858357)
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24690200663790620)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(44734639685185623)
,p_button_name=>'PREVIOUS'
,p_button_static_id=>'BACK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24728311349790656)
,p_branch_name=>'Go To Page 428'
,p_branch_action=>'f?p=&APP_ID.:&P427_NEXTPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24690652950790620)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(24727958894790656)
,p_branch_name=>'Go To Page 426'
,p_branch_action=>'f?p=&APP_ID.:&P427_PREVPAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(24690200663790620)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24913206361102704)
,p_name=>'P427_TRNDATE'
,p_is_required=>true
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Tran. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>20
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(47630164134858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'&P427_PODCDATE.'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24913624436102704)
,p_name=>'P427_DOCTTYPE'
,p_item_sequence=>1670
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'&DOCTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'RC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24914074562102707)
,p_name=>'P427_SUBTTYPE'
,p_item_sequence=>1680
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'&SUBTTYPE.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24914415063102707)
,p_name=>'P427_DOCDESC'
,p_item_sequence=>1690
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'&DOCDESC.'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24914890121102707)
,p_name=>'P427_S_PRDTYP'
,p_item_sequence=>1694
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prdoctyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24915266995102707)
,p_name=>'P427_S_PRSTYP'
,p_item_sequence=>1695
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT prsubtyp',
'  FROM nmwrkflw',
' WHERE trdoctyp = :docttype ',
'   AND trsubtyp = :subttype'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24916047550102709)
,p_name=>'P427_DOCNUMBR'
,p_item_sequence=>1700
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24916442107102709)
,p_name=>'P427_DOCTDATE'
,p_item_sequence=>1710
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24916873511102709)
,p_name=>'P427_PODCNO'
,p_item_sequence=>1711
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_prompt=>'Request No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select docnumbr||''-''||DOCTTYPE||''-''||SUBTTYPE||''-''||doctdate d,docnumbr r',
'From',
'(',
'SELECT docnumbr,DOCTTYPE,SUBTTYPE,',
'         doctdate,',
'         warecode,',
'         waredesc',
'    FROM (SELECT DISTINCT',
'                 b.docnumbr,b.DOCTTYPE,b.SUBTTYPE,',
'                 b.doctdate,',
'                 b.warecode,',
'                 (SELECT DISTINCT waredesc',
'                    FROM nmwhsmas',
'                   WHERE     compcode = :compcode',
'                         AND warecode = b.warecode',
'                         AND costcode = b.costcode)',
'                    waredesc',
'            FROM nmprocur b',
'           WHERE     b.compcode = :compcode',
'                 AND b.docttype = :P427_S_PRDTYP',
'                 AND b.subttype = :P427_S_PRSTYP',
'                 AND NVL (b.apprqnty, 0) - NVL (b.trnsqnty, 0) > 0',
'                 AND warecode IN (SELECT warecode',
'                                    FROM sycstacc',
'                                   WHERE compcode = :compcode AND grupcode = :APP_USER)',
'                 AND b.docnumbr NOT LIKE ''TMP%''',
'          UNION',
'          SELECT DISTINCT',
'                 a.docnumbr,a.DOCTTYPE,a.SUBTTYPE,',
'                 a.doctdate,',
'                 a.warecode,',
'                 (SELECT DISTINCT waredesc',
'                    FROM nmwhsmas',
'                   WHERE     compcode = :compcode',
'                         AND warecode = a.warecode',
'                         AND costcode = a.costcode)',
'                    waredesc',
'            FROM nmstkrec a',
'           WHERE     a.compcode = :compcode',
'                 AND a.docttype = :P427_S_PRDTYP',
'                 AND a.subttype = :P427_S_PRSTYP',
'                 AND NVL (a.apprqnty, 0) - NVL (a.trnsqnty, 0) > 0',
'                 AND warecode IN (SELECT warecode',
'                                    FROM sycstacc',
'                                   WHERE compcode = :compcode AND grupcode = :APP_USER))',
'ORDER BY doctdate DESC',
'           )'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24917288061102710)
,p_name=>'P427_PODCDATE'
,p_item_sequence=>1712
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_prompt=>'<strong>Date</strong>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24917698707102710)
,p_name=>'P427_REFNUMBR'
,p_item_sequence=>1713
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_prompt=>'Ext.Ref. No.'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>7
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24918055540102710)
,p_name=>'P427_REFNDATE'
,p_item_sequence=>1714
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24918471446102712)
,p_name=>'P427_BTCHEXPDAT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_prompt=>'Batch Exp. Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_02=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24919267017105067)
,p_name=>'P427_WARECODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_prompt=>'Rcv. From'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'WAREHOUSE LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT warecode || '' - '' || initcap(waredesc) d, warecode r',
'    FROM nmwhsmas',
'   WHERE compcode = :compcode',
'     AND NVL (srvcwflg, ''N'') = ''N''',
'ORDER BY warecode'))
,p_cSize=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24919657644105067)
,p_name=>'P427_WHSNAM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WAREDESC',
'  FROM nmwhsmas',
' WHERE COMPCODE = :COMPCODE ',
' AND WARECODE = :P427_WARECODE'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24920051617105067)
,p_name=>'P427_BATCHNO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_prompt=>'Batch No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and invmthd = ''N'';'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24920489007105067)
,p_name=>'P427_BATCHDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_prompt=>'Batch Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT 1',
'     FROM syparmas',
'    WHERE cacmpcde = :compcode',
'      and invmthd = ''N'';'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24920859372105067)
,p_name=>'P427_SUPPLIERCDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT    a.partycde||'' - ''||a.prtyname,a.partycde',
'    FROM sycompty a',
'   WHERE a.compcode = :compcode ',
'     AND a.partytyp IN (''CV'', ''VE'')',
'ORDER BY a.partycde'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24921295884105067)
,p_name=>'P427_SUPPLIERNAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24921665718105068)
,p_name=>'P427_CONTPRSN'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24922000501105068)
,p_name=>'P427_SPLRADRS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24922473642105068)
,p_name=>'P427_SPLREMAIL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24922844574105068)
,p_name=>'P427_SPLRPHON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923288436105068)
,p_name=>'P427_POSTSTATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_item_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct SYCODDES d,SYSOFCDE r from sycodmas where SYSOFCDE in',
'(select distinct PARTYTYP from sycompty)',
'and COMPCODE=:COMPCODE',
'and MODLCODE=''SY''',
'and SYHRDCDE=''CUS'';'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24923665945105068)
,p_name=>'P427_SALMNNAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24924974758106810)
,p_name=>'P427_COSTCODE'
,p_item_sequence=>1071
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24925356277106810)
,p_name=>'P427_COSTCENTERNAME'
,p_item_sequence=>1072
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24925790795106812)
,p_name=>'P427_CURRENCY'
,p_item_sequence=>1075
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_item_default=>'BDT'
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>6
,p_cMaxlength=>4000
,p_colspan=>6
,p_grid_column=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24926177010106812)
,p_name=>'P427_EXCHANGERATE'
,p_item_sequence=>1076
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_item_default=>'1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>3
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24926512390106812)
,p_name=>'P427_REQDDAT'
,p_item_sequence=>1077
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24926904818106814)
,p_name=>'P427_REQUESTNO'
,p_item_sequence=>1490
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24927378746106815)
,p_name=>'P427_LCTOTAL'
,p_item_sequence=>1500
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   INITCAP (costdesc) costdesc',
'    FROM syjobmas',
'   WHERE compcode = :compcode ',
'and costcode=:P427_SRCCOSTCD',
'ORDER BY costcode'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24927694987106815)
,p_name=>'P427_POTYPE'
,p_item_sequence=>1570
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24928063993106815)
,p_name=>'P427_WAREHUSBUGET'
,p_item_sequence=>1580
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24928402924106815)
,p_name=>'P427_WAREHUSREM'
,p_item_sequence=>1630
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24928815747106815)
,p_name=>'P427_CUSTOMERNAME'
,p_item_sequence=>1660
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24929298292106815)
,p_name=>'P427_LOCATIONCDE'
,p_item_sequence=>1720
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24929676348106815)
,p_name=>'P427_SOURCEWARECODE'
,p_item_sequence=>1730
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24930003336106817)
,p_name=>'P427_SALMANID'
,p_item_sequence=>1910
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24930467467106817)
,p_name=>'P427_PARTYCDE'
,p_item_sequence=>2400
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24930845748106817)
,p_name=>'P427_S_BILPART'
,p_item_sequence=>2410
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24931267777106818)
,p_name=>'P427_S_BLPARTNM'
,p_item_sequence=>2420
,p_item_plug_id=>wwv_flow_api.id(175243271305638842)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24983466037319808)
,p_name=>'P427_PREVPAGE'
,p_item_sequence=>1774
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24983534593319809)
,p_name=>'P427_NEXTPAGE'
,p_item_sequence=>1784
,p_item_plug_id=>wwv_flow_api.id(175230340940634746)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(38509858785647408)
,p_name=>'P427_SRCWRECD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(175261831387637129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(38509568959647405)
,p_validation_name=>'batch date not null'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P427_BATCHNO is not null',
'and :P427_BATCHDATE is not null'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Batch Date and Batch no. must have Value.'
,p_validation_condition=>'P427_BATCHNO'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(24918471446102712)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(55400872356215414)
,p_validation_name=>'future date not allow'
,p_validation_sequence=>30
,p_validation=>':P427_TRNDATE<= trunc(sysdate)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'#LABEL# Future Date not Allow!'
,p_associated_item=>wwv_flow_api.id(24913206361102704)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24719674796790650)
,p_name=>'change on costcode'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_COSTCODE'
,p_condition_element=>'P427_COSTCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24720190490790650)
,p_event_id=>wwv_flow_api.id(24719674796790650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'IF :P427_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'SELECT   w.warecode',
'into :P427_WARECODE',
'    FROM nmwhsmas w',
'   WHERE w.compcode = :compcode',
'     AND w.warecode IN (SELECT warecode',
'                          FROM sycstacc',
'                         WHERE compcode = :compcode AND grupcode = :APP_USER',
'                               AND cabasecc = :P427_COSTCODE)',
'     AND costcode = :P427_COSTCODE',
'ORDER BY warecode;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P427_COSTCODE IS NOT NULL',
'   THEN',
'      BEGIN',
'select distinct COSTDESC ',
'into :P427_COSTCENTERNAME',
'from syjobmas',
'where compcode = :compcode',
'AND costcode = :P427_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
'BEGIN',
'IF :P427_COSTCODE IS NOT NULL and :P427_DOCNUMBR1 is not null',
'   THEN',
'      BEGIN',
'SELECT distinct SMANCODE',
'into :P427_SALMANID',
'        FROM nmsalrec',
'       WHERE docnumbr = :p427_docnumbr1',
'         AND DOCTDATE = :P427_DOCTDATE',
'         AND COSTCODE = :P427_COSTCODE;',
'        ',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
'WHEN too_many_rows',
'         THEN',
'            null;',
'WHEN others',
'         THEN',
'            null;',
'      END;',
'  ',
'   END IF;',
'END;',
''))
,p_attribute_02=>'P427_COSTCODE,P427_DOCTDATE'
,p_attribute_03=>'P427_COSTCENTERNAME,P427_SALMANID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24720530891790650)
,p_name=>'change on trantype'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_TRANTYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24721058860790651)
,p_event_id=>wwv_flow_api.id(24720530891790650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select distinct TRANTYPE,SUBTTYPE ',
'into :P427_DOCTTYPE,:P427_SUBTTYPE',
'from SYDOCMAS ',
'where COMPCODE = :COMPCODE ',
'AND TRANTYPE=''IS''',
'AND SUBTTYPE=:P427_TRANTYPE',
'AND SYSDATE BETWEEN STRTPERD AND ENDPERD ',
'AND MODLCODE = :MODLCODE ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'',
'BEGIN',
'  Select PRDOCTYP,PRSUBTYP',
'into :P427_PRDTYP,:P427_PRSTYP',
'        from   NMWRKFLW',
'        where  COMPCODE = :COMPCODE ',
'        and    TRDOCTYP = :P427_DOCTTYPE',
'        and    TRSUBTYP = :P427_SUBTTYPE;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'BEGIN',
'SELECT INITCAP (naration)',
'into :P427_PRVREF',
'  FROM sydocmas',
' WHERE compcode = :compcode ',
'   AND trantype = :P427_PRDTYP',
'   AND subttype = :P427_PRSTYP',
'   AND :P427_DOCTDATE BETWEEN strtperd AND endperd',
'   AND modlcode = :modlcode ;',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND',
'         THEN',
'            null;',
' WHEN too_many_rows',
'         THEN',
'            null;',
' WHEN others',
'         THEN',
'            null;',
'',
'END;',
'  ',
'',
''))
,p_attribute_02=>'P427_TRANTYPE,P427_PRDTYP,P427_PRSTYP'
,p_attribute_03=>'P427_PRDTYP,P427_PRSTYP,P427_PRVREF'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24721429307790653)
,p_name=>'change on P427_PRVDNO'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_PRVDNO'
,p_condition_element=>'P427_PRVDNO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24721913613790653)
,p_event_id=>wwv_flow_api.id(24721429307790653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'If :P427_PRVDNO is not null then',
'  Begin',
'   	Select distinct DOCTDATE',
'   	into   :P427_PRVDDT',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P427_S_PRDTYP',
'   	and    SUBTTYPE = :P427_S_PRSTYP',
'   	and    DOCNUMBR = :P427_PRVDNO;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'end if;',
'END;',
'begin',
'If :P427_PRVDNO  is not null then',
'  Begin',
'   	Select distinct costcode,refnumbr,refndate,SRCWRECD,BATCHNUM',
'   	into   :P427_SRCCOSTCD,:P427_REFNUMBR,:P427_REFNDATE,:P427_SRWHSCDE,:P427_STYLENO',
'   	from   NMSTKREC',
'   	where  COMPCODE = :COMPCODE ',
'   	and    DOCTTYPE = :P427_S_PRDTYP',
'   	and    SUBTTYPE = :P427_S_PRSTYP',
'   	and    DOCNUMBR = :P427_PRVDNO',
'   	and    DOCTDATE = :P427_PRVDDT;',
'   Exception',
'   	When No_Data_Found then',
'   	     null;',
'     When Too_Many_Rows then',
'          null;',
'   End;',
'Begin',
'  If :P427_SRCCOSTCD is not null then ',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P427_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P427_SRCCOSTCD ;',
'	   Select warecode,waredesc',
'   	 into   :P427_DSWHSCDE,:P427_DSWHSNME',
'   	 from   nmwhsmas',
'   	 where  compcode = :COMPCODE ',
'   	 and    costcode = :P427_SRCCOSTCD;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then ',
'          Null;',
'   End;	',
'  End if;',
'End; ',
'  ',
'End If;  ',
'end;',
''))
,p_attribute_02=>'P427_PRDTYP,P427_PRSTYP,P427_PRVDNO,P427_SRCCOSTCD'
,p_attribute_03=>'P427_SRCCOSTCD,P427_REFNUMBR,P427_SRCCOSTDS,P427_DSWHSCDE,P427_DSWHSNME,P427_SRWHSCDE'
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
 p_id=>wwv_flow_api.id(24722396973790653)
,p_name=>'change  on P427_SRWHSCDE'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_SRWHSCDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24722898548790653)
,p_event_id=>wwv_flow_api.id(24722396973790653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_result number;',
'l_no number;',
'requestno varchar2(20);',
'docnum varchar2(500);',
'begin',
'/*',
'begin',
'Docnumber_Generation(:P427_COMPCODE_APPLICATION, ''NM'', ''PR'',1, :P427_DOCTDATE, null, --:P427_SRWHSCDE,',
'                     ''NM'', requestno); ',
' ',
':P427_PUR_DOCNUMBR:= requestno;  ',
'',
'exception',
'when no_data_found then',
'--:P427_PUR_DOCNUMBR:= null;',
'raise_application_error(-20001,''No data found'');',
'when too_many_rows then',
'--:P427_PUR_DOCNUMBR:=null;',
'raise_application_error(-20001,''Too many rows found'');',
'when others then',
'raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'end;',
'*/',
'begin',
'   	Select waredesc,costcode',
'   	into   :P427_SRWHSNME,:P427_SRCSTCDE',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P427_SRWHSCDE;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);',
'   End; ',
' ',
'Begin',
'  If :P427_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P427_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P427_SRCSTCDE ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'    when others then',
'    raise_application_error(-20001,sqlcode||'' ''||sqlerrm);          ',
'          ',
'   End;	',
'  End if;',
'  end;',
'End;'))
,p_attribute_02=>'P427_DOCTDATE,P427_SRWHSCDE,P427_SRCSTCDE'
,p_attribute_03=>'P427_SRWHSNME,P427_SRCSTCDE,P427_SRCSTNME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_da_action_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    ',
'	Declare',
'			a number; ',
'l_result number;',
'l_no number;',
'',
'		Begin',
'',
'			Select 1 into a from sycstacc',
'				Where compcode = :compcode ',
'					And grupcode = :APP_USER',
'					And cabasecc = ''00000'';',
'',
'			Begin	',
'				Select waredesc,costcode into :P81_SRWHSNME,:P81_SRCSTCDE',
'					From nmwhsmas ',
'				 Where compcode = :compcode   ',
'				 	 And warecode = :P81_SRWHSCDE;',
'			 Exception',
'					When no_data_found then',
'					    apex_application.g_print_success_message:='' has not access in this cost center'';',
'					When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'				End;',
'				',
'',
'		Exception',
'			When No_Data_Found then',
'				Begin',
'				 	Select 1 into a from nmperson a, syusrmas b',
'						where a.compcode = :compcode ',
'							and a.compcode = b.divncode',
'							and a.usercode = b.usercode',
'							and a.usercode = :APP_USER',
'							and a.authtype in (''APR'',''RAS'');',
'					',
'				Begin	',
'					Select a.warecode,waredesc into :P81_SRCSTCDE,:P81_SRCSTNME ',
'					 From SYCSTACC a,NMWHSMAS b',
'						Where a.compcode = :compcode ',
'						    And a.compcode = b.compcode',
'						    And a.cabasecc = b.costcode ',
'						    And a.warecode = b.warecode',
'						    And a.grupcode = :APP_USER',
'						    And b.warecode = :P81_SRWHSCDE;',
'					Exception',
'						When no_data_found then',
'				apex_application.g_print_success_message:='' has not access in this cost center'';',
'',
'						When others then',
'						apex_application.g_print_success_message:=''Too many Cost Center Access defined for the User: '';',
'',
'					End;			',
'				Exception',
'					When No_Data_Found then',
'						apex_application.g_print_success_message:=''No user Code define in SYUSRMAS/NMPERSON..'';',
'					When Too_Many_Rows then',
'					apex_application.g_print_success_message:=''Too Many user Codes defined in SYUSRMAS/NMPERSON..'';					',
'				End;',
'		End;	',
'',
'   if :P81_SRWHSCDE = :P81_DSWHSCDE then',
'   	  apex_application.g_print_success_message:=''Source and Destination Warehouse cannot be the same'';',
'',
'   end if;',
'   ',
'Begin',
'  If :P81_SRCSTCDE is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P81_SRCSTNME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P81_SRCSTCDE;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'End;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24723215619790653)
,p_name=>'refresh on tabular region'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_REFNUMBR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24723734629790653)
,p_event_id=>wwv_flow_api.id(24723215619790653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24724152316790653)
,p_name=>'disable field after refresh'
,p_event_sequence=>380
,p_triggering_element_type=>'REGION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24724656676790653)
,p_event_id=>wwv_flow_api.id(24724152316790653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''input[name="f02"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f02"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f02"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f14"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f14"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f14"]'').css("border-color", "rgba(247, 253, 237, 0.15)");  ',
'$(''input[name="f18"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f18"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f18"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f19"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f19"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f19"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f20"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f20"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f20"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f21"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f21"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f21"]'').css("border-color", "rgba(247, 253, 237, 0.15)");',
'$(''input[name="f30"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f30"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f30"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
'$(''input[name="f24"]'').attr(''readonly'', ''readonly'');',
'$(''input[name="f24"]'').css("background-color", "rgb(221, 221, 221)");',
'$(''input[name="f24"]'').css("border-color", "rgba(247, 253, 237, 0.15)"); ',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24725041947790653)
,p_name=>'change  on P427_DSWHSCDE'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_DSWHSCDE'
,p_condition_element=>'P427_DSWHSCDE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24725566823790654)
,p_event_id=>wwv_flow_api.id(24725041947790653)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   	Select waredesc,costcode',
'   	into   :P427_DSWHSNME,:P427_SRCCOSTCD',
'   	from   nmwhsmas',
'   	where  compcode = :compcode ',
'   	and    warecode = :P427_DSWHSCDE;',
'   Exception',
'   	When No_Data_Found then',
'   	     apex_application.g_print_success_message:=''Invalid Warehouse code...Select valid values from the list'';',
'',
'     When Too_Many_Rows then',
'         apex_application.g_print_success_message:=''More records found in Table...Contact System Administrator'';',
'',
'   End; ',
' ',
'Begin',
'  If :P427_SRCCOSTCD is not null then',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P427_SRCCOSTDS',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P427_SRCCOSTCD ;',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'  End if;',
'  end;'))
,p_attribute_02=>'P427_DSWHSCDE,P427_SRCCOSTCD'
,p_attribute_03=>'P427_DSWHSNME,P427_SRCCOSTCD,P427_SRCCOSTDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24725943776790654)
,p_name=>'Close Dialog'
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20045491708395014)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24726981168790654)
,p_event_id=>wwv_flow_api.id(24725943776790654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24726432770790654)
,p_event_id=>wwv_flow_api.id(24725943776790654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''DOC_INFO'');',
'end if;   ',
'',
'if apex_collection.collection_exists(''ORDER_ITEMS'') = TRUE then',
'   apex_collection.delete_collection(p_collection_name => ''ORDER_ITEMS'');',
'end if;   ',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24727423634790656)
,p_event_id=>wwv_flow_api.id(24725943776790654)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24833301085047701)
,p_name=>'Confirm'
,p_event_sequence=>420
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24689809791790618)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24833463382047702)
,p_event_id=>wwv_flow_api.id(24833301085047701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are You Sure to Cancel!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24833901357047707)
,p_event_id=>wwv_flow_api.id(24833301085047701)
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
 p_id=>wwv_flow_api.id(24833819401047706)
,p_event_id=>wwv_flow_api.id(24833301085047701)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(24982900337319803)
,p_name=>'change on warecode'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_WARECODE'
,p_condition_element=>'P427_WARECODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(24983053696319804)
,p_event_id=>wwv_flow_api.id(24982900337319803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P427_COSTCENTERNAME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P427_COSTCODE ;',
'       ',
'Select Initcap(WAREDESC)',
'	   into   :P427_WHSNAM',
'	   from   NMWHSMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    WARECODE = :P427_WARECODE ;',
'',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'',
'End;'))
,p_attribute_02=>'P427_COSTCODE,P427_WARECODE'
,p_attribute_03=>'P427_COSTCENTERNAME,P427_WHSNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(38509209493647402)
,p_name=>'change on warecode1'
,p_event_sequence=>440
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P427_WARECODE_1'
,p_condition_element=>'P427_WARECODE_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_api.id(981178456698168123)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(38509386486647403)
,p_event_id=>wwv_flow_api.id(38509209493647402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'   Begin',
'	   Select Initcap(COSTDESC)',
'	   into   :P427_COSTCENTERNAME',
'	   from   SYJOBMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    COSTCODE = :P427_COSTCODE ;',
'       ',
'Select Initcap(WAREDESC)',
'	   into   :P427_WHSNAM',
'	   from   NMWHSMAS',
'	   where  COMPCODE = :COMPCODE ',
'	   and    WARECODE = :P427_WARECODE ;',
'',
'   Exception',
'    	When No_Data_Found then ',
'	        Null;',
'      When Too_many_Rows then',
'          Null;',
'   End;	',
'',
'End;'))
,p_attribute_02=>'P427_COSTCODE,P427_WARECODE'
,p_attribute_03=>'P427_COSTCENTERNAME,P427_WHSNAM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24718841131790646)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collection DOC_INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if not apex_collection.collection_exists(''DOC_INFO'') = TRUE then',
'        apex_collection.create_or_truncate_collection (''DOC_INFO'');',
'        apex_collection.add_member(           ',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P427_PODCNO,',
'            p_c002            => :P427_PODCDATE,',
'            p_c003            => :P427_REFNUMBR,',
'            p_c004            => :P427_REFNDATE,',
'            p_c005            => :P427_CURRENCY,',
'            p_c006            => :P427_EXCHANGERATE,',
'            p_c007            => :P427_REQDDAT,',
'            p_c008            => :P427_SUPPLIERCDE,',
'            p_c009            => :P427_COSTCODE,',
'            p_c010            => :P427_S_BILPART,',
'            p_c011            => :P427_WARECODE,',
'            p_c012            => :P427_WHSNAM, --:P427_WHSNAM,',
'            p_c013            => :P427_BATCHNO,',
'            p_c014            => :P427_BATCHDATE,',
'            p_c015            => :P427_S_PRDTYP,',
'            p_c016            => :P427_S_PRSTYP,',
'			p_c017			  => :P427_TRNDATE,',
'            p_c018            => :P427_BTCHEXPDAT,',
'            p_c019            => :P427_SRCWRECD',
'        );',
'else',
'   apex_collection.create_or_truncate_collection(p_collection_name => ''DOC_INFO'');   ',
'        apex_collection.add_member(',
'            p_collection_name => ''DOC_INFO'',',
'            p_c001            => :P427_PODCNO,',
'            p_c002            => :P427_PODCDATE,',
'            p_c003            => :P427_REFNUMBR,',
'            p_c004            => :P427_REFNDATE,',
'            p_c005            => :P427_CURRENCY,',
'            p_c006            => :P427_EXCHANGERATE,',
'            p_c007            => :P427_REQDDAT,',
'            p_c008            => :P427_SUPPLIERCDE,',
'            p_c009            => :P427_COSTCODE,',
'            p_c010            => :P427_S_BILPART,',
'            p_c011            => :P427_WARECODE,',
'            p_c012            => :P427_WHSNAM, --:P427_WHSNAM,',
'            p_c013            => :P427_BATCHNO,',
'            p_c014            => :P427_BATCHDATE,',
'            p_c015            => :P427_S_PRDTYP,',
'            p_c016            => :P427_S_PRSTYP,',
'			p_c017			  => :P427_TRNDATE,',
'            p_c018            => :P427_BTCHEXPDAT,',
'            p_c019            => :P427_SRCWRECD',
'        );',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24690652950790620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24719294969790650)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NEXT AND PREV PAGE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT WIZ_P1, WIZ_P3',
'  INTO :P427_PREVPAGE, :P427_NEXTPAGE',
'  FROM symenmas',
' WHERE PROGNAME = :PROGNAME;',
'   EXCEPTION ',
'   WHEN OTHERS THEN',
'   RAISE_APPLICATION_ERROR(-20001, ''NEXT AND PREV PAGE ''||SQLCODE||'' ''||SQLERRM);',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
