prompt --application/pages/page_00160
begin
--   Manifest
--     PAGE: 00160
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
 p_id=>160
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>' Buyer Daily Information'
,p_page_mode=>'MODAL'
,p_step_title=>' Buyer Daily Information'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140737'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95210141029430245)
,p_plug_name=>' Buyer Daily Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47587389655858184)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACNTNAME,',
'       APPRDATE,',
'       APPRQNTY,',
'       BANKNAME,',
'       BATCHNUM,',
'       BODY_TYPE,',
'       BRANCHNM,',
'       COLORCDE,',
'       COMMCODE,',
'       COMPCODE,',
'       COSTCODE,',
'       COSTRATE,',
'       CURRCODE,',
'       CUSTMRID,',
'       DELVCOND,',
'       DELYDATE,',
'       DISCAMNT,',
'       DISCPCNT,',
'       DISCTAMT,',
'       DOCNUMBR,',
'       DOCTDATE,',
'       DOWN_PAYMENT,',
'       DWDOCDTE,',
'       DWDOCNUM,',
'       FREE_REGSTRATION,',
'       HUOMCODE,',
'       INSTALLMENT_PAY,',
'       INTEREST_AMOUNT,',
'       ITEMCODE,',
'       ITEMDESC,',
'       ITEMLONG,',
'       ITEMRATE,',
'       LOAN_AMOUNT,',
'       LUOMCODE,',
'       LUOMDESC,',
'       MONTHLY_INSTALLMENT,',
'       MSFCAMNT,',
'       MSLCAMNT,',
'       NO_OF_INSTALLMENT,',
'       OFRLETTER,',
'       OPRSTAMP,',
'       ORGNQNTY,',
'       PAMTMODE,',
'       PARTYCDE,',
'       POSIBLE_INST_END_DATE,',
'       POSIBLE_INST_START_DATE,',
'       PRODUCTION_COMPLETE_QTY,',
'       RAISEDBY,',
'       REFNDATE,',
'       REFNUMBR,',
'       REG_PLACE,',
'       REG_TYPE,',
'       REGNUMBR,',
'       REMARKSS,',
'       REQDDATE,',
'       SALERATE,',
'       SALES_TYPE,',
'       SLSOFRNO,',
'       SMANCODE,',
'       SOFNUMBR,',
'       STATUSCD,',
'       TRNSQNTY,',
'       UPDOCDTE,',
'       UPDOCNUM,',
'       UPDOCSRL,',
'       UPDOCTYP,',
'       WARECODE,',
'       WHSZONPK,',
'       ZONLCODE,',
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
'  FROM nmslsofr a',
' WHERE compcode = :compcode',
'       AND TRUNC (DOCTDATE) =',
'              TO_DATE (TO_CHAR (SYSDATE, ''MM/DD/RRRR''), ''MM/DD/RRRR'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(95210266799430245)
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
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>58055399673749751
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95210621103430256)
,p_db_column_name=>'ACNTNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Acntname'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95211054194430261)
,p_db_column_name=>'APPRDATE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Apprdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95211396808430261)
,p_db_column_name=>'APPRQNTY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Apprqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95211795999430262)
,p_db_column_name=>'BANKNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bankname'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95212182705430262)
,p_db_column_name=>'BATCHNUM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Batchnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95212581001430262)
,p_db_column_name=>'BODY_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Body Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95213038169430262)
,p_db_column_name=>'BRANCHNM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Branchnm'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95213428027430262)
,p_db_column_name=>'COLORCDE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Colorcde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95213844678430262)
,p_db_column_name=>'COMMCODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95214193961430262)
,p_db_column_name=>'COMPCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95214642600430262)
,p_db_column_name=>'COSTCODE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Costcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95214981823430262)
,p_db_column_name=>'COSTRATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Costrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95215375953430262)
,p_db_column_name=>'CURRCODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Currcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95215850311430262)
,p_db_column_name=>'CUSTMRID'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Custmrid'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95216228374430262)
,p_db_column_name=>'DELVCOND'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Delvcond'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95216665592430264)
,p_db_column_name=>'DELYDATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Delydate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95217044324430266)
,p_db_column_name=>'DISCAMNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Discamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95217424640430266)
,p_db_column_name=>'DISCPCNT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Discpcnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95217777167430266)
,p_db_column_name=>'DISCTAMT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Disctamt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95218186937430266)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95218574951430266)
,p_db_column_name=>'DOCTDATE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Doctdate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95219006805430266)
,p_db_column_name=>'DOWN_PAYMENT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Down Payment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95219417177430266)
,p_db_column_name=>'DWDOCDTE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Dwdocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95219796388430266)
,p_db_column_name=>'DWDOCNUM'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Dwdocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95220184533430267)
,p_db_column_name=>'FREE_REGSTRATION'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Free Registration'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95220609517430267)
,p_db_column_name=>'HUOMCODE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Huomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95220982151430267)
,p_db_column_name=>'INSTALLMENT_PAY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Installment Pay'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95221405850430267)
,p_db_column_name=>'INTEREST_AMOUNT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Interest Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95221773562430267)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95222234745430267)
,p_db_column_name=>'ITEMDESC'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Item Description'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95222630979430267)
,p_db_column_name=>'ITEMLONG'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Itemlong'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95223027008430267)
,p_db_column_name=>'ITEMRATE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Itemrate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95223415933430267)
,p_db_column_name=>'LOAN_AMOUNT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Loan Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95223776592430267)
,p_db_column_name=>'LUOMCODE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Luomcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95224194805430267)
,p_db_column_name=>'LUOMDESC'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Luomdesc'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95224605877430267)
,p_db_column_name=>'MONTHLY_INSTALLMENT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Monthly Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95224980406430269)
,p_db_column_name=>'MSFCAMNT'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Msfcamnt'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95225380287430269)
,p_db_column_name=>'MSLCAMNT'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95225779673430269)
,p_db_column_name=>'NO_OF_INSTALLMENT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'No Of Installment'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95226189288430269)
,p_db_column_name=>'OFRLETTER'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Ofrletter'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95226645992430269)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95226992686430269)
,p_db_column_name=>'ORGNQNTY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Orgnqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95227369480430269)
,p_db_column_name=>'PAMTMODE'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Pamtmode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95227859092430269)
,p_db_column_name=>'PARTYCDE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Partycde'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95228204529430269)
,p_db_column_name=>'POSIBLE_INST_END_DATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Posible Inst End Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95228567361430269)
,p_db_column_name=>'POSIBLE_INST_START_DATE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Posible Inst Start Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95228974291430269)
,p_db_column_name=>'PRODUCTION_COMPLETE_QTY'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Production Complete Qty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95229448945430269)
,p_db_column_name=>'RAISEDBY'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Raisedby'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95229778591430269)
,p_db_column_name=>'REFNDATE'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Refndate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95230167215430270)
,p_db_column_name=>'REFNUMBR'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Refnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95230644235430270)
,p_db_column_name=>'REG_PLACE'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Reg Place'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95230983700430270)
,p_db_column_name=>'REG_TYPE'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Reg Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95231416923430270)
,p_db_column_name=>'REGNUMBR'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Regnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95231820640430270)
,p_db_column_name=>'REMARKSS'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Remarkss'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95232191140430270)
,p_db_column_name=>'REQDDATE'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Reqddate'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95232587292430270)
,p_db_column_name=>'SALERATE'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Salerate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95233029698430270)
,p_db_column_name=>'SALES_TYPE'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Sales Type'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95233372985430270)
,p_db_column_name=>'SLSOFRNO'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Slsofrno'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95233816570430270)
,p_db_column_name=>'SMANCODE'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Smancode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95234211414430270)
,p_db_column_name=>'SOFNUMBR'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Sofnumbr'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95234626635430272)
,p_db_column_name=>'STATUSCD'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Statuscd'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95235039287430272)
,p_db_column_name=>'TRNSQNTY'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Trnsqnty'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95235404709430273)
,p_db_column_name=>'UPDOCDTE'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Updocdte'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95235815611430273)
,p_db_column_name=>'UPDOCNUM'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Updocnum'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95236258663430273)
,p_db_column_name=>'UPDOCSRL'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Updocsrl'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95236596983430273)
,p_db_column_name=>'UPDOCTYP'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Updoctyp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95236946490430275)
,p_db_column_name=>'WARECODE'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Warecode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95237338381430275)
,p_db_column_name=>'WHSZONPK'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Whszonpk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95237712289430275)
,p_db_column_name=>'ZONLCODE'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Zonlcode'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95858081810170430)
,p_db_column_name=>'COLORCDE_NAME'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'Color Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95858826492170430)
,p_db_column_name=>'CUSTMRID_NAME'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'Customer Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95859492006170430)
,p_db_column_name=>'SMANCODE_NAME'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Salesman Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95860173973170432)
,p_db_column_name=>'WARECODE_NAME'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'Cost Center'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(95243447495436515)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'580886'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCNUMBR:DOCTDATE:CUSTMRID_NAME:SMANCODE_NAME:WARECODE_NAME:ITEMCODE:ITEMDESC:COLORCDE_NAME:SALERATE:DOWN_PAYMENT:LOAN_AMOUNT:NO_OF_INSTALLMENT:MONTHLY_INSTALLMENT:INSTALLMENT_PAY:FREE_REGSTRATION:INTEREST_AMOUNT:MSLCAMNT:'
);
wwv_flow_api.component_end;
end;
/
