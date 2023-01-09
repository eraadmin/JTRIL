prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_user_interface_id=>wwv_flow_api.id(1120121017230736040)
,p_name=>'Company Parameter'
,p_page_mode=>'MODAL'
,p_step_title=>'Company Parameter'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(15982568616522500)
,p_page_template_options=>'ui-dialog--stretch'
,p_protection_level=>'C'
,p_last_updated_by=>'NADIA'
,p_last_upd_yyyymmddhh24miss=>'20200604154945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(56634706493660323)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1582248360698857849)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       COMPCODE,',
'       DECODE(WAREFLAG,''Y'',''Single Warehouse'',''N'',''Multiple Warehouse'') WAREFLAG,',
'       DECODE(TCSTFLAG,''W'',''Warehouse Level'',''I'',''Item Level'') TCSTFLAG,',
'       DECODE(LKLPORCT,''Y'',''Yes'',''N'',''No'') LKLPORCT,',
'       DECODE(LKRCTINV,''Y'',''Yes'',''N'',''No'') LKRCTINV,',
'       ITMDUPFL,',
'       COMMFLAG,',
'       DECODE(AUTOPOST,''Y'',''Yes'',''N'',''No'') AUTOPOST,',
'       RAISEFLG,',
'       DECODE(COSACFLG,''S'',''Stock Level'',''I'',''Item Level'') COSACFLG,',
'       DECODE(ARCOSFLG,''I'',''Item Level Cost Center'',''E'',''User Entered Cost Center'') ARCOSFLG,',
'       DECODE(COMTRFLG,''Y'',''Yes'',''N'',''No'') COMTRFLG,',
'       COMMCODE,',
'       PAYCOSCD,',
'       APRAMEND,',
'       DECODE(MRECEIPT,''Y'',''Yes'',''N'',''No'') MRECEIPT,',
'       GLCOCEFL,',
'       FASTPCNT,',
'       SLOWPCNT,',
'       ACLASVAL,',
'       BCLASVAL,',
'       CCLASVAL,',
'       RATEVARN,',
'       NONMPCNT,',
'       JSGRPFLG,',
'       BOQREFFL,',
'       STATCODE,',
'       ITMCDLEN,',
'       ITPICDIR,',
'       OPRSTAMP,',
'       TIMSTAMP,',
'       OPSTKDAT,',
'       CASHPRTY,',
'       TRATTDIR,',
'       PRVTRCNT,',
'       STUCTITM,',
'       STKTRNFLG,',
'       COMPGVAT,',
'       VATRGTNO,',
'       MUSOKNO,',
'       HEADSIZE,',
'       FONTNAME,',
'       ADDRSIZE,',
'       ALGNMENT,',
'       BDYFSIZE,',
'       BDYFNAME,',
'       SHOWHEAD,',
'       SHOWFOTR,',
'       AMTROUND,',
'       DATEFORMT,',
'       SRVCRMND,',
'       CHKLEVEL,',
'       PROBUDCHK,',
'       ISWHSBGT,',
'       SMSSPRTR,',
'       FIREMARK,',
'       DISGRADE,',
'       USEWARCD,',
'       USEPRTYP,',
'       SALESVAT,',
'       USE_SUBZONE,',
'       USE_EMPALOCT,',
'       BIN_LOCATION,',
'       HSCODE_WISE_DUTY_CALC,',
'       USE_PYEMPCDE,',
'       USESLSPR,',
'       PURCHASE_ORDER,',
'       MODIFYDT',
'  from NMCOMPAR',
' where COMPCODE = :COMPCODE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(56635186891660323)
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
,p_detail_link=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP:P97_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_detail_link_cond=>'TRNMODE'
,p_detail_link_cond2=>'M'
,p_owner=>'ADMIN'
,p_internal_uid=>56635186891660323
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56635245729660323)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56635699569660325)
,p_db_column_name=>'COMPCODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56636060383660325)
,p_db_column_name=>'WAREFLAG'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Weighted Avg. Calc.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56636489437660325)
,p_db_column_name=>'TCSTFLAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cost Above %'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56636819459660325)
,p_db_column_name=>'LKLPORCT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'LPO-Receipt Rate Modification'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56637224953660326)
,p_db_column_name=>'LKRCTINV'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Receipt Invoice Rate Modification'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56637669711660326)
,p_db_column_name=>'ITMDUPFL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Itmdupfl'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56638013881660326)
,p_db_column_name=>'COMMFLAG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Commflag'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56638479949660326)
,p_db_column_name=>'AUTOPOST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Online AP Posting'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56638803818660326)
,p_db_column_name=>'RAISEFLG'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Raiseflg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56639240370660328)
,p_db_column_name=>'COSACFLG'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'AP Post Material'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56639652194660328)
,p_db_column_name=>'ARCOSFLG'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'AR Post Turn Over'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56640012598660328)
,p_db_column_name=>'COMTRFLG'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Internal Material Transfer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56640403076660328)
,p_db_column_name=>'COMMCODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Commcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56640832233660329)
,p_db_column_name=>'PAYCOSCD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Paycoscd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56641243021660329)
,p_db_column_name=>'APRAMEND'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Apramend'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56641647587660329)
,p_db_column_name=>'MRECEIPT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Manufacturing Receipt Allowed'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56642034605660329)
,p_db_column_name=>'GLCOCEFL'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Glcocefl'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56642431059660331)
,p_db_column_name=>'FASTPCNT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Fastpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56642888784660331)
,p_db_column_name=>'SLOWPCNT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Slowpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56643296757660331)
,p_db_column_name=>'ACLASVAL'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Aclasval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56643604873660331)
,p_db_column_name=>'BCLASVAL'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Bclasval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56644054930660331)
,p_db_column_name=>'CCLASVAL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Cclasval'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56644449086660332)
,p_db_column_name=>'RATEVARN'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Tolarance Rate %'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56644839360660332)
,p_db_column_name=>'NONMPCNT'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Nonmpcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56645209077660332)
,p_db_column_name=>'JSGRPFLG'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Jsgrpflg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56645657837660332)
,p_db_column_name=>'BOQREFFL'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Boqreffl'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56646029129660334)
,p_db_column_name=>'STATCODE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Statcode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56646477510660334)
,p_db_column_name=>'ITMCDLEN'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Itmcdlen'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56646865090660334)
,p_db_column_name=>'ITPICDIR'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Picture Directory'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56647270937660334)
,p_db_column_name=>'OPRSTAMP'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Oprstamp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56647672714660335)
,p_db_column_name=>'TIMSTAMP'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Timstamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56648085527660335)
,p_db_column_name=>'OPSTKDAT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Opening Stock Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56648408746660335)
,p_db_column_name=>'CASHPRTY'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Cashprty'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56648875179660335)
,p_db_column_name=>'TRATTDIR'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Trattdir'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56649270706660335)
,p_db_column_name=>'PRVTRCNT'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Prvtrcnt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56649698404660337)
,p_db_column_name=>'STUCTITM'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Stuctitm'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56650053500660337)
,p_db_column_name=>'STKTRNFLG'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Stktrnflg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56650476245660337)
,p_db_column_name=>'COMPGVAT'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Compgvat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56650809888660337)
,p_db_column_name=>'VATRGTNO'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Vatrgtno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56651262791660339)
,p_db_column_name=>'MUSOKNO'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Musokno'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56651609880660339)
,p_db_column_name=>'HEADSIZE'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Headsize'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56652067517660339)
,p_db_column_name=>'FONTNAME'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Fontname'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56652492369660339)
,p_db_column_name=>'ADDRSIZE'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Addrsize'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56652800091660340)
,p_db_column_name=>'ALGNMENT'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Algnment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56653228853660340)
,p_db_column_name=>'BDYFSIZE'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Bdyfsize'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56653644053660340)
,p_db_column_name=>'BDYFNAME'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Bdyfname'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56654065166660340)
,p_db_column_name=>'SHOWHEAD'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Showhead'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56654470628660340)
,p_db_column_name=>'SHOWFOTR'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Showfotr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56654871655660342)
,p_db_column_name=>'AMTROUND'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Amtround'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56655266724660342)
,p_db_column_name=>'DATEFORMT'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Dateformt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56655612249660342)
,p_db_column_name=>'SRVCRMND'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Srvcrmnd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56656077877660342)
,p_db_column_name=>'CHKLEVEL'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'Chklevel'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56656446180660343)
,p_db_column_name=>'PROBUDCHK'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'Probudchk'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56656869516660343)
,p_db_column_name=>'ISWHSBGT'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Iswhsbgt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56657283227660343)
,p_db_column_name=>'SMSSPRTR'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Smssprtr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56657644353660343)
,p_db_column_name=>'FIREMARK'
,p_display_order=>57
,p_column_identifier=>'BE'
,p_column_label=>'Firemark'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56658058367660345)
,p_db_column_name=>'DISGRADE'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Disgrade'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56658425145660345)
,p_db_column_name=>'USEWARCD'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Usewarcd'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56658815605660345)
,p_db_column_name=>'USEPRTYP'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Useprtyp'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56659277855660345)
,p_db_column_name=>'SALESVAT'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Salesvat'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56659681614660345)
,p_db_column_name=>'USE_SUBZONE'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Use Subzone'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56660040492660346)
,p_db_column_name=>'USE_EMPALOCT'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Use Empaloct'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56660414465660346)
,p_db_column_name=>'BIN_LOCATION'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Bin Location'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56660839568660346)
,p_db_column_name=>'HSCODE_WISE_DUTY_CALC'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Hscode Wise Duty Calc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56661242771660346)
,p_db_column_name=>'USE_PYEMPCDE'
,p_display_order=>66
,p_column_identifier=>'BN'
,p_column_label=>'Use Pyempcde'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56661672760660348)
,p_db_column_name=>'USESLSPR'
,p_display_order=>67
,p_column_identifier=>'BO'
,p_column_label=>'Useslspr'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56662016046660348)
,p_db_column_name=>'PURCHASE_ORDER'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Purchase Order'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56662468523660348)
,p_db_column_name=>'MODIFYDT'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Modifydt'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(56666013211682331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'566661'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WAREFLAG:TCSTFLAG:AUTOPOST:COSACFLG:ARCOSFLG:COMTRFLG:RATEVARN:OPSTKDAT:MRECEIPT:LKLPORCT:LKRCTINV:ITPICDIR:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113849788720410213)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI:t-Form--slimPadding:t-Form--stretchInputs:t-Form--leftLabels'
,p_plug_template=>wwv_flow_api.id(1582239298450857834)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57219934537749898)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(113849788720410213)
,p_button_name=>'CANCEL'
,p_button_static_id=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1582272254158857926)
,p_button_image_alt=>'&BTN_CNCL_LBL.'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'&BTN_CNCL_ICON.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56662868050660348)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(56634706493660323)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56663310121660350)
,p_event_id=>wwv_flow_api.id(56662868050660348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(56634706493660323)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57216494433727865)
,p_name=>'close X button from dialog page'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(57216876336727865)
,p_event_id=>wwv_flow_api.id(57216494433727865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); //get the button',
'button.hide(); //hide the button'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(56692110925743106)
,p_name=>'Cancel Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(57219934537749898)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(56692256682743107)
,p_event_id=>wwv_flow_api.id(56692110925743106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
