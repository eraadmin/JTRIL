prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_tab_set=>'TS1'
,p_name=>'Enter New Salse'
,p_step_title=>'Enter New Salse'
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
,p_last_upd_yyyymmddhh24miss=>'20161006140743'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(61135342938686982)
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
 p_id=>wwv_flow_api.id(61135518815686983)
,p_plug_name=>'buttons'
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
 p_id=>wwv_flow_api.id(61136313843686985)
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
 p_id=>wwv_flow_api.id(61136740920686985)
,p_plug_name=>'Select Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'begin',
'--',
'-- display customer information',
'--',
'sys.htp.p(''<div class="demoCustomerInfo">'');',
'if :P11_CUSTOMER_OPTIONS = ''EXISTING'' then',
'  for x in (select * from demo_customers where customer_id = l_customer_id) loop',
'    sys.htp.p(''<div class="demoCustomerInfo">'');',
'    sys.htp.p(''<strong>Customer:</strong>'');',
'    sys.htp.p(''<p>'');',
'    sys.htp.p(apex_escape.html(x.cust_first_name) || '' '' ||',
'    apex_escape.html(x.cust_last_name) || ''<br />'');',
'    sys.htp.p(apex_escape.html(x.cust_street_address1) || ''<br />'');',
'    if x.cust_street_address2 is not null then',
'      sys.htp.p(apex_escape.html(x.cust_street_address2) || ''<br />'');',
'    end if;',
'    sys.htp.p(apex_escape.html(x.cust_city) || '', '' ||',
'    apex_escape.html(x.cust_state) || ''  '' ||',
'    apex_escape.html(x.cust_postal_code));',
'    sys.htp.p(''</p>'');',
'  end loop;',
'else',
'  sys.htp.p(''<strong>Customer:</strong>'');',
'  sys.htp.p(''<p>'');',
'  sys.htp.p(apex_escape.html(:P11_CUST_FIRST_NAME) || '' '' || apex_escape.html(:P11_CUST_LAST_NAME) || ''<br />'');',
'  sys.htp.p(apex_escape.html(:P11_CUST_STREET_ADDRESS1) || ''<br />'');',
'  if :P11_CUST_STREET_ADDRESS2 is not null then',
'    sys.htp.p(apex_escape.html(:P11_CUST_STREET_ADDRESS2) || ''<br />'');',
'  end if;',
'  sys.htp.p(apex_escape.html(:P11_CUST_CITY) || '', '' ||',
'  apex_escape.html(:P11_CUST_STATE) || ''  '' ||',
'  apex_escape.html(:P11_CUST_POSTAL_CODE));',
'  sys.htp.p(''</p>'');',
'end if;',
'sys.htp.p(''</div>'');',
'--',
'-- display products',
'--',
'sys.htp.p(''<div class="demoProducts" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Product</th><th>Price</th><th></th></tr>',
'</thead>',
'<tbody>'');',
'for c1 in (select product_id, product_name,  list_price, ''Add to Cart'' add_to_order',
'from demo_product_info',
'where product_avail = ''Y''',
'order by product_name) loop',
'   sys.htp.p(''<tr><td class="left"><a href="javascript:popUp2(''''''||apex_util.prepare_url(''f?p=&APP_ID.:20:''||:app_session||'':ADD:::P20_PRODUCT_ID:''||',
'        apex_escape.html(c1.product_id))||'''''',''''700'''',''''400'''');">'' || apex_escape.html(c1.product_name)||''</a></td><td>''||trim(to_char(c1.list_price,''999G999G990D00''))||',
'        ''</td><td><a href="''||apex_util.prepare_url(''f?p=&APP_ID.:12:''||:app_session||'':ADD:::P43_PRODUCT_ID:''||',
'        c1.product_id)||''" class="uButton uAltButton iconButton plus"><span>Add<i class="iR"></i></span></a></td></tr>'');',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'sys.htp.p(''</div>'');',
'--',
'-- display current order',
'--',
'sys.htp.p(''<div class="demoProducts" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Current Order</th></tr>',
'</thead>',
'</table>',
'<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>'');',
'',
'declare',
'    c number := 0; t number := 0;',
'begin',
'-- loop over cart values',
'for c1 in (select c001 pid, c002 i, to_number(c003) p, count(c002) q, sum(c003) ep,  ''Remove'' remove',
'from apex_collections',
'where collection_name = ''ORDER''',
'group by c001, c002, c003',
'order by c002)',
'loop',
'sys.htp.p(''<div class="sideCartItem"><a href="''||',
'    apex_util.prepare_url(''f?p=&APP_ID.:12:&SESSION.:REMOVE:::P43_PRODUCT_ID:''||apex_escape.html(c1.pid))||',
'    ''"><img src="#IMAGE_PREFIX#delete.gif" alt="Remove from cart" title="Remove from cart" /></a>&nbsp;&nbsp;',
'    <a href="javascript:popUp2(''''''||apex_util.prepare_url(''f?p=&APP_ID.:20:''||:app_session||'':ADD:::P20_PRODUCT_ID:''||',
'        apex_escape.html(c1.pid))||'''''',''''700'''',''''400'''');">''||apex_escape.html(c1.i)||''</a>',
'    <span>''||trim(to_char(c1.p,''$999G999G999D00''))||''</span>',
'    <span>Quantity: ''||c1.q||''</span>',
'    <span class="subtotal">Subtotal: ''||trim(to_char(c1.ep,''$999G999G999D00''))||''</span>',
'</div>'');',
'   c := c + 1;',
'   t := t + c1.ep;',
'',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'',
'if c > 0 then',
'    sys.htp.p(''<div class="sideCartTotal">',
'    <p>Items: <span>''||c||''</span></p>',
'    <p class="sideCartTotal">Total: <span>''||trim(to_char(t,''$999G999G999D00''))||''</span></p>',
'</div>'');',
'else',
'   sys.htp.p(''<div class="alertMessage info" style="margin-top: 8px;">'');',
'   sys.htp.p(''<img src="#IMAGE_PREFIX#f_spacer.gif">'');',
'   sys.htp.p(''<div class="innerMessage">'');',
'   sys.htp.p(''<h3>Note</h3>'');',
'   sys.htp.p(''<p>You have no items in your current order.</p>'');',
'   sys.htp.p(''</div>'');',
'   sys.htp.p(''</div>'');',
'end if;',
'end;',
'sys.htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61135721780686983)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(61135518815686983)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630349880858335)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(61135925281686983)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(61135518815686983)
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
 p_id=>wwv_flow_api.id(61136145142686983)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(61135518815686983)
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
 p_id=>wwv_flow_api.id(61138637863686990)
,p_branch_action=>'f?p=&FLOW_ID.:14:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61135925281686983)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61138819487686990)
,p_branch_action=>'f?p=&FLOW_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(61135721780686983)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(61139025899686990)
,p_branch_action=>'P43_BRANCH'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_PAGE_IDENT_BY_ITEM'
,p_branch_when_button_id=>wwv_flow_api.id(61136145142686983)
,p_branch_sequence=>30
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-JUN-2010 13:36 by DPEAKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(61136536704686985)
,p_name=>'P43_CUSTOMER_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(61136313843686985)
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
 p_id=>wwv_flow_api.id(61136924903686987)
,p_name=>'P43_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(61136740920686985)
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
 p_id=>wwv_flow_api.id(61137127051686987)
,p_name=>'P43_BRANCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(61136740920686985)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_cAttributes=>'nowrap="nowrap"'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(61137629403686988)
,p_computation_sequence=>10
,p_computation_item=>'P43_CUSTOMER_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select CUSTNAME from nmcusmas where CUSTMRID = :P25_CUSTOMER_ID'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(61137823152686988)
,p_validation_name=>'Product must be selected'
,p_validation_sequence=>10
,p_validation=>'apex_collection.collection_member_count(''ORDER'') >= 1'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'At least one product must be added.'
,p_when_button_pressed=>wwv_flow_api.id(61135925281686983)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61137920541686988)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_order_id    number;',
'    l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'begin',
'',
'    -- Create New Customer',
'    if :P11_CUSTOMER_OPTIONS = ''NEW'' then',
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
'    end if;',
'',
'    -- Insert a row into the Order Header table',
'    insert into demo_orders(customer_id, order_total, order_timestamp, user_name)',
'       values(l_customer_id, null, systimestamp, upper(:APP_USER)) returning order_id into l_order_id;',
'    commit;',
'',
'    -- Loop through the ORDER collection and insert rows into the Order Line Item table',
'    for x in (select c001, c003, sum(c004) c004 from apex_collections ',
'               where collection_name = ''ORDER'' group by c001, c003)',
'    loop',
'        insert into demo_order_items(order_item_id, order_id, product_id, unit_price, quantity) ',
'             values (null, l_order_id, to_number(x.c001), to_number(x.c003),to_number(x.c004));',
'    end loop;',
'    commit;',
'',
'    -- Set the item P14_ORDER_ID to the order which was just placed',
'    :P14_ORDER_ID := l_order_id;',
'',
'    -- Truncate the collection after the order has been placed',
'    apex_collection.truncate_collection(p_collection_name => ''ORDER'');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(61135925281686983)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61138145066686990)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Product to the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (select p.rowid, p.* from demo_product_info p where product_id = :P43_PRODUCT_ID)',
'loop',
'  select count(*) ',
'  into l_count',
'  from wwv_flow_collections',
'  where collection_name = ''ORDER''',
'  and c001 =  x.product_id;',
'  if l_count >= 10 then',
'    exit;',
'  end if;',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.product_id, ',
'    p_c002 => x.product_name,',
'    p_c003 => x.list_price,',
'    p_c004 => 1,',
'    p_c010 => x.rowid);',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(61138321133686990)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Product from the ORDER Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for x in ',
'  (select seq_id, c001 from apex_collections ',
'    where collection_name = ''ORDER'' and c001 = :P43_PRODUCT_ID)',
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
