local translator = {}

local translations = {
    ["play song"] = {
        ["en"] = "play song!",
        ["pt-BR"] = "tocar!",
        ["es"] = "canción",
        ["ru"] = "воспроизв.",
        ["zh-CN"] = "播放",
        ["id"] = "putar",
        ["fil"] = "kanta",
        ["vi"] = "phát",
        ["fr"] = "jouer",
        ["de"] = "abspielen",
        ["ja"] = "曲を再生",
        ["ko"] = "노래 재생",
        ["tr"] = "şarkıyı çal",
        ["ar"] = "تشغيل"
    },    

    ["search"] = {
        ["en"] = "search...",
        ["pt-BR"] = "procurar...",
        ["es"] = "buscar...",
        ["ru"] = "поиск...",
        ["zh-CN"] = "搜索...",
        ["id"] = "cari...",
        ["fil"] = "maghanap...",
        ["vi"] = "tìm kiếm...",
        ["fr"] = "rechercher...",
        ["de"] = "suchen...",
        ["ja"] = "検索...",
        ["ko"] = "검색...",
        ["tr"] = "ara...",
        ["ar"] = "بحث..."
    },

    ["credits"] = {
        ["en"] = "piano autoplayer by hellohellohell012321",
        ["pt-BR"] = "autoplayer de piano por hellohellohell012321",
        ["es"] = "autoreproductor de piano por hellohellohell012321",
        ["ru"] = "автовоспроизведение пианино от hellohellohell012321",
        ["zh-CN"] = "钢琴自动播放器，由 hellohellohell012321 制作",
        ["id"] = "piano autoplayer oleh hellohellohell012321",
        ["fil"] = "piano autoplayer ni hellohellohell012321",
        ["vi"] = "trình tự động chơi piano bởi hellohellohell012321",
        ["fr"] = "autoplayer de piano par hellohellohell012321",
        ["de"] = "klavier-autoplayer von hellohellohell012321",
        ["ja"] = "ピアノ自動演奏 by hellohellohell012321",
        ["ko"] = "피아노 자동 연주기 by hellohellohell012321",
        ["tr"] = "piyano otomatik çalma by hellohellohell012321",
        ["ar"] = "مشغل البيانو التلقائي من hellohellohell012321"
    },

    ["songname"] = {
        ["en"] = "SONG NAME",
        ["pt-BR"] = "NOME DA MÚSICA",
        ["es"] = "NOMBRE DE LA CANCIÓN",
        ["ru"] = "НАЗВАНИЕ ПЕСНИ",
        ["zh-CN"] = "歌曲名称",
        ["id"] = "NAMA LAGU",
        ["fil"] = "PANGALAN NG KANTA",
        ["vi"] = "TÊN BÀI HÁT",
        ["fr"] = "NOM DE LA CHANSON",
        ["de"] = "LIEDNAME",
        ["ja"] = "曲名",
        ["ko"] = "노래 제목",
        ["tr"] = "ŞARKI ADI",
        ["ar"] = "اسم الأغنية"
    },

    ["toggle ui"] = {
        ["en"] = "toggle ui",
        ["pt-BR"] = "alternar ui",
        ["es"] = "alternar ui",
        ["ru"] = "переключить ui",
        ["zh-CN"] = "切换界面",
        ["id"] = "alih ui",
        ["fil"] = "i-toggle ui",
        ["vi"] = "chuyển ui",
        ["fr"] = "basculer ui",
        ["de"] = "ui umschalten",
        ["ja"] = "ui切替",
        ["ko"] = "ui 전환",
        ["tr"] = "ui değiştir",
        ["ar"] = "تبديل ui"
    },    

    ["spoof midi"] = {
        ["en"] = "spoof midi",
        ["pt-BR"] = "falsificar midi",
        ["es"] = "falsificar midi",
        ["ru"] = "подделать midi",
        ["zh-CN"] = "伪装 midi",
        ["id"] = "palsukan midi",
        ["fil"] = "peke ang midi",
        ["vi"] = "giả midi",
        ["fr"] = "simuler midi",
        ["de"] = "midi vortäuschen",
        ["ja"] = "midiを偽装",
        ["ko"] = "midi 스푸핑",
        ["tr"] = "midi sahteleme",
        ["ar"] = "تزييف midi"
    },

    ["shuffle play songs"] = {
        ["en"] = "SHUFFLE PLAY SONGS",
        ["pt-BR"] = "EMBARALHAR MÚSICAS",
        ["es"] = "MEZCLAR CANCIONES",
        ["ru"] = "СЛУЧАЙНЫЙ ПРОИГРЫВ",
        ["zh-CN"] = "随机播放歌曲",
        ["id"] = "ACAK PUTAR LAGU",
        ["fil"] = "I-SHUFFLE ANG MGA KANTA",
        ["vi"] = "PHÁT NGẪU NHIÊN",
        ["fr"] = "MÉLANGER LES CHANSONS",
        ["de"] = "LIEDER MISCHEN",
        ["ja"] = "曲をシャッフル",
        ["ko"] = "노래 섞어 재생",
        ["tr"] = "ŞARKILARI KARMA ÇAL",
        ["ar"] = "تشغيل الأغاني عشوائياً"
    },    
    
    ["play random song"] = {
        ["en"] = "PLAY A RANDOM SONG",
        ["pt-BR"] = "MÚSICA ALEATÓRIA",
        ["es"] = "CANCIÓN ALEATORIA",
        ["ru"] = "СЛУЧАЙНАЯ ПЕСНЯ",
        ["zh-CN"] = "播放随机歌曲",
        ["id"] = "ACAK PUTAR LAGU",
        ["fil"] = "I-RANDOM ANG KANTA",
        ["vi"] = "PHÁT BÀI NGẪU NHIÊN",
        ["fr"] = "CHACUN UNE CHANSON",
        ["de"] = "ZUFÄLLIGES LIED SPIELEN",
        ["ja"] = "ランダム再生",
        ["ko"] = "랜덤 노래 재생",
        ["tr"] = "RANDOM ŞARKI ÇAL",
        ["ar"] = "تشغيل أغنية عشوائية"
    },      

    ["new"] = {
        ["en"] = "new",
        ["pt-BR"] = "novas",
        ["es"] = "nuevas",
        ["ru"] = "новые",
        ["zh-CN"] = "新歌",
        ["id"] = "baru",
        ["fil"] = "bago",
        ["vi"] = "mới",
        ["fr"] = "nouvelles",
        ["de"] = "neu",
        ["ja"] = "新着",
        ["ko"] = "새로운",
        ["tr"] = "yeni",
        ["ar"] = "جديد"
    },

    ["peak"] = {
        ["en"] = "peak",
        ["pt-BR"] = "top",               -- natural slang for “best”
        ["es"] = "top",                   -- widely used in gaming/music context
        ["ru"] = "топ",                  -- “top” is commonly used in Russian slang
        ["zh-CN"] = "巅峰",               -- literally “pinnacle/peak”, natural in Chinese
        ["id"] = "terbaik",              -- means “the best”
        ["fil"] = "pinaka",               -- short for “pinakamahusay”, natural in Filipino
        ["vi"] = "đỉnh",                  -- literally “peak/top”, sounds natural
        ["fr"] = "top",                   -- common slang in French gaming/music
        ["de"] = "top",                   -- used as-is in German
        ["ja"] = "トップ",                  -- “top” in katakana, widely used
        ["ko"] = "최고",                   -- literally “the best/top”
        ["tr"] = "en iyi",                 -- literally “the best”
        ["ar"] = "الأفضل"                  -- literally “the best”
    },

    ["best"] = {
        ["en"] = "best",
        ["pt-BR"] = "melhores",
        ["es"] = "mejores",
        ["ru"] = "лучшие",
        ["zh-CN"] = "最佳",
        ["id"] = "terbaik",
        ["fil"] = "pinakamahusay",
        ["vi"] = "hay nhất",
        ["fr"] = "meilleurs",
        ["de"] = "beste",
        ["ja"] = "ベスト",
        ["ko"] = "최고",
        ["tr"] = "en iyi",
        ["ar"] = "الأفضل"
    },

    ["epic"] = {
        ["en"] = "epic",
        ["pt-BR"] = "épico",
        ["es"] = "épico",
        ["ru"] = "эпик",
        ["zh-CN"] = "史诗",
        ["id"] = "epik",
        ["fil"] = "epiko",
        ["vi"] = "hùng tráng",
        ["fr"] = "épique",
        ["de"] = "episch",
        ["ja"] = "エピック",
        ["ko"] = "에픽",
        ["tr"] = "epik",
        ["ar"] = "ملحمي"
    },

    ["beautiful"] = {
        ["en"] = "beautiful",
        ["pt-BR"] = "bonitas",
        ["es"] = "hermosas",
        ["ru"] = "красивые",
        ["zh-CN"] = "美丽",
        ["id"] = "indah",
        ["fil"] = "maganda",
        ["vi"] = "tuyệt đẹp",
        ["fr"] = "belles",
        ["de"] = "schöne",
        ["ja"] = "美しい",
        ["ko"] = "아름다운",
        ["tr"] = "güzel",
        ["ar"] = "جميلة"
    },

    ["video games"] = {
        ["en"] = "video games",
        ["pt-BR"] = "videogames",
        ["es"] = "videojuegos",
        ["ru"] = "видеоигры",
        ["zh-CN"] = "电子游戏",
        ["id"] = "video game",
        ["fil"] = "mga video game",
        ["vi"] = "trò chơi điện tử",
        ["fr"] = "jeux vidéo",
        ["de"] = "videospiele",
        ["ja"] = "ビデオゲーム",
        ["ko"] = "비디오 게임",
        ["tr"] = "video oyunları",
        ["ar"] = "ألعاب فيديو"
    },

    ["movies/tv"] = {
        ["en"] = "movies/tv",
        ["pt-BR"] = "filmes/tv",
        ["es"] = "películas/tv",
        ["ru"] = "фильмы/тв",
        ["zh-CN"] = "电影/电视",
        ["id"] = "film/tv",
        ["fil"] = "pelikula/tv",
        ["vi"] = "phim/tivi",
        ["fr"] = "films/tv",
        ["de"] = "filme/tv",
        ["ja"] = "映画/テレビ",
        ["ko"] = "영화/TV",
        ["tr"] = "filmler/tv",
        ["ar"] = "أفلام/تلفاز"
    },

    ["memes"] = {
        ["en"] = "memes",
        ["pt-BR"] = "memes",
        ["es"] = "memes",
        ["ru"] = "мемы",
        ["zh-CN"] = "梗歌",
        ["id"] = "meme",
        ["fil"] = "meme",
        ["vi"] = "meme",
        ["fr"] = "mèmes",
        ["de"] = "memes",
        ["ja"] = "ミーム",
        ["ko"] = "밈",
        ["tr"] = "memler",
        ["ar"] = "ميمات"
    },

    ["classical"] = {
        ["en"] = "classical",
        ["pt-BR"] = "clássicas",
        ["es"] = "clásicas",
        ["ru"] = "классика",
        ["zh-CN"] = "古典",
        ["id"] = "klasik",
        ["fil"] = "klasiko",
        ["vi"] = "cổ điển",
        ["fr"] = "classiques",
        ["de"] = "klassisch",
        ["ja"] = "クラシック",
        ["ko"] = "클래식",
        ["tr"] = "klasik",
        ["ar"] = "كلاسيكي"
    },

    ["pop/hiphop"] = {
        ["en"] = "pop/hiphop",
        ["pt-BR"] = "pop/hiphop",
        ["es"] = "pop/hiphop",
        ["ru"] = "поп/хип-хоп",
        ["zh-CN"] = "流行/嘻哈",
        ["id"] = "pop/hiphop",
        ["fil"] = "pop/hiphop",
        ["vi"] = "pop/hiphop",
        ["fr"] = "pop/hiphop",
        ["de"] = "pop/hiphop",
        ["ja"] = "ポップ/ヒップホップ",
        ["ko"] = "팝/힙합",
        ["tr"] = "pop/hiphop",
        ["ar"] = "بوب/هيب هوب"
    },

    ["anime/jpop"] = {
        ["en"] = "anime/jpop",
        ["pt-BR"] = "anime/jpop",
        ["es"] = "anime/jpop",
        ["ru"] = "аниме/jpop",
        ["zh-CN"] = "动漫/J-pop",
        ["id"] = "anime/jpop",
        ["fil"] = "anime/jpop",
        ["vi"] = "anime/jpop",
        ["fr"] = "anime/jpop",
        ["de"] = "anime/jpop",
        ["ja"] = "アニメ/J-pop",
        ["ko"] = "애니메/제이팝",
        ["tr"] = "anime/jpop",
        ["ar"] = "أنمي/J-pop"
    },

    ["sad"] = {
        ["en"] = "sad",
        ["pt-BR"] = "tristes",
        ["es"] = "tristes",
        ["ru"] = "грустные",
        ["zh-CN"] = "伤感",
        ["id"] = "sedih",
        ["fil"] = "malungkot",
        ["vi"] = "buồn",
        ["fr"] = "tristes",
        ["de"] = "traurig",
        ["ja"] = "悲しい",
        ["ko"] = "슬픈",
        ["tr"] = "üzgün",
        ["ar"] = "حزين"
    },

    ["electronic"] = {
        ["en"] = "electronic",
        ["pt-BR"] = "eletrônicas",
        ["es"] = "electrónicas",
        ["ru"] = "электронные",
        ["zh-CN"] = "电子",
        ["id"] = "elektronik",
        ["fil"] = "elektroniko",
        ["vi"] = "điện tử",
        ["fr"] = "électroniques",
        ["de"] = "elektronisch",
        ["ja"] = "エレクトロニック",
        ["ko"] = "일렉트로닉",
        ["tr"] = "elektronik",
        ["ar"] = "إلكترونية"
    },

    ["rock"] = {
        ["en"] = "rock",
        ["pt-BR"] = "rock",
        ["es"] = "rock",
        ["ru"] = "рок",
        ["zh-CN"] = "摇滚",
        ["id"] = "rock",
        ["fil"] = "rock",
        ["vi"] = "rock",
        ["fr"] = "rock",
        ["de"] = "rock",
        ["ja"] = "ロック",
        ["ko"] = "록",
        ["tr"] = "rock",
        ["ar"] = "روك"
    },

    ["creepy/weirdcore"] = {
        ["en"] = "creepy/weirdcore",
        ["pt-BR"] = "assustador/weirdcore",
        ["es"] = "espeluznante/weirdcore",
        ["ru"] = "жутко/weirdcore",
        ["zh-CN"] = "诡异/weirdcore",
        ["id"] = "menyeramkan/weirdcore",
        ["fil"] = "nakakatakot/weirdcore",
        ["vi"] = "rùng rợn/weirdcore",
        ["fr"] = "effrayant/weirdcore",
        ["de"] = "gruselig/weirdcore",
        ["ja"] = "不気味/weirdcore",
        ["ko"] = "섬뜩한/weirdcore",
        ["tr"] = "ürkütücü/weirdcore",
        ["ar"] = "مخيف/weirdcore"
    },

    ["unsupported executor"] = {
        ["en"] = "Your executor may not support this feature.",
        ["pt-BR"] = "Seu executor pode não suportar este recurso.",
        ["es"] = "Tu executor puede que no sea compatible con esta función.",
        ["ru"] = "Ваш исполнитель может не поддерживать эту функцию.",
        ["zh-CN"] = "您的执行器可能不支持此功能。",
        ["id"] = "Eksekutormu mungkin tidak mendukung fitur ini.",
        ["fil"] = "Maaaring hindi suportado ng iyong executor ang tampok na ito.",
        ["vi"] = "Trình thực thi của bạn có thể không hỗ trợ tính năng này.",
        ["fr"] = "Votre exécuteur peut ne pas prendre en charge cette fonctionnalité.",
        ["de"] = "Dein Executor unterstützt diese Funktion möglicherweise nicht.",
        ["ja"] = "あなたのエグゼキュータはこの機能をサポートしていない可能性があります。",
        ["ko"] = "사용 중인 실행기가 이 기능을 지원하지 않을 수 있습니다.",
        ["tr"] = "Executor’ınız bu özelliği desteklemeyebilir.",
        ["ar"] = "قد لا يدعم برنامج التنفيذ الخاص بك هذه الميزة."
    },

    ["custom songs"] = {
        ["en"] = "custom songs",
        ["pt-BR"] = "músicas custom",
        ["es"] = "canciones custom",
        ["ru"] = "кастом песни",
        ["zh-CN"] = "自定义歌曲",
        ["id"] = "lagu kustom",
        ["fil"] = "custom na kanta",
        ["vi"] = "bài hát tùy chỉnh",
        ["fr"] = "sons custom",
        ["de"] = "custom songs",
        ["ja"] = "カスタム曲",
        ["ko"] = "사용자 곡",
        ["tr"] = "özel şarkılar",
        ["ar"] = "أغاني مخصصة"
    },
    
    ["favourites"] = {
        ["en"] = "favourites",
        ["pt-BR"] = "favoritas",
        ["es"] = "favoritas",
        ["ru"] = "избранное",
        ["zh-CN"] = "收藏",
        ["id"] = "favorit",
        ["fil"] = "paborito",
        ["vi"] = "yêu thích",
        ["fr"] = "favoris",
        ["de"] = "favoriten",
        ["ja"] = "お気に入り",
        ["ko"] = "즐겨찾기",
        ["tr"] = "favoriler",
        ["ar"] = "المفضلة"
    },

    ["other"] = {
        ["en"] = "other",
        ["pt-BR"] = "outros",
        ["es"] = "otros",
        ["ru"] = "другое",
        ["zh-CN"] = "其他",
        ["id"] = "lainnya",
        ["fil"] = "iba pa",
        ["vi"] = "khác",
        ["fr"] = "autres",
        ["de"] = "andere",
        ["ja"] = "その他",
        ["ko"] = "기타",
        ["tr"] = "diğer",
        ["ar"] = "أخرى"
    },

    ["all"] = {
        ["en"] = "all",
        ["pt-BR"] = "todas",
        ["es"] = "todas",
        ["ru"] = "все",
        ["zh-CN"] = "全部",
        ["id"] = "semua",
        ["fil"] = "lahat",
        ["vi"] = "tất cả",
        ["fr"] = "toutes",
        ["de"] = "alle",
        ["ja"] = "すべて",
        ["ko"] = "전체",
        ["tr"] = "tümü",
        ["ar"] = "الكل"
    },

    ["songplayingerror"] = {
        ["en"] = "A song is already playing.",
        ["pt-BR"] = "Uma música já está sendo reproduzida.",
        ["es"] = "Ya se está reproduciendo una canción.",
        ["ru"] = "Песня уже проигрывается.",
        ["zh-CN"] = "一首歌曲正在播放。",
        ["id"] = "Sebuah lagu sedang diputar.",
        ["fil"] = "May kasalukuyang tumutugtog na kanta.",
        ["vi"] = "Một bài hát đang phát.",
        ["fr"] = "Une chanson est déjà en cours de lecture.",
        ["de"] = "Ein Lied wird bereits abgespielt.",
        ["ja"] = "曲はすでに再生中です。",
        ["ko"] = "이미 노래가 재생 중입니다.",
        ["tr"] = "Zaten bir şarkı çalıyor.",
        ["ar"] = "هناك أغنية تعمل بالفعل."
    },

    ["stoploopingsongs"] = {
        ["en"] = "STOP LOOPING SONGS",
        ["pt-BR"] = "PARAR LOOP MÚSICAS",
        ["es"] = "DETENER LOOP",
        ["ru"] = "ОСТАНОВИТЬ ПОВТОР",
        ["zh-CN"] = "停止循环",
        ["id"] = "BERHENTI LOOP LAGU",
        ["fil"] = "ITIGIL LOOP",
        ["vi"] = "DỪNG LẶP BÀI HÁT",
        ["fr"] = "ARRÊTER LE LOOP",
        ["de"] = "LOOP LIEDER STOPPEN",
        ["ja"] = "ループ停止",
        ["ko"] = "노래 반복 중지",
        ["tr"] = "LOOP ŞARKI DURDUR",
        ["ar"] = "إيقاف التكرار"
    },    

    ["midispoofon"] = {
        ["en"] = "MIDI spoofing is turned on. Click the question mark for more info.",
        ["pt-BR"] = "A falsificação de MIDI está ativada. Clique no ponto de interrogação para mais informações.",
        ["es"] = "La falsificación de MIDI está activada. Haz clic en el signo de interrogación para más información.",
        ["ru"] = "Подделка MIDI включена. Нажмите на знак вопроса для получения дополнительной информации.",
        ["zh-CN"] = "MIDI 伪装已开启。点击问号获取更多信息。",
        ["id"] = "Spoofing MIDI telah diaktifkan. Klik tanda tanya untuk info lebih lanjut.",
        ["fil"] = "Ang pag-peke ng MIDI ay naka-on. I-click ang tandang pananong para sa karagdagang impormasyon.",
        ["vi"] = "Chế độ giả lập MIDI đã bật. Nhấn dấu hỏi để biết thêm thông tin.",
        ["fr"] = "La simulation MIDI est activée. Cliquez sur le point d'interrogation pour plus d'informations.",
        ["de"] = "MIDI-Spoofing ist aktiviert. Klicken Sie auf das Fragezeichen für weitere Informationen.",
        ["ja"] = "MIDIの偽装がオンになっています。詳細は？マークをクリックしてください。",
        ["ko"] = "MIDI 스푸핑이 켜져 있습니다. 자세한 내용은 물음표를 클릭하세요.",
        ["tr"] = "MIDI sahteleme açık. Daha fazla bilgi için soru işaretine tıklayın.",
        ["ar"] = "تم تفعيل تزييف MIDI. اضغط على علامة السؤال لمزيد من المعلومات."
    },

    ["midispoofoff"] = {
        ["en"] = "MIDI spoofing is turned off.",
        ["pt-BR"] = "A falsificação de MIDI está desativada.",
        ["es"] = "La falsificación de MIDI está desactivada.",
        ["ru"] = "Подделка MIDI выключена.",
        ["zh-CN"] = "MIDI 伪装已关闭。",
        ["id"] = "Spoofing MIDI telah dimatikan.",
        ["fil"] = "Ang pag-peke ng MIDI ay naka-off.",
        ["vi"] = "Chế độ giả lập MIDI đã tắt.",
        ["fr"] = "La simulation MIDI est désactivée.",
        ["de"] = "MIDI-Spoofing ist deaktiviert.",
        ["ja"] = "MIDIの偽装はオフになっています。",
        ["ko"] = "MIDI 스푸핑이 꺼져 있습니다.",
        ["tr"] = "MIDI sahteleme kapalı.",
        ["ar"] = "تم إيقاف تزييف MIDI."
    },

    ["beganplayingnotif"] = {
        ["en"] = "Began playing song.",
        ["pt-BR"] = "Começou a tocar a música.",
        ["es"] = "Se empezó a reproducir la canción.",
        ["ru"] = "Началось воспроизведение песни.",
        ["zh-CN"] = "开始播放歌曲。",
        ["id"] = "Mulai memutar lagu.",
        ["fil"] = "Nagsimula na ang pagtugtog ng kanta.",
        ["vi"] = "Đã bắt đầu phát bài hát.",
        ["fr"] = "Lecture de la chanson commencée.",
        ["de"] = "Das Lied wird abgespielt.",
        ["ja"] = "曲の再生を開始しました。",
        ["ko"] = "노래 재생을 시작했습니다.",
        ["tr"] = "Şarkı çalmaya başladı.",
        ["ar"] = "بدأ تشغيل الأغنية."
    },

    ["brokensongscript"] = {
        ["en"] = "Your song script is broken. If confused, contact support in the Discord.",
        ["pt-BR"] = "Seu script de música está quebrado. Se estiver confuso, entre em contato com o suporte no Discord.",
        ["es"] = "Tu script de canción está roto. Si tienes dudas, contacta al soporte en Discord.",
        ["ru"] = "Ваш скрипт песни повреждён. Если что-то непонятно, свяжитесь с поддержкой в Discord.",
        ["zh-CN"] = "你的歌曲脚本出现问题。如有疑问，请在 Discord 联系客服。",
        ["id"] = "Script lagumu rusak. Jika bingung, hubungi dukungan di Discord.",
        ["fil"] = "Sira ang iyong song script. Kung nalilito, makipag-ugnayan sa suporta sa Discord.",
        ["vi"] = "Kịch bản bài hát của bạn bị lỗi. Nếu bối rối, liên hệ hỗ trợ trên Discord.",
        ["fr"] = "Votre script de chanson est cassé. Si vous êtes perdu, contactez le support sur Discord.",
        ["de"] = "Dein Song-Skript ist fehlerhaft. Bei Fragen wende dich an den Support auf Discord.",
        ["ja"] = "あなたの曲のスクリプトが壊れています。わからない場合は、Discordのサポートに連絡してください。",
        ["ko"] = "노래 스크립트가 손상되었습니다. 혼란스러운 경우 Discord 지원팀에 문의하세요.",
        ["tr"] = "Şarkı skriptiniz bozuk. Eğer kafanız karıştıysa, Discord'daki destekle iletişime geçin.",
        ["ar"] = "سكريبت الأغنية الخاص بك معطّل. إذا كنت محتارًا، تواصل مع الدعم في Discord."
    },

    ["doubleclickdelete"] = {
        ["en"] = "Double-click to delete the song.",
        ["pt-BR"] = "Clique duas vezes para excluir a música.",
        ["es"] = "Haz doble clic para eliminar la canción.",
        ["ru"] = "Дважды щелкните, чтобы удалить песню.",
        ["zh-CN"] = "双击以删除歌曲。",
        ["id"] = "Klik dua kali untuk menghapus lagu.",
        ["fil"] = "I-double click para burahin ang kanta.",
        ["vi"] = "Nhấp đôi để xóa bài hát.",
        ["fr"] = "Double-cliquez pour supprimer la chanson.",
        ["de"] = "Doppelklicken, um das Lied zu löschen.",
        ["ja"] = "曲を削除するにはダブルクリックしてください。",
        ["ko"] = "노래를 삭제하려면 더블 클릭하세요.",
        ["tr"] = "Şarkıyı silmek için çift tıklayın.",
        ["ar"] = "انقر نقرًا مزدوجًا لحذف الأغنية."
    },

    ["songdeleted"] = {
        ["en"] = "Your song has been deleted.",
        ["pt-BR"] = "Sua música foi excluída.",
        ["es"] = "Tu canción ha sido eliminada.",
        ["ru"] = "Ваша песня была удалена.",
        ["zh-CN"] = "你的歌曲已被删除。",
        ["id"] = "Lagumu telah dihapus.",
        ["fil"] = "Ang iyong kanta ay natanggal na.",
        ["vi"] = "Bài hát của bạn đã bị xóa.",
        ["fr"] = "Votre chanson a été supprimée.",
        ["de"] = "Dein Lied wurde gelöscht.",
        ["ja"] = "あなたの曲は削除されました。",
        ["ko"] = "노래가 삭제되었습니다.",
        ["tr"] = "Şarkınız silindi.",
        ["ar"] = "تم حذف أغنيتك."
    },

    ["spoof midi: what is it?"] = {
        ["en"] = "spoof midi: what is it?",
        ["pt-BR"] = "falsificar midi: o que é?",
        ["es"] = "falsificar midi: ¿qué es?",
        ["ru"] = "подделать midi: что это?",
        ["zh-CN"] = "伪装 midi：这是什么？",
        ["id"] = "palsukan midi: apa itu?",
        ["fil"] = "peke ang midi: ano ito?",
        ["vi"] = "giả midi: đó là gì?",
        ["fr"] = "simuler midi : qu'est-ce que c'est ?",
        ["de"] = "midi vortäuschen: was ist das?",
        ["ja"] = "midiを偽装：それは何？",
        ["ko"] = "midi 스푸핑: 이게 뭐야?",
        ["tr"] = "midi sahteleme: bu nedir?",
        ["ar"] = "تزييف midi: ما هو؟"
    },
    
    ["spoof midi info"] = {
        ["en"] = "This option is showing because you're in the game 'piano rooms'. When 'spoof midi' is ON, talentless tells the game that all your inputs come from a real MIDI keyboard, not QWERTY! This makes autoplay more believable, since people will think you're playing a real piano. Just turn it on and play any song!",
        ["pt-BR"] = "Esta opção aparece porque você está no jogo 'piano rooms'. Quando 'falsificar midi' está LIGADO, talentless diz ao jogo que seus inputs vêm de um teclado MIDI real, não de um QWERTY! Isso faz o autoplay parecer mais real. Basta ativar e tocar qualquer música!",
        ["es"] = "Esta opción aparece porque estás en el juego 'piano rooms'. Cuando 'falsificar midi' está ACTIVADO, talentless le dice al juego que tus entradas vienen de un teclado MIDI real, no de QWERTY. Esto hace que el autoplay parezca más real. ¡Solo actívalo y toca cualquier canción!",
        ["ru"] = "Эта опция появилась, потому что вы в игре 'piano rooms'. Когда 'подделать midi' включён, talentless сообщает игре, что все ваши нажатия идут с реальной MIDI-клавиатуры, а не QWERTY! Автовоспроизведение выглядит убедительнее — люди подумают, что вы играете на настоящем пианино. Просто включите и играйте любую песню!",
        ["zh-CN"] = "此选项出现是因为你在游戏“piano rooms”中。当“伪装 midi”开启时，talentless 会告诉游戏你的输入来自真实的 MIDI 键盘，而不是 QWERTY！这样自动演奏更逼真，别人会以为你在弹钢琴。只需开启然后弹奏任意歌曲！",
        ["id"] = "Opsi ini muncul karena kamu sedang di game 'piano rooms'. Saat 'palsukan midi' AKTIF, talentless memberi tahu game bahwa inputmu berasal dari keyboard MIDI asli, bukan QWERTY! Ini membuat autoplay lebih meyakinkan. Cukup aktifkan dan mainkan lagu apa pun!",
        ["fil"] = "Lalabas ang opsyong ito dahil nasa laro kang 'piano rooms'. Kapag naka-ON ang 'peke ang midi', sasabihin ng talentless sa laro na galing sa totoong MIDI keyboard ang input mo, hindi QWERTY! Mas kapani-paniwala tuloy ang autoplay. I-on lang at tumugtog ng kahit anong kanta!",
        ["vi"] = "Tùy chọn này xuất hiện vì bạn đang ở trò chơi 'piano rooms'. Khi 'giả midi' BẬT, talentless sẽ báo cho game rằng các thao tác của bạn đến từ bàn phím MIDI thật, không phải QWERTY! Điều này làm autoplay thuyết phục hơn. Chỉ cần bật lên và chơi bất kỳ bài nào!",
        ["fr"] = "Cette option apparaît car vous êtes dans le jeu 'piano rooms'. Quand 'simuler midi' est ACTIVÉ, talentless fait croire au jeu que vos entrées viennent d’un vrai clavier MIDI, pas d’un QWERTY ! L’autoplay paraît ainsi plus crédible. Activez-le et jouez n’importe quelle chanson !",
        ["de"] = "Diese Option erscheint, weil du im Spiel 'piano rooms' bist. Wenn 'midi vortäuschen' AKTIV ist, sagt talentless dem Spiel, dass deine Eingaben von einem echten MIDI-Keyboard kommen, nicht von QWERTY! Dadurch wirkt Autoplay glaubwürdiger. Einfach einschalten und ein Lied spielen!",
        ["ja"] = "このオプションはゲーム「piano rooms」にいるため表示されています。「midiを偽装」をオンにすると、talentless はゲームにすべての入力がQWERTYではなく本物のMIDIキーボードから来ていると伝えます。これで自動演奏がより本物らしく見え、人々は本当にピアノを弾いていると思います。オンにして曲を弾くだけ！",
        ["ko"] = "이 옵션은 'piano rooms' 게임에 있기 때문에 표시됩니다. 'midi 스푸핑'을 켜면, talentless가 게임에 당신의 입력이 QWERTY가 아닌 실제 MIDI 키보드에서 온 것처럼 알려줍니다! 이렇게 하면 자동 연주가 훨씬 그럴듯해집니다. 그냥 켜고 아무 노래나 연주해 보세요!",
        ["tr"] = "Bu seçenek 'piano rooms' oyununda olduğun için görünüyor. 'midi sahteleme' AÇIK olduğunda, talentless oyuna tüm girişlerinin gerçek bir MIDI klavyeden geldiğini söyler, QWERTY’den değil! Bu, otomatik çalmayı daha inandırıcı yapar. Sadece aç ve herhangi bir şarkıyı çal!",
        ["ar"] = "يظهر هذا الخيار لأنك في لعبة 'piano rooms'. عند تفعيل 'تزييف midi'، سيخبر talentless اللعبة أن جميع مدخلاتك تأتي من لوحة مفاتيح MIDI حقيقية، وليس QWERTY! هذا يجعل التشغيل التلقائي أكثر إقناعًا. فقط قم بتشغيله واعزف أي أغنية!"
    },
    
    ["midi connect reminder"] = {
        ["en"] = "Make sure to turn on midi connect!",
        ["pt-BR"] = "Não esqueça de ativar o midi connect!",
        ["es"] = "¡Asegúrate de activar midi connect!",
        ["ru"] = "Обязательно включите midi connect!",
        ["zh-CN"] = "记得开启 midi connect！",
        ["id"] = "Pastikan menyalakan midi connect!",
        ["fil"] = "Siguraduhin na naka-on ang midi connect!",
        ["vi"] = "Nhớ bật midi connect!",
        ["fr"] = "N’oubliez pas d’activer midi connect !",
        ["de"] = "Stelle sicher, dass midi connect eingeschaltet ist!",
        ["ja"] = "必ず midi connect をオンにしてください！",
        ["ko"] = "midi connect를 꼭 켜세요!",
        ["tr"] = "Midi connect'i açmayı unutma!",
        ["ar"] = "تأكد من تشغيل midi connect!"
    },

    ["custom song instructions"] = {
        ["en"] = "Convert a MIDI file into a song script using MIDI2LUA (bit.ly/midi2lua). Then, paste the full, unedited script here to add the song to your GUI in TALENTLESS!",
        ["pt-BR"] = "Converta um arquivo MIDI em script usando MIDI2LUA (bit.ly/midi2lua). Depois, cole o script completo aqui para adicionar a música no TALENTLESS!",
        ["es"] = "Convierte un archivo MIDI en script con MIDI2LUA (bit.ly/midi2lua). Luego pega el script completo aquí para añadir la canción en TALENTLESS.",
        ["ru"] = "Преобразуйте MIDI-файл в скрипт через MIDI2LUA (bit.ly/midi2lua). Затем вставьте полный скрипт сюда, чтобы добавить песню в TALENTLESS!",
        ["zh-CN"] = "使用 MIDI2LUA (bit.ly/midi2lua) 将 MIDI 文件转换为脚本。然后将完整脚本粘贴到这里，以添加歌曲到 TALENTLESS！",
        ["id"] = "Ubah file MIDI jadi script dengan MIDI2LUA (bit.ly/midi2lua). Lalu tempel script lengkap di sini untuk menambah lagu ke TALENTLESS!",
        ["fil"] = "I-convert ang MIDI file sa script gamit ang MIDI2LUA (bit.ly/midi2lua). Pagkatapos, i-paste ang buong script dito para maidagdag ang kanta sa TALENTLESS!",
        ["vi"] = "Chuyển file MIDI thành script bằng MIDI2LUA (bit.ly/midi2lua). Sau đó dán script đầy đủ vào đây để thêm bài hát vào TALENTLESS!",
        ["fr"] = "Convertissez un fichier MIDI en script avec MIDI2LUA (bit.ly/midi2lua). Puis collez le script complet ici pour ajouter la chanson à TALENTLESS !",
        ["de"] = "Wandle eine MIDI-Datei in ein Script mit MIDI2LUA (bit.ly/midi2lua) um. Danach füge das vollständige Script hier ein, um das Lied in TALENTLESS hinzuzufügen!",
        ["ja"] = "MIDIファイルをMIDI2LUA (bit.ly/midi2lua)でスクリプトに変換します。その後、完全なスクリプトをここに貼り付けてTALENTLESSに曲を追加してください！",
        ["ko"] = "MIDI 파일을 MIDI2LUA (bit.ly/midi2lua)로 변환하세요. 그런 다음 전체 스크립트를 여기에 붙여 넣어 TALENTLESS에 노래를 추가하세요!",
        ["tr"] = "Bir MIDI dosyasını MIDI2LUA (bit.ly/midi2lua) ile script'e çevir. Sonra tam script'i buraya yapıştırarak şarkıyı TALENTLESS'e ekle!",
        ["ar"] = "حوّل ملف MIDI إلى سكربت باستخدام MIDI2LUA (bit.ly/midi2lua). ثم الصق السكربت الكامل هنا لإضافة الأغنية في TALENTLESS!"
    },

    ["insert song script"] = {
        ["en"] = "Insert your song script and the name of your song.",
        ["pt-BR"] = "Insira o script e o nome da sua música.",
        ["es"] = "Inserta el script y el nombre de tu canción.",
        ["ru"] = "Вставьте скрипт и название вашей песни.",
        ["zh-CN"] = "输入脚本和歌曲名称。",
        ["id"] = "Masukkan script dan nama lagumu.",
        ["fil"] = "Ilagay ang script at pangalan ng kanta mo.",
        ["vi"] = "Nhập script và tên bài hát của bạn.",
        ["fr"] = "Insérez le script et le nom de votre chanson.",
        ["de"] = "Füge dein Script und den Liednamen ein.",
        ["ja"] = "スクリプトと曲名を入力してください。",
        ["ko"] = "스크립트와 노래 이름을 입력하세요.",
        ["tr"] = "Şarkı scriptini ve adını gir.",
        ["ar"] = "أدخل السكربت واسم أغنيتك."
    },

    ["song name prompt"] = {
        ["en"] = "What's the name of your song?",
        ["pt-BR"] = "Qual o nome da sua música?",
        ["es"] = "¿Cuál es el nombre de tu canción?",
        ["ru"] = "Как называется ваша песня?",
        ["zh-CN"] = "你的歌曲叫什么名字？",
        ["id"] = "Apa nama lagumu?",
        ["fil"] = "Ano ang pangalan ng kanta mo?",
        ["vi"] = "Tên bài hát của bạn là gì?",
        ["fr"] = "Quel est le nom de ta chanson ?",
        ["de"] = "Wie heißt dein Lied?",
        ["ja"] = "曲の名前は何ですか？",
        ["ko"] = "노래 제목은 무엇인가요?",
        ["tr"] = "Şarkının adı ne?",
        ["ar"] = "ما اسم أغنيتك؟"
    },

    ["submit"] = {
        ["en"] = "SUBMIT!",
        ["pt-BR"] = "ENVIAR!",
        ["es"] = "ENVIAR!",
        ["ru"] = "ОТПРАВИТЬ!",
        ["zh-CN"] = "提交！",
        ["id"] = "KIRIM!",
        ["fil"] = "IPASA!",
        ["vi"] = "GỬI!",
        ["fr"] = "ENVOYER !",
        ["de"] = "SENDEN!",
        ["ja"] = "送信！",
        ["ko"] = "제출!",
        ["tr"] = "GÖNDER!",
        ["ar"] = "إِرْسَال!"
    },

    ["songnameexists"] = {
        ["en"] = "You already have a song with this name.",
        ["pt-BR"] = "Você já tem uma música com esse nome.",
        ["es"] = "Ya tienes una canción con ese nombre.",
        ["ru"] = "У вас уже есть песня с таким названием.",
        ["zh-CN"] = "你已经有同名歌曲。",
        ["id"] = "Kamu sudah punya lagu dengan nama ini.",
        ["fil"] = "May kanta ka na sa pangalang ito.",
        ["vi"] = "Bạn đã có bài hát với tên này.",
        ["fr"] = "Vous avez déjà une chanson avec ce nom.",
        ["de"] = "Du hast bereits ein Lied mit diesem Namen.",
        ["ja"] = "この名前の曲は既にあります。",
        ["ko"] = "이미 같은 이름의 노래가 있습니다.",
        ["tr"] = "Bu isimde bir şarkınız zaten var.",
        ["ar"] = "لديك بالفعل أغنية بهذا الاسم."
    },
    
    ["songadded"] = {
        ["en"] = "You have added the song \"%s\".",
        ["pt-BR"] = "Você adicionou a música \"%s\".",
        ["es"] = "Has añadido la canción \"%s\".",
        ["ru"] = "Вы добавили песню \"%s\".",
        ["zh-CN"] = "你已添加歌曲「%s」。",
        ["id"] = "Kamu telah menambahkan lagu \"%s\".",
        ["fil"] = "Nagdagdag ka ng kanta na \"%s\".",
        ["vi"] = "Bạn đã thêm bài hát \"%s\".",
        ["fr"] = "Vous avez ajouté la chanson \"%s\".",
        ["de"] = "Du hast das Lied \"%s\" hinzugefügt.",
        ["ja"] = "曲「%s」を追加しました。",
        ["ko"] = "노래 \"%s\"을(를) 추가했습니다.",
        ["tr"] = "Şarkı \"%s\" eklendi.",
        ["ar"] = "لقد أضفت الأغنية \"%s\"."
    },
    
    ["copy"] = {
        ["en"] = "copy!",
        ["pt-BR"] = "copiar!",
        ["es"] = "copiar!",
        ["ru"] = "копировать!",
        ["zh-CN"] = "复制！",
        ["id"] = "salin!",
        ["fil"] = "kopya!",
        ["vi"] = "sao chép!",
        ["fr"] = "copier !",
        ["de"] = "kopieren!",
        ["ja"] = "コピー！",
        ["ko"] = "복사!",
        ["tr"] = "kopyala!",
        ["ar"] = "نسخ!"
    },
    
    ["help info"] = {
        ["en"] = "Need help with TALENTLESS? Want to turn MIDI files into autoplay scripts, find tutorials, or get help from the Discord server? Click the button below to copy the link to my official website!",
        ["pt-BR"] = "Precisa de ajuda com TALENTLESS? Quer transformar arquivos MIDI em scripts de autoplay, encontrar tutoriais ou obter ajuda no Discord? Clique no botão abaixo para copiar o link do site oficial!",
        ["es"] = "¿Necesitas ayuda con TALENTLESS? ¿Quieres convertir archivos MIDI en scripts de autoplay, encontrar tutoriales o recibir ayuda en Discord? Haz clic en el botón abajo para copiar el enlace a mi sitio oficial!",
        ["ru"] = "Нужна помощь с TALENTLESS? Хотите конвертировать MIDI-файлы в скрипты автоплея, найти уроки или получить помощь в Discord? Нажмите кнопку ниже, чтобы скопировать ссылку на официальный сайт!",
        ["zh-CN"] = "需要 TALENTLESS 的帮助吗？想将 MIDI 文件转换为自动播放脚本、查找教程或在 Discord 获取帮助？点击下方按钮复制我的官方网站链接！",
        ["id"] = "Perlu bantuan dengan TALENTLESS? Ingin mengubah file MIDI menjadi script autoplay, mencari tutorial, atau mendapatkan bantuan dari Discord? Klik tombol di bawah untuk menyalin link situs resmi saya!",
        ["fil"] = "Kailangan mo ba ng tulong sa TALENTLESS? Gusto mo bang gawing autoplay script ang MIDI files, humanap ng tutorials, o humingi ng tulong sa Discord? I-click ang button sa ibaba para kopyahin ang link sa aking opisyal na website!",
        ["vi"] = "Cần trợ giúp với TALENTLESS? Muốn chuyển file MIDI thành script autoplay, tìm hướng dẫn hoặc nhận trợ giúp từ server Discord? Nhấn nút bên dưới để sao chép liên kết tới website chính thức của tôi!",
        ["fr"] = "Besoin d'aide avec TALENTLESS ? Vous voulez convertir des fichiers MIDI en scripts d'autoplay, trouver des tutoriels ou obtenir de l'aide sur Discord ? Cliquez sur le bouton ci-dessous pour copier le lien vers mon site officiel !",
        ["de"] = "Brauchen Sie Hilfe mit TALENTLESS? Möchten Sie MIDI-Dateien in Autoplay-Skripte umwandeln, Tutorials finden oder Hilfe im Discord erhalten? Klicken Sie auf die Schaltfläche unten, um den Link zu meiner offiziellen Website zu kopieren!",
        ["ja"] = "TALENTLESSの使い方で困っていますか？MIDIファイルを自動演奏スクリプトに変換したり、チュートリアルを探したり、Discordでサポートを受けたりできます。下のボタンをクリックして公式サイトのリンクをコピーしてください！",
        ["ko"] = "TALENTLESS에 도움이 필요하신가요? MIDI 파일을 자동 재생 스크립트로 변환하거나, 튜토리얼을 찾거나, Discord 서버에서 도움을 받고 싶나요? 아래 버튼을 클릭하여 공식 웹사이트 링크를 복사하세요!",
        ["tr"] = "TALENTLESS hakkında yardıma mı ihtiyacınız var? MIDI dosyalarını autoplay script’lere dönüştürmek, rehberler bulmak veya Discord sunucusundan yardım almak ister misiniz? Resmi web sitemin bağlantısını kopyalamak için aşağıdaki butona tıklayın!",
        ["ar"] = "تحتاج مساعدة مع TALENTLESS؟ تريد تحويل ملفات MIDI إلى سكربتات تشغيل تلقائي، العثور على دروس، أو الحصول على المساعدة من سيرفر Discord؟ اضغط الزر أدناه لنسخ الرابط إلى موقعي الرسمي!"
    },
    
    ["resources"] = {
        ["en"] = "resources",
        ["pt-BR"] = "recursos",
        ["es"] = "recursos",
        ["ru"] = "ресурсы",
        ["zh-CN"] = "资源",
        ["id"] = "sumber",
        ["fil"] = "mga sanggunian",
        ["vi"] = "tài nguyên",
        ["fr"] = "ressources",
        ["de"] = "ressourcen",
        ["ja"] = "リソース",
        ["ko"] = "리소스",
        ["tr"] = "kaynaklar",
        ["ar"] = "الموارد"
    },

    ["nevermind"] = {
        ["en"] = "nevermind",
        ["pt-BR"] = "deixa pra lá",
        ["es"] = "olvídalo",
        ["ru"] = "неважно",
        ["zh-CN"] = "算了",
        ["id"] = "lupakan",
        ["fil"] = "kalimutan na",
        ["vi"] = "thôi",
        ["fr"] = "laisse tomber",
        ["de"] = "egal",
        ["ja"] = "やめる",
        ["ko"] = "신경 쓰지 마",
        ["tr"] = "boşver",
        ["ar"] = "لا بأس"
    },

    ["linkcopied"] = {
        ["en"] = "https://hellohellohell0.com has been copied to your clipboard!",
        ["pt-BR"] = "https://hellohellohell0.com foi copiado para sua área de transferência!",
        ["es"] = "¡https://hellohellohell0.com se ha copiado en tu portapapeles!",
        ["ru"] = "https://hellohellohell0.com скопировано в буфер обмена!",
        ["zh-CN"] = "https://hellohellohell0.com 已复制到剪贴板！",
        ["id"] = "https://hellohellohell0.com telah disalin ke clipboard Anda!",
        ["fil"] = "Na-copy na sa clipboard ang https://hellohellohell0.com!",
        ["vi"] = "https://hellohellohell0.com đã được sao chép vào clipboard!",
        ["fr"] = "https://hellohellohell0.com a été copié dans votre presse-papiers !",
        ["de"] = "https://hellohellohell0.com wurde in deine Zwischenablage kopiert!",
        ["ja"] = "https://hellohellohell0.com がクリップボードにコピーされました！",
        ["ko"] = "https://hellohellohell0.com 가 클립보드에 복사되었습니다!",
        ["tr"] = "https://hellohellohell0.com panoya kopyalandı!",
        ["ar"] = "تم نسخ https://hellohellohell0.com إلى الحافظة!"
    },    
    
}



function translator:setLanguage(lang)
    print("Trying to set language to:", lang)
    if _G.languages[lang] ~= nil then
        for k, v in pairs(_G.languages) do
            _G.languages[k] = false
            print("Setting", k, "to false")
        end
        _G.languages[lang] = true
        print("Language set to:", lang)
    else
        warn("Language not supported:", lang)
    end
    for k, v in pairs(_G.languages) do
        print(k, v)
    end    
end


function translator:translateText(text)

    local activeLanguage

    if _G.languages then
        for lang, isActive in pairs(_G.languages) do
            if isActive then
                activeLanguage = lang
                break
            end
        end
    else
    end

    activeLanguage = activeLanguage or "en"

    if not translations then
        return text
    end

    if translations[text] then
        if translations[text][activeLanguage] then
            return translations[text][activeLanguage]
        else
        end
    else
    end

    return text -- fallback
end


return translator
