-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
if Config.Language ~= 'jp' then return end

Strings = {

    possible_cause = '可能性の原因',

    full_name = '名前',
    pulse = '脈拍',
    bpm = 'BPM: %s',
    bleed_rate = '出血率',
    bleed_rate_low = '低',
    bleed_rate_medium = '中',
    bleed_rate_high = '高',
    no_name = '名無し',
    injuries = '現在の怪我',


    get_off_stretcher_ui = '[E] - ストレッチャーから降りる',
    move = '移動',
    move_desc = 'ストレッチャーを移動する',
    put_in_vehicle = '車両へ置く',
    stretcher_in_vehicle = 'ストレッチャーを車両に収納',
    put_in_vehicle_desc = 'ストレッチャーを車両に入れる',
    place_on_stretcher = '患者をストレッチャーに乗せる',
    place_on_stretcher_desc = '患者をストレッチャーに置く',
    remove_from_stretcher = '患者をストレッチャーから降ろす',
    remove_from_stretcher_desc = 'ストレッチャーから患者を降ろす',
    not_found = '見つからない',
    already_occupied_ambulance = '既に占められている',
    already_occupied_ambulance_desc = 'この救急車は既に使用中です！',
    already_occupied_stretcher = '既に占められている',
    already_occupied_stretcher_desc = 'このストレッチャーは既に使用中です！',
    vehicle_occupied = '車両使用中',
    vehicle_occupied_desc = '誰かが運転中の間にはこれを行うことはできません！',
    not_occupied_stretcher = '未使用',
    not_occupied_stretcher_desc = 'このストレッチャーは使用されていません！',
    stretcher_placement_blocked = '配置がブロックされている',
    stretcher_placement_blocked_desc = 'ここにストレッチャーを置くことはできません！',
    knocked_out = 'ノックアウト',
    knocked_out_desc = 'あなたはノックアウトされました！',
    checkin_cooldown = 'チェックイン冷却時間',
    checkin_cooldown_desc = 'チェックインを急ぎすぎです。少し待ってください。',
    checkingin_progress = 'チェックイン中...',
    remove_dead_target = '意識不明の人を除去',
    ply_injury_head = '頭',
    ply_injury_neck = '首',
    ply_injury_spine = '脊椎',
    ply_injury_upper = '上半身',
    ply_injury_lower = '下半身',
    ply_injury_left_arm = '左腕',
    ply_injury_left_leg = '左脚',
    ply_injury_right_arm = '右腕',
    ply_injury_right_leg = '右脚',
    diagnosing_patient_progress = '患者の診断中...',
    treating_patient_progress = '患者の治療中...',
    recovering_progress = '回復中...',
    injury_report = '怪我の報告',
    none = 'なし',
    mild = '軽度',
    moderate = '中度',
    severe = '重度',
    deadly = '致命的',
    injury_report_locations = '場所',
    injury_report_type = '怪我のタイプ: %s',
    injury_report_severity = '重症度: %s',
    injury_report_bleed = '出血',
    light_injury_title = '軽傷',
    moderate_injury_title = '中等度の怪我',
    extreme_injury_title = '重傷',
    injury_bleed_notify = '怪我と出血の警告',
    light_injury_desc = 'あなたの%sが傷ついています。医者を訪ねることを検討してください！',
    moderate_injury_desc = 'あなたの%sが大きく傷ついています。医者が必要です！',
    extreme_injury_desc = 'あなたの%sが非常に深刻に傷ついています。手遅れになる前に医者に行く必要があります！',
    injury_msg_one = '重大な怪我を負っています。',
    injury_msg_two = '深刻な怪我を負っています。',
    injury_msg_three = '非常に深刻な怪我を負っています。',
    injury_msg_four = '危険な怪我を負っています。',
    bleed_msg_one = '出血しています。',
    bleed_msg_two = 'ひどく出血しています。圧迫してください。',
    bleed_msg_three = '出血多量で危険です！',
    fainted_title = '失神',
    fainted_so_high_desc = '非常に高いところから失神しました。',
    cant_jump_title = 'ジャンプできません！',
    cant_jump_desc = '怪我がひどすぎてジャンプすることができません',
    blackout_title = '意識喪失',
    blackout_desc = '%sの怪我で意識を失いました！すぐに医療の手を求めてください！',
    treated_fully_desc = '治療を受け、これまで以上に良く感じています！',
    treated_not_fully_desc = '治療を受けましたが、追加の治療が必要です。',
    prescription_menu = '処方箋メニュー',
    prescription_menu_desc = '処方箋にアクセスし、管理する',
    no_stretcher_detected = 'ストレッチャーが検出されません',
    no_stretcher_detected_desc = 'アクティブなストレッチャーが検出されませんでした！',
    cant_run = '走れません',
    cant_run_desc = '怪我がひどすぎて走ることができません！',
    no_back_seat = '利用可能な座席がありません',
    no_back_seat_desc = 'この救急車の後部に座席がありません',
    enter_vehicle_back = '救急車（後部）に入る',
    stretcher_already_deployed = 'ストレッチャーは既に展開されています',
    stretcher_already_deployed_desc = 'この救急車に割り当てられたストレッチャーは既に取り外されています。',
    send_stretcher_home = '車両に戻る',
    ambulance_not_found = 'ストレッチャーが取り外されましたが、戻るための救急車が見つかりませんでした！',
    bleedout = '出血',
    player_injury_critical_desc = 'プレイヤーは%sの傷により重篤な状態です！',
    gps_active = 'GPSがアクティブ',
    gps_active_desc = 'プレイヤー%sがGPSをアクティブにしました',
    gps_deactive = 'GPSが非アクティブ',
    gps_deactive_desc = 'プレイヤー%sがGPSを非アクティブにしました',
    no_wsb = '^0[^3警告^0] wasabi_bridgeはフレームワークの後やリソースの前に開始されていません: %s',
    spawn_blocked = 'ガレージがブロックされています',
    spawn_blocked_desc = '出口がブロックされているため、車両を出すことができません！',
    menu_remove_crutch = '松葉杖を取り除く',
    menu_remove_crutch_desc = '近くの患者から松葉杖を取り除く',
    menu_remove_chair = '車椅子を取り除く',
    menu_remove_chair_desc = '近くの患者から車椅子を取り除く',
    toggle_stretcher = 'ストレッチャーを取る',
    toggle_stretcher_desc = '最寄りの車両からストレッチャーを取る',
    no_vehicle_nearby = '車両',
    no_vehicle_nearby_desc = '近くに車両がありません',
    no_ambulance_nearby_desc = '近くに救急車がありません',
    on_duty = '勤務中',
    on_duty_desc = '勤務に切り替えました！',
    off_duty = '非勤務',
    off_duty_desc = '勤務を終了しました！',
    amount = '金額',
    mr = 'Mr',
    mrs = 'Mrs',
    debt_collection = '債権回収',
    db_email =
    '親愛なる%s %s様、<br /><br />中央司法回収機関（CJCA）は、警察から受けた罰金を請求しました。<br />あなたの口座から<strong>$%s</strong>が引き落とされました。<br /><br />敬具<br />ワサビ氏',
    fine_sent = '罰金送付',
    fine_sent_desc = '$%sの罰金を成功裏に送付しました！',
    fine_received = '罰金受領',
    fine_received_desc = '$%sの罰金を受け取りました',
    log_killed_title = 'プレイヤーが殺害された',
    log_killed_desc =
    '> *%s [%s] が %s [%s] を殺害\n\n**殺害者の情報:**\n名前: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n**被害者の情報:**\nキャラクター名: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n> **死因:** `%s`',
    log_suicide_title = 'プレイヤーの自殺',
    log_suicide_desc =
    '> %s [%s] が自殺\n\n**プレイヤー情報:**\n名前: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n> **死因:** `%s`',
    unknown = '不明',
    log_admin_revive_title = 'プレイヤーが管理者によって蘇生された',
    log_admin_revive_desc =
    '> *%s [%s] が管理者によって %s [%s] を蘇生\n\n**対象者の情報:**\n名前: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||\n\n**管理者の情報:**\nキャラクター名: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||',
    log_self_revive_title = '管理者が自己蘇生した',
    log_self_revive_desc =
    '> %s [%s] が自己蘇生\n\n**プレイヤー情報:**\n名前: `%s`\nプレイヤーID: `%s`\n識別子: `%s`\nSteam: `%s`\nDiscord: `%s`\nライセンス: `%s`\nライセンス2: `%s`\nXBL: `%s`\nFiveM: `%s`\nIP: ||%s||',
    log_death_logs = '死亡ログ',
    log_revive_logs = '蘇生ログ',
    medbag_crutch = '松葉杖',
    medbag_crutch_desc = '歩行を助けるための松葉杖',
    menu_crutch = '松葉杖を適用',
    menu_crutch_desc = '近くの患者に松葉杖を追加',
    medbag_chair = '車椅子',
    medbag_chair_desc = '歩行できない患者を助けるための車椅子',
    menu_chair = '車椅子を適用',
    menu_chair_desc = '近くの患者に車椅子を追加',
    shot = '銃撃',
    stabbed = '刺傷',
    beat = '鈍器によるトラウマ',
    burned = 'やけど',
    other = '不明',
    JobMenuTitle = 'EMSメニュー',
    dispatch = 'ディスパッチ',
    dispatch_desc = '支援を必要とするプレイヤーを確認する',
    DispatchMenuTitle = 'ディスパッチ',
    GoBack = '戻る',
    key_map_text = '救急車のジョブメニュー',
    assistance_title = '支援要請',
    assistance_desc = '医療支援を求める人がいます！',
    respawn_available_in = 'リスポーン可能 ~r~%s分%s秒~s~ まで\n',
    respawn_bleedout_in = '~r~%s分%s秒~s~で出血死します\n',
    respawn_bleedout_prompt = 'リスポーンするには[~r~E~s~]を押し続けてください',
    distress_send = 'EMSに救助信号を送るには[~r~G~s~]を押してください',
    distress_sent_title = '支援要請',
    distress_sent_desc = '利用可能な部隊に救助信号が送信されました！',
    route_set_title = 'ルート設定',
    route_set_desc = '困っている人にウェイポイントが設定されました！',
    diagnose_patient = '診断',
    diagnose_patient_desc = '最も近い負傷者を診断する',
    no_requests = 'アクティブなリクエストはありません',
    revive_patient = '蘇生',
    revive_patient_desc = '近くの人を蘇生しようとする',
    heal_patient = '治療',
    heal_patient_desc = '近くの人を治療しようとする',
    sedate_patient = '鎮静',
    sedate_patient_desc = '近くの人を一時的に鎮静化する',
    drag_patient = '引きずる',
    drag_patient_desc = '近くの負傷者を引きずる',
    place_stretcher_target = '患者を追加または削除',
    place_patient = '車内/車外への配置',
    place_patient_desc = '近くの意識不明の人を車内/車外に配置する',
    no_nearby = '見つかりません',
    no_nearby_desc = '周りに誰もいないようです',
    no_injury = '怪我なし',
    no_injury_desc = 'この人は治療が必要ないようです',
    no_injury_dead_desc = '患者は追加の治療が必要ないようです。デフリブリレータを使用して最善を期待してみてください！',
    player_injury = '怪我をした人',
    player_injury_desc = 'この人は%sの傷を負っているようです',
    player_not_unconscious = 'プレイヤー意識あり',
    player_not_unconscious_desc = 'プレイヤーは意識があるようです',
    player_unconscious = 'プレイヤー意識なし',
    player_unconscious_desc = 'この治療には患者が意識を持っている必要があります！',
    player_reviving = '蘇生中',
    player_reviving_desc = '患者の蘇生中',
    player_noitem = 'アイテムなし',
    player_noitem_desc = 'このために必要なアイテムが不足しています！',
    player_successful_revive = '蘇生成功',
    player_successful_revive_reward_desc = '患者の蘇生に成功し、$%sを獲得しました！',
    player_successful_revive_desc = '患者の蘇生に成功しました！',
    player_healing = '治療中',
    player_healing_desc = '患者の治療中',
    player_successful_heal = '治療成功',
    player_successful_heal_desc = '患者は成功裡に治療されました！',
    player_healed_desc = '医師からの治療が成功しました！',
    not_medic = '不正なアクセス',
    not_medic_desc = 'この操作の訓練を受けていません！',
    target_sedated = '鎮静',
    target_sedated_desc = '医療の専門家によって鎮静されました',
    player_successful_sedate_desc = '患者の鎮静に成功しました',
    drop_bag_ui = '[E] - バッグを置く',
    drop_stretch_ui = '[E] - ストレッチャーを置く',
    pickup_bag_target = '拾う',
    move_target = '移動',
    interact_bag_target = '開く',
    successful = '成功',
    medbag_pickup = '医療バッグを拾いました',
    medbag_pickup_civ = 'バッグを調べ、役立つものを取りました',
    stretcher_pickup = 'あなたはストレッチャーを引っ張った救急車に送りました',
    medbag = '医療バッグ',
    medbag_tweezers = 'ピンセット',
    medbag_tweezers_desc = '弾丸を取り除くのに使用',
    medbag_suture = '縫合キット',
    medbag_suture_desc = '傷口を縫うのに使用',
    medbag_icepack = 'アイスパック',
    medbag_icepack_desc = '腫れを軽減するのに使用',
    medbag_burncream = 'やけどクリーム',
    medbag_burncream_desc = 'やけどの治療に使用',
    medbag_defib = '除細動器',
    medbag_defib_desc = '患者の蘇生に使用',
    medbag_medikit = '医療キット',
    medbag_medikit_desc = '患者の治療に使用',
    medbag_sedative = '鎮静剤',
    medbag_sedative_desc = '患者の鎮静に使用',
    medbag_stretcher = '折りたたみストレッチャー',
    medbag_stretcher_desc = '患者の移動に使用',
    item_grab = '医療バッグからツールを取り出しました',
    wrong_equipment = '不適切な装備！',
    wrong_equipment_desc = '訓練を受けたことがありますか？',
    player_not_injured = '怪我なし',
    player_not_injured_desc = 'この人は追加の治療が必要ないようで、デフリブリレータの準備ができています',
    player_treated = '治療済み',
    player_treated_desc = '患者は成功裡に治療されました',
    revive_command_help = 'プレイヤーを蘇生する管理者コマンド',
    revive_command_arg = 'プレイヤーID',
    reviveall_command_help = 'すべてのプレイヤーを蘇生する管理者コマンド',
    revivearea_command_help = '近くのプレイヤーを蘇生する管理者コマンド',
    revivearea_command_arg = 'プレイヤーを蘇生するエリア',
    resetdeathcount_command_help = 'プレイヤーの死亡カウントをリセットする管理者コマンド',
    resetdeathcount_command_arg = 'プレイヤーID',
    viewdeathcount_command_help = 'あなたの死亡カウントを表示するコマンド',
    alive_again = '生きてる',
    alive_again_desc = '地元の人によって病院に運ばれました！',
    request_supplies_target = '医療用品',
    currency = 'ドル',
    not_enough_funds = '資金不足',
    not_enough_funds_desc = '十分な資金がありません！',
    hospital_garage = '病院のガレージ',
    used_meditkit = '医療キットを使用しました',
    used_medikit_desc = '自分自身を治療できました',
    action_cancelled = 'アクションがキャンセルされました',
    action_cancelled_desc = '前回のアクションをキャンセルしました！',
    healing_self_prog = '傷の治療中',
    checkin_hospital = '成功',
    checkin_hospital_desc = '病院のスタッフによる成功した治療',
    max_ems = '救急医療スタッフが利用可能',
    max_ems_desc = '街には多くの救急医療スタッフがいます！助けを求めてください！',
    player_busy = '忙しい',
    player_busy_desc = '現在、このアクションを実行するのは忙しすぎます！',
    cloakroom = '更衣室',
    civilian_wear = '市民服',
    bill_patient = '患者に請求書を送る',
    bill_patient_desc = '近くの患者に請求書を送信します',
    invalid_entry = '無効',
    invalid_entry_desc = '入力が無効でした！',
    medical_services = '医療サービス',
    hospital = '病院',
    interact_stretcher_ui = '[E] - 対話',
    stretcher_menu_title = 'ストレッチャーの対話',
    open_shop_ui = '[E] - 薬局を開く'

}

UIStrings = {
    player_dying = "あなたは死にかけています",
    player_passed = "あなたは亡くなりました",
    ems_on_the_way = "緊急サービスが向かっています！",
    press_ems_services = "緊急サービスへ",
    press_for_light = "光を見るために",
    hold = "保持",
    time_to_respawn = "リスポーンまでの残り時間",
    press = "押す",
    player_hurt_critical = "重大な状態！",
    player_hurt_severe = "あなたは重傷を負っています",
    player_hurt_unconscious = "意識不明",
    player_hurt_unconscious_direct = "あなたは意識不明です",
    player_hurt_find_help_or_ems = "緊急サービスを要請するには<span class='color'>G</span>を押してください",
    player_hurt_time_to_live = "出血中",
    player_hurt_auto_respawn = "生命徴候が消失しつつあります",
    player_hurt_respawn = "光を見るためにEを押してください",

    ems_online = "サポートがオンラインです",
    ems_offline = "サポートが利用できません",
    currently_online = "現在オンライン: "
}