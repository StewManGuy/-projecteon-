-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if Config.Language ~= 'hi' then return end

Strings = {

    possible_cause = 'संभावित कारण',

    full_name = 'नाम',
    pulse = 'नाड़ी',
    bpm = 'BPM: %s',
    bleed_rate = 'रक्तस्राव दर',
    bleed_rate_low = 'कम',
    bleed_rate_medium = 'मध्यम',
    bleed_rate_high = 'अधिक',
    no_name = 'कोई नाम नहीं',
    injuries = 'वर्तमान चोटें',


    get_off_stretcher_ui = '[E] - स्ट्रेचर से उतरें',
    move = 'हिलाएँ',
    move_desc = 'स्ट्रेचर को हिलाएँ',
    put_in_vehicle = 'वाहन में रखें',
    stretcher_in_vehicle = 'स्ट्रेचर वाहन में रखें',
    put_in_vehicle_desc = 'स्ट्रेचर को वाहन में रखें',
    place_on_stretcher = 'मरीज को स्ट्रेचर पर रखें',
    place_on_stretcher_desc = 'मरीज को स्ट्रेचर पर रखें',
    remove_from_stretcher = 'मरीज को स्ट्रेचर से हटाएं',
    remove_from_stretcher_desc = 'मरीज को स्ट्रेचर से हटाएं',
    not_found = 'नहीं मिला',
    already_occupied_ambulance = 'पहले से व्यस्त',
    already_occupied_ambulance_desc = 'यह एम्बुलेंस पहले से ही व्यस्त है!',
    already_occupied_stretcher = 'पहले से व्यस्त',
    already_occupied_stretcher_desc = 'यह स्ट्रेचर पहले से ही व्यस्त है!',
    vehicle_occupied = 'वाहन व्यस्त है',
    vehicle_occupied_desc = 'किसी के ड्राइविंग करते समय यह नहीं किया जा सकता!',
    not_occupied_stretcher = 'खाली है',
    not_occupied_stretcher_desc = 'यह स्ट्रेचर खाली है!',
    stretcher_placement_blocked = 'स्थापना अवरुद्ध',
    stretcher_placement_blocked_desc = 'आप यहां स्ट्रेचर नहीं रख सकते!',
    knocked_out = 'नॉक आउट',
    knocked_out_desc = 'आप नॉक आउट हो गए हैं!',
    checkin_cooldown = 'चेक-इन ठंडा करना',
    checkin_cooldown_desc = 'आप बहुत जल्दी चेक-इन करने का प्रयास कर रहे हैं, कृपया थोड़ा इंतजार करें।',
    checkingin_progress = 'चेक-इन प्रगति पर...',
    remove_dead_target = 'बेहोश व्यक्ति को हटाएं',
    ply_injury_head = 'सिर',
    ply_injury_neck = 'गर्दन',
    ply_injury_spine = 'रीढ़',
    ply_injury_upper = 'ऊपरी शरीर',
    ply_injury_lower = 'निचला शरीर',
    ply_injury_left_arm = 'बाएँ हाथ',
    ply_injury_left_leg = 'बायाँ पैर',
    ply_injury_right_arm = 'दायाँ हाथ',
    ply_injury_right_leg = 'दायाँ पैर',
    diagnosing_patient_progress = 'रोगी का निदान कर रहे हैं...',
    treating_patient_progress = 'रोगी का उपचार कर रहे हैं...',
    recovering_progress = 'स्वस्थ हो रहे हैं...',
    injury_report = 'चोट की रिपोर्ट',
    none = 'कोई नहीं',
    mild = 'हल्का',
    moderate = 'मध्यम',
    severe = 'गंभीर',
    deadly = 'जानलेवा',
    injury_report_locations = 'स्थान',
    injury_report_type = 'चोट का प्रकार: %s',
    injury_report_severity = 'गंभीरता: %s',
    injury_report_bleed = 'रक्तस्राव',
    light_injury_title = 'हल्की चोट',
    moderate_injury_title = 'मध्यम चोट',
    extreme_injury_title = 'अत्यंत चोट',
    injury_bleed_notify = 'चोट और रक्तस्राव की सूचना',
    light_injury_desc = 'आपका %s घायल हो गया है, डॉक्टर के पास जाने पर विचार करें!',
    moderate_injury_desc = 'आपका %s बहुत अधिक घायल है, आपको डॉक्टर की जरूरत है!',
    extreme_injury_desc = 'आपका %s अत्यधिक घायल है। देर होने से पहले डॉक्टर के पास जाएं!',
    injury_msg_one = 'आपको एक महत्वपूर्ण चोट लगी है।',
    injury_msg_two = 'आपको एक गंभीर चोट लगी है।',
    injury_msg_three = 'आपको एक बहुत गंभीर चोट लगी है।',
    injury_msg_four = 'आपको एक महत्वपूर्ण चोट लगी है।',
    bleed_msg_one = 'आप खून बहा रहे हैं।',
    bleed_msg_two = 'आप बुरी तरह खून बहा रहे हैं। कुछ दबाव लगाएं।',
    bleed_msg_three = 'आप खून से बह जाएंगे!',
    fainted_title = 'बेहोश',
    fainted_so_high_desc = 'आप बहुत ऊंचाई पर होने के कारण बेहोश हो गए।',
    cant_jump_title = 'कूद नहीं सकते!',
    cant_jump_desc = 'आप इतने घायल हैं कि कूदने की कोशिश नहीं कर सकते',
    blackout_title = 'होश खो दिया',
    blackout_desc = 'आपने अपनी %s चोट के कारण होश खो दिया! तुरंत चिकित्सीय सहायता लें!',
    treated_fully_desc = 'आपका इलाज हो चुका है और आप पहले से भी बेहतर महसूस कर रहे हैं!',
    treated_not_fully_desc = 'आपका इलाज हो चुका है लेकिन आपको और इलाज की आवश्यकता है।',
    prescription_menu = 'पर्चे का मेनू',
    prescription_menu_desc = 'पर्चे तक पहुँचें और प्रबंधन करें',
    no_stretcher_detected = 'स्ट्रेचर नहीं पाया गया',
    no_stretcher_detected_desc = 'कोई सक्रिय स्ट्रेचर नहीं पाया गया!',
    cant_run = 'तेज नहीं दौड़ सकते',
    cant_run_desc = 'आप इतने घायल हैं कि तेज दौड़ नहीं सकते!',
    no_back_seat = 'कोई पिछली सीट उपलब्ध नहीं',
    no_back_seat_desc = 'इस एम्बुलेंस के पीछे कोई सीट नहीं है',
    enter_vehicle_back = 'एम्बुलेंस में प्रवेश करें (पीछे से)',
    stretcher_already_deployed = 'स्ट्रेचर पहले ही तैनात किया जा चुका है',
    stretcher_already_deployed_desc = 'इस एम्बुलेंस के लिए आवंटित स्ट्रेचर पहले ही निकाला जा चुका है।',
    send_stretcher_home = 'वाहन पर वापस लौटें',
    ambulance_not_found = 'स्ट्रेचर निकाला गया लेकिन वापस लौटने के लिए एम्बुलेंस नहीं मिली!',
    bleedout = 'रक्तस्राव',
    player_injury_critical_desc = 'खिलाड़ी %s घाव के कारण गंभीर स्थिति में है!',
    gps_active = 'GPS सक्रिय',
    gps_active_desc = 'खिलाड़ी %s ने उनका GPS सक्रिय किया है',
    gps_deactive = 'GPS निष्क्रिय',
    gps_deactive_desc = 'खिलाड़ी %s ने उनका GPS निष्क्रिय किया है',
    no_wsb = '^0[^3चेतावनी^0] wasabi_bridge फ्रेमवर्क के बाद और/या संसाधन से पहले शुरू नहीं किया गया था: %s',
    spawn_blocked = 'गैराज अवरुद्ध',
    spawn_blocked_desc = 'आप अपने वाहन को नहीं निकाल सकते क्योंकि यह अवरुद्ध है!',
    menu_remove_crutch = 'बैसाखी हटाएं',

    menu_remove_crutch_desc = 'नजदीकी मरीज से बैसाखी हटाएं',
    menu_remove_chair = 'व्हीलचेयर हटाएं',
    menu_remove_chair_desc = 'नजदीकी मरीज से व्हीलचेयर हटाएं',
    toggle_stretcher = 'स्ट्रेचर लें',
    toggle_stretcher_desc = 'नजदीकी वाहन से स्ट्रेचर लें',
    no_vehicle_nearby = 'वाहन',
    no_vehicle_nearby_desc = 'पास कोई वाहन नहीं है',
    no_ambulance_nearby_desc = 'पास कोई एम्बुलेंस नहीं है',
    on_duty = 'ड्यूटी पर',
    on_duty_desc = 'आपने अभी ड्यूटी पर स्विच किया है!',
    off_duty = 'ड्यूटी से बाहर',
    off_duty_desc = 'आपने अभी ड्यूटी से बाहर स्विच किया है!',
    amount = 'राशि',
    mr = 'श्रीमान',
    mrs = 'श्रीमती',
    debt_collection = 'ऋण संग्रहण',
    db_email =
    'प्रिय %s %s, <br /><br />केंद्रीय न्यायिक संग्रहण एजेंसी (CJCA) ने पुलिस से प्राप्त आपके जुर्माने वसूले हैं।<br />आपके खाते से <strong>$%s</strong> कटौती की गई है।<br /><br />सादर,<br />श्री वसाबी',
    fine_sent = 'जुर्माना भेजा गया',
    fine_sent_desc = 'आपने सफलतापूर्वक $%s का जुर्माना भेजा है!',
    fine_received = 'जुर्माना प्राप्त हुआ',
    fine_received_desc = 'आपको $%s का जुर्माना प्राप्त हुआ है',
    log_killed_title = 'खिलाड़ी मारा गया',
    log_killed_desc =
    '> *%s [%s] ने %s [%s] को मार डाला\n\n**हत्यारे की जानकारी:**\nनाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n**पीड़ित की जानकारी:**\nकैरेक्टर नाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n> **मौत का कारण:** `%s`',
    log_suicide_title = 'खिलाड़ी ने आत्महत्या की',
    log_suicide_desc =
    '> %s [%s] ने आत्महत्या कर ली\n\n**खिलाड़ी की जानकारी:**\nनाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n> **मौत का कारण:** `%s`',
    unknown = 'अज्ञात',
    log_admin_revive_title = 'खिलाड़ी को एडमिन ने पुनर्जीवित किया',
    log_admin_revive_desc =
    '> *%s [%s] ने %s [%s] को एडमिन द्वारा पुनर्जीवित किया\n\n**लक्ष्य की जानकारी:**\nनाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n**एडमिन की जानकारी:**\nकैरेक्टर नाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||',
    log_self_revive_title = 'एडमिन ने स्वयं को पुनर्जीवित किया',
    log_self_revive_desc =
    '> %s [%s] ने स्वयं को पुनर्जीवित किया\n\n**खिलाड़ी की जानकारी:**\nनाम: `%s`\nखिलाड़ी आईडी: `%s`\nपहचानकर्ता: `%s`\nSteam: `%s`\nDiscord: `%s`\nलाइसेंस: `%s`\nलाइसेंस2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||',
    log_death_logs = 'मृत्यु लॉग्स',
    log_revive_logs = 'पुनर्जीवन लॉग्स',
    medbag_crutch = 'बैसाखी',
    medbag_crutch_desc = 'चलने में मरीजों की मदद के लिए बैसाखी',
    menu_crutch = 'बैसाखी लगाएं',
    menu_crutch_desc = 'नजदीकी मरीज को बैसाखी लगाएं',
    medbag_chair = 'व्हीलचेयर',
    medbag_chair_desc = 'चलने में असमर्थ मरीजों के लिए व्हीलचेयर',
    menu_chair = 'व्हीलचेयर लगाएं',
    menu_chair_desc = 'नजदीकी मरीज को व्हीलचेयर लगाएं',
    shot = 'गोली लगना',
    stabbed = 'छुरा घोंपना',
    beat = 'मारपीट',
    burned = 'जलना',
    other = 'अज्ञात',
    JobMenuTitle = 'ईएमएस मेनू',
    dispatch = 'डिस्पैच',
    dispatch_desc = 'मदद की ज़रूरत वाले खिलाड़ियों की तलाश करें',
    DispatchMenuTitle = 'डिस्पैच',
    GoBack = 'वापस जाएं',
    key_map_text = 'एम्बुलेंस जॉब मेनू',
    assistance_title = 'सहायता का अनुरोध',
    assistance_desc = 'किसी व्यक्ति ने मेडिकल सहायता का अनुरोध किया है!',
    respawn_available_in = 'पुनर्जीवन उपलब्ध है ~r~%s मिनट %s सेकंड~s~ में\n',
    respawn_bleedout_in = 'आप ~r~%s मिनट %s सेकंड~s~ में रक्तस्राव से मर जाएंगे\n',
    respawn_bleedout_prompt = '[~r~E~s~] दबाकर पुनर्जीवित करें',
    distress_send = '[~r~G~s~] दबाकर ईएमएस को संकट संदेश भेजें',
    distress_sent_title = 'सहायता का अनुरोध',
    distress_sent_desc = 'संकट संदेश उपलब्ध इकाइयों को भेजा गया है!',
    route_set_title = 'मार्ग निर्धारित',
    route_set_desc = 'संकटग्रस्त व्यक्ति के लिए वेपॉइंट सेट किया गया है!',
    diagnose_patient = 'रोग का निदान करें',
    diagnose_patient_desc = 'निकटतम घायल व्यक्ति का निदान करें',
    no_requests = 'कोई सक्रिय अनुरोध नहीं है',
    revive_patient = 'पुनर्जीवित करें',
    revive_patient_desc = 'नजदीकी व्यक्ति को पुनर्जीवित करने का प्रयास करें',
    heal_patient = 'उपचार करें',
    heal_patient_desc = 'नजदीकी व्यक्ति का उपचार करने का प्रयास करें',
    sedate_patient = 'संज्ञाहरण करें',
    sedate_patient_desc = 'आसपास के व्यक्ति को अस्थायी रूप से सुन्न करें',
    drag_patient = 'खींचें',
    drag_patient_desc = 'आसपास के घायल व्यक्ति को खींचें',
    place_stretcher_target = 'रोगी जोड़ें या हटाएं',
    place_patient = 'वाहन में रखें/बाहर निकालें',
    place_patient_desc = 'आसपास के बेहोश व्यक्ति को वाहन में रखें या वाहन से बाहर निकालें',
    no_nearby = 'खोजा नहीं गया',
    no_nearby_desc = 'लगता है कि आसपास कोई नहीं है',
    no_injury = 'कोई चोट नहीं',
    no_injury_desc = 'व्यक्ति को किसी उपचार की आवश्यकता नहीं होती',
    no_injury_dead_desc = 'रोगी को और उपचार की आवश्यकता नहीं है। कृपया डिफ़िब्रिलेटर का उपयोग करें और बेहतर की आशा करें!',
    player_injury = 'व्यक्ति घायल',
    player_injury_desc = 'इस व्यक्ति के पास ऐसा लगता है कि उसे %s घाव हुआ है',
    player_not_unconcious = 'खिलाड़ी होशियार',
    player_not_unconcious_desc = 'लगता है कि खिलाड़ी होशियार है',
    player_unconcious = 'खिलाड़ी अचेत',
    player_unconcious_desc = 'इस उपचार के लिए रोगी को होशियार होना चाहिए!',
    player_reviving = 'पुनर्जीवन',
    player_reviving_desc = 'रोगी का पुनर्जीवन प्रक्रिया में है',
    player_noitem = 'आवश्यक वस्त्र गुम',
    player_noitem_desc = 'आपके पास इसके लिए आवश्यक वस्त्र नहीं है!',
    player_successful_revive = 'पुनर्जीवित',
    player_successful_revive_reward_desc = 'आपने सफलतापूर्वक रोगी को पुनर्जीवित किया है और $%s कमाया है!',
    player_successful_revive_desc = 'आपने सफलतापूर्वक रोगी को पुनर्जीवित किया है!',
    player_healing = 'उपचार',
    player_healing_desc = 'रोगी का उपचार प्रक्रिया में है',
    player_successful_heal = 'ठीक हुआ',
    player_successful_heal_desc = 'रोगी का सफलतापूर्वक उपचार किया गया है!',
    player_healed_desc = 'आपको सफलतापूर्वक चिकित्सक द्वारा उपचार किया गया है!',
    not_medic = 'अनधिकृत',
    not_medic_desc = 'आपको इसका उपयोग करने के लिए प्रशिक्षित नहीं किया गया है!',
    target_sedated = 'शांत किया गया',
    target_sedated_desc = 'आपको एक चिकित्सा पेशेवर द्वारा शांत किया गया है',
    player_successful_sedate_desc = 'आपने सफलतापूर्वक रोगी को शांत किया है',
    drop_bag_ui = '[E] - बैग छोड़ें',
    drop_stretch_ui = '[E] - स्ट्रेचर रखें',
    pickup_bag_target = 'उठा लो',
    move_target = 'चलाएं',
    interact_bag_target = 'खोलें',
    successful = 'सफल',
    medbag_pickup = 'आपने मेडिकल बैग उठा लिया',
    medbag_pickup_civ = 'आपने बैग की जाँच की और जो उपयोगी हो सकता है वह लिया है',
    stretcher_pickup = 'आपने स्ट्रेचर को उस एम्बुलेंस में भेज दिया जहाँ से वह खींचा गया था',
    medbag = 'मेडिकल बैग',
    medbag_tweezers = 'चिमटा',
    medbag_tweezers_desc = 'गोलियाँ निकालने के लिए उपयोग किया जाता है',
    medbag_suture = 'सुचाई किट',
    medbag_suture_desc = 'घावों को सिलने के लिए उपयोग किया जाता है',
    medbag_icepack = 'बर्फ का पैक',
    medbag_icepack_desc = 'सूजन को कम करने के लिए उपयोग किया जाता है',
    medbag_burncream = 'जलन क्रीम',
    medbag_burncream_desc = 'जलन का इलाज करने के लिए उपयोग किया जाता है',
    medbag_defib = 'डिफ़िब्रिलेटर',
    medbag_defib_desc = 'रोगियों को फिर से जीवित करने के लिए',
    medbag_medikit = 'मेडिकिट',
    medbag_medikit_desc = 'रोगियों को ठीक करने के लिए उपयोग किया जाता है',
    medbag_sedative = 'निद्रा देने वाला दवा',
    medbag_sedative_desc = 'रोगियों को निद्रित करने के लिए उपयोग किया जाता है',
    medbag_stretcher = 'फोल्डेबल स्ट्रेचर',
    medbag_stretcher_desc = 'रोगियों को ले जाने के लिए उपयोग किया जाता है',
    item_grab = 'आपने अपने मेडिकल बैग से एक उपकरण निकाल लिया है',
    wrong_equipment = 'गलत सामग्री!',
    wrong_equipment_desc = 'क्या आपको फिर से प्रशिक्षित किया गया है?',
    player_not_injured = 'चोट नहीं है',
    player_not_injured_desc =
    'इस व्यक्ति को किसी अतिरिक्त उपचार की आवश्यकता नहीं है और वो डिफ़िब्रिलेटर के लिए स्पष्ट है',
    player_treated = 'उपचारित',
    player_treated_desc = 'आपने सफलतापूर्वक रोगी का उपचार किया है',
    revive_command_help = 'खिलाड़ियों को पुनर्जीवित करने के लिए एक प्रशासक आदेश',
    revive_command_arg = 'खिलाड़ी आईडी',
    reviveall_command_help = 'सभी खिलाड़ियों को पुनर्जीवित करने के लिए एक प्रशासक आदेश',
    revivearea_command_help = 'नजदीकी खिलाड़ियों को पुनर्जीवित करने के लिए एक प्रशासक आदेश',
    revivearea_command_arg = 'खिलाड़ियों को पुनर्जीवित करने के लिए क्षेत्र',
    resetdeathcount_command_help = 'खिलाड़ियों की मौके की गणना रीसेट करने के लिए एक प्रशासक आदेश',
    resetdeathcount_command_arg = 'खिलाड़ी आईडी',
    viewdeathcount_command_help = 'अपनी मौके की गणना देखने के लिए एक आदेश',
    alive_again = 'जीवित',
    alive_again_desc = 'आपको स्थानीय निवासी द्वारा अस्पताल में छोड़ दिया गया है!',
    request_supplies_target = 'चिकित्सा सामग्री',
    currency = '$',
    not_enough_funds = 'पर्यापूर्ण फंड नहीं',
    not_enough_funds_desc = 'आपके पास पर्यापूर्ण फंड नहीं हैं!',
    hospital_garage = 'अस्पताल गेराज',
    used_meditkit = 'मेडिकिट का उपयोग किया गया',
    used_medikit_desc = 'आपने खुद को ठीक कर लिया है',
    action_cancelled = 'क्रिया रद्द की गई',
    action_cancelled_desc = 'आपने अपने आखिरी कार्रवाई को रद्द कर दिया है!',
    healing_self_prog = 'घावों का इलाज कर रहे हैं',
    checkin_hospital = 'सफलता',
    checkin_hospital_desc = 'आपने अस्पताल के कर्मचारियों द्वारा सफलतापूर्वक उपचार किया गया है',
    max_ems = 'उपचारक सुविधा उपलब्ध है',
    max_ems_desc = 'शहर में कई उपचारक हैं! मदद के लिए करे डिस्ट्रेस!',
    player_busy = 'व्यस्त',
    player_busy_desc = 'आप वर्तमान में इस क्रिया को करने के लिए बहुत व्यस्त हैं!',
    cloakroom = 'कपड़ों का कमरा',
    civilian_wear = 'नागरिक पहनावा',
    bill_patient = 'रोगी को बिल भेजें',
    bill_patient_desc = 'पास के एक रोगी को एक चालान भेजें',
    invalid_entry = 'अमान्य',
    invalid_entry_desc = 'आपका प्रविष्टि अमान्य था!',
    medical_services = 'चिकित्सा सेवाएँ',
    hospital = 'अस्पताल',
    interact_stretcher_ui = '[E] - बातचीत करें',
    stretcher_menu_title = 'स्ट्रेचर संवाद',
    open_shop_ui = '[E] - फार्मेसी खोलें'

}

UIStrings = {
    player_dying = "आप मर रहे हैं",
    player_passed = "आप चले गए",
    ems_on_the_way = "आपातकालीन सेवाएं आ रही हैं!",
    press_ems_services = "आपातकालीन सेवाओं के लिए",
    press_for_light = "प्रकाश देखने के लिए",
    hold = "पकड़",
    time_to_respawn = "पुनर्जीवित होने तक का समय",
    press = "दबाएं",
    player_hurt_critical = "गंभीर स्थिति!",
    player_hurt_severe = "आप गंभीर रूप से घायल हैं",
    player_hurt_unconscious = "बेहोश",
    player_hurt_unconscious_direct = "आप बेहोश हैं",
    player_hurt_find_help_or_ems = "आपातकालीन सेवाओं का अनुरोध करने के लिए <span class='color'>G</span> दबाएं",
    player_hurt_time_to_live = "रक्तस्राव हो रहा है",
    player_hurt_auto_respawn = "महत्वपूर्ण संकेत कमजोर पड़ रहे हैं",
    player_hurt_respawn = "प्रकाश देखने के लिए E दबाएं",

    ems_online = "मदद ऑनलाइन है",
    ems_offline = "मदद उपलब्ध नहीं है",
    currently_online = "वर्तमान में ऑनलाइन: "
}