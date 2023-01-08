prompt --application/pages/page_00075
begin
--   Manifest
--     PAGE: 00075
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
 p_id=>75
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service List for Bill'
,p_alias=>'NMJOBBIL'
,p_step_title=>'Service List for Bill'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140812'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(48227137155746820)
,p_plug_name=>'Service List for Bill'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.docnumbr, s.partycde,',
'       (SELECT prtyname',
'          FROM sycompty p',
'         WHERE p.compcode = :compcode',
'               AND p.partycde = s.partycde) customer_name,',
'       registno, chasisno, prdkeyno, s.docttype, s.subttype, s.doctdate,',
'       startdte start_date, custcmpln, remarkss, s.warecode, s.costcode,',
'       s.srvcnopk,SRVCEVAT,TOTALVAT,DISCPCNT, DISCAMNT,''Generate Bill'' "Generate Bill"',
'  FROM nmservce s',
' WHERE s.compcode = :compcode',
'   AND s.srvcnopk IN (SELECT n.srvcnofk',
'                        FROM nmnegmas n',
'                       WHERE estjobno IS NOT NULL)',
'   AND NVL (s.statuscd, ''N'') <> ''CAN''',
'   AND s.remarkss IS NOT NULL',
'   AND NVL (s.aprvflag, ''N'') = ''Y''',
'   AND NVL (COMPLETE, ''N'') = ''N''',
'   AND s.warecode IN (SELECT a.warecode',
'                        FROM sycstacc a',
'                       WHERE grupcode = :app_user AND a.compcode = :compcode)',
'   AND s.srvcnopk NOT IN (SELECT billnofk',
'                            FROM nmjobbil',
'                           WHERE compcode = :compcode)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(48227232966746820)
,p_name=>'Service List for Bill'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>11072365841066326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48227491724746820)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Service No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48227943277746822)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48228307140746822)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48228693739746822)
,p_db_column_name=>'REGISTNO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Registration No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48229156778746822)
,p_db_column_name=>'CHASISNO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Chasis No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48229490379746822)
,p_db_column_name=>'PRDKEYNO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Key No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48229930219746822)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48230349491746822)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48230749721746823)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48231083691746825)
,p_db_column_name=>'START_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48231525492746825)
,p_db_column_name=>'CUSTCMPLN'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Complain'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48231904290746825)
,p_db_column_name=>'REMARKSS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48232301024746825)
,p_db_column_name=>'WARECODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Ware Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48232756005746827)
,p_db_column_name=>'COSTCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48233166321746827)
,p_db_column_name=>'SRVCNOPK'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Srvcnopk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48325593650494555)
,p_db_column_name=>'Generate Bill'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Generate Bill'
,p_column_link=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:125:P125_SERVICE_NO,P125_CUSTOMER_CODE_SRVC,P125_CUSTOMER_NAME,P125_SERVICE_START_DATE,P125_WARECODE,P125_COSTCODE,P125_BILLNOFK,P125_VAT_PERCENT,P125_TOTALVAT,P125_DSCNTPER,P125_DSCNTAMT,P125_SERVICE_DOCTYPE,P125_'
||'SERVICE_SUBTYPE:#DOCNUMBR#,#PARTYCDE#,#CUSTOMER_NAME#,#START_DATE#,#WARECODE#,#COSTCODE#,#SRVCNOPK#,#SRVCEVAT#,#TOTALVAT#,#DISCPCNT# ,#DISCAMNT#,#DOCTTYPE#, #SUBTTYPE#'
,p_column_linktext=>'#Generate Bill#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48572222565828038)
,p_db_column_name=>'SRVCEVAT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Srvcevat'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48572921486828049)
,p_db_column_name=>'TOTALVAT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Totalvat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48606613211979877)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(48607343247979884)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(48233527364747159)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'110787'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:CUSTOMER_NAME:REGISTNO:CHASISNO:PRDKEYNO:START_DATE:CUSTCMPLN:REMARKSS:WARECODE:TOTALVAT:DISCAMNT:Generate Bill:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49027318193283517)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P75_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P75_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49027608971283523)
,p_name=>'P75_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49027318193283517)
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
 p_id=>wwv_flow_api.id(49028026731283525)
,p_name=>'P75_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49027318193283517)
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
 p_id=>wwv_flow_api.id(49028379500283526)
,p_name=>'P75_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(49027318193283517)
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49028779904285478)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update on nmreqapr'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'FOR i in 1..APEX_APPLICATION.G_F01.count LOOP',
'update acreqapr',
'set statuscd = ''APR'' ',
'where docnumbr=APEX_APPLICATION.G_F01(i)',
'and USERCODE=:APP_USER; ',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Update successfully ..............'
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   v_rowno NUMBER;',
'BEGIN',
'   for i in 1..apex_application.g_f30.count',
'   loop',
'      v_rowno := apex_application.g_f30(i);',
':P13_TEST_VAL := apex_application.g_f30(v_rowno);',
'   end loop;',
'END;'))
);
wwv_flow_api.component_end;
end;
/
