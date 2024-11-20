--[[
    If you want to contribute translations, play and unlock "Exterior" chapter first
    Try keeping all language files have same line count, will make translators easier to find what's missing
    You can check if there are missing strings by "Ctrl + [Pick a Language]"
    Don't ignore the "TRASLATING NOTE" mark, it's necessary to be accurate because there's lore
    Ask MrZ for more information if you cannot fully understand the text, don't worry about disturbing me!
]]
---@class Techmino.I18N
local L={
    -- Info
    sureText={
        back="Premi di nuovo per tornare indietro",
        quit="Premi di nuovo per uscire",
        reset="Premi di nuovo per riavviare",
        enter="Premi di nuovo per accedere",
    },
    setting_needRestart="Questa impostazione avrà effetto dopo il riavvio.",
    noMode="Impossibile caricare la modalità '$1': $2",
    interior_crash="Sandbox terminato a causa di un overflow del tasso di prestazione",
    booting_changed="Applicazione d'avvio modificata con successo",
    musicroom_lowVolume="Per favore alza il volume della musica (in basso a destra)",
    bgm_collected="Musica raccolta: $1",
    autoGC="[Auto GC] Memoria insufficiente",
    batteryWarn={
        "A presto!",
        "Batteria scarica, presto potrebbe apparire un popup.",
        "Batteria scarica, per favore metti in carica il tuo dispositivo",
        "L'alimentazione del dispositivo è insufficiente e potrebbe influire sulle prestazioni",
    },

    -- In-Game
    clearName={
        "Singolo",
        "Doppio",
        "Triplo",
        "Techrash",
        "Pentacrash",
        "Esacrash",
        "Septacrash",
        "Octacrash",
        "Nonacrash",
        "Decacrash",
        "Undecacrash",
        "Dodecacrash",
        "Tridecacrash",
        "Tetradecacrash",
        "Pentadecacrash",
        "Esadecacrash",
        "Septadecacrash",
        "Octadecacrash",
        "Nonadecacrash",
        "Ultracrash",
        "Impossicrash",
    },
    clearLines="$1 Linee",

    combo_small="$1 Combo",
    combo_large="$1 Combo!",
    mega_combo="MEGACMB",

    charge="CHG",
    spin="$1-spin",

    allClear="ALL CLEAR",
    halfClear="Half Clear",

    target_piece="Tetromino",
    target_line="Linea",
    target_key="Tasto",
    target_time="Tempo",
    target_score="Punteggio",
    target_combo="Combo",
    target_ac="AC",
    target_hc="HC",
    target_tss="TSS",
    target_tsd="TSD",
    target_tst="TST",
    target_tsq="TS?",
    target_tspin="T-Spin",
    target_techrash="Techrash",
    target_wave="Wave",

    -- About-Game
    pause="Pausa",

    goal_reached="Obiettivo raggiunto",

    -- Widget texts
    button_back="Indietro",

    simulation_title="Simulazioni",
    graph_brik_title="M-Graph", -- TRASLATING NOTE: from "Knowledge Graph" (AI domain)
    settings_title="Impostazioni",

    setting_asd="ASD",
    setting_asp="ASP",
    setting_adp="ADP",
    setting_ash="AS Halt",
    setting_softdropSkipAsd="Skip Drop Delay",
    setting_shakeness="Shakiness",
    setting_hitWavePower="Hitwave Power",

    setting_mainVol="Volume principale",
    setting_bgm="Musica",
    setting_sfx="Effetti Sonori",
    setting_vib="Vibrazioni",
    setting_handling="Manovrabilità…",
    setting_keymapping="Controlli…",
    setting_enableTouching="Abilita controlli touch",
    setting_touching="Controlli touch…",
    setting_test="Test",
    setting_tryTestInGame="Impossibile testare durante la partita",
    setting_tryApplyAudioInGame="Impossibile applicare durante la partita",

    setting_sysCursor="Cursore esterno",
    setting_clickFX="Click FX",
    setting_power="Stato terminale",
    setting_clean="Accellerazione VRAM",
    setting_fullscreen="Schermo intero",
    setting_portrait="Portrait",
    setting_autoMute="Muta quando la finestra non è focalizzata",
    setting_showTouch="Mostra controlli touch",

    setting_maxFPS="FPS Massimi",
    setting_updRate="Indice di aggiornamento",
    setting_drawRate="Velocità di aggiornamento",
    setting_msaa="MSAA",
    setting_fmod_maxChannel="Canali massimi",
    setting_fmod_DSPBufferCount="DSPBufferCount",
    setting_fmod_DSPBufferLength="DSPBufferLength",
    setting_apply="Applica",

    lang_note="Le lingue originali sono cinese e inglese.\nTutte le traduzioni sono fornite da volontari e potrebbero non essere accurate al 100%\nCi sono alcuni termini non tradotti direttamente, controlla il Zictionario per ulteriori informazioni",

    keyset_title="Controlli",
    keyset_brik_moveLeft=   "Muovi a Sinistra",
    keyset_brik_moveRight=  "Muovi a Destra",
    keyset_brik_rotateCW=   "Ruota in Senso Orario",
    keyset_brik_rotateCCW=  "Ruota in Senso Antiorario",
    keyset_brik_rotate180=  "Ruota a 180 Gradi",
    keyset_brik_softDrop=   "Soft Drop",
    keyset_brik_hardDrop=   "Hard Drop",
    keyset_brik_holdPiece=  "Riserva",
    keyset_brik_skip=       "Salta",

    keyset_gela_moveLeft=   "Muovi a Sinistra",
    keyset_gela_moveRight=  "Muovi a Destra",
    keyset_gela_rotateCW=   "Ruota in Senso Orario",
    keyset_gela_rotateCCW=  "Ruota in Senso Antiorario",
    keyset_gela_rotate180=  "Ruota a 180 Gradi",
    keyset_gela_softDrop=   "Soft Drop",
    keyset_gela_hardDrop=   "Hard Drop",
    keyset_brik_skip=       "Salta",

    keyset_acry_swapLeft=    "Scambia a Sinistra",
    keyset_acry_swapRight=   "Scambia a Destra",
    keyset_acry_swapUp=      "Scambia Su",
    keyset_acry_swapDown=    "Scambia Giù",
    keyset_acry_twistCW=     "Ruota in Senso Orario",
    keyset_acry_twistCCW=    "Ruota in Senso Antiorario",
    keyset_acry_twist180=    "Ruota a 180 Gradi",
    keyset_acry_moveLeft=    "Cursore (Sinistra)",
    keyset_acry_moveRight=   "Cursore (Destra)",
    keyset_acry_moveUp=      "Cursore (Su)",
    keyset_acry_moveDown=    "Cursore (Giù)",
    keyset_acry_skip=        "Skip",

    keyset_func1= "Funzione 1",
    keyset_func2= "Funzione 2",
    keyset_func3= "Funzione 3",
    keyset_func4= "Funzione 4",
    keyset_func5= "Funzione 5",

    keyset_sys_view=    "Visualizza",
    keyset_sys_restart= "Riavvia",
    keyset_sys_chat=    "Chat",
    keyset_sys_back=    "Menù Principale",
    keyset_sys_quit=    "Finisci partita",
    keyset_sys_setting= "Impostazioni",
    keyset_sys_help=    "Assistenza Rapida",
    keyset_sys_up=      "Su",
    keyset_sys_down=    "Giù",
    keyset_sys_left=    "Sinistra",
    keyset_sys_right=   "Destra",
    keyset_sys_select=  "Seleziona",

    keyset_pressKey="Premi un tasto",
    keyset_deleted= "*Eliminato*",
    keyset_info=    "[Esc]: annulla\n[Backspace]: elimina\n[Double Esc]: Imposta su Esc",

    stick2_switch="2-way joystick",
    stick4_switch="4-way joystick",
    setting_touch_button="Aggiungi/Rimuovi pulsante",
    setting_touch_buttonSize="Grandezza del pulsante",
    setting_touch_iconSize="Grandezza dell'icona",
    setting_touch_buttonShape="Cambia forma del pulsante",
    setting_touch_stickSize="Lunghezza dello stick analogico",
    setting_touch_ballSize="Grandezza dello stick analogico",

    main_in_dig="Scava",
    main_in_sprint="Sprint (40 Linee)",
    main_in_marathon="Maratona",
    main_in_tutorial="Tutorial",
    main_in_sandbox="Sandbox",
    main_in_settings="Impostazioni",

    main_out_settings="Impostazioni",
    main_out_stat="Statistiche",
    main_out_dict="Dizionario",
    main_out_lang="Lingua",
    main_out_about="Informazioni di sistema",
    main_out_single="Giocatore Singolo",
    main_out_multi="Multigiocatore",

    musicroom_title="Stanza musicale",
    musicroom_fullband="Banda Piena",
    musicroom_section='Coro',
    musicroom_autoplay="Cambio automatico",

    about_title="Info",
    about_module="Moduli:",
    about_toolchain="Strumenti utilizzati:",
    about_peopleLost="Hai perso $1 !",

    -- Mode name
    exteriorModeInfo={ -- TRASLATING NOTE: Unnecessary to be accurate, try to quote some short proverbs in your language
        sprint=           {"Sprint","La velocità è tutto ciò di cui hai bisogno"},
        sequence=         {"Sequenza","Affronta strane sequenze di tetromini"},
        invis=           {"Invisibile","I pezzi diventano invisibili appena piazzati"},
        tspin=            {"T-Spin","Costruisci terreni speciali"},
        marathon=         {"Maratona","Resisti contro la gravità in aumento"},
        allclear=         {"All Clear","Gli All-Clear controllati sono possibili"},
        combo=            {"Combo","Tutti amano le combo"},
        hypersonic=       {"Ipersonico","Supera i limiti della gravità"},
        dig=              {"Scava","Gestisci linee di scarto semplici"},
        excavate=         {"Escava","Gestisci linee di scarto complesse"},
        backfire=         {"Ritorno Fiamma","Lotta contro te stesso!"},
        drill=            {"Trivella","Gestisci linee di scarto standard"},
        survivor=         {"Sopravvivente","Sopravvivi sotto pressione"},

        chain=            {"Catena","Completa linee con lo stesso colore"},
        action=           {"Azione","Usa la tastiera e il mouse contemporaneamente"},
    },


    -- Submode Task Texts
    modeTask_unknown_title="???",
    modeTask_unknown_desc="??????",

    modeTask_sequence_flood_title="Valanga",
    modeTask_sequence_flood_desc="Completa 1 linea con S oppure Z",
    modeTask_sequence_drought_title="Carenza",
    modeTask_sequence_drought_desc="Completa 1 linea con J oppure L",
    modeTask_sequence_saw_title="Saw",
    modeTask_sequence_saw_desc="Completa 1 linea con T",
    modeTask_sequence_rect_title="Rect",
    modeTask_sequence_rect_desc="Completa 1 linea con O",
    modeTask_sequence_rain_title="Rain",
    modeTask_sequence_rain_desc="Completa 1 linea con I",
    modeTask_sequence_mph_title="MPH",
    modeTask_sequence_mph_desc="Completa 1-4 linee in 4 pezzi",
    modeTask_sequence_pento_title="Pento",
    modeTask_sequence_pento_desc="Completa 1 linea con un pentomino",
    modeTask_sequence_unknown_desc="Completa 1 linea con ???",
    
    modeTask_invis_haunted_title="Infestato",
    modeTask_invis_haunted_desc="Completa 4 linee",
    modeTask_invis_hidden_title="Invisibile",
    modeTask_invis_hidden_desc="Completa un Techrash",

    modeTask_hypersonic_low_title="Gravità bassa",
    modeTask_hypersonic_low_desc="Completa 4 linee",
    modeTask_hypersonic_high_title="Gravità alta",
    modeTask_hypersonic_high_desc="Completa un Techrash",
    modeTask_hypersonic_hidden_title="Invisibile",
    modeTask_hypersonic_hidden_desc="Completa Techrash in 6s",
    modeTask_hypersonic_titanium_title="Titanio",
    modeTask_hypersonic_titanium_desc="Completa un Techrash in 10s senza usare la riserva ",

    modeTask_excavate_shale_title="Scisto",
    modeTask_excavate_shale_desc="Scava con un Doppio-",
    modeTask_excavate_volcanics_title="Vulcanici",
    modeTask_excavate_volcanics_desc="Scava con un Triplo+",
    modeTask_excavate_checker_title="Controllore",
    modeTask_excavate_checker_desc="Scava dividendo",
    modeTask_excavate_unknown_desc="Scava con ???",

    modeTask_backfire_break_title="Sparpagliato",
    modeTask_backfire_break_desc="Completa 8 linee",
    modeTask_backfire_normal_title="Normale",
    modeTask_backfire_normal_desc="Invia 6 linee completando fino a 6 linee",
    modeTask_backfire_amplify_title="Amplificato",
    modeTask_backfire_amplify_desc="Invia 8 linee completando fino a 4 linee",

    modeTask_survivor_scattered_title="Sparpagliato",
    modeTask_survivor_scattered_desc="Completa 8 linee",
    modeTask_survivor_power_title="Potenza",
    modeTask_survivor_power_desc="Invia 8 linee con 1 Eff",
    modeTask_survivor_spike_title="Spike",
    modeTask_survivor_spike_desc="Invia 8 linee con 2 Eff",

    -- Achievement
    ---@enum (key) Techmino.Text.Achievement
    achievementMessage={ -- TRASLATING NOTE: The tone can be lighter
        dict_shortcut="Esperto di Hotkeys",
        exterior_sprint_gunJumping="SCANNONATA!!!",
        exterior_excavate_notDig="Che stai facendo?",
        exterior_invis_superBrain="COOL",
        exterior_invis_rhythmMaster="To the beat!", -- Keep this as it is. Original from "osu!" title music
        exterior_tspin_10TSS="Cos'è questo?",
        exterior_tspin_10TST="EZ.",
        exterior_hypersonic_holdlessTitan="Puoi usare la riserva",
        interior_console="Cos'è questo?",
        language_japanese="あ?",
        musicroom_recollection="Il ricordo non è una canzone",
        musicroom_piano="Il Pianoforte di Nessuno",
        -- musicroom_piano="Nobody Piano",
        dial_enter="Strumento?",
        dial_password="Password corretta",
        menu_fastype="Sembra che ti diverti a scrivere",
    },

    -- Tutorial levels
    tutorial_basic="1. Le basi",
    tutorial_sequence="2. Prossimo pezzo & Riserva",
    tutorial_stackBasic="3. Stacking Basico",
    tutorial_finesseBasic="4. Finesse Basico",
    tutorial_finessePractice="5. Pratica Finesse",
    tutorial_allclearPractice="6. Pratica All Clear",
    tutorial_techrashPractice="7. Practica Techrash",
    tutorial_finessePlus="8. Mosse Eleganti",

    tutorial_notpass="Hai Fallito",
    tutorial_pass="Sei stato/a Promosso/a!",

    tutorial_basic_1="Benvenuto/a su Techmino!",
    tutorial_basic_2="1. Le basi",
    tutorial_basic_3="Usa i tasti destra e sinistra per muovere i tuoi pezzi",
    tutorial_basic_4="Premi il tasto per l'hard drop per piazzare il pezzo, completando le linee",
    tutorial_basic_5="Puoi anche ruotare il pezzo con i tasti di rotazione",

    tutorial_sequence_1="2. Prossimo pezzo & Riserva",
    tutorial_sequence_2="Oops, questo pezzo non sembra entrare nel buco…",
    tutorial_sequence_3="…però ora puoi vedere quali pezzi riceverai dopo",
    tutorial_sequence_4="Usa la riserva per conservare il pezzo che potrebbe servirti successivamente",

    tutorial_stackBasic_1="3. Stacking Basico",
    tutorial_stackBasic_2="Cerca di mantenere il terreno \"piatto\", per tenere basso il misuratore di pericolo a sinistra",
    tutorial_stackBasic_3="Questo è l'obiettivo principale per i principianti",
    tutorial_stackBasic_4="I pezzi vengono spesso posizionati \"orizzontalmente\", not \"verticalmente\"",
    tutorial_stackBasic_5="Ciò garantisce più scelte per i pezzi futuri ed evita di creare buchi che destabilizzano il terreno",

    tutorial_finesseBasic_0="4. Finesse Basico",
    tutorial_finesseBasic_0_1="Il \"Finesse\" è un modo per semplificare la pressione dei tasti, che può velocizzare e ridurre i misdrops",
    tutorial_finesseBasic_1="①Tasti per doppia rotazione",
    tutorial_finesseBasic_1_1="Vai ad associare entrambi i controlli di rotazione, poiché  1 rotazione antioraria è equivalente a 3 rotazioni orarie",
    tutorial_finesseBasic_1_T="In questo caso la rotazione a 180° non è obbligatoria",
    tutorial_finesseBasic_1_2="Obbiettivo: posiziona il pezzo nella posizione evidenziata ruotandolo una sola volta",
    tutorial_finesseBasic_2="②Backtrack",
    tutorial_finesseBasic_2_1="Il terreno ha una larghezza di 10 celle, la larghezza del pezzo è di circa 3 celle e si genera nel mezzo",
    tutorial_finesseBasic_2_2="Quindi, dividi il campo in tre parti: Sinistra/Centro/Destra. Sposta il tetromino su una delle 3 parti e piazzalo dove indicato.",
    tutorial_finesseBasic_2_3="So there are only \"move one cell\" and \"move to side\" two movements",
    tutorial_finesseBasic_2_T="Use as smallest ASD but still possible to separate tap/hold, and smallest ASP",
    tutorial_finesseBasic_2_4="Obbiettivo: lascia cadere il tetromino nella posizione evidenziata muovendolo massimo 2 volte",
    tutorial_finesseBasic_3="③Wall-turn",
    tutorial_finesseBasic_3_1="Vedi, il pezzo ruota attorno ad un centro specifico (punto bianco)",
    tutorial_finesseBasic_3_2="Per i seguenti pezzi: Z(rosso)/S(verde)/I(ciano), la rotazione in senso orario e antiorario appoggerà il pezzo di lato",
    tutorial_finesseBasic_3_3="Obbiettivo: lascia cadere il tetromino nella posizione evidenziata muovendolo e ruotandolo 1 volta",
    tutorial_finesseBasic_4_1="Combinando queste 3 techniche",
    tutorial_finesseBasic_4_2="Con circa 3 tasti è possibile spostare il pezzo in qualsiasi posizione",

    tutorial_finessePractice_1="5. Pratica Finesse",
    tutorial_finessePractice_2="Riduci al minimo il numero di tasti premuti",
    tutorial_finessePractice_par="Par",

    tutorial_allclearPractice_1="6. Pratica All Clear",
    tutorial_allclearPractice_2="Completa il maggior numero possibile di All Clears",

    tutorial_techrashPractice_1="7. Practica Techrash",
    tutorial_techrashPractice_2="Completa il maggior numero possibile di Techrash",

    tutorial_finessePlus_1="8. Mosse Eleganti",
    tutorial_finessePlus_2="Usa meno tasti possibile",
}
return L
