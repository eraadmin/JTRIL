prompt --application/shared_components/plugins/process_type/nl_amis_scheffer_process_excel2collection
begin
--   Manifest
--     PLUGIN: NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>100100
,p_default_application_id=>100250
,p_default_id_offset=>0
,p_default_owner=>'ORBRGS'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(263127236781711859)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_display_name=>'Excel2Collection'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_PROC'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function parse_excel',
'  ( p_process apex_plugin.t_process',
'  , p_plugin apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_process_exec_result',
'is',
'  e_no_doc exception;',
'  t_rv apex_plugin.t_process_exec_result;',
'  t_time date := sysdate;',
'  t_what varchar2(100);',
'  t_file_id number;',
'  t_document blob;',
'  t_filename varchar2(32767);',
'  t_parse varchar2(32767);',
'  p_browse_item varchar2(32767);',
'  p_collection_name varchar2(32767);',
'  p_sheet_nrs varchar2(32767);',
'  p_separator varchar2(32767);',
'  p_enclosed_by varchar2(32767);',
'  p_encoding varchar2(32767);',
'  p_round varchar2(1);',
'  p_50 varchar2(1);',
'  t_x dbmsoutput_linesarray;',
'  t_pck_log varchar2(32767);',
'  t_package_found boolean := true;',
'--',
'  t_parse_bef varchar2(32767) :=',
'''H4sIAAAAAAAAC4VSzW7DIAy+8xQcWymqumxaD9X2KsgQjyI5gAzJ2rcfoelftG43''||',
'''G39/thAdGgJGkU8RZY7KIJF0STKawJ1YdZBB1eEIbA7A7eplLZqU2XmrRqDb+2u7''||',
'''e9+VmR96jVxn51I0RQXrw1SIRlPQtZ0Ksd5f3Tl8T+YZNKEMX7dAvsOj1CcZKSnn''||',
'''M1rkB1Za0qrSn6x0QMz3q3ro77Zst9ttWaZqzx73Sae7LD1nxd9dz4yZOfUmEKHJ''||',
'''LnilIeHyjgvIY7grZE7TFuRDGoh4VBAjOQOVb8ulgTajUcDcPgvZXsSqOz+V8ZNK''||',
'''xZj/MTx/g72IHAx2A6PsT4qCXUXVJ3tday1cEhqt86KKdqgHq3pMCSxuCv5Sn3lN''||',
'''VIQjkvz4lG/lGOi7/Q+Kyt//0AIAAA=='';',
'  t_parse_aft varchar2(32767) :=',
'''H4sIAAAAAAAAC+WWS2+bQBDH73yKPVQCGuyyD/Jw5EhV1WOqHnrpCeFlHSPxsHZx''||',
'''4kj+8N3dYWIcnERVj40iwX93hvnNgzXBSj1UbdDnsqtrJfuqa/NVYRRZLMnCruVt''||',
'''0ahbu18WfeEWt4U2Klps87KTib2YjVK9sXf7+DZonvO6e4hCb1Qm4eEAjnPZ7dr+''||',
'''cAgJmJO11WU48mi6x6p9IH1Hvr2ARCZ2JsVW7Ud4c6lV0au803mvd61098fdaJKJ''||',
'''jZp/uv/60z1q3WlSkaollMznZMwW1F23PS2Dy9xlPK3N4WBBc7kpdNTu6rpaR1VC''||',
'''42k2PlkSWvvKUixI6Bx90KiK5+75riQ2Z1+oV6HPZF6UZd6oZqX0O2kGyTaXaUqX''||',
'''d6ehhnXm1l+Fclutd6mCfyv4AN6zealq1fvJkXos5Iuo1qNi6O7JQCeimNyRNOg3''||',
'''yo2ldh2g0Dn9qnMvfnVhjg10tdGx9dIQDyU9F1HtK9ObSMcQzxrYkdZuOMmShL9D''||',
'''WHbB5RvBre8o/iSC2x6CyJgU9rmTfbsxd0t5/7xVLuyPELM/Y9nuXP/zx6J2lfGo''||',
'''0QeGCRUzs1uZ3pZmGNuPPMJf99/DOJlxN9XKUldruLosjyunhcnSoQnMPg3LLt0L''||',
'''82TTebcwLl8iu6JWRqoIYc9B2g37akFaiUjTNE7+Iqmb8APz0k23Ny7LWdPMnu0f''||',
'''2WyYWDTVwpgwjolNflwLPzNZurTTcr6/fjzsTGfpaJr2x3Fy71Q0pfFuMxqTL9Yz''||',
'''xvHWcCLpC3r73rDL/ecsvaCjDg0rLiLcjrrVPtZ4kDVdGcnEBkzsv738P32cTreq''||',
'''jXLloVAEV/kwPG6fNuPo/vapbaaH5ei0doFGhzSLGEruJUcpvBQoMy8zlJdeXqK8''||',
'''8vIK5bWX1yhvvLwZJE0BI0U9YCEXBS6KYBTAKJJRIKOIRgGNIhsFNopwFOAo0lGg''||',
'''o4hHAY8iHwM+hnwM+BjysaFuyMeAjyEfAz6GfAz4GPIx4GPIx4CPIR8DPoZ8DPgY''||',
'''8nHg48jHgY8jHwc+jnx8aCzyceDjyMeBjyMfBz6OfBz4OPJx4OPIx4GPI58APoF8''||',
'''AvgE8gngE8gngE8gnxgmD/kE8AnkE8AnkE8An0A+AXwC+QTwCeTLgC8Dvnb4iJF6''||',
'''UPDpIoOzP0mjTy9Vnv2OdO/7H0N8nHXvCgAA'';',
'  t_parse_csv varchar2(32767) :=',
'''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''||',
'''NvoHYPVsDAwWAAA='';',
'--',
'  t_parse_xml varchar2(32767) :=',
'''H4sIAAAAAAAAC6VWbY/TMAz+3l8R7UsT0fX2ggDtBAKBkJCADzAE36qudbewNKmS''||',
'''7F6k+/HY6cu64w7uYNLUNHbsx/bjuFF10IWXRrMmtw4i3mSlKQ41aM82ymyipMnc''||',
'''DsA7dpHbYpfbBVu9ZPqgFIngytuclZvamYNvDj5TUoPLrc2vBzURWfAHq5lH27nP''||',
'''I+kin5HxrHCyRKV6AzaoK5eRCwc+kyWP33xcLr6t37+IxTmeuKoVw7+/boBegyey''||',
'''ac2lo40AU1vWoBWpPWzB0jaKb28VRt3eusjVECBfLp4/ex58Il7IqtofZfPZTBDW''||',
'''uCyndT29xh/b7RZPV7VcORfTIX3MFV/06ohcu5cTzMPKFTuoczetZWGNM5WfFqZe''||',
'''maqSBaxcYyEvQywTFrObm6g9isYfebrFUobqUPJKU6f416YM+dPqLomSzrfSxZ/F''||',
'''y/vFG9hKHdXXmTJbHhOvpN6yH58+skvpd4wSkxceqMwhwpO667wGPqKHGGqPWezK''||',
'''PyJpMlYdswC1Z10CcDnGWud7ILB8vLkF35sEBfQ4EWu4xEevwQMg0ULT6ujAqcaa''||',
'''ApwzNnVop/DkyHGCkcRn343db4zZh0UAGidEF7RTGcskk5rNWJqyW8gU6K3fkRUl''||',
'''pvNIGdOcRjq8PJmfR7JinA1dK13bhWRfO295vAo5HxRwjVtJt+1NqAQfLIpOQbBX''||',
'''bPZQK79nA/vrAKY6Sar0UIegEimS+LVzq89Y/C4lJ25F5Heg237MeftIC3PQ/slc''||',
'''pESZu2vwaK/nA22pj1p23uG19SmGayhF6oOH/rpBLPO+if7KjfuxrfONgrMv5vKE''||',
'''JT8fwJLFiCYdIH2h+CMTtEh+dhn6oEu46lBESbAZif4mPUa7/MdoW0dvQamTSPcP''||',
'''iHQ5irQD8w+RLpP9PZGizTZSGhCP51hrGO2+Q+4MwWGH/o+dMwK6xnuwbxUcL7gP''||',
'''a4k87julwzv0swmzjAdBEtPYovFVlpP15Di+0slsNpvEIjlOPoQLeIfKaiA7D/UX''||',
'''PCRHpNQVGd3KYcx9je/Tw1sDx8CAixYjBoUF3V7kjOo56qWwuC37rSe5ECl9CrQn''||',
'''AoIj9OPJ/lsknAyC81/ltxh2BAkAAA=='';',
'--',
'  t_parse_xlsx varchar2(32767) :=',
'''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''||',
'''OCnQKAAA'';',
'--',
'  t_parse_xls varchar2(32767) :=',
'''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''||',
'''Zz4lW6vAiB+14b/8iQfI/wErDDLQpVQAAA=='';',
'--',
'  t_parse_html varchar2(32767) :=',
'''H4sIAAAAAAAAC9VXzW7jOAy++ym0e7GNOm28M9PJbJpeOpc97aEPYCi2khhQJEOS''||',
'''23QxDz+k/mLHTtEeN0Bii6Io8uMnUkl2vahNKwXpqNIsybqqkTXZcrlNiq7SB8ZM''||',
'''JRTpuK5aYdieKfL3hoiec5xnJ6MoabZHLXvT9abirWCaKkXfolqeKGZ6JYgB29TQ''||',
'''pNWJqWrGOUrwuYaxkq84hIcfaT/UOMZ1YT2OD+bISQ1O2kmmTSV3O80MGfhY4pxW''||',
'''dZiazNW6bcDF45YpHHIq9lUtQelkvBhVMbgKdrpt2I72POiZE655pUq0Yk/sx9u3''||',
'''pvsRZCjqpL4UGbqtmGguxRD0nBi0OatqYSYTalbazEl1R8WlrJZ8VnxARhjyQhW+''||',
'''/pWVy+UyXydbtm9F0u5IRhxZWu0SLdUZrD0znIm9OThC5WRDliMF3W+1UW62+FaU''||',
'''OfljQ9IvT/er71/vf94/pcAbc2AiksfnHoFpdzF9SDJw2/tatU3WG1615UrcHmkX''||',
'''5Fn6z/O/i9Xq249FmRZL2A3iiK7UilHDDDt2UlH1ljl6FUb1bKQmxQtTxkjknVfC''||',
'''MwABJEXUgu+RnnT7H0uKETVxeGZjUogXnrkgimWOk0P+4dhzK8kDoSDWViBo3sH0''||',
'''YSubtzQP7Joq+PA3qAMJc2qPZEkooOhGD8Qad1jHpIMln6AQp9W+WSUFZ1SbDL3H''||',
'''pLe7bLwlSZ1qDlEV1nTuYp3V/vNT2vD5jPrjjHa+sKLFKnGQfIQ8ERXHHCTqOHke''||',
'''u2Edmqs/o7rzQeJe7P3/oGM4o+FpqYdLgHoBrHM1AzvLte8It3jIK/PWMRSnz+k6''||',
'''4VJ2V3e0VlKfXNjw1BryChv4/bzlUGen6++sgcd5C2EZWiGXLg+GN2VoWdAjOBSS''||',
'''QVF2wb0fg3o3AAJVM6AXfbqagxDKzZdPWgP3o/eQr9HpdyYXZajSd2nIYmhVc8iq''||',
'''K7CGNdGbIBh6REYQhveI9BDo5sNAN58A2jsVauvHgUbtaM3V24G1GWixHFloR8j6''||',
'''EFzZLeP5gJVwCKsXysP9CnbncHHzrX3aAlxz35xDt6fRKp87gR0+uN2cB67Lny8H''||',
'''6Ius3LUo4+DFMVP29zIc1L5Z+TZhDRYzHQK1cizG+LJY5dgK0jQ8LKQ16/Bimlhc''||',
'''JTil4EqI7z5qhNOHPnAyToZbwgTH2XQCX5srfH03oWQ+MTPHx2c67hA9PBM4vEea''||',
'''Z0GSu2l3WXbl1If8SMpYUqeGot6iHJdlPCgjeCJDz45hRcvC0cuj2hUDg1qCRTwb''||',
'''FMj8VtCjq+hWRlLy69ewgs4vsn8Cwq56uG3wMba5nWKTCxyAPL07rn8DAB+QK/EM''||',
'''AAA='';',
'--',
'  cursor c_api( b_app_id number, b_page_id number, b_item_name varchar2, b_name varchar2 )',
'  is',
'    select api.attribute_01',
'         , rel.version_no apex_version',
'         , aap.display_name || '' version '' || aap.version_identifier plugin_version',
'    from apex_application_page_items api',
'       , apex_release rel',
'       , apex_appl_plugins aap',
'    where api.application_id = b_app_id',
'    and   api.page_id = b_page_id',
'    and   api.display_as_code = ''NATIVE_FILE''',
'    and   api.item_name = b_item_name',
'    and   aap.application_id (+) = b_app_id',
'    and   aap.name (+) = b_name;',
'  r_api c_api%rowtype;',
'--',
'  procedure log( p_msg varchar2, p_level number := 4 )',
'  is',
'  begin',
'--    apex_debug_message.error( p_msg );',
'    apex_debug_message.log_message( p_msg, p_level => p_level );',
'  end;',
'  function dc( p varchar2 ) return varchar2',
'  is',
'  begin',
'    return utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( p ) ) ) );',
'  end;',
'--',
'begin',
'  p_browse_item     := p_process.attribute_01;',
'  p_collection_name := p_process.attribute_02;',
'  p_sheet_nrs       := p_process.attribute_03;',
'  if upper( p_process.attribute_04 ) in ( ''HT'', ''^I'', ''\T'' )',
'  then',
'    p_separator := chr(9);',
'  elsif upper( p_process.attribute_04 ) in ( ''VT'', ''^K'', ''\V'' )',
'  then',
'    p_separator := chr(11);',
'  else',
'    p_separator := substr( ltrim( p_process.attribute_04 ), 1, 1 );',
'  end if;',
'  p_enclosed_by     := substr( ltrim( p_process.attribute_05 ), 1, 1 );',
'  p_encoding        := p_process.attribute_06;',
'  p_round := substr( ltrim( p_process.attribute_07 ), 1, 1 );',
'  p_50 := substr( ltrim( p_process.attribute_08 ), 1, 1 );',
'--',
'  open c_api( nv(''APP_ID''), nv(''APP_PAGE_ID''), upper( p_browse_item ), p_plugin.name );',
'  fetch c_api into r_api;',
'  if c_api%notfound',
'  then',
'    log( ''FILE BROWSE item '' || p_browse_item || '' not found'' );',
'  end if;',
'  close c_api;',
'  log( ''apex '' || r_api.apex_version || '', '' || r_api.plugin_version || '', '' || nls_charset_name( nls_charset_id( ''C'' ) ) );',
'  t_filename := apex_util.get_session_state(  p_browse_item );',
'  log( ''looking for uploaded file '' || t_filename || '' in '' || r_api.attribute_01 );',
'--',
'  begin',
'    if r_api.attribute_01 = ''WWV_FLOW_FILES''',
'    then',
'      select aaf.id',
'           , aaf.blob_content',
'      into t_file_id',
'         , t_document',
'      from apex_application_files aaf',
'      where aaf.name = t_filename;',
'--',
'      delete from apex_application_files aaf',
'      where aaf.id = t_file_id;',
'--',
'      log( ''retrieved!''  );',
'    elsif r_api.attribute_01 = ''APEX_APPLICATION_TEMP_FILES''',
'    then',
'      execute immediate ''select aaf.blob_content',
'                         from apex_application_temp_files aaf',
'                         where aaf.name = :fn''',
'      into t_document using t_filename;',
'--',
'      log( ''retrieved!''  );',
'    end if;',
'  exception',
'    when no_data_found',
'    then',
'      raise e_no_doc;',
'  end;',
'--',
'  if t_document is null or dbms_lob.getlength( t_document ) = 0',
'  then',
'    log( ''file is empty'' );',
'    return null;',
'  else',
'    log( ''file with length '' || dbms_lob.getlength( t_document ) || '' found '' );',
'  end if;',
'--',
'  if apex_collection.collection_exists( p_collection_name )',
'  then',
'    apex_collection.delete_collection( p_collection_name );',
'  end if;',
'  for i in 1 .. 10',
'  loop',
'    if apex_collection.collection_exists( p_collection_name || i )',
'    then',
'      apex_collection.delete_collection( p_collection_name || i );',
'    end if;',
'  end loop;',
'  apex_collection.create_or_truncate_collection( p_collection_name || ''_$MAP'' );',
'--',
'  log( '' try package'');',
'  begin',
'    execute immediate q''~',
'declare',
'  l_sheets excel2collection.tp_sheets;',
'  l_cnt pls_integer := 1;',
'  l_names apex_application_global.vc_arr2;',
'  l_values apex_application_global.vc_arr2;',
'begin',
'  excel2collection.set_blob(:d);',
'  for i in 1 .. 8',
'  loop',
'    l_names( i ) := '':p'' || i;',
'  end loop;',
'  l_values( 2 ) := :p2;',
'  l_values( 3 ) := :p3;',
'  l_values( 4 ) := :p4;',
'  l_values( 5 ) := :p5;',
'  l_values( 6 ) := :p6;',
'  l_values( 7 ) := :p7;',
'  l_values( 8 ) := :p8;',
'  l_sheets := excel2collection.get_sheets;',
'  for i in 1 .. l_sheets.count',
'  loop',
'    if ( :s is null',
'       or instr( '':'' || :s || '':'', '':'' || to_char( i ) || '':'' ) > 0',
'       or instr( '':'' || :s || '':'', '':'' || l_sheets( i ).name || '':'' ) > 0',
'       )',
'    then',
'      l_values( 1 ) := l_sheets( i ).id;',
'      apex_collection.create_collection_from_queryb2',
'        ( :c || case when l_cnt > 1 then l_cnt end',
'        , ''select * from table( excel2collection.get_content(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8 ) )''',
'        , l_names',
'        , l_values',
'        );',
'      apex_collection.add_member( :c || ''_$MAP''',
'                                , p_c001 => l_sheets( i ).name',
'                                , p_c002 => :c || case when l_cnt > 1 then l_cnt end',
'                                , p_n001 => l_cnt',
'                                );',
'      l_cnt := l_cnt + 1;',
'    end if;',
'    :w := l_sheets( i ).file_type;',
'  end loop;',
'  excel2collection.free_blob;',
'exception',
'  when others then',
'    :e := excel2collection.get_log;',
'end;~'' using t_document',
'           , 0   -- skip first # rows',
'           , ''Y'' -- skip empty rows',
'           , p_50',
'           , p_encoding',
'           , p_separator',
'           , p_enclosed_by',
'           , p_round',
'           , p_sheet_nrs',
'           , p_collection_name',
'           , out t_what',
'           , out t_pck_log;',
'  exception',
'    when others then',
'      log( t_pck_log, 1 );',
'      log( dbms_utility.format_error_backtrace, 1 );',
'      log( dbms_utility.format_error_stack, 1 );',
'      t_package_found := false;',
'  end;',
'--',
'  if t_package_found',
'  then',
'    log( ''package '' || t_pck_log || '' found, processed '' || t_what || '' in '' || trunc( ( sysdate - t_time ) * 24 * 60 * 60 ) || '' seconds'' );',
'    t_rv.success_message := ''Loaded a '' || t_what || '' in '' || to_char( trunc( ( sysdate - t_time ) * 24 * 60 * 60 ) ) || '' seconds'';',
'    return t_rv;',
'  end if;',
'--',
'  log( ''try old method'' );',
'  if dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''504B0304'' )',
'  then',
'    log( ''parsing XLSX'' );',
'    t_what := ''XLSX-file'';',
'    t_parse := dc( t_parse_xlsx );',
'  elsif dbms_lob.substr( t_document, 8, 1 ) = hextoraw( ''D0CF11E0A1B11AE1'' )',
'  then',
'    log( ''parsing XLS'' );',
'    t_what := ''XLS-file'';',
'    t_parse := dc( t_parse_xls );',
'  elsif dbms_lob.substr( t_document, 5, 1 ) = hextoraw( ''3C68746D6C'' )',
'  then',
'    log( ''parsing HTML'' );',
'    t_what := ''HTML-file'';',
'    t_parse := dc( t_parse_html );',
'  elsif (  dbms_lob.substr( t_document, 1, 1 ) = hextoraw( ''3C'' )',
'        or dbms_lob.substr( t_document, 2, 1 ) = hextoraw( ''003C'' )',
'        or dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''0000003C'' )',
'        )',
'  then',
'    log( ''parsing XML'' );',
'    t_what := ''XML-file'';',
'    t_parse := dc( t_parse_xml );',
'  else',
'    log( ''parsing CSV'' );',
'    t_what := ''CSV-file'';',
'    t_x := dbmsoutput_linesarray(p_separator, p_enclosed_by, p_encoding);',
'    t_parse := dc( t_parse_csv );',
'  end if;',
'  execute immediate dc( t_parse_bef ) || t_parse || dc( t_parse_aft ) using p_collection_name,t_document,p_sheet_nrs,t_x,p_round,p_50;',
'--',
'  t_rv.success_message := ''Loaded a '' || t_what || '' in '' || to_char( trunc( ( sysdate - t_time ) * 24 * 60 * 60 ) ) || '' seconds'';',
'  return t_rv;',
'exception',
'  when e_no_doc',
'  then',
'    t_rv.success_message := ''No uploaded document found'';',
'    return t_rv;',
'  when others',
'  then',
'    log( dbms_utility.format_error_stack, 1 );',
'    log( dbms_utility.format_error_backtrace, 1 );',
'    t_rv.success_message := ''Oops, something went wrong in '' || p_plugin.name ||',
'         ''<br/>'' || dbms_utility.format_error_stack || ''<br/><br/>'' ||',
'       dbms_utility.format_error_backtrace || ''<br/><br/>'' ||',
'         ''This could be caused by<ul>'' ||',
'           ''<li>'' || ''my (lack of) programming skills'' || ''</li>'' ||',
'           ''<li>'' || ''something else, people do a lot more with Apex than I ever could imagine''||',
'           ''</li></ul><br/>'' ||',
'           ''try running this plugin in debug mode, and send the debug messages to me, excel2collection@gmail.com'';',
'    return t_rv;',
'end;',
''))
,p_api_version=>1
,p_execution_function=>'parse_excel'
,p_substitute_attributes=>true
,p_reference_id=>71195480866837212
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'0.906'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'0.906',
'  changed email-address',
'0.904',
'  add version information to log',
'0.902',
'  use package excel2collection when available',
'  XLS: better support for BIFF5',
'0.823',
'  XLS: fix date during MULRK',
'0.822',
'  XLS: fix empty string results for formulas',
'  more than 50 columns ',
'0.821',
'  XLSX: fixed bug for numbers without a format',
'0.820',
'  Apex 5.0: Handle APEX_APPLICATION_TEMP_FILES',
'0.818',
'  XLS: fixed bug for unicode strings starting at CONTINUE record',
'0.816',
'  XLSX: treat numbers with "text" format as string',
'0.814',
'  XLS: performance',
'0.812',
'  XLS, XLSX: option to round number values',
'  XLS: fixed bug for Asian strings',
'0.810',
'  XLSX: skip empty nodes',
'  CSV: handle 1 line file',
'0.808',
'  Use dd-mm-yyyy hh24:mi:ss for date format',
'0.806',
'  save mapping between sheet name and collection name in <Collection name>_$MAP',
'  XLSX: also strings on 10.2 databases',
'        read formulas',
'  XLS: fix empty string results for formulas',
'       added standard data formats',
'  CSV: performance in case of wrong separator',
'0.804',
'  XLSX: Fix bug for formated strings',
'  CSV: Support for HT separator',
'0.802',
'  XLSX: Support for numbers in scientific notation',
'  XLSX: Fix bug for empty strings',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263127424085711957)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Browse Item'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The name of the File Browse Item which is used to select the uploaded Excel file.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263127776268711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Collection name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The name of the Collection in which the first sheet is placed.',
'<br/>Eventually, other sheets are placed in Colections with a sequence number attached to this name: <br/>',
'<br/>&lt;Collection name&gt;2',
'<br/>&lt;Collection name&gt;3',
'<br/>&lt;Collection name&gt;4'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263128114046711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Sheets'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A colon separated list of sheets which should loaded.',
'<br/>When left empty all sheets are loaded.<br/>',
'A sheet is identified by its name or positional number.',
'<br/><br/>For instance',
'<br/>',
'&nbsp;&nbsp;1:3 will load the first and the third sheet<br/>',
'&nbsp;&nbsp;Sheet1:Sheet2 will load the sheets with the names "Sheet1" and  "Sheet2"'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263128558301711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'CSV Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>';'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The column separator character used for CSV-files.<br/>',
'Use \t, ^I or HT for a (horizontal) tab character.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263128975066711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'CSV Enclosed By'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'"'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A delimiter character used for CSV-files. This character is used to delineate the starting and ending boundary of a data value.',
'The default value is ".',
'The same character is used as the escape character.'))
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
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263129327071711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'CSV Character set'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The character set used for loading a CSV file.',
'<br/>When left empty the database character set is used.',
'<br/>Use the Oracle name for the character set, for instance WE8MSWIN1252 and not Windows-1252'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263129765474711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Round Excel numbers'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Excel has a numerical precision of 15 digits. When this option is used numbers are rounded to 15 digits.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(263130139334711989)
,p_plugin_id=>wwv_flow_api.id(263127236781711859)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Load more than 50 columns'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Load more than 50 columns. Because we can store only 50 varchar2 columns in a APEX collection, columns above 50 are loaded in a second row. Attribute N001 stores the row number, attribute N002 stores the column number of C001.'
);
wwv_flow_api.component_end;
end;
/
