prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'image upload report'
,p_alias=>'IMAGE-UPLOAD-REPORT'
,p_page_mode=>'MODAL'
,p_step_title=>'image upload report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-style: none;',
'    width: 80px;',
'    height: 80px;',
'}'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20220928171357'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20686142763609349)
,p_plug_name=>'button region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21345278394660001)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.FILENAME,a.FILE_MIMETYPE,',
'sys.dbms_lob.getlength(a.FILE_BLOB)"FILE_BLOB",',
'i.ITEMCODE,',
'decode (I.STATUSCD ,''ACT'',''Active'',''NOT'',''Inactive'') Status,',
'decode (I.ITEMTYPE ,''S'',''Stock'',''N'',''Non Stock'') Item_Type,',
'I.ITEMDES1,I.SALERATE,(SELECT sum(CLBALQTY) CLBALQTY',
'    FROM nmwhimas',
'   WHERE compcode = i.COMPCODE',
'     AND ITEMCODE = i.ITEMCODE ',
'     AND clbalqty > 0) Available_Qty,          ',
'decode (I.ITEMCLAS,''N'',''Normal'',''B'',''Batch'',''E'',''Enumerative'') Item_Class',
'from "ORBRGS_ATTACH"."SY_ATTACHMENT" a, nmitemas I',
'where a.COMPCODE(+) = i.compcode',
'and a.itemcode(+) = i.itemcode',
'and i.compcode=:compcode',
'order by a.ITEMCODE',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21345622773660001)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::P123_ITEMCODE:#ITEMCODE#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMIN'
,p_internal_uid=>21345622773660001
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21348985214660006)
,p_db_column_name=>'FILENAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21349310185660006)
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'File Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21354915806660007)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20685501323609343)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'Y'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20685641471609344)
,p_db_column_name=>'ITEM_TYPE'
,p_display_order=>44
,p_column_identifier=>'Z'
,p_column_label=>'Item Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20685795165609345)
,p_db_column_name=>'ITEMDES1'
,p_display_order=>54
,p_column_identifier=>'AA'
,p_column_label=>'Itemdes1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20685835562609346)
,p_db_column_name=>'SALERATE'
,p_display_order=>64
,p_column_identifier=>'AB'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20685977074609347)
,p_db_column_name=>'AVAILABLE_QTY'
,p_display_order=>74
,p_column_identifier=>'AC'
,p_column_label=>'Available Qty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20686023830609348)
,p_db_column_name=>'ITEM_CLASS'
,p_display_order=>84
,p_column_identifier=>'AD'
,p_column_label=>'Item Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67896882589188506)
,p_db_column_name=>'FILE_BLOB'
,p_display_order=>94
,p_column_identifier=>'AF'
,p_column_label=>'File Blob'
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
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:SY_ATTACHMENT:FILE_BLOB:ITEMCODE::::::::ORBRGS_ATTACH'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21355809089660554)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'213559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:STATUS:ITEM_TYPE:ITEMDES1:SALERATE:AVAILABLE_QTY:ITEM_CLASS:FILE_BLOB:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21355440278660007)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20686142763609349)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20685273466609340)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(20686142763609349)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20685360571609341)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20685273466609340)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20685477679609342)
,p_event_id=>wwv_flow_api.id(20685360571609341)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
