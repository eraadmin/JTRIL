prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
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
 p_id=>145
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Payment Receive'
,p_alias=>'NMRCVALL'
,p_step_title=>'Payment Receive'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function setColWidths(colId) {',
'    var maxWidth = 0;',
'    $(''th#''+colId).each (function (index) {',
'        w = $(this).width();',
'        maxWidth = Math.max(maxWidth,w);',
'        });',
'    $(''th#''+colId).each (function (index) {',
'        $(this).width(maxWidth);',
'        });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87297222746952118)
,p_plug_name=>'Payment Receive'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noBorder:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87169920832663886)
,p_plug_name=>'Payment Receive'
,p_parent_plug_id=>wwv_flow_api.id(87297222746952118)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  refnumbr ,',
'                docnumbr ,',
'                doctdate ,',
'                docttype ,',
'                subttype ,',
'                partycde ,',
'                warecode ,',
'                costcode ,',
'                (SELECT prtyname',
'                   FROM sycompty',
'                  WHERE compcode = a.compcode AND partycde = a.partycde)',
'                   customer_name,',
'                itemcode ,',
'                itemdesc ,',
'                salerate salerate13,',
'                trnsqnty ,',
'                invcamnt ,',
'                dwpaymnt ,',
'                loan_amount ,',
'                intrstrt ,',
'                totinsmt ,',
'                total_interest_amt ,',
'                total_amt_2_pay ,',
'                emi_amt ,',
'                (SELECT waredesc',
'                   FROM nmwhsmas',
'                  WHERE compcode = a.compcode AND warecode = a.warecode)',
'                   waredesc,',
' CUSTMRID ,',
'(select COMMGRUP from nmitemas',
'where compcode = a.compcode and ITEMCODE=a.ITEMCODE) brand,',
'(select SALERATE from nmitemas',
'where compcode = a.compcode and ITEMCODE=a.ITEMCODE) SALERATE,',
'''<input type="button" id="button" name="make_payment" value="make_payment" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100'
||'%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; te'
||'xt-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'          "make_payment"',
'  FROM nmdtlsls a',
' WHERE compcode = :compcode AND NVL (statuscd, ''NEW'') = ''NEW'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(87169981374663886)
,p_name=>'Payment Receive'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_max_rows_per_page=>'15'
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
,p_internal_uid=>50015114248983392
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87171591239663887)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87172052161663887)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87172436845663887)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87172863731663887)
,p_db_column_name=>'WARECODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87173223232663887)
,p_db_column_name=>'COSTCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87173621941663887)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87173970682663887)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87174409854663887)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87174856173663887)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87175198159663889)
,p_db_column_name=>'SALERATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87175653450663889)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Transaction Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87176003692663889)
,p_db_column_name=>'INVCAMNT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Invoice Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87176434912663889)
,p_db_column_name=>'DWPAYMNT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87176777293663889)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87177233056663889)
,p_db_column_name=>'INTRSTRT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87177652842663889)
,p_db_column_name=>'TOTINSMT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Total Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87178010441663889)
,p_db_column_name=>'TOTAL_INTEREST_AMT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Total Interest Amt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87178404256663889)
,p_db_column_name=>'TOTAL_AMT_2_PAY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Total Amt to Pay'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87178788267663889)
,p_db_column_name=>'EMI_AMT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'EMI Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87323070534014823)
,p_db_column_name=>'make_payment'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Make Payment'
,p_column_link=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::P122_REFNUMBER,P122_INVOICE_NO,P122_WARECPDE,P122_WHRNAME,P122_EMIAMNT,P122_CUSTOMER_ID,P122_CUSTOMER_NAME,P122_DWNPAYAMNT,P122_TOTALNOINSTLL,P122_LOANAMNT,P122_TOTLINTRSTAMNT,P122_INTRSRATE,P122_TOTLAMNTPAY,P122_'
||'ITEMCODE,P122_ITEM_NAME,P122_TOTALPRICE,P122_QUANTITY,P122_BRAND,P122_UNITPRICE:#REFNUMBR#,#DOCNUMBR#,#WARECODE#,#WAREDESC#,#EMI_AMT#,#PARTYCDE#,#CUSTOMER_NAME#,#DWPAYMNT#,#TOTINSMT#,#LOAN_AMOUNT#,#TOTAL_INTEREST_AMT#,#INTRSTRT#,#TOTAL_AMT_2_PAY#,#IT'
||'EMCODE#,#ITEMDESC#,#SALERATE#,#TRNSQNTY#,#BRAND#,#SALERATE#'
,p_column_linktext=>'#make_payment#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87340381460148266)
,p_db_column_name=>'SALERATE13'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Salerate13'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87341845293148266)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87342478145148268)
,p_db_column_name=>'BRAND'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87362376352183977)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87363114230183977)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87363770592183977)
,p_db_column_name=>'WAREDESC'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Waredesc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(87179609825664169)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'500248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUSTOMER_NAME:ITEMDESC:SALERATE:TRNSQNTY:INVCAMNT:DWPAYMNT:LOAN_AMOUNT:INTRSTRT:TOTINSMT:TOTAL_INTEREST_AMT:TOTAL_AMT_2_PAY:EMI_AMT:make_payment:SALERATE13:CUSTMRID:BRAND:REFNUMBR:DOCNUMBR:WAREDESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(87445077597711899)
,p_plug_name=>'Payment Receive'
,p_parent_plug_id=>wwv_flow_api.id(87297222746952118)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(60227984699866560)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct a.refnumbr ,',
'                a.docnumbr ,',
'                a.doctdate ,',
'               a. docttype ,',
'               a. subttype ,',
'                a.partycde ,',
'                a.warecode ,',
'                a.costcode ,',
'               b.prtyname customer_name,',
'               a.itemcode ,',
'                a.itemdesc ,',
'                a.salerate salerate13,',
'                a.trnsqnty ,',
'               a.invcamnt ,',
'                a.dwpaymnt ,',
'                a.loan_amount ,',
'                a.intrstrt ,',
'               a.totinsmt ,',
'                a.total_interest_amt ,',
'                a.total_amt_2_pay ,',
'                a.emi_amt ,',
'                (SELECT waredesc',
'                   FROM nmwhsmas',
'                  WHERE compcode = a.compcode AND warecode = a.warecode)',
'                   waredesc,',
' a.CUSTMRID ,b.PEMAILID,',
' b.MOBILENO,',
' b.FATHERS_NAME,',
' b.PERMANENT_ADDRESS1,',
'c.COMMGRUP  brand,',
'c.SALERATE  SALERATE,',
'a.VINNUMBR chassis_no,',
'c.ENGINENO,',
'''<input type="button" id="button" name="make_payment" value="make_payment" onClick="" style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) 100'
||'%) repeat scroll 0% 0%; border-radius: 21px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; te'
||'xt-shadow: 0px -1px 0px rgb(40, 57, 102);" />''',
'          "make_payment",',
'          d.DOCNUMBR collection_docnumber',
'  FROM nmdtlsls a,sycompty b,nmitemas c,installment_collection d',
' WHERE a.compcode = :compcode',
'  AND NVL (a.statuscd, ''NEW'') = ''NEW''',
'  and a.compcode=b.compcode',
'  and A.PARTYCDE=B.PARTYCDE',
'  and a.compcode=c.compcode',
'  and A.ITEMCODE=c.ITEMCODE',
'   and a.compcode=d.compcode(+)',
'  and A.docnumbr=d.REFDOCNO(+)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(87445263239711900)
,p_name=>'Payment Receive'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_fixed_header_max_height=>700
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>50290396114031406
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87445528417711911)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87445940649711913)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Invoice No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87446358011711913)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Invoice Date'
,p_column_html_expression=>'<span style="width:100px; display:block; white-space:normal;">#DOCTDATE#</span> '
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87446687431711913)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87447104896711913)
,p_db_column_name=>'SUBTTYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Subttype'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87447516452711913)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87447936758711913)
,p_db_column_name=>'WARECODE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87448318775711913)
,p_db_column_name=>'COSTCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87448697803711913)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Customer Name'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#CUSTOMER_NAME#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'CUSTOMER_NAME'
,p_rpt_show_filter_lov=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="background-color: yellow; color: red;width:400px;"class="#COLUMN_CLASS#">#CUSTOMER_NAME#</span> ',
''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87449145832711913)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Itemcode'
,p_column_html_expression=>'<span style="width:180px; display:block; white-space:normal;">#ITEMCODE#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87449549819711913)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Item Name'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#ITEMDESC#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87449875180711914)
,p_db_column_name=>'SALERATE13'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87450323661711914)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Transaction Qty.'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87450748005711914)
,p_db_column_name=>'INVCAMNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Invoice Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87451125245711914)
,p_db_column_name=>'DWPAYMNT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87451536623711914)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87451922713711914)
,p_db_column_name=>'INTRSTRT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87452327575711914)
,p_db_column_name=>'TOTINSMT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Total Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87452705672711914)
,p_db_column_name=>'TOTAL_INTEREST_AMT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Total Interest Amt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87453074109711914)
,p_db_column_name=>'TOTAL_AMT_2_PAY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Total Amt 2 Pay'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87453518494711914)
,p_db_column_name=>'EMI_AMT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Emi Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87453960008711914)
,p_db_column_name=>'WAREDESC'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Cost Center'
,p_column_html_expression=>'<span style="width:200px; display:block; white-space:normal;">#WAREDESC#</span> '
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87454292370711916)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Customer Id'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87454712930711916)
,p_db_column_name=>'PEMAILID'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Email ID'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87455086214711916)
,p_db_column_name=>'MOBILENO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Mobile No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87455486676711916)
,p_db_column_name=>'FATHERS_NAME'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Father''s Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87455906326711916)
,p_db_column_name=>'PERMANENT_ADDRESS1'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Permanent Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87456289414711916)
,p_db_column_name=>'BRAND'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Brand'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87456670102711916)
,p_db_column_name=>'SALERATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87457110931711916)
,p_db_column_name=>'CHASSIS_NO'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Chassis No'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87457483948711916)
,p_db_column_name=>'ENGINENO'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Engine No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(87457959941711917)
,p_db_column_name=>'make_payment'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Make Payment'
,p_column_link=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::P122_REFNUMBER,P122_COLLECTION_DOCNUMBER,P122_INVOICE_NO,P122_WARECPDE,P122_WHRNAME,P122_EMIAMNT,P122_CUSTOMER_ID,P122_CUSTOMER_NAME,P122_DWNPAYAMNT,P122_TOTALNOINSTLL,P122_LOANAMNT,P122_TOTLINTRSTAMNT,P122_INTRSR'
||'ATE,P122_TOTLAMNTPAY,P122_ITEMCODE,P122_ITEM_NAME,P122_TOTALPRICE,P122_QUANTITY,P122_BRAND,P122_UNITPRICE:#REFNUMBR#,#COLLECTION_DOCNUMBER#,#DOCNUMBR#,#WARECODE#,#WAREDESC#,#EMI_AMT#,#PARTYCDE#,#CUSTOMER_NAME#,#DWPAYMNT#,#TOTINSMT#,#LOAN_AMOUNT#,#TOT'
||'AL_INTEREST_AMT#,#INTRSTRT#,#TOTAL_AMT_2_PAY#,#ITEMCODE#,#ITEMDESC#,#SALERATE#,#TRNSQNTY#,#BRAND#,#SALERATE#'
,p_column_linktext=>'#make_payment#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_column_comment=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.::P122_REFNUMBER,P122_INVOICE_NO,P122_WARECPDE,P122_WHRNAME,P122_EMIAMNT,P122_CUSTOMER_ID,P122_CUSTOMER_NAME,P122_DWNPAYAMNT,P122_TOTALNOINSTLL,P122_LOANAMNT,P122_TOTLINTRSTAMNT,P122_INTRSRATE,P122_TOTLAMNTPAY,P122_'
||'ITEMCODE,P122_ITEM_NAME,P122_TOTALPRICE,P122_QUANTITY,P122_BRAND,P122_UNITPRICE:#REFNUMBR#,#DOCNUMBR#,#WARECODE#,#WAREDESC#,#EMI_AMT#,#PARTYCDE#,#CUSTOMER_NAME#,#DWPAYMNT#,#TOTINSMT#,#LOAN_AMOUNT#,#TOTAL_INTEREST_AMT#,#INTRSTRT#,#TOTAL_AMT_2_PAY#,#IT'
||'EMCODE#,#ITEMDESC#,#SALERATE#,#TRNSQNTY#,#BRAND#,#SALERATE#'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(90047484131986404)
,p_db_column_name=>'COLLECTION_DOCNUMBER'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Collection Docnumber'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(87458279768712170)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'503035'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'make_payment:CUSTMRID:CUSTOMER_NAME:MOBILENO:PEMAILID:PERMANENT_ADDRESS1:ITEMCODE:ITEMDESC:BRAND:CHASSIS_NO:SALERATE:DOCNUMBR:DOCTDATE:REFNUMBR:DWPAYMNT:TOTINSMT:EMI_AMT:WAREDESC:COLLECTION_DOCNUMBER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(87188009238700126)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(87169920832663886)
,p_button_name=>'PAYMENT_RECEIVE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Payment Receive'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:122::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(91733314922699422)
,p_name=>'column width'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(91733740956699430)
,p_event_id=>wwv_flow_api.id(91733314922699422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'setColWidths(''CUSTOMER_NAME'');'
);
wwv_flow_api.component_end;
end;
/
