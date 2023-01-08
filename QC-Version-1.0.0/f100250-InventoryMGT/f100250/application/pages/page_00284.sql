prompt --application/pages/page_00284
begin
--   Manifest
--     PAGE: 00284
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
 p_id=>284
,p_user_interface_id=>wwv_flow_api.id(1581890319240888879)
,p_name=>'IP javascript'
,p_step_title=>'javascript'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).ready(function(){',
'var sql = ign.sql();',
'var driver = sql.driver("sqlite","peserta.sqlite");',
'var qry = sql.query("select * from syparmas");',
'',
'if(driver){',
'    //$(".json").html(JSON.stringify(qry));',
'    var query = qry;',
'    var html = "";',
'',
'    $("p").html("orbrgs/orbrgs@orbrgs"+query.status);',
'    if(query.status){',
'',
'         $.each(query.content,function(data){',
'            html += "<td>"+this.no+"</td>";',
'            html += "<td>"+this.nama+"</td>";',
'            html += "<td>"+this.alamat+"</td>";',
'        });',
'    }',
'',
'    $(".data").html(html);',
'}',
'    ',
' /**',
' * Get the user IP throught the webkitRTCPeerConnection',
' * @param onNewIP {Function} listener function to expose the IP locally',
' * @return undefined',
' */',
'function getUserIP(onNewIP) { //  onNewIp - your listener function for new IPs',
'    //compatibility for firefox and chrome',
'    var myPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;',
'    var pc = new myPeerConnection({',
'        iceServers: []',
'    }),',
'    noop = function() {},',
'    localIPs = {},',
'    ipRegex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/g,',
'    key;',
'',
'    function iterateIP(ip) {',
'        if (!localIPs[ip]) onNewIP(ip);',
'        localIPs[ip] = true;',
'    }',
'',
'     //create a bogus data channel',
'    pc.createDataChannel("");',
'',
'    // create offer and set local description',
'    pc.createOffer().then(function(sdp) {',
'        sdp.sdp.split(''\n'').forEach(function(line) {',
'            if (line.indexOf(''candidate'') < 0) return;',
'            line.match(ipRegex).forEach(iterateIP);',
'        });',
'        ',
'        pc.setLocalDescription(sdp, noop, noop);',
'    }).catch(function(reason) {',
'        // An error occurred, so handle the failure to connect',
'    });',
'',
'    //listen for candidate events',
'    pc.onicecandidate = function(ice) {',
'        if (!ice || !ice.candidate || !ice.candidate.candidate || !ice.candidate.candidate.match(ipRegex)) return;',
'        ice.candidate.candidate.match(ipRegex).forEach(iterateIP);',
'    };',
'}',
'',
'// Usage',
'',
'getUserIP(function(ip){',
'    alert("Got IP! :" + ip);',
'});',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GADMIN'
,p_last_upd_yyyymmddhh24miss=>'20180716164232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46789013787257727)
,p_plug_name=>'r'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(47588528672858186)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'    <head>',
'        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
'    </head>',
'    <body>',
'        <h4>',
'            Demo for:',
'            <a href="https://github.com/diafygi/webrtc-ips">',
'                https://github.com/diafygi/webrtc-ips',
'            </a>',
'        </h4>',
'        <p>',
'            This demo secretly makes requests to STUN servers that can log your',
'            request. These requests do not show up in developer consoles and',
'            cannot be blocked by browser plugins (AdBlock, Ghostery, etc.).',
'        </p>',
'        <h4>Your local IP addresses:</h4>',
'        <ul></ul>',
'        <h4>Your public IP addresses:</h4>',
'        <ul></ul>',
'        <h4>Your IPv6 addresses:</h4>',
'        <ul></ul>',
'        <iframe id="iframe" sandbox="allow-same-origin" style="display: none"></iframe>',
'        <script>',
'        /**',
' * Get the user IP throught the webkitRTCPeerConnection',
' * @param onNewIP {Function} listener function to expose the IP locally',
' * @return undefined',
' */',
'function getUserIP(onNewIP) { //  onNewIp - your listener function for new IPs',
'    //compatibility for firefox and chrome',
'    var myPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;',
'    var pc = new myPeerConnection({',
'        iceServers: []',
'    }),',
'    noop = function() {},',
'    localIPs = {},',
'    ipRegex = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/g,',
'    key;',
'',
'    function iterateIP(ip) {',
'        if (!localIPs[ip]) onNewIP(ip);',
'        localIPs[ip] = true;',
'    }',
'',
'     //create a bogus data channel',
'    pc.createDataChannel("");',
'',
'    // create offer and set local description',
'    pc.createOffer().then(function(sdp) {',
'        sdp.sdp.split(''\n'').forEach(function(line) {',
'            if (line.indexOf(''candidate'') < 0) return;',
'            line.match(ipRegex).forEach(iterateIP);',
'        });',
'        ',
'        pc.setLocalDescription(sdp, noop, noop);',
'    }).catch(function(reason) {',
'        // An error occurred, so handle the failure to connect',
'    });',
'',
'    //listen for candidate events',
'    pc.onicecandidate = function(ice) {',
'        if (!ice || !ice.candidate || !ice.candidate.candidate || !ice.candidate.candidate.match(ipRegex)) return;',
'        ice.candidate.candidate.match(ipRegex).forEach(iterateIP);',
'    };',
'}',
'',
'// Usage',
'',
'getUserIP(function(ip){',
'    //alert("Got IP! :" + ip);',
'    $s("P284_NEW_1",ip);',
'});',
'',
'        </script>',
'    </body>',
'</html>',
''))
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44823350279976624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46789013787257727)
,p_button_name=>'clear'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(47630389996858357)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:284:&SESSION.::&DEBUG.:RP,284::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44822978903976620)
,p_name=>'P284_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46789013787257727)
,p_prompt=>'Sys Package'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44823239228976623)
,p_name=>'P284_NEW_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46789013787257727)
,p_prompt=>'Javascript'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(47629908389858329)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44822763595976618)
,p_name=>'New'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44822849780976619)
,p_event_id=>wwv_flow_api.id(44822763595976618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.RTCPeerConnection = window.RTCPeerConnection || window.mozRTCPeerConnection || window.webkitRTCPeerConnection;//compatibility for Firefox and chrome',
'var pc = new RTCPeerConnection({iceServers:[]}), noop = function(){};      ',
'pc.createDataChannel('''');//create a bogus data channel',
'pc.createOffer(pc.setLocalDescription.bind(pc), noop);// create offer and set local description',
'pc.onicecandidate = function(ice)',
'{',
' if (ice && ice.candidate && ice.candidate.candidate)',
' {',
'  var myIP = /([0-9]{1,3}(\.[0-9]{1,3}){3}|[a-f0-9]{1,4}(:[a-f0-9]{1,4}){7})/.exec(ice.candidate.candidate)[1];',
'  console.log(''my IP: '', myIP);   ',
'  pc.onicecandidate = noop;',
' }',
'};',
'alert(myIP);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44823068931976621)
,p_name=>'New_1'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44823115142976622)
,p_event_id=>wwv_flow_api.id(44823068931976621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select OWA_UTIL.get_cgi_env(''REMOTE_ADDR'') into :P284_NEW from dual;',
'end;'))
,p_attribute_03=>'P284_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
