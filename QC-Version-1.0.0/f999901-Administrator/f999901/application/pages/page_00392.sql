prompt --application/pages/page_00392
begin
--   Manifest
--     PAGE: 00392
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>999901
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_page(
 p_id=>392
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Report on Item Master'
,p_page_mode=>'MODAL'
,p_step_title=>'Report on Item Master'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210310115529'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61927745767439047)
,p_plug_name=>'Report on Item Master'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'I.ITEMCODE,',
'decode (I.STATUSCD ,''ACT'',''Active'',''NOT'',''Inactive'') Status,',
'decode (I.ITEMTYPE ,''S'',''Stock'',''N'',''Non Stock'') Item_Type,',
'I.USERCODE,',
'I.ITEMDES1,',
'(SELECT Initcap (IUOMDESC)',
'  FROM NMUOMMAS',
' WHERE COMPCODE = :COMPCODE',
'   AND LUOMCODE = I.HUOMCODE) HUOMCODE,',
'I.SALERATE,',
'I.COSTRATE,',
'(SELECT sum(CLBALQTY) CLBALQTY',
'    FROM nmwhimas',
'   WHERE compcode = i.COMPCODE',
'     AND ITEMCODE = i.ITEMCODE ',
'     AND clbalqty > 0) Available_Qty,          ',
'decode (I.ITEMCLAS,''N'',''Normal'',''B'',''Batch'',''E'',''Enumerative'') Item_Class,',
'I.COSTTYPE,',
'I.COSTCODE,',
'I.AREAVALU,',
'I.SALEPERC,',
'I.ITEMDES3,',
'I.MFRSCNTR,',
'I.RMNDRFLG,',
'I.DESIGNCD,',
'I.CHASISNO,',
'I.ENGINENO,',
'I.ITEMSIZE,',
'I.WARECODE',
'from NMITEMAS I, orbrgs_attach.sy_attachment a',
'where i.compcode = a.compcode(+)',
'and i.itemcode = a.itemcode(+)',
'and I.compcode =:compcode;',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(61928127660439048)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_select_columns=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:390:&SESSION.::&DEBUG.::P390_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'DLRADM'
,p_internal_uid=>61928127660439048
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28608276207049832)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28608680307049834)
,p_db_column_name=>'USERCODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Usercode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28609008000049834)
,p_db_column_name=>'ITEMDES1'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28609417871049834)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Unit of Measure'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28609891060049834)
,p_db_column_name=>'SALERATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28610281349049835)
,p_db_column_name=>'COSTRATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28610627881049835)
,p_db_column_name=>'COSTTYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Costtype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28611006349049835)
,p_db_column_name=>'COSTCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28611476348049835)
,p_db_column_name=>'AREAVALU'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Areavalu'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28611881467049837)
,p_db_column_name=>'SALEPERC'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Saleperc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28612256394049837)
,p_db_column_name=>'ITEMDES3'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Itemdes3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28612627582049837)
,p_db_column_name=>'MFRSCNTR'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Mfrscntr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28613078960049837)
,p_db_column_name=>'RMNDRFLG'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Rmndrflg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28613461933049839)
,p_db_column_name=>'DESIGNCD'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Designcd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28613887082049839)
,p_db_column_name=>'CHASISNO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Chasisno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28614272962049839)
,p_db_column_name=>'ENGINENO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28614618555049840)
,p_db_column_name=>'ITEMSIZE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Itemsize'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28615055698049840)
,p_db_column_name=>'WARECODE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28607480024049832)
,p_db_column_name=>'STATUS'
,p_display_order=>41
,p_column_identifier=>'X'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28606289624049829)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>51
,p_column_identifier=>'Z'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28606644827049831)
,p_db_column_name=>'ITEM_CLASS'
,p_display_order=>61
,p_column_identifier=>'AA'
,p_column_label=>'Item Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(28607023027049831)
,p_db_column_name=>'AVAILABLE_QTY'
,p_display_order=>71
,p_column_identifier=>'AB'
,p_column_label=>'Available Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(61937154746467947)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'286154'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:ITEMDES1:HUOMCODE:SALERATE:STATUS::ITEM_TYPE:ITEM_CLASS:AVAILABLE_QTY'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136433550493349341)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48455943062108601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136433550493349341)
,p_button_name=>'REFRESH'
,p_button_static_id=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_RFRS_LBL.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:392:&SESSION.::&DEBUG.:RP,392::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'&BTN_RFRS_ICON.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(48455520971108601)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(136433550493349341)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47367430190120949)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(48455520971108601)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47367590657120950)
,p_event_id=>wwv_flow_api.id(47367430190120949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(48459981618187857)
,p_name=>'close X button from dialog page'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(48460386590187859)
,p_event_id=>wwv_flow_api.id(48459981618187857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.component_end;
end;
/
