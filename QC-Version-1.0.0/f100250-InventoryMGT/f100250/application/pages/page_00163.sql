prompt --application/pages/page_00163
begin
--   Manifest
--     PAGE: 00163
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
 p_id=>163
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>' Buyer Booking Information'
,p_page_mode=>'MODAL'
,p_step_title=>' Buyer Booking Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript">',
'function printPage() {',
'    ',
'    var printContents = document.getElementById("printableArea").innerHTML;',
'    var originalContents = document.body.innerHTML;',
'if(document.all) {',
'document.all.divButtons.style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.all.divButtons.style.visibility = ''visible'';',
'} else {',
'document.getElementById(''divButtons'').style.visibility = ''hidden'';',
'document.body.innerHTML =printContents;',
'window.print();',
'document.body.innerHTML =originalContents;',
'document.getElementById(''divButtons'').style.visibility = ''visible'';',
'}',
'}',
'</script>'))
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20171218121628'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52218548514911359)
,p_plug_name=>'Print Region'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE HTML>',
'<html>',
'  <head>',
'    <style>',
'.card-container',
'{',
'   text-align: center;',
'   margin-bottom: 2.5em;',
'   margin-top:2 em;',
'}',
'#canvas',
'{',
'   border: 1px solid #FFC125;',
'   background-color: #FFEBCD;',
'   -moz-box-shadow: 3px 3px 8px #222;',
'   -webkit-box-shadow: 3px 3px 8px #222;',
'   box-shadow: 3px 3px 8px #222;',
'}',
'.title',
'{',
'   text-align: center;',
'   font-family: Segoe UI Light, Arial, Helvetica;',
'   font-size: 2.2em;',
'   margin: 1em;',
'}',
'.info',
'{',
'   text-align: center;',
'   font-family: Segoe UI Light, Arial, Helvetica;',
'   font-size: 1.2em;',
'   margin: 0.25em;',
'}',
'a, a:visited, a:active, a:hover',
'{',
'   color: #fff;',
'   text-decoration: none;',
'}',
'a:hover',
'{',
'   text-decoration: underline;',
'}',
'body {',
'        margin: 0px;',
'        padding: 0px;',
'      }',
'      </style>',
'       ',
'  </head> ',
'  <body>',
'      <div class="card-container" >',
'    <canvas id="canvas" width="578" height="300"></canvas>',
'          ',
'          <div id="divButtons" name="divButtons" style="align:right;">',
'    <input type="button" id="button" name="Booking" onclick="printPage()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) '
||'100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; '
||'text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>',
'</div>',
'      <script>',
'      var canvas = document.getElementById(''canvas'');',
'      var compname = document.getElementById(''P163_COMPANY_NAME'').value;',
'      var compaddress = document.getElementById(''P163_COMPANY_ADDRESS'').value;',
'      var custname = document.getElementById(''P163_CUSTOMERNAME'').value;',
'      var custaddress = document.getElementById(''P163_CUSTADDRESS'').value;',
'      var mobile = document.getElementById(''P163_MOBILE'').value;',
'      var email = document.getElementById(''P163_EMAIL'').value;',
'        ',
'      var context = canvas.getContext(''2d'');',
'',
'      // do cool things with the context',
'      context.font = ''20pt Calibri'';',
'      context.fillStyle = ''orange'';',
'      context.fillText(compname, 200, 20);',
'      context.fillText(compaddress, 50, 40);',
'      context.fillText(custname, 200, 90);',
'      context.fillText(custaddress, 200, 120);',
'      context.fillText(mobile, 200, 140);',
'      context.fillText(email, 200, 160);',
'    </script>',
'  </body>',
'</html> ',
''))
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52257181637098113)
,p_plug_name=>'Button Region'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47571616129858176)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52398417151299604)
,p_plug_name=>'b'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'',
'<head>',
'  <style type="text/css">',
'    video {',
'      margin: 0;',
'      padding: 0;',
'      border: 0;',
'      font-size: 100%;',
'      font: inherit;',
'      vertical-align: baseline;',
'    }',
'   ',
'    section {',
'      display: block;',
'    }',
'    body {',
'      line-height: 1;',
'    }',
'    ol,',
'    ul {',
'      list-style: none;',
'    }',
'    blockquote,',
'    q {',
'      quotes: none;',
'    }',
'    blockquote: before, blockquote: after, q: before, q: after {',
'      content: '''';',
'      content: none;',
'    }',
'    table {',
'      border-collapse: collapse;',
'      border-spacing: 0;',
'    }',
'    body {',
'      font-family: ''Roboto'', sans-serif;',
'      background-color: #f5f7f9;',
'      color: #7b8c9a;',
'      text-align: center;',
'      font-size: 24px;',
'      margin: 1em;',
'    }',
'    h1 {',
'    font-family: -webkit-pictograph;',
'    color: #424044;',
'    letter-spacing: 0.0em;',
'    padding-bottom: 0.2em;',
'    line-height: 1.2;',
'    margin-top: 25px;',
'    margin-bottom: 8px;',
'    border-bottom: 2px solid #424044;',
'    display: block;',
'    font-size: 36px;',
'}',
'    h2 {',
'      font-size: 38px;',
'      letter-spacing: 0.1em;',
'      margin-bottom: 0.8em;',
'    }',
'    img {',
'      display: block;',
'      margin: auto;',
'      margin-left: 203px;',
'      height:100px;',
'    }',
'    h3 {',
'      font-size: 26px;',
'      margin-bottom: 0.4em;',
'    }',
'    .contact-info-left {',
'      position: absolute;',
'      bottom: 48px;',
'      left: 48px;',
'    }',
'    .contact-info-right {',
'      position: absolute;',
'      bottom: 48px;',
'      right: 48px;',
'    }',
'    .moo-business-card {',
'      border: 1px Solid black;',
'      width: 500px;',
'      height: 300px;',
'      margin-left: 453px;',
'      position: relative;',
'    }',
'     .t-Region-body {',
'    font-size: 1.4rem;',
'    line-height: 2rem;',
'}',
'  </style>',
'  <link href=''http://fonts.googleapis.com/css?family=Julius+Sans+One|Roboto'' rel=''stylesheet'' type=''text/css''>',
'</head>',
'',
'<body>',
'  <div class="moo-business-card" id="printableArea">',
'    <header>',
'      <h1><div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P1_COMPADD.</font>',
'</div></h1>',
'    </header>',
'    ',
'    <img src="http://peterlyons.com/images/pl_lizm_drawing.jpg">',
'    <div class="contact-info-left">',
'     <div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P163_CUSTOMERNAME.<br><font size=''''2'''' color=''''#336633''''>&P163_MOBILE.</font>',
'</div>',
'    </div>',
'    <div class="contact-info-right">',
'     <div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P163_CUSTADDRESS.<br><font size=''''2'''' color=''''#336633''''>&P163_EMAIL.</font>',
'</div>',
'    </div>',
'  </div>',
'',
'</body>',
'    <div id="divButtons" name="divButtons" style="align:right;">',
'    <input type="button" id="button" name="Booking" onclick="printPage()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) '
||'100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; '
||'text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>',
'',
'</html>'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95316784306474598)
,p_plug_name=>' Buyer Booking Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct APPRDATE, APPRQNTY, APPRVDBY, BATCHDTE, BATCHNUM,',
' BOM_NO, BOOKAPRV, BOOKCODE, BOOKDATE, CANCLE_DATE, ',
' COLLECT_PERSON, COLORCDE, COMMCODE, COMPCODE, ',
' COSTCODE, COSTRATE, CURRCODE, CUSTMRID, DISCAMNT,',
'  DISCPCNT, DOCNUMBR, DOCTDATE, DOCTTYPE, DOWN_PAYMENT, ',
'  ENGINENO, ENUDTLPK,HUOMCODE, INSTALLMENT_PAY, INTEREST_AMOUNT, ',
'  INVNUMFK, INVNUMPK,ITEMCODE, ITEMDESC, ITEMRATE, ITEMSERL, ',
'  LIMITDAY, LOAN_AMOUNT, LUOMCODE, MODIFYDT, MONTHLY_INSTALLMENT, ',
'  MSFCAMNT, MSLCAMNT, NO_OF_INSTALLMENT, OPRSTAMP, ORGNQNTY,',
'  PARTYCDE, PAYMENT_MODE, POSIBLE_INST_END_DATE, POSIBLE_INST_START_DATE,',
'   RAISEDBY, REFNDATE, REFNUMBR, REMARKSS, REQDDATE, SALERATE, ',
'   SERLNUMB, SMANCODE, SPLDISNT, SPLDISPC, SRVPKGFK, ',
'    TOTALSRV, TRNSQNTY, TRNSQTY2, UPDOCDTE, UPDOCNUM, UPDOCSRL, ',
'    UPDOCTYP, UPSUBTYP, VHCLKYNO, VINNUMBR, WARECODE,',
'(select NMCODDES from nmcodmas ',
'       where compcode=a.compcode',
'       and NMHRDCDE=''CLR''',
'       and NMSOFCDE=a.COLORCDE)COLORCDE_NAME,',
'      (select CUSTNAME from nmcusmas ',
'       where compcode=a.compcode',
'       and CUSTMRID=a.CUSTMRID ) CUSTMRID_NAME,',
'       (select SMANNAME from nmsmnmas ',
'       where compcode=a.compcode',
'       and SMANCODE=a.SMANCODE) SMANCODE_NAME,',
'       (select WAREDESC from nmwhsmas ',
'       where compcode=a.compcode',
'       and WARECODE=a.WARECODE ) WARECODE_NAME',
'            FROM nmenudtl a',
'           WHERE compcode=:compcode',
'                 and  BOOKCODE  is NOT NULL'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'NEVER'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'INLINE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
,p_prn_header_font_color=>'#ffffff'
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
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(95317234235474598)
,p_name=>' Buyer Daily Information'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>650
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>58162367109794104
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95328104863474601)
,p_db_column_name=>'APPRDATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95335314993474606)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95336093480474606)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95337358400474607)
,p_db_column_name=>'COLORCDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95337712707474607)
,p_db_column_name=>'COMMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95338156649474607)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95338517292474607)
,p_db_column_name=>'COSTCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95338877793474607)
,p_db_column_name=>'COSTRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95339341629474607)
,p_db_column_name=>'CURRCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95339729131474607)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95340927812474609)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95341359996474609)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95342091949474609)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95342552686474609)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95342934453474609)
,p_db_column_name=>'DOWN_PAYMENT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95344508979474610)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95317681663474598)
,p_db_column_name=>'INSTALLMENT_PAY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Installment Pay'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95318121568474598)
,p_db_column_name=>'INTEREST_AMOUNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Interest Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95318528542474598)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95318962452474598)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Itemdesc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95319751349474599)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95320099557474599)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95320556185474599)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95321294849474599)
,p_db_column_name=>'MONTHLY_INSTALLMENT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Monthly Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95321759231474599)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95322071626474599)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Mslcamnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95322541696474599)
,p_db_column_name=>'NO_OF_INSTALLMENT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'No Of Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95323297531474599)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95323741734474599)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95324489768474601)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95324965742474601)
,p_db_column_name=>'POSIBLE_INST_END_DATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Posible Inst End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95325341253474601)
,p_db_column_name=>'POSIBLE_INST_START_DATE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Posible Inst Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95326156199474601)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95326515121474601)
,p_db_column_name=>'REFNDATE'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95326874257474601)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95328910959474601)
,p_db_column_name=>'REMARKSS'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95329298408474603)
,p_db_column_name=>'REQDDATE'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95329755317474603)
,p_db_column_name=>'SALERATE'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95330961621474603)
,p_db_column_name=>'SMANCODE'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95332163271474603)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95332547049474603)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95332924149474603)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95333328125474604)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95333688809474604)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95334101676474606)
,p_db_column_name=>'WARECODE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95352806365496231)
,p_db_column_name=>'APPRVDBY'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Apprvdby'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95353535804496232)
,p_db_column_name=>'BATCHDTE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Batchdte'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95354257075496234)
,p_db_column_name=>'BOM_NO'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Bom No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95354913953496234)
,p_db_column_name=>'BOOKAPRV'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Bookaprv'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95355592405496234)
,p_db_column_name=>'BOOKCODE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Bookcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95356317629496234)
,p_db_column_name=>'BOOKDATE'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Bookdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95356968733496234)
,p_db_column_name=>'CANCLE_DATE'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Cancle Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95357723750496240)
,p_db_column_name=>'COLLECT_PERSON'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Collect Person'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95358372791496240)
,p_db_column_name=>'DOCTTYPE'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Docttype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95359121004496240)
,p_db_column_name=>'ENGINENO'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Engineno'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95359771835496240)
,p_db_column_name=>'ENUDTLPK'
,p_display_order=>78
,p_column_identifier=>'BZ'
,p_column_label=>'Enudtlpk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95360509849496240)
,p_db_column_name=>'INVNUMFK'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Invnumfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95361224755496240)
,p_db_column_name=>'INVNUMPK'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Invnumpk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95361915851496241)
,p_db_column_name=>'ITEMSERL'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Itemserl'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95362662042496241)
,p_db_column_name=>'LIMITDAY'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Limitday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95363268102496241)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95364009566496241)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95364670508496241)
,p_db_column_name=>'SERLNUMB'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Serlnumb'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95365457151496241)
,p_db_column_name=>'SPLDISNT'
,p_display_order=>86
,p_column_identifier=>'CH'
,p_column_label=>'Spldisnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95366151155496243)
,p_db_column_name=>'SPLDISPC'
,p_display_order=>87
,p_column_identifier=>'CI'
,p_column_label=>'Spldispc'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95366791212496245)
,p_db_column_name=>'SRVPKGFK'
,p_display_order=>88
,p_column_identifier=>'CJ'
,p_column_label=>'Srvpkgfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95367487691496245)
,p_db_column_name=>'TOTALSRV'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Totalsrv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95368218067496251)
,p_db_column_name=>'TRNSQTY2'
,p_display_order=>90
,p_column_identifier=>'CL'
,p_column_label=>'Trnsqty2'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95368899868496251)
,p_db_column_name=>'UPSUBTYP'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Upsubtyp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95369502578496274)
,p_db_column_name=>'VHCLKYNO'
,p_display_order=>92
,p_column_identifier=>'CN'
,p_column_label=>'Vhclkyno'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95370173160496280)
,p_db_column_name=>'VINNUMBR'
,p_display_order=>93
,p_column_identifier=>'CO'
,p_column_label=>'Vinnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95868051615177901)
,p_db_column_name=>'COLORCDE_NAME'
,p_display_order=>94
,p_column_identifier=>'CP'
,p_column_label=>'Colorcde Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95868683121177901)
,p_db_column_name=>'CUSTMRID_NAME'
,p_display_order=>95
,p_column_identifier=>'CQ'
,p_column_label=>'Custmrid Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95869464882177901)
,p_db_column_name=>'SMANCODE_NAME'
,p_display_order=>96
,p_column_identifier=>'CR'
,p_column_label=>'Smancode Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95870079807177903)
,p_db_column_name=>'WARECODE_NAME'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Warecode Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95344911371474610)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'581901'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:BOOKCODE:BOOKDATE:CUSTMRID_NAME:SMANCODE_NAME:WARECODE_NAME:ITEMCODE:ITEMDESC:COLORCDE_NAME:VINNUMBR:SALERATE:DOWN_PAYMENT:LOAN_AMOUNT:NO_OF_INSTALLMENT:MONTHLY_INSTALLMENT:INSTALLMENT_PAY:INTEREST_AMOUNT:MSLCAMNT:'
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
 p_id=>wwv_flow_api.id(97097099774016194)
,p_plug_name=>'Buyer Booking Information'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody:t-Form--xlarge'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
' v_cnt number := 0;',
' v_prev_bnk varchar2(200) := ''abc'';',
' v_bank_rows    number := 0;',
' v_bank_total    number := 0;',
'v_stat varchar2(100);',
'',
'CURSOR DIR_PATH IS',
'SELECT WEBDRPTH FROM SYSYSPTH',
'WHERE PATHCODE=''NM'';',
'S_PTH VARCHAR2(200);',
'',
'',
'    cursor rept_cur is',
'    select  RPTSRVNM, RPTDESTP, RPTFORMT,REPTURLL  from SYPARMAS',
'    where CACMPCDE=:COMPCODE;',
'',
'    rept_rec rept_cur%rowtype;',
'',
'',
'    s_rpturl                     varchar2(2000);',
'    s_rptfmt          VARCHAR2(100);',
'    s_rptsrv          VARCHAR2(100);',
'    s_destyp                     varchar2(100);',
'    s_runurl                     varchar2(2000);',
'   v_rowcnt    number :=0;',
'   v_randon number :=:P163_ROWID;',
'',
'Begin',
'',
'--:REPORT_URL := null;',
'',
'--DPR_DASHBOARD_CALL_REPORT(''100'',''NM'',''nmjbsmri'',''&P0=''||:COMPCODE||''&P11=''||:P1_START_DATE||''&P12=''||:P1_END_DATE,:REPORT_URL);',
'',
'--open dir_path; fetch dir_path into s_pth;close dir_path;',
'',
'--open rept_cur; fetch rept_cur into rept_rec; close rept_cur;',
'',
'  -- s_rptsrv := rept_rec.RPTSRVNM;',
'  --s_rptfmt := NVL(rept_rec.RPTFORMT,''PDF'');',
'  --s_rpturl := rept_rec.REPTURLL;',
'    --      s_destyp := nvl(rept_rec.RPTDESTP,''CACHE'');',
's_rpturl := ''http://202.40.181.99:9001/console'';',
'',
'',
'htp.p(''<style type="text/css">',
'.CSSTableGenerator {',
'    margin:0px;padding:0px;',
'    width:250%;',
'    ',
'    ',
'    /* width:200%; box-shadow: 10px 10px 5px #888888;',
'    border:1px solid #f9f9fc;*/',
'    ',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'    ',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'    ',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'    ',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}.CSSTableGenerator table{',
'    border-collapse: collapse;',
'    border-spacing: 0;',
'    width:100%;',
'    height:100%;',
'    margin:0px;padding:0px;',
'}.CSSTableGenerator tr:last-child td:last-child {',
'    -moz-border-radius-bottomright:6px;',
'    -webkit-border-bottom-right-radius:6px;',
'    border-bottom-right-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:first-child {',
'    -moz-border-radius-topleft:6px;',
'    -webkit-border-top-left-radius:6px;',
'    border-top-left-radius:6px;',
'}',
'.CSSTableGenerator table tr:first-child td:last-child {',
'    -moz-border-radius-topright:6px;',
'    -webkit-border-top-right-radius:6px;',
'    border-top-right-radius:6px;',
'}.CSSTableGenerator tr:last-child td:first-child{',
'    -moz-border-radius-bottomleft:6px;',
'    -webkit-border-bottom-left-radius:6px;',
'    border-bottom-left-radius:6px;',
'}',
'',
'.CSSTableGenerator tr:hover td{',
'    background-color:#E5E4E2;',
'        }',
'',
'.CSSTableGenerator td{',
'font-family:Arial, sans-serif;',
'font-size:12px;',
'padding:4px 2px;',
'border-style:solid;',
'border-width:1px;',
'overflow:hidden;',
'word-break:normal;',
'border-color:#95B9C7;',
'color:#254117;',
'background-color:#E0FFFF;',
'}',
'',
'.CSSTableGenerator tr:last-child td{',
'    border-width:1px; /*0px 1px 0px 0px;*/',
'}',
'',
'.CSSTableGenerator tr td:last-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}.CSSTableGenerator tr:last-child td:last-child{',
'    border-width:1px; /*0px 0px 0px 0px;*/',
'}',
'',
'/*for First row */',
'.CSSTableGenerator tr:first-child td{',
'    background:-o-linear-gradient(bottom, #26ADE4 5%, #26ADE4 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #26ADE4), color-stop(1, #26ADE4) );',
'    background:-moz-linear-gradient( center top, #26ADE4 5%, #26ADE4 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#26ADE4", endColorstr="#26ADE4");    background: -o-linear-gradient(top,#26ADE4,003f7f);',
'',
'    background-color:#3090C7;',
'    /*border:0px solid #f9f9fc;*/',
'    text-align:center;',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'    font-family:Arial, sans-serif;',
'    font-size:14px;',
'    font-weight:normal;',
'    color:#1C1C79;',
'}',
'',
'.CSSTableGenerator tr:first-child:hover td{',
'    /*background:-o-linear-gradient(bottom, #003366 5%, #003f7f 100%);    background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #003366), color-stop(1, #003f7f) );',
'    background:-moz-linear-gradient( center top, #003366 5%, #003f7f 100% );',
'    filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#003366", endColorstr="#003f7f");    background: -o-linear-gradient(top,#003366,003f7f);',
'',
'    background-color:#1589FF;*/',
'}',
'.CSSTableGenerator tr:first-child td:first-child{',
'    border-width:1px; /*0px 0px 1px 0px;*/',
'}',
'.CSSTableGenerator tr:first-child td:last-child{',
'    border-width:1px; /*0px 0px 1px 1px;*/',
'}',
'</style>'');',
'-- <a href="f?p=&APP_ID.:16:&SESSION.:P"><b>Bill Amount</b></a> ',
'/*htp.p(''<div style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P1_COMPADD.</font>',
'</div></br>'');*/',
'',
'        htp.p(''<div class="CSSTableGenerator" id="printableArea" >',
'              <div id="header"style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P1_COMPADD.</font>',
'              </div></br>',
'              <table border="1" cellspacing="0">',
'              <tr style="max-height:6px;">',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Booking Code</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Booking Date</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Customer Name</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Address</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Mobile</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Email</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Product Code</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Product Name</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Chasis No</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Engine No</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Sale Rate</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">QTY</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Down Payment</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">No Of Installment</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Amount</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Sales Executive</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Showroom</td>',
'              </tr>''); ',
'',
'For c1 in (',
'SELECT BOOKCODE, BOOKDATE,  c.CUSTNAME, c.CUSTADR1||c.CUSTADR2||c.CUSTADR1 Address, c.CUSTMOBL,c.CUSTMAIL,i.ITEMCODE, i.ITEMDES1,a.VINNUMBR,a.ENGINENO,',
'a.SALERATE,a.APPRQNTY, a.DOWN_PAYMENT, a.NO_OF_INSTALLMENT, a.MSLCAMNT,s.SMANNAME,w.WAREDESC',
'FROM nmenudtl a,nmcusmas c,nmitemas i,nmsmnmas s,nmwhsmas w',
'           WHERE a.compcode=:compcode',
'           and a.compcode=c.compcode(+)',
'           and a.CUSTMRID=c.CUSTMRID(+)',
'           and a.compcode=i.compcode(+)',
'           and a.ITEMCODE=i.ITEMCODE(+)',
'           and a.compcode=s.compcode(+)',
'           and a.SMANCODE=s.SMANCODE(+)',
'            and a.compcode=w.compcode(+)',
'           and a.WARECODE=w.WARECODE(+)',
'                 and  BOOKCODE  is NOT NULL',
'                  and UPPER(BOOKCODE|| BOOKDATE||  c.CUSTNAME|| c.CUSTADR1||c.CUSTADR2||c.CUSTADR1|| c.CUSTMOBL||c.CUSTMAIL||i.ITEMCODE|| i.ITEMDES1||a.VINNUMBR||a.ENGINENO||',
'a.SALERATE||a.APPRQNTY|| a.DOWN_PAYMENT|| a.NO_OF_INSTALLMENT|| a.MSLCAMNT||s.SMANNAME||w.WAREDESC) LIKE ''%''||UPPER(:P163_SEARCH)||''%''',
'                 order by BOOKDATE desc',
')',
'                  ',
' Loop',
'v_rowcnt:=v_rowcnt+1;',
'',
'  htp.p(''',
'     <tr style="max-height:6px;">',
'    <td style="text-align:center;">''||c1.BOOKCODE||''</td>',
'    <td style="text-align:center;">''||c1.BOOKDATE||''</td>',
'    <td style="text-align:left;">''||c1.CUSTNAME||''</td>',
'    <td style="text-align:left;width: 20px;">''||c1.Address||''</td>',
'    <td style="text-align:center;">''||c1.CUSTMOBL||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.CUSTMAIL||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.ITEMCODE||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.ITEMDES1||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.VINNUMBR||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.ENGINENO||''</td>',
'    <td style="padding-left: 10px;text-align:center;">''||c1.SALERATE||''</td>',
'    <td style="padding-left: 10px;text-align:center;">''||c1.APPRQNTY||''</td>',
'    <td style="padding-left: 10px;text-align:center;">''||c1.DOWN_PAYMENT||''</td>',
'    <td style="padding-left: 10px;text-align:center;">''||c1.NO_OF_INSTALLMENT||''</td>',
'    <td style="padding-left: 10px;text-align:center;">''||c1.MSLCAMNT||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.SMANNAME||''</td>',
'    <td style="padding-left: 10px;text-align:left;">''||c1.WAREDESC||''</td>',
'  </tr>',
'    '');',
'                  ',
'       if v_rowcnt = v_randon then',
'',
'                  htp.p(''',
'               <table border="1" cellspacing="0">',
'                   <div id="header"style="page-break-before:always;text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P1_COMPADD'
||'.</font>',
'              </div></br>',
'              <tr style="max-height:6px;">',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Booking Code</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Booking Date</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Customer Name</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Address</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Mobile</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Email</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Product Code</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Product Name</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Chasis No</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Engine No</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Sale Rate</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">QTY</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Down Payment</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">No Of Installment</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Amount</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Sales Executive</td>',
'                <td style="width: 20px;background-color:#38ACEC;text-align:center">Showroom</td>',
'              </tr><br>''); ',
'                 ',
'                 v_rowcnt:=0;',
'                --  v_randon:=v_randon;',
'                --  v_randon:=0;',
'                  end if;  ',
'  ',
'End Loop;',
'          ',
' ',
'htp.p(''</table></div></br>'');',
'',
'End;',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(97212145302487143)
,p_plug_name=>' Print Region'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>5
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">',
'<html xmlns="http://www.w3.org/1999/xhtml">',
'<head runat="server">',
' <title></title>',
'      <script>',
'     window.addEventListener(''load'', onloadHandler, false);',
'',
'           function onloadHandler() {',
'             // get the canvas DOM element',
'              var canvas = document.getElementById(''canvas''),',
'       ctx = canvas.getContext("2d"),',
'       width = canvas.width,',
'       height = canvas.height;',
'         ctx.save();',
'        ctx.font = "Bold 14pt Verdana";',
'        drawText(320, 080, "DEEPAK DWIJ", "rgb(80,80,80)");',
'        ctx.font = "12pt Arial";',
'               ctx.fillStyle = ''blue'';',
'               ctx.fillText(''Hello World!'', 150, 100);',
'        drawText(320, 120, "Software Developer", "rgb(80,80,80)");',
'        drawText(320, 140, "105 2nd Street", "rgb(80,80,80)");',
'        drawText(320, 160, "Fortis H 121 Noida", "rgb(80,80,80)");',
'        drawText(320, 180, "Mb no.-9123456789 ", "rgb(80,80,80)");',
'        drawText(320, 200, "developer.dwij@gmail.com", "rgb(47,118,178)");',
'        ctx.restore();',
'               // data structures - generate initial blobs',
'             ',
'               ',
'           } ',
'          ',
'      </script>',
'      <style>',
'.card-container',
'{',
'   text-align: center;',
'   margin-bottom: 2.5em;',
'   margin-top:2 em;',
'}',
'#canvas',
'{',
'   border: 1px solid #FFC125;',
'   background-color: #FFEBCD;',
'   -moz-box-shadow: 3px 3px 8px #222;',
'   -webkit-box-shadow: 3px 3px 8px #222;',
'   box-shadow: 3px 3px 8px #222;',
'}',
'.title',
'{',
'   text-align: center;',
'   font-family: Segoe UI Light, Arial, Helvetica;',
'   font-size: 2.2em;',
'   margin: 1em;',
'}',
'.info',
'{',
'   text-align: center;',
'   font-family: Segoe UI Light, Arial, Helvetica;',
'   font-size: 1.2em;',
'   margin: 0.25em;',
'}',
'a, a:visited, a:active, a:hover',
'{',
'   color: #fff;',
'   text-decoration: none;',
'}',
'a:hover',
'{',
'   text-decoration: underline;',
'}',
'',
'      </style>',
'   </head>',
'   <body style="background-color: #B0B0B0">',
'   <hr />  ',
'      <div class="card-container" >',
'          ',
'         <canvas id="canvas" width="560" height="300"></canvas>',
'          <div id="header"style="text-align:center; height:24px;  top: 0px;left: 50%; margin-left: 15px;font-size:12px;color:#336633; font-weight:bold;">&P1_COMPNAME.<br><font size=''''2'''' color=''''#336633''''>&P1_COMPADD.</font>',
'              </div>',
'      </div>',
'        </body>',
'</html>',
'<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tr>',
'<td width="90%" align="center" valign="top">',
' ',
'</td>',
'<td width="50%" height="10px"align="center" valign="top">',
'    ',
'<div id="divButtons" name="divButtons" style="align:right;">',
'    <input type="button" id="button" name="Booking" onclick="printPage()" value="Print"  style=" box-shadow: 0px 1px 0px 0px rgb(159, 180, 242) inset; background: rgb(120, 146, 194) linear-gradient(to bottom, rgb(120, 146, 194) 5%, rgb(71, 110, 158) '
||'100%) repeat scroll 0% 0%; border-radius: 4px; border: 2px solid rgb(78, 96, 150); display: inline-block; cursor: pointer; color: rgb(255, 255, 255); font-family: Verdana; font-size: 10px; font-weight: bold; padding: 6px 10px; text-decoration: none; '
||'text-shadow: 0px -1px 0px rgb(40, 57, 102);" />',
'',
'</div>',
'</td>',
' ',
'</tr>',
'</table>'))
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52257621014102400)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52257181637098113)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Cancel'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52223723330056581)
,p_name=>'P163_CUSTOMERNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_prompt=>'Customername'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52224107867056582)
,p_name=>'P163_CUSTADDRESS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_prompt=>'Custaddress'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52224500606056582)
,p_name=>'P163_MOBILE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_prompt=>'Mobile'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52224862620056582)
,p_name=>'P163_EMAIL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97245591318619977)
,p_name=>'P163_COMPANY_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_item_default=>':P1_COMPNAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97245958152619988)
,p_name=>'P163_COMPANY_ADDRESS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(52218548514911359)
,p_item_default=>':P1_COMPADD'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Company Address'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97269225094326993)
,p_name=>'P163_ROWID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(97097099774016194)
,p_item_default=>'17'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:5;5,10;10,15;15,20;20'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(97272706821602585)
,p_name=>'P163_SEARCH'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(97097099774016194)
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(97271187964461039)
,p_name=>'change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P163_ROWID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(97271626556461059)
,p_event_id=>wwv_flow_api.id(97271187964461039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(97097099774016194)
);
wwv_flow_api.component_end;
end;
/
