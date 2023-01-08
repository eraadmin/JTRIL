prompt --application/pages/page_00397
begin
--   Manifest
--     PAGE: 00397
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
 p_id=>397
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Sales Report Excell'
,p_page_mode=>'MODAL'
,p_step_title=>'Sales Report Excell'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20190103145623'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50423550883585555)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50538246042365699)
,p_plug_name=>'Sales Summary Report For Excell'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  substr(a.docnumbr,1,instr(a.docnumbr,''/'',1)-1) docnumbr, a.doctdate,INITCAP (c.smanname) smancode,a.ADVANCHED_AMOUNT, a.CARD_AMOUNT, a.CASH_AMOUNT, NVL2(a.EXCHANGE_AMOUNT,round(((nvl(a.SALERATE,0)*nvl(a.orgnqnty,0))+(round(((round(nvl(a.saler'
||'ate,0),2)*nvl(a.orgnqnty,0))*nvl(a.VATPRSNT,0))/100)))-(round(decode(((round(nvl(a.salerate,0),2)/100)*nvl(a.DISCPCNT,0)),0,nvl(a.DISCAMNT,0),((round(nvl(a.salerate,0),2)/100)*a.DISCPCNT))))+nvl(a.MAKING_CHARGE,0)) ,a.EXCHANGE_AMOUNT) EXCHANGE_AMOUNT'
||',',
'         INITCAP (b.custname) custmrid, (select CODEDESC from sycdedtl where compcode=a.compcode and CHILDCDE=substr(a.itemcode,1,3)) itemcode,',
'         NVL (a.orgnqnty, 0) orgnqnty, NVL (a.salerate, 0)*NVL (a.orgnqnty, 0)  salerate,',
'         NVL (a.costrate, 0) costrate,a.VINNUMBR batchnum,decode(substr(a.itemcode,1,1),''D'',''Diamond'',''G'',''Gold'',''Polki'') category,',
'        round(((nvl(a.SALERATE,0)*nvl(a.orgnqnty,0))+(round(((round(nvl(a.salerate,0),2)*nvl(a.orgnqnty,0))*nvl(a.VATPRSNT,0))/100)))-(round(decode(((round(nvl(a.salerate,0),2)/100)*nvl(a.DISCPCNT,0)),0,nvl(a.DISCAMNT,0),((round(nvl(a.salerate,0),2)/'
||'100)*a.DISCPCNT))))+nvl(a.MAKING_CHARGE,0)) sale_amount',
'    FROM nmsalrec a, nmcusmas b, nmsmnmas c, syjobmas j, nmwhsmas w, nmenudtl e,vwnmitem i',
'   WHERE a.compcode = b.compcode',
'     AND a.custmrid = b.custmrid',
'   AND a.smancode = c.smancode(+)',
'   AND a.compcode = c.compcode(+)',
'   AND a.costcode = j.costcode',
'   AND a.compcode = j.compcode',
'   and a.itemcode=e.itemcode1',
'   and a.itemcode=i.itemcode',
'and a.compcode=i.compcode',
'and decode(substr(a.VINNUMBR,1,instr(a.VINNUMBR,''-'',1)-1),(select distinct PARNTCDE from sycdedtl where compcode=a.compcode and CHILDCDE=e.itemcode1  and e.STYLECODE=substr(a.VINNUMBR,instr(a.VINNUMBR,''-'',1)+1)  and PARNTCDE=substr(a.VINNUMBR,1,instr'
||'(a.VINNUMBR,''-'',1)-1)),e.ITEMCODE1||''-''||e.STYLECODE,a.VINNUMBR)=e.VINNUMBR',
'and a.compcode=e.compcode',
'  -- AND c.smantype = w.regncode(+)',
'   AND a.warecode = w.warecode',
'   AND a.compcode = w.compcode',
'   AND w.srvcwflg = ''N''',
'   and e.FINSHGD_STATUS =''Y''',
'   and a.compcode=:P397_COMPCODE',
'     AND NVL (a.docnumbr, ''0'') = NVL (:p13, NVL (a.docnumbr, ''0''))',
'     AND NVL (a.docttype, ''0'') = NVL (:P397_DOCTTYPE, NVL (a.docttype, ''0''))',
'     AND NVL (a.subttype, ''0'') = NVL (:P397_SUBTTYPE, NVL (a.subttype, ''0''))',
'      AND a.doctdate between NVL (to_date(:P397_DOCFDATE,''DD-MON-RRRR''),a.doctdate) and NVL (TO_DATE(:P397_DOCTDATE,''DD-MON-RRRR''),a.doctdate)',
'    -- AND TRUNC (a.doctdate) BETWEEN NVL (TRUNC (:p11), TRUNC (a.doctdate)) AND NVL (TRUNC (:p12), TRUNC (a.doctdate))',
'     AND NVL (a.itemcode, ''0'') = NVL (:p1, NVL (a.itemcode, ''0''))',
'     AND NVL (a.custmrid, ''0'') = NVL (:p67, NVL (a.custmrid, ''0''))',
'     AND NVL (a.smancode, ''0'') = NVL (:p80, NVL (a.smancode, ''0''))',
'     and nvl(a.batchnum,''0'')= NVL (:p61, nvl(a.batchnum,''0''))',
'    and i.ITEMMODL=NVL (:p72,i.ITEMMODL)',
' and substr(a.ITEMCODE,1,1)=NVL (substr(:p73,1,1),substr(a.ITEMCODE,1,1))',
'ORDER BY a.docnumbr DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P397_COMPCODE,P397_DOCTTYPE,P397_SUBTTYPE,P397_DOCNUMBR,P397_DOCFDATE,P397_DOCTDATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(50538292930365699)
,p_name=>'Stock Summary Report For Excell'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'GADMIN'
,p_internal_uid=>16642871809583954
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35723663855959464)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Invoice No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35724491172959465)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Item Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35726447604959465)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Qty.'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35727247210959465)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35728117233959465)
,p_db_column_name=>'COSTRATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Cost Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35730103202959466)
,p_db_column_name=>'CATEGORY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563395566364356)
,p_db_column_name=>'SMANCODE'
,p_display_order=>28
,p_column_identifier=>'T'
,p_column_label=>'Salesman'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563475750364357)
,p_db_column_name=>'ADVANCHED_AMOUNT'
,p_display_order=>38
,p_column_identifier=>'U'
,p_column_label=>'Advanched Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563562278364358)
,p_db_column_name=>'CARD_AMOUNT'
,p_display_order=>48
,p_column_identifier=>'V'
,p_column_label=>'Card Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563670122364359)
,p_db_column_name=>'CASH_AMOUNT'
,p_display_order=>58
,p_column_identifier=>'W'
,p_column_label=>'Cash Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563818258364360)
,p_db_column_name=>'EXCHANGE_AMOUNT'
,p_display_order=>68
,p_column_identifier=>'X'
,p_column_label=>'Exchange Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35563919295364361)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>78
,p_column_identifier=>'Y'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35564007978364362)
,p_db_column_name=>'SALERATE'
,p_display_order=>88
,p_column_identifier=>'Z'
,p_column_label=>'Sale Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35564067876364363)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>98
,p_column_identifier=>'AA'
,p_column_label=>'Identification No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(35564186975364364)
,p_db_column_name=>'SALE_AMOUNT'
,p_display_order=>108
,p_column_identifier=>'AB'
,p_column_label=>'Sale Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(50549060517441286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'18354'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DOCNUMBR:DOCTDATE:ITEMCODE:CATEGORY:SMANCODE:CUSTMRID:BATCHNUM:ORGNQNTY:ADVANCHED_AMOUNT:CARD_AMOUNT:CASH_AMOUNT:EXCHANGE_AMOUNT:SALERATE:SALE_AMOUNT:'
,p_sum_columns_on_break=>'ORGNQNTY:COSTRATE:ITEMRATE:WGHTQNTY'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(35731279359959467)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50538246042365699)
,p_button_name=>'Cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:365:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35720605692959456)
,p_name=>'P397_DOCTTYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35720989671959458)
,p_name=>'P397_COMPCODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_item_default=>':COMPCODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35721354008959458)
,p_name=>'P397_SUBTTYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35721769141959458)
,p_name=>'P397_DOCNUMBR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35722186728959458)
,p_name=>'P397_DOCTDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(35722564776959458)
,p_name=>'P397_DOCFDATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(50423550883585555)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
