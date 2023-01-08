prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
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
 p_id=>131
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'Service job approval report'
,p_alias=>'NMJOBAPR'
,p_step_title=>'Service job approval report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161129124816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67942836718098902)
,p_plug_name=>'Service job approval report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct s.itemcode || '' / '' || s.itemdesc || '' / '' || s.modelnam item_details,s.itemcode,',
'       s.custcmpln, s.chasisno, s.registno, s.custname, s.custadr1,',
'       s.custphon, s.custmail, s.remarkss,s.compcode, n.ROWID AS rwid,n.DOCTDATE estimate_date,i.DOCNUMBR item_doc,i.DOCTDATE item_date,i.DOCTTYPE item_dctype,i.SUBTTYPE item_subtayp,i.NEGITMFK NEGITMFK,',
'          s.docnumbr',
'       || '' / ''',
'       || TRUNC (s.doctdate)',
'       || '' / ''',
'       || s.warecode',
'       || '' / ''',
'       || s.costcode',
'       || '' / ''',
'       || s.srvcnopk d,',
' s.docnumbr,',
'      s.srvcnopk srvcnopk,',
'       (SELECT DECODE (wm_concat (docnumbr),',
'                       NULL, ''<font color="blue">''',
'                        || ''Create Estimation''',
'                        || ''</font>'',',
'                       ''''',
'                      )',
'          FROM nmnegmas',
'         WHERE compcode = :compcode AND srvcnofk = s.srvcnopk) view_details,',
'       (SELECT ''<font color="blue">''||replace(wm_concat (distinct CHR(10)||docnumbr),'','','' '')|| ''</font>''',
'          FROM nmnegmas',
'         WHERE compcode = :compcode',
'           AND srvcnofk = s.srvcnopk) estimation_docnumbr',
'    FROM  vwnmsvci s,nmnegmas n,nmnegitm i,nmservce v',
'where n.compcode=v.compcode',
'and n.compcode=i.compcode',
'and s.DOCNUMBR=v.DOCNUMBR',
'and s.SRVCNOPK=v.SRVCNOPK',
'and n.SRVCNOFK=v.SRVCNOPK',
'and n.SRVCNOFK=i.SRVCNOFK',
'and n.NEGMASPK=i.NEGITMFK',
'and v.compcode=:compcode',
'and nvl(v.aprvflag,''N'')=''N''',
'and v.srvcnopk in (select srvcnofk from nmnegmas where estjobno is not null and ',
'compcode=:compcode )',
'and nvl(upper(v.statuscd),''NEW'') <> ''CAN''',
'and v.warecode in (select warecode from sycstacc',
'                where grupcode=:APP_USER',
'                and compcode=:compcode)',
'    AND CASE',
'          WHEN v.COMPLETE IS  NULL',
'             THEN ''W''',
'      WHEN v.COMPLETE=''N''',
'             THEN ''P''',
'WHEN v.COMPLETE=''Y''',
'             THEN ''C''',
'          ELSE NULL',
'       END = :P131_STATUS',
'order by n.DOCTDATE desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P131_STATUS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   s.rowid as rwid ,   s.docnumbr',
'         || '' / ''',
'         || TRUNC (s.doctdate)',
'         || '' / ''',
'         || s.warecode',
'         || '' / ''',
'         || s.costcode',
'         || '' / ''',
'         || s.srvcnopk',
'         || '' / ''',
'         || s.svcpkgfk d,s.srvcnopk srvcnopk,',
'         wm_concat (DISTINCT e.docnumbr) estimation_docnumbr,',
'         wm_concat (DISTINCT e.doctdate) estimation_doctdate,',
'         wm_concat (DISTINCT e.remarkss) estimation_remarkss,',
'         wm_concat (DISTINCT e.estjobno) estimation_estjobno,',
'         wm_concat (DISTINCT c.custname) custname,',
'            wm_concat (DISTINCT c.custadr1)',
'         || '' , ''',
'         || wm_concat (DISTINCT c.custadr2)',
'         || '' , ''',
'         || wm_concat (DISTINCT c.custadr3)',
'         || '' , ''',
'         || wm_concat (DISTINCT c.custadr4) customer_address,',
'         wm_concat (DISTINCT c.custphon) custphon,',
'         wm_concat (DISTINCT c.custmobl) custmobl,',
'         wm_concat (DISTINCT c.tefaxnum) tefaxnum,',
'         wm_concat (DISTINCT c.contpers) contpers,',
'         wm_concat (DISTINCT c.custmail) custmail',
'    FROM nmservce s, nmnegmas e, nmcusmas c',
'   WHERE NVL (s.COMPLETE, ''N'') = ''N''',
'     AND NVL (s.statuscd, ''NEW'') <> ''CAN''',
'     AND costcode IN (SELECT cabasecc',
'                        FROM sycstacc',
'                       WHERE compcode = :compcode AND grupcode = :app_user)',
'     AND s.srvcnopk = e.srvcnofk',
'     AND s.compcode = e.compcode',
'     AND s.custmrid = c.custmrid',
'     AND s.compcode = c.compcode',
'GROUP BY s.docnumbr,',
'         TRUNC (s.doctdate),',
'         s.warecode,',
'         s.costcode,',
'         s.srvcnopk,',
'         s.svcpkgfk,',
'         s.rowid',
'ORDER BY dfn_char2number (s.docnumbr) DESC',
'',
'',
'''<a href="f?p=&APP_ID.:103:&SESSION.::&DEBUG.::P103_SERVNO:#SRVCNOPK#">''||replace(wm_concat (CHR(10)||docnumbr),'','','' '')||''</a>'''))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(67943189685098902)
,p_name=>'Cost Negotitation'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'RILADM'
,p_internal_uid=>30788322559418408
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67943308007098902)
,p_db_column_name=>'RWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rwid'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67945330536098908)
,p_db_column_name=>'D'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Service Details'
,p_column_link=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.::P132_SERVNO:#SRVCNOPK#'
,p_column_linktext=>'#D#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_column_comment=>'<a href="f?p=105:103:&APP_SESSION.::NO:::">#D#</a>'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67945704004098910)
,p_db_column_name=>'SRVCNOPK'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Srvcnopk'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946145957098910)
,p_db_column_name=>'ESTIMATION_DOCNUMBR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estimation<br>No.'
,p_column_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_SERVNO,P129_COMPCODE,P129_RGSNO,P129_CHASNO,P129_S_ITEMCODE,P129_S_CUSTNAME,P129_S_CUSTADR1,P129_S_CUSTPHON,P129_S_CUSTMAIL:#SRVCNOPK#,#COMPCODE#,#REGISTNO#,#CHASISNO#,#ITEMCODE#,#CUSTNAME#,#CUSTADR1#,#CUSTPH'
||'ON#,#CUSTMAIL#'
,p_column_linktext=>'#ESTIMATION_DOCNUMBR#'
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
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P131_STATUS'
,p_display_condition2=>'E'
,p_column_comment=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_SERVNO,P129_P_DOCNUMBR,P129_P_DOCTDATE,P129_P_DOCTTYPE,P129_P_SUBTTYPE,P129_P_NEGMASPK,P129_COMPCODE:#SRVCNOPK#,#ITEM_DOC#,#ITEM_DATE#,#ITEM_DCTYPE#,#ITEM_SUBTAYP#,#NEGITMFK#,#COMPCODE#'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946541667098910)
,p_db_column_name=>'CUSTNAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Customer<br>Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67946932577098910)
,p_db_column_name=>'CUSTPHON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Customer<br>Phone'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67947342595098910)
,p_db_column_name=>'CUSTMAIL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Customer<br>Mail'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67947742037098910)
,p_db_column_name=>'VIEW_DETAILS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'View Details'
,p_column_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_SERVNO,P129_COMPCODE,P129_RGSNO,P129_CHASNO,P129_S_ITEMCODE,P129_S_CUSTNAME,P129_S_CUSTADR1,P129_S_CUSTPHON,P129_S_CUSTMAIL:#SRVCNOPK#,#COMPCODE#,#REGISTNO#,#CHASISNO#,#ITEMCODE#,#CUSTNAME#,#CUSTADR1#,#CUSTPH'
||'ON#,#CUSTMAIL#'
,p_column_linktext=>'#VIEW_DETAILS#'
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
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P131_STATUS'
,p_display_condition2=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948111095098910)
,p_db_column_name=>'ITEM_DETAILS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Item Details'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948564036098912)
,p_db_column_name=>'CUSTCMPLN'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Complain'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67948942116098912)
,p_db_column_name=>'CHASISNO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Chasis No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67949307452098912)
,p_db_column_name=>'REGISTNO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Registration<br>No.'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67949758013098912)
,p_db_column_name=>'CUSTADR1'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Customer<br>Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950116645098912)
,p_db_column_name=>'REMARKSS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950525855098912)
,p_db_column_name=>'ITEM_DOC'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Item Doc'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67950964310098913)
,p_db_column_name=>'ITEM_DATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Item Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67951346249098913)
,p_db_column_name=>'ITEM_DCTYPE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Item Dctype'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67951699730098913)
,p_db_column_name=>'ITEM_SUBTAYP'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Item Subtayp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67952104167098913)
,p_db_column_name=>'NEGITMFK'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Negitmfk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67943695883098902)
,p_db_column_name=>'ESTIMATE_DATE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Estimate Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67944070641098902)
,p_db_column_name=>'COMPCODE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Compcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67944477786098902)
,p_db_column_name=>'ITEMCODE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Itemcode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(67944932421098907)
,p_db_column_name=>'DOCNUMBR'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Docnumbr'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(67952550540098913)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'307977'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'D:CHASISNO:REGISTNO:ITEM_DETAILS:CUSTNAME:CUSTADR1:CUSTPHON:CUSTMAIL:CUSTCMPLN:REMARKSS:VIEW_DETAILS:'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(67953033639098913)
,p_report_id=>wwv_flow_api.id(67952550540098913)
,p_name=>'Row text contains ''766'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'766'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67953806012098915)
,p_plug_name=>'Page Information'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47580605777858182)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<font style="text-align:right; font-size:12px; color:#6633FF; font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Program Name:'
||'- &P131_PROGNM.&nbsp;&nbsp;&nbsp; Page No:- &P131_NO.&nbsp;&nbsp;&nbsp; Add:- &FX_ADD_ALLOWED.&nbsp;&nbsp;Mod:- &FX_MOD_ALLOWED.&nbsp;&nbsp;Del:- &FX_DEL_ALLOWED.&nbsp;&nbsp;Enq:- &FX_ENQ_ALLOWED.</font>'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(67955446283098915)
,p_plug_name=>' '
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(47585036927858182)
,p_plug_display_sequence=>9
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(67953396440098913)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(67942836718098902)
,p_button_name=>'CREATE_ESTIMATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Estimation'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67954228105098915)
,p_name=>'P131_PARENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(67953806012098915)
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
 p_id=>wwv_flow_api.id(67954637059098915)
,p_name=>'P131_PROGNM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(67953806012098915)
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
 p_id=>wwv_flow_api.id(67955037669098915)
,p_name=>'P131_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(67953806012098915)
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
 p_id=>wwv_flow_api.id(67955786886098916)
,p_name=>'P131_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(67955446283098915)
,p_item_default=>'W'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Waiting;W,In Process;P,Complete;C'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'4'
,p_attribute_02=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67956200873098916)
,p_name=>'P131_SERVNO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(67955446283098915)
,p_prompt=>'Servno'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67956651184098916)
,p_name=>'P131_E_DOCNUMBR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(67955446283098915)
,p_prompt=>'E docnumbr'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(67957038574098916)
,p_name=>'P131_C_NEGMASPK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(67955446283098915)
,p_prompt=>'C negmaspk '
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(67958090976098916)
,p_name=>'Insert into nmnegmas '
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.create'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(67958615004098919)
,p_event_id=>wwv_flow_api.id(67958090976098916)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'   INSERT INTO nmnegmas (COMPCODE,',
'                         DOCTTYPE,',
'                         SUBTTYPE,',
'                         DOCNUMBR,',
'                         DOCTDATE,',
'                         RAISEDBY,',
'                         APPRVDBY,',
'                         APPRDATE,',
'                         UPDOCTYP,',
'                         UPSUBTYP,',
'                         UPDOCNUM,',
'                         UPDOCDTE,',
'                         UPDOCSRL,',
'                         DWDOCTYP,',
'                         DWSUBTYP,',
'                         DWDOCNUM,',
'                         DWDOCDTE,',
'                         DWDOCSRL,',
'                         REMARKSS,',
'                         POSTFLAG,',
'                         PRNTFLAG,',
'                         STATUSCD,',
'                         OPRSTAMP,',
'                         TIMSTAMP,',
'                         COMPLETE,',
'                         APRVFLAG,',
'                         ESTJOBNO,',
'                         SRVCNOFK,',
'                         ADITIONL,',
'                         NEGMASPK,',
'                         TOTCHARG,',
'                         TOTPAMNT,',
'                         TOTALVAT,',
'                         BILLNOFK,',
'                         MODIFYDT)',
'        VALUES (:COMPCODE,',
'                ''ES'',',
'                1,',
'                :P131_E_DOCNUMBR,',
'                TRUNC(SYSDATE),',
'                :APP_USER,',
'                :APP_USER,',
'                SYSDATE,',
'               NULL,',
'                NULL,',
'                NULL,',
'                :UPDOCDTE,',
'                :UPDOCSRL,',
'                :DWDOCTYP,',
'                :DWSUBTYP,',
'                :DWDOCNUM,',
'                :DWDOCDTE,',
'                :DWDOCSRL,',
'                :REMARKSS,',
'                :POSTFLAG,',
'                :PRNTFLAG,',
'                :STATUSCD,',
'                :APP_USER,',
'                SYSDATE,',
'                :COMPLETE,',
'                :APRVFLAG,',
'                NULL,',
'               NULL,',
'                :ADITIONL,',
'                :P131_C_NEGMASPK ,',
'                :TOTCHARG,',
'                :TOTPAMNT,',
'                :TOTALVAT,',
'                :BILLNOFK,',
'                :MODIFYDT);',
'',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(67957712275098916)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'negmaspk generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    SELECT     NVL(MAX(NEGMASPK),0)+1 INTO :P131_C_NEGMASPK FROM NMNEGMAS',
'    WHERE COMPCODE=:COMPCODE;',
'    ',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'   ',
'    ',
'END;',
'begin',
'',
':P131_E_DOCNUMBR:=Drp_Primarykey_Generate(:COMPCODE,''NMNEGMAS'',''DOCNUMBR'',''SRVCNOFK=''||:P131_SERVNO,1,''NM'',''ES'',1,TRUNC(SYSDATE));',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
