prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Model Rate Modification Report'
,p_page_mode=>'MODAL'
,p_step_title=>'Model Rate Modification Report'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allow-integer").bind("keypress", function (e) {',
'          var keyCode = e.which ? e.which : e.keyCode               ',
'          if (!(keyCode >= 48 && keyCode <= 57)) {',
'            return false;',
'          }else{',
'          }',
'      });',
'',
'$(".allow-decimal").keypress(function (e) {',
'    if(e.which == 46){',
'        if($(this).val().indexOf(''.'') != -1) {',
'            return false;',
'        }',
'    }',
'',
'    if (e.which != 8 && e.which != 0 && e.which != 46 && (e.which < 48 || e.which > 57)) {',
'        return false;',
'    }',
'});'))
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MONIR'
,p_last_upd_yyyymmddhh24miss=>'20200930130425'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(62725318043346175)
,p_plug_name=>'Model Rate Modification'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       ITEMCODE,',
'       ITEMTYPE,',
'       ITEMCODE ||'' - ''||ITEMDESC ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       DISCPCNT,',
'       DISCAMNT,',
'       SPLDISPC,',
'       SPLDISNT,',
'       SALERATE,',
'       CURRCODE,',
'       EXCGRATE,',
'       COSTCODE,',
'       WARECODE,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       BATCHNUM,',
'       BATCHDTE,',
'       NORMRATE,',
'       COSTRATE,',
'       AVRGRATE,',
'       CHANGEFLG,',
'       REMARKSS,',
'       SPCLRATE,',
'       SALEPERC,',
'       COSTRCHK,',
'       MINSRATE,',
'       ITEMDISC,',
'       GRADDIS,',
'       MODIFYDT,',
'       RATCGFLG,',
'       DFN_WARENAME (WARECODE, COMPCODE) WARENAME,',
'       '''' LINK       ',
'  from NMBTRATE',
'  where compcode = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
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
,p_prn_header_font_color=>'#000000'
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        rowHeader: ''sequence''',
'    }',
'    return config; ',
'}'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47307205638836916)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'100'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>460
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>47307205638836916
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307322406836917)
,p_db_column_name=>'ROWID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307421706836918)
,p_db_column_name=>'COMPCODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307582117836919)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307681867836920)
,p_db_column_name=>'ITEMTYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Itemtype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307741360836921)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307889969836922)
,p_db_column_name=>'ITEMLONG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Itemlong'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47307912633836923)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Item Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308028021836924)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308197163836925)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308239088836926)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308326595836927)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308475818836928)
,p_db_column_name=>'SALERATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308565398836929)
,p_db_column_name=>'CURRCODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308676029836930)
,p_db_column_name=>'EXCGRATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Excgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308798232836931)
,p_db_column_name=>'COSTCODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310632869836950)
,p_db_column_name=>'WARENAME'
,p_display_order=>160
,p_column_identifier=>'AH'
,p_column_label=>'Ware House'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308822752836932)
,p_db_column_name=>'WARECODE'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47308932102836933)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309001572836934)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309124368836935)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>'Batch No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309285893836936)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>'Batch Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309307683836937)
,p_db_column_name=>'NORMRATE'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>'Normrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309459356836938)
,p_db_column_name=>'COSTRATE'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>'Cost Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309544168836939)
,p_db_column_name=>'AVRGRATE'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Avrgrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309660611836940)
,p_db_column_name=>'CHANGEFLG'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>'Changeflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309725346836941)
,p_db_column_name=>'REMARKSS'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309839553836942)
,p_db_column_name=>'SPCLRATE'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>'Special Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47309912581836943)
,p_db_column_name=>'SALEPERC'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Sales Margin (%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310008001836944)
,p_db_column_name=>'COSTRCHK'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>'Costrchk'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310146400836945)
,p_db_column_name=>'MINSRATE'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'Min Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310297250836946)
,p_db_column_name=>'ITEMDISC'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>'Itemdisc'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310343623836947)
,p_db_column_name=>'GRADDIS'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>'Graddis'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310435953836948)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47310512638836949)
,p_db_column_name=>'RATCGFLG'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>'Ratcgflg'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47479859142443501)
,p_db_column_name=>'LINK'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47524012519450706)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'475241'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ITEMCODE:ITEMDESC:BATCHNUM:BATCHDTE:ITEMRATE:WARENAME:SALERATE:COSTRATE:SPCLRATE:SALEPERC:MINSRATE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47483319032443536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(62725318043346175)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1582272131893857923)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47480198564443504)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(62725318043346175)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47479978904443502)
,p_name=>'closeX'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47480036999443503)
,p_event_id=>wwv_flow_api.id(47479978904443502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'parent.$(''.ui-dialog-titlebar-close'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(47480260472443505)
,p_name=>'cancel dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(47480198564443504)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(47480374063443506)
,p_event_id=>wwv_flow_api.id(47480260472443505)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
