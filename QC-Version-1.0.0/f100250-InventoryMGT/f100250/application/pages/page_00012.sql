prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'%null%'
,p_name=>'Enter New Order'
,p_step_title=>'Sample Database Application - Enter New Order'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(1741072136129907643)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div.sideCartItem{padding:8px 8px 0 8px;font:normal 11px/14px Arial,sans-serif;} ',
'div.sideCartItem a{color:#000;} ',
'div.sideCartItem strong,div.sideCartItem span{display:block;text-align:right;padding:8px 0 0 0;} ',
'div.sideCartItem span{padding:4px 0 0 0;} ',
'div.sideCartItem span.subtotal{font-weight:bold;} ',
'div.sideCartItem p{margin:4px 0 0 0;padding:0 0 8px 0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartItem p span{padding:0;font-weight:bold;text-align: right;} ',
'div.sideCartTotal{border-top:1px solid #FFF;margin-top:8px;padding:8px;border-top:1px dotted #AAA;} ',
'div.sideCartTotal span{display:block;text-align:right;font:normal 11px/14px Arial,sans-serif;padding:0 0 4px 0;} ',
'div.sideCartTotal p{padding:0;margin:0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.sideCartTotal p.sideCartTotal{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p.sideCartTotal span{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.sideCartTotal p span{padding:0;position:absolute;right:0;top:0;} ',
'div.demoCustomerInfo{}',
'div.demoCustomerInfo strong{font:bold 12px/16px Arial,sans-serif;display:block;width:120px;}',
'div.demoCustomerInfo p{display:block;margin:0; font: normal 12px/16px Arial, sans-serif;}',
'div.demoProducts{clear:both;margin:16px 0 0 0;padding:0 8px 0 0;}',
'div.demoProducts table{border:1px solid #CCC;border-bottom:none;}',
'div.demoProducts table th{background-color:#DDD;color:#000;font:bold 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;border-bottom:1px solid #CCC;}',
'div.demoProducts table td{border-bottom:1px solid #CCC;font:normal 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;}',
'div.demoProducts table td a{color:#000;}',
'div.demoProducts .left{text-align:left;}',
'div.demoCurrentOrder{margin:16px 0 0 0; border-left: 1px solid #CCC; padding: 0 0 0 8px}',
'strong.demoTitle{font:bold 12px/16px Arial,sans-serif;display:block;padding: 4px 10px; background-color: #DDD; border: 1px solid #CCC}',
'a.demoAddtoCart {',
'display: block;',
'float: right;',
'padding: 2px 6px;',
'background-color: #CCC;',
'color: #FFF;',
'text-decoration: none;',
'-moz-border-radius: 4px;',
'-webkit-border-radius: 4px;',
'	}',
'a.demoAddtoCart:hover {background-color: #80A2BB; color: #FFF}',
'		'))
,p_step_template=>wwv_flow_api.id(47564929163858117)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RILADM'
,p_last_upd_yyyymmddhh24miss=>'20161006140745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1381555813655617676)
,p_plug_name=>'Max Quantity'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="alertMessage yellow">',
'<img src="#IMAGE_PREFIX#f_spacer.gif">',
'<div class="innerMessage">',
'<h3>Warning</h3>',
'<p>Quantity for each Product must be between 1 and 10</p>',
'</div>',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  for c1 in (select c001 pid, sum(c004) prod_count',
'             from wwv_flow_collections',
'             where collection_name = ''ORDER''',
'             group by c001',
'            ) loop',
'    if c1.prod_count >= 10 then',
'      return true;',
'    end if;',
'  end loop;',
'  return false;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4177696460720959350)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47571367397858173)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7558009647622182805)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(7550106942428250283)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(47628856607858303)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7575961909265191430)
,p_plug_name=>'Select Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 2014/11/26 18:51 (Formatter Plus v4.8.8) */',
'DECLARE',
'   l_customer_id   VARCHAR2 (30) := :p11_customer_id;',
'BEGIN',
'--',
'-- display customer information',
'--',
'   SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'',
'   IF :p11_customer_options = ''EXISTING''',
'   THEN',
'      FOR x IN (SELECT *',
'                  FROM sycompty',
'                 WHERE partycde = l_customer_id',
'and COMPCODE=:COMPCODE)',
'      LOOP',
'         SYS.HTP.p (''<div class="demoCustomerInfo">'');',
'         SYS.HTP.p (''<strong>Customer:</strong>'');',
'         SYS.HTP.p (''<p>'');',
'         SYS.HTP.p (   apex_escape.html (x.prtyname)',
'                    || '' ''',
'                    || apex_escape.html (x.prtyname)',
'                    || ''<br />''',
'                   );',
'         SYS.HTP.p (apex_escape.html (x.partyad1) || ''<br />'');',
'',
'         IF x.partyad1 IS NOT NULL',
'         THEN',
'            SYS.HTP.p (apex_escape.html (x.partyad2) || ''<br />'');',
'         END IF;',
'',
'         SYS.HTP.p (   apex_escape.html (x.partyad2)',
'                    || '', ''',
'                    || apex_escape.html (x.partyad3)',
'                    || ''  ''',
'                    || apex_escape.html (x.partyad3)',
'                   );',
'         SYS.HTP.p (''</p>'');',
'      END LOOP;',
'   ELSE',
'      SYS.HTP.p (''<strong>Customer:</strong>'');',
'      SYS.HTP.p (''<p>'');',
'      SYS.HTP.p (   apex_escape.html (:p11_cust_first_name)',
'                 || '' ''',
'                 || apex_escape.html (:p11_cust_last_name)',
'                 || ''<br />''',
'                );',
'      SYS.HTP.p (apex_escape.html (:p11_cust_street_address1) || ''<br />'');',
'',
'      IF :p11_cust_street_address2 IS NOT NULL',
'      THEN',
'         SYS.HTP.p (apex_escape.html (:p11_cust_street_address2) || ''<br />'');',
'      END IF;',
'',
'      SYS.HTP.p (   apex_escape.html (:p11_cust_city)',
'                 || '', ''',
'                 || apex_escape.html (:p11_cust_state)',
'                 || ''  ''',
'                 || apex_escape.html (:p11_cust_postal_code)',
'                );',
'      SYS.HTP.p (''</p>'');',
'   END IF;',
'',
'   SYS.HTP.p (''</div>'');',
'--',
'-- display products',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Product</th><th>Unit</th><th>Modal</th><th>Brand</th><th>Price</th><th></th></tr>',
'</thead>',
'<tbody>''',
'      );',
'',
'   FOR c1 IN (  SELECT  rownum, itemcode, itemdes1, luomcode,(SELECT  distinct c.nmcoddes',
'    FROM nmcodmas c',
'   WHERE p.ITEMMODL=c.nmsofcde',
'   and p.COMPCODE=c.COMPCODE',
'   and c.compcode = :compcode   AND c.nmhrdcde = ''PRO''',
'   ) Product, (SELECT  distinct c.nmcoddes',
'    FROM nmcodmas c',
'   WHERE p.ITEMMODL=c.nmsofcde',
'   and p.COMPCODE=c.COMPCODE',
'   and c.compcode = :compcode   AND c.nmhrdcde = ''COM''',
'   ) Brand,salerate,',
'                       ''Add to Cart'' add_to_order',
'                  FROM nmitemas p',
'                 WHERE itemtype = ''S''',
'and itemcode=nvl(:P12_ITEMCODE,itemcode)',
'              and ROWNUM between 1 and :P12_RANGELIST',
'ORDER BY 1)',
'   LOOP',
'      SYS.HTP.p',
'         (   ''<tr><td class="left"><a href="javascript:popUp2(''''''',
'          || apex_util.prepare_url (   ''f?p=&APP_ID.:20:''',
'                                    || :app_session',
'                                    || '':ADD:::P20_PRODUCT_ID:''',
'                                    || apex_escape.html (c1.itemcode)',
'                                   )',
'          || '''''',''''700'''',''''400'''');">''',
'          || apex_escape.html (c1.itemdes1)',
'          || ''</a></td><td>''',
'          || c1.luomcode',
'          || ''</a></td><td>''',
'          || c1.Product',
'          || ''</a></td><td>''',
'          || c1.Brand',
'          || ''</a></td><td>''',
'          || TRIM (TO_CHAR (c1.salerate, ''999G999G990D00''))',
'          || ''</td><td><a href="''',
'          || apex_util.prepare_url (   ''f?p=&APP_ID.:12:''',
'                                    || :app_session',
'                                    || '':ADD:::P12_PRODUCT_ID:''',
'                                    || c1.itemcode',
'                                   )',
'          || ''" class="uButton uAltButton iconButton plus"><span>Add<i class="iR"></i></span></a></td></tr>''',
'         );',
'   END LOOP;',
'',
'   SYS.HTP.p (''</tbody></table>'');',
'   SYS.HTP.p (''</div>'');',
'--',
'-- display current order',
'--',
'   SYS.HTP.p (''<div class="demoProducts" >'');',
'   SYS.HTP.p',
'      (''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Current Order</th></tr>',
'</thead>',
'</table>',
'<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>''',
'      );',
'',
'   DECLARE',
'      c   NUMBER := 0;',
'      t   NUMBER := 0;',
'   BEGIN',
'-- loop over cart values',
'      FOR c1 IN (SELECT   c001 pid, c002 i, TO_NUMBER (c003) p,',
'                          COUNT (c002) q, SUM (c003) ep, ''Remove'' remove',
'                     FROM apex_collections',
'                    WHERE collection_name = ''ORDER''',
'                 GROUP BY c001, c002, c003',
'                 ORDER BY c002)',
'      LOOP',
'         SYS.HTP.p',
'            (   ''<div class="sideCartItem"><a href="''',
'             || apex_util.prepare_url',
'                      (   ''f?p=&APP_ID.:12:&SESSION.:REMOVE:::P12_PRODUCT_ID:''',
'                       || apex_escape.html (c1.pid)',
'                      )',
'             || ''"><img src="#IMAGE_PREFIX#delete.gif" alt="Remove from cart" title="Remove from cart" /></a>&nbsp;&nbsp;',
'    <a href="javascript:popUp2(''''''',
'             || apex_util.prepare_url (   ''f?p=&APP_ID.:20:''',
'                                       || :app_session',
'                                       || '':ADD:::P20_PRODUCT_ID:''',
'                                       || apex_escape.html (c1.pid)',
'                                      )',
'             || '''''',''''700'''',''''400'''');">''',
'             || apex_escape.html (c1.i)',
'             || ''</a>',
'    <span>''',
'             || TRIM (TO_CHAR (c1.p, ''$999G999G999D00''))',
'             || ''</span>',
'    <span>Quantity: ''',
'             || c1.q',
'             || ''</span>',
'    <span class="subtotal">Subtotal: ''',
'             || TRIM (TO_CHAR (c1.ep, ''$999G999G999D00''))',
'             || ''</span>',
'</div>''',
'            );',
'         c := c + 1;',
'         t := t + c1.ep;',
'      END LOOP;',
'',
'      SYS.HTP.p (''</tbody></table>'');',
'',
'      IF c > 0',
'      THEN',
'         SYS.HTP.p',
'                (   ''<div class="sideCartTotal">',
'    <p>Items: <span>''',
'                 || c',
'                 || ''</span></p>',
'    <p class="sideCartTotal">Total: <span>''',
'                 || TRIM (TO_CHAR (t, ''$999G999G999D00''))',
'                 || ''</span></p>',
'</div>''',
'                );',
'      ELSE',
'         SYS.HTP.p',
'                  (''<div class="alertMessage info" style="margin-top: 8px;">'');',
'         SYS.HTP.p (''<img src="#IMAGE_PREFIX#f_spacer.gif">'');',
'         SYS.HTP.p (''<div class="innerMessage">'');',
'         SYS.HTP.p (''<h3>Note</h3>'');',
'         SYS.HTP.p (''<p>You have no items in your current order.</p>'');',
'         SYS.HTP.p (''</div>'');',
'         SYS.HTP.p (''</div>'');',
'      END IF;',
'   END;',
'',
'   SYS.HTP.p (''</div>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7558193026514728508)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(4177696460720959350)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7558084344420550856)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(4177696460720959350)
,p_button_name=>'PLACE_ORDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Place Order'
,p_button_position=>'CREATE'
,p_button_condition=>'select 1 from apex_collections where collection_name = ''ORDER'''
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7575786806569679007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4177696460720959350)
,p_button_name=>'PREVIOUS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'leftarrow'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7558084529963550867)
,p_branch_action=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7558084344420550856)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7558193246252728514)
,p_branch_action=>'f?p=&FLOW_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7558193026514728508)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7575809495609959711)
,p_branch_action=>'P12_BRANCH'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_PAGE_IDENT_BY_ITEM'
,p_branch_when_button_id=>wwv_flow_api.id(7575786806569679007)
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-JUN-2010 13:36 by DPEAKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65076940233052896)
,p_name=>'P12_RANGELIST'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7575961909265191430)
,p_item_default=>'10'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Rangelist'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROWS'
,p_lov=>'.'||wwv_flow_api.id(4178633752779020502)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'REDIRECT_SET_VALUE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(65087222887440851)
,p_name=>'P12_ITEMCODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7575961909265191430)
,p_prompt=>'Itemcode'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select itemcode||''-''||itemdes1 d,itemcode r from nmitemas',
'where itemtype=''S''',
'order by 2'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629825263858320)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET_FILTER'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7558013437972208336)
,p_name=>'P12_CUSTOMER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7558009647622182805)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7558077538702511400)
,p_name=>'P12_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7575961909265191430)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7575809111754954928)
,p_name=>'P12_BRANCH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7575961909265191430)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7558015930138215547)
,p_computation_sequence=>10
,p_computation_item=>'P12_CUSTOMER_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRTYNAME  from sycompty',
'where  PARTYCDE= :P11_CUSTOMER_ID'))
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1381015308692433347)
,p_validation_name=>'Product must be selected'
,p_validation_sequence=>10
,p_validation=>'apex_collection.collection_member_count(''ORDER'') >= 1'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'At least one product must be added.'
,p_when_button_pressed=>wwv_flow_api.id(7558084344420550856)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(65088119628510978)
,p_name=>'change  on itmecode'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_ITEMCODE'
,p_condition_element=>'P12_ITEMCODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(65088424226510979)
,p_event_id=>wwv_flow_api.id(65088119628510978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7558218428049889777)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_order_id    varchar2(50);',
'    l_customer_id varchar2(30);',
'v_count number;',
'l_seq number;',
'begin',
'',
'    -- Create New Customer',
' /*   if :P11_CUSTOMER_OPTIONS = ''NEW'' then',
'        insert into DEMO_CUSTOMERS (',
'            CUST_FIRST_NAME,',
'            CUST_LAST_NAME,',
'            CUST_STREET_ADDRESS1,',
'            CUST_STREET_ADDRESS2,',
'            CUST_CITY,',
'            CUST_STATE,',
'            CUST_POSTAL_CODE,',
'            CUST_EMAIL,',
'            PHONE_NUMBER1,',
'            PHONE_NUMBER2,',
'            URL,',
'            CREDIT_LIMIT,',
'            TAGS)',
'          values (',
'            :P11_CUST_FIRST_NAME,',
'            :P11_CUST_LAST_NAME,',
'            :P11_CUST_STREET_ADDRESS1,',
'            :P11_CUST_STREET_ADDRESS2,',
'            :P11_CUST_CITY,',
'            :P11_CUST_STATE,',
'            :P11_CUST_POSTAL_CODE,',
'            :P11_CUST_EMAIL,',
'            :P11_PHONE_NUMBER1,',
'            :P11_PHONE_NUMBER2,',
'            :P11_URL,',
'            :P11_CREDIT_LIMIT,',
'            :P11_TAGS)',
'          returning customer_id into l_customer_id;',
'',
'          :P11_CUSTOMER_ID := l_customer_id;',
'    end if;*/',
'',
'    -- Insert a row into the Order Header table',
'  /*  insert into demo_orders(customer_id, order_total, order_timestamp, user_name)',
'       values(l_customer_id, null, systimestamp, upper(:APP_USER)) returning order_id into l_order_id;',
'    commit;*/',
'l_order_id :=demo_order_items_seq.nextval;',
'l_seq :=demo_order_items_seq.currval;',
'    -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'',
'    for x in (select c001,c002, c003, sum(c004) c004,c005 from apex_collections ',
'               where collection_name = ''ORDER'' group by c001,c002,c003,c005 )',
'    loop',
'            insert into apex_order_items1(order_item_id,ORDER_ID,ITEMDES1, itemcode, salerate, LUOMCODE) ',
'             values (l_order_id,null, x.c002, x.c001, to_number(x.c003),x.c005) returning order_item_id into l_order_id;',
'----EXIT WHEN x',
'         l_order_id :=demo_order_items_seq.nextval;',
'    end loop;',
'    commit;',
'',
'--select max(order_item_id) into l_order_id from apex_order_items1;',
'    -- Set the item P14_ORDER_ID to the order which was just placed',
'    :P52_ORDER_ID:= l_order_id-1;',
'',
'begin',
'for i in l_seq..l_order_id loop',
'update apex_order_items1',
'set ORDER_ID=l_order_id-1',
'where order_item_id =l_seq;',
'',
'l_seq:=l_seq+1;',
'end loop;',
'end;',
'',
'',
'    -- Truncate the collection after the order has been placed',
'  --  apex_collection.truncate_collection(p_collection_name => ''ORDER'');',
'  ',
' /* select c001',
'  into :P12_ITEMCODE',
'  from wwv_flow_collections',
'  where collection_name = ''ORDER'';*/',
'  ',
'exception',
'when no_data_found then',
'null;',
'when too_many_rows then',
'null;',
'when others then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(7558084344420550856)
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    for x in (select c001,c002, c003, sum(c004) c004 from apex_collections ',
'               where collection_name = ''ORDER'' group by c001,c002,c003)'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7558035046208305388)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Product to the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (select p.rowid, p.*',
'                  FROM nmitemas p',
'                 WHERE ITEMCODE= :P12_PRODUCT_ID )',
'loop',
'  select count(*) ',
'  into l_count',
'  from wwv_flow_collections',
'  where collection_name = ''ORDER''',
'  and c001 =  x.itemcode;',
'  if l_count >= 10 then',
'    exit;',
'  end if;',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.itemcode, ',
'    p_c002 => x.itemdes1,',
'    p_c003 => x.salerate,',
'    p_c004 => 1,',
'    p_c005 => x.LUOMCODE,',
'    p_c010 => x.rowid);',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7558054534621415579)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Product from the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for x in ',
'  (select seq_id, c001 from apex_collections ',
'    where collection_name = ''ORDER'' and c001 = :P12_PRODUCT_ID)',
'loop',
'apex_collection.delete_member(p_collection_name => ''ORDER'', p_seq => x.seq_id);',
'--htp.p(''removed an item'');',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
