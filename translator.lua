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

    ["spoof midi title"] = {
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

    ["error margin"] = {
        ["en"] = "error margin: ",
        ["pt-BR"] = "margem de erro: ",
        ["es"] = "margen de error: ",
        ["ru"] = "погрешность: ",
        ["zh-CN"] = "误差范围：",
        ["id"] = "batas kesalahan: ",
        ["fil"] = "margin ng error: ",
        ["vi"] = "sai số: ",
        ["fr"] = "marge d’erreur : ",
        ["de"] = "fehlertoleranz: ",
        ["ja"] = "誤差範囲：",
        ["ko"] = "오차 범위: ",
        ["tr"] = "hata payı: ",
        ["ar"] = "هامش الخطأ: "
    },

    ["what language"] = {
        ["en"] = "what language do you speak?",
        ["pt-BR"] = "qual idioma você fala?",
        ["es"] = "¿qué idioma hablas?",
        ["ru"] = "на каком языке вы говорите?",
        ["zh-CN"] = "你会说什么语言？",
        ["id"] = "bahasa apa yang kamu bisa?",
        ["fil"] = "anong wika ang sinasalita mo?",
        ["vi"] = "bạn nói ngôn ngữ nào?",
        ["fr"] = "quelle langue parlez-vous ?",
        ["de"] = "welche sprache sprichst du?",
        ["ja"] = "あなたは何語を話しますか？",
        ["ko"] = "당신은 어떤 언어를 합니까?",
        ["tr"] = "hangi dili konuşuyorsun?",
        ["ar"] = "ما هي اللغة التي تتحدثها؟"
    },
    
    ["confirm"] = {
        ["en"] = "confirm",
        ["pt-BR"] = "confirmar",
        ["es"] = "confirmar",
        ["ru"] = "подтвердить",
        ["zh-CN"] = "确认",
        ["id"] = "konfirmasi",
        ["fil"] = "kumpirmahin",
        ["vi"] = "xác nhận",
        ["fr"] = "confirmer",
        ["de"] = "bestätigen",
        ["ja"] = "確認",
        ["ko"] = "확인",
        ["tr"] = "onayla",
        ["ar"] = "تأكيد"
    },

    ["stopping..."] = {
        ["en"] = "stopping...",
        ["pt-BR"] = "parando...",
        ["es"] = "deteniendo...",
        ["ru"] = "останавливаю...",
        ["zh-CN"] = "正在停止...",
        ["id"] = "menghentikan...",
        ["fil"] = "humihinto...",
        ["vi"] = "đang dừng...",
        ["fr"] = "arrêt...",
        ["de"] = "stoppen...",
        ["ja"] = "停止中...",
        ["ko"] = "중지 중...",
        ["tr"] = "durduruluyor...",
        ["ar"] = "جارٍ الإيقاف..."
    },

    ["songfinished"] = {
        ["en"] = "your song has finished.",
        ["pt-BR"] = "sua música terminou.",
        ["es"] = "tu canción ha terminado.",
        ["ru"] = "твоя песня закончилась.",
        ["zh-CN"] = "你的歌曲已结束。",
        ["id"] = "lagumu telah selesai.",
        ["fil"] = "tapos na ang iyong kanta.",
        ["vi"] = "bài hát của bạn đã kết thúc.",
        ["fr"] = "ta chanson est terminée.",
        ["de"] = "dein lied ist beendet.",
        ["ja"] = "曲が終了しました。",
        ["ko"] = "노래가 끝났습니다.",
        ["tr"] = "şarkın bitti.",
        ["ar"] = "انتهت أغنيتك."
    },

    ["invalidbpm"] = {
        ["en"] = "please put a valid bpm",
        ["pt-BR"] = "por favor, coloque um bpm válido",
        ["es"] = "por favor, pon un bpm válido",
        ["ru"] = "пожалуйста, укажи допустимый bpm",
        ["zh-CN"] = "请输入有效的 bpm",
        ["id"] = "tolong masukkan bpm yang valid",
        ["fil"] = "pakilagay ng valid na bpm",
        ["vi"] = "vui lòng nhập bpm hợp lệ",
        ["fr"] = "mets un bpm valide s'il te plaît",
        ["de"] = "bitte gib ein gültiges bpm ein",
        ["ja"] = "有効な bpm を入力してください",
        ["ko"] = "유효한 bpm을 입력해주세요",
        ["tr"] = "lütfen geçerli bir bpm gir",
        ["ar"] = "من فضلك أدخل bpm صالحًا"
    },    

    ["copykey"] = {
        ["en"] = "COPY KEY LINK",
        ["pt-BR"] = "COPIAR LINK DA CHAVE",
        ["es"] = "COPIAR ENLACE DE LA CLAVE",
        ["ru"] = "СКОПИРОВАТЬ ССЫЛКУ НА КЛЮЧ",
        ["zh-CN"] = "复制密钥链接",
        ["id"] = "SALIN TAUTAN KUNCI",
        ["fil"] = "KOPYAHIN ANG KEY LINK",
        ["vi"] = "SAO CHÉP LIÊN KẾT KHÓA",
        ["fr"] = "COPIER LE LIEN DE CLÉ",
        ["de"] = "SCHLÜSSELLINK KOPIEREN",
        ["ja"] = "キーリンクをコピー",
        ["ko"] = "키 링크 복사",
        ["tr"] = "ANAHTAR BAĞLANTISINI KOPYALA",
        ["ar"] = "نسخ رابط المفتاح"
    },
    
    ["keytitle"] = {
        ["en"] = "TALENTLESS requires a key to use. Follow the instructions below.",
        ["pt-BR"] = "o TALENTLESS requer uma chave para usar. siga as instruções abaixo.",
        ["es"] = "TALENTLESS requiere una clave para usarse. sigue las instrucciones de abajo.",
        ["ru"] = "для использования TALENTLESS требуется ключ. следуйте инструкциям ниже.",
        ["zh-CN"] = "使用 TALENTLESS 需要密钥。请按照以下说明操作。",
        ["id"] = "TALENTLESS memerlukan kunci untuk digunakan. ikuti instruksi di bawah ini.",
        ["fil"] = "kailangan ng TALENTLESS ng key para magamit. sundin ang mga tagubilin sa ibaba.",
        ["vi"] = "TALENTLESS cần một khóa để sử dụng. hãy làm theo hướng dẫn bên dưới.",
        ["fr"] = "TALENTLESS nécessite une clé pour fonctionner. suivez les instructions ci-dessous.",
        ["de"] = "TALENTLESS benötigt einen schlüssel zur nutzung. folge den anweisungen unten.",
        ["ja"] = "TALENTLESS を使用するにはキーが必要です。以下の手順に従ってください。",
        ["ko"] = "TALENTLESS를 사용하려면 키가 필요합니다. 아래 지침을 따르세요.",
        ["tr"] = "TALENTLESS'i kullanmak için bir anahtar gerekir. aşağıdaki talimatları izleyin.",
        ["ar"] = "يتطلب TALENTLESS مفتاحًا للاستخدام. اتبع التعليمات أدناه."
    },

    ["keyinsert"] = {
        ["en"] = "Paste key here (example: 0491)",
        ["pt-BR"] = "cole a chave aqui (exemplo: 0491)",
        ["es"] = "pega la clave aquí (ejemplo: 0491)",
        ["ru"] = "вставьте ключ здесь (пример: 0491)",
        ["zh-CN"] = "在此粘贴密钥（例如：0491）",
        ["id"] = "tempel kunci di sini (contoh: 0491)",
        ["fil"] = "i-paste ang key dito (halimbawa: 0491)",
        ["vi"] = "dán khóa vào đây (ví dụ: 0491)",
        ["fr"] = "collez la clé ici (exemple : 0491)",
        ["de"] = "füge den schlüssel hier ein (beispiel: 0491)",
        ["ja"] = "ここにキーを貼り付けてください（例: 0491）",
        ["ko"] = "여기에 키를 붙여넣으세요 (예: 0491)",
        ["tr"] = "anahtarı buraya yapıştır (örnek: 0491)",
        ["ar"] = "الصق المفتاح هنا (مثال: 0491)"
    },

    ["step1"] = {
        ["en"] = "Step 1:",
        ["pt-BR"] = "Passo 1:",
        ["es"] = "Paso 1:",
        ["ru"] = "Шаг 1:",
        ["zh-CN"] = "步骤 1：",
        ["id"] = "Langkah 1:",
        ["fil"] = "Hakbang 1:",
        ["vi"] = "Bước 1:",
        ["fr"] = "Étape 1 :",
        ["de"] = "Schritt 1:",
        ["ja"] = "ステップ 1：",
        ["ko"] = "1단계:",
        ["tr"] = "Adım 1:",
        ["ar"] = "الخطوة 1:"
    },
    
    ["step2"] = {
        ["en"] = "Step 2:",
        ["pt-BR"] = "Passo 2:",
        ["es"] = "Paso 2:",
        ["ru"] = "Шаг 2:",
        ["zh-CN"] = "步骤 2：",
        ["id"] = "Langkah 2:",
        ["fil"] = "Hakbang 2:",
        ["vi"] = "Bước 2:",
        ["fr"] = "Étape 2 :",
        ["de"] = "Schritt 2:",
        ["ja"] = "ステップ 2：",
        ["ko"] = "2단계:",
        ["tr"] = "Adım 2:",
        ["ar"] = "الخطوة 2:"
    },
    
    ["step3"] = {
        ["en"] = "Step 3:",
        ["pt-BR"] = "Passo 3:",
        ["es"] = "Paso 3:",
        ["ru"] = "Шаг 3:",
        ["zh-CN"] = "步骤 3：",
        ["id"] = "Langkah 3:",
        ["fil"] = "Hakbang 3:",
        ["vi"] = "Bước 3:",
        ["fr"] = "Étape 3 :",
        ["de"] = "Schritt 3:",
        ["ja"] = "ステップ 3：",
        ["ko"] = "3단계:",
        ["tr"] = "Adım 3:",
        ["ar"] = "الخطوة 3:"
    },

    ["copykeysite"] = {
        ["en"] = "Click the button to copy the link for the key website.",
        ["pt-BR"] = "Clique no botão para copiar o link do site da chave.",
        ["es"] = "Haz clic en el botón para copiar el enlace del sitio de la clave.",
        ["ru"] = "Нажмите кнопку, чтобы скопировать ссылку на сайт ключа.",
        ["zh-CN"] = "点击按钮以复制密钥网站的链接。",
        ["id"] = "Klik tombol untuk menyalin tautan ke situs kunci.",
        ["fil"] = "I-click ang button para kopyahin ang link ng key website.",
        ["vi"] = "Nhấn nút để sao chép liên kết đến trang web lấy mã.",
        ["fr"] = "Cliquez sur le bouton pour copier le lien du site de la clé.",
        ["de"] = "Klicke auf den Knopf, um den Link zur Schlüssel-Website zu kopieren.",
        ["ja"] = "ボタンをクリックしてキーサイトのリンクをコピーしてください。",
        ["ko"] = "버튼을 눌러 키 웹사이트 링크를 복사하세요.",
        ["tr"] = "Anahtar web sitesinin bağlantısını kopyalamak için düğmeye tıklayın.",
        ["ar"] = "انقر على الزر لنسخ رابط موقع المفتاح."
    },

    ["completetaskforkey"] = {
        ["en"] = "Complete the task on the website to get the key.",
        ["pt-BR"] = "Conclua a tarefa no site para obter a chave.",
        ["es"] = "Completa la tarea en el sitio web para obtener la clave.",
        ["ru"] = "Выполните задание на сайте, чтобы получить ключ.",
        ["zh-CN"] = "在网站上完成任务即可获得密钥。",
        ["id"] = "Selesaikan tugas di situs web untuk mendapatkan kunci.",
        ["fil"] = "Kumpletuhin ang task sa website para makuha ang key.",
        ["vi"] = "Hoàn thành nhiệm vụ trên trang web để nhận mã.",
        ["fr"] = "Complétez la tâche sur le site pour obtenir la clé.",
        ["de"] = "Schließe die Aufgabe auf der Website ab, um den Schlüssel zu erhalten.",
        ["ja"] = "ウェブサイトのタスクを完了してキーを入手してください。",
        ["ko"] = "웹사이트에서 작업을 완료하면 키를 받을 수 있습니다.",
        ["tr"] = "Anahtarı almak için sitedeki görevi tamamlayın.",
        ["ar"] = "أكمِل المهمة على الموقع لتحصل على المفتاح."
    },

    ["pastekeyhere"] = {
        ["en"] = "Paste the key here →",
        ["pt-BR"] = "Cole a chave aqui →",
        ["es"] = "Pega la clave aquí →",
        ["ru"] = "Вставьте ключ сюда →",
        ["zh-CN"] = "在此粘贴密钥 →",
        ["id"] = "Tempel kunci di sini →",
        ["fil"] = "I-paste ang key dito →",
        ["vi"] = "Dán mã vào đây →",
        ["fr"] = "Collez la clé ici →",
        ["de"] = "Füge den Schlüssel hier ein →",
        ["ja"] = "ここにキーを貼り付け →",
        ["ko"] = "여기에 키를 붙여넣기 →",
        ["tr"] = "Anahtarı buraya yapıştır →",
        ["ar"] = "ألصِق المفتاح هنا →"
    },

    ["submitkey"] = {
        ["en"] = "Submit Key!",
        ["pt-BR"] = "Enviar chave!",
        ["es"] = "Enviar clave!",
        ["ru"] = "Отправить ключ!",
        ["zh-CN"] = "提交密钥！",
        ["id"] = "Kirim kunci!",
        ["fil"] = "Isumite ang key!",
        ["vi"] = "Gửi mã!",
        ["fr"] = "Envoyer la clé !",
        ["de"] = "Schlüssel senden!",
        ["ja"] = "キーを送信！",
        ["ko"] = "키 제출!",
        ["tr"] = "Anahtarı gönder!",
        ["ar"] = "أرسل المفتاح!"
    },
    
    ["keylinkcopied"] = {
        ["en"] = "The link to the key has been copied to your clipboard.",
        ["pt-BR"] = "O link da chave foi copiado para sua área de transferência.",
        ["es"] = "El enlace de la clave se copió en tu portapapeles.",
        ["ru"] = "Ссылка на ключ скопирована в ваш буфер обмена.",
        ["zh-CN"] = "密钥链接已复制到您的剪贴板。",
        ["id"] = "Tautan kunci telah disalin ke papan klip Anda.",
        ["fil"] = "Nakopya na sa iyong clipboard ang link ng key.",
        ["vi"] = "Liên kết khóa đã được sao chép vào clipboard của bạn.",
        ["fr"] = "Le lien de la clé a été copié dans votre presse-papiers.",
        ["de"] = "Der Schlüssellink wurde in deine Zwischenablage kopiert.",
        ["ja"] = "キーのリンクがクリップボードにコピーされました。",
        ["ko"] = "키 링크가 클립보드에 복사되었습니다.",
        ["tr"] = "Anahtar bağlantısı panonuza kopyalandı.",
        ["ar"] = "تم نسخ رابط المفتاح إلى الحافظة الخاصة بك."
    },

    ["keyempty"] = {
        ["en"] = "The key input is empty. Read the instructions to get the key.",
        ["pt-BR"] = "O campo da chave está vazio. Leia as instruções para obter a chave.",
        ["es"] = "El campo de la clave está vacío. Lee las instrucciones para obtener la clave.",
        ["ru"] = "Поле ввода ключа пусто. Прочтите инструкции, чтобы получить ключ.",
        ["zh-CN"] = "密钥输入为空。请阅读说明以获取密钥。",
        ["id"] = "Input kunci kosong. Baca instruksinya untuk mendapatkan kunci.",
        ["fil"] = "Walang laman ang key input. Basahin ang mga tagubilin para makuha ang key.",
        ["vi"] = "Ô nhập khóa đang trống. Hãy đọc hướng dẫn để lấy khóa.",
        ["fr"] = "Le champ de la clé est vide. Lisez les instructions pour obtenir la clé.",
        ["de"] = "Die Schlüsseleingabe ist leer. Lies die Anweisungen, um den Schlüssel zu erhalten.",
        ["ja"] = "キー入力が空です。キーを取得するには指示を読んでください。",
        ["ko"] = "키 입력이 비어 있습니다. 키를 얻으려면 지침을 읽으세요.",
        ["tr"] = "Anahtar girişi boş. Anahtarı almak için talimatları okuyun.",
        ["ar"] = "إدخال المفتاح فارغ. اقرأ التعليمات للحصول على المفتاح."
    },
    
    ["keysuccess"] = {
        ["en"] = "Success.",
        ["pt-BR"] = "Sucesso.",
        ["es"] = "Éxito.",
        ["ru"] = "Успешно.",
        ["zh-CN"] = "成功。",
        ["id"] = "Sukses.",
        ["fil"] = "Tagumpay.",
        ["vi"] = "Thành công.",
        ["fr"] = "Succès.",
        ["de"] = "Erfolg.",
        ["ja"] = "成功。",
        ["ko"] = "성공.",
        ["tr"] = "Başarılı.",
        ["ar"] = "نجاح."
    },
      
    ["keyinvalid"] = {
        ["en"] = "Your key is invalid. If you need help, join the discord server by clicking the question mark button.",
        ["pt-BR"] = "Sua chave é inválida. Se precisar de ajuda, entre no servidor do Discord clicando no botão de interrogação.",
        ["es"] = "Tu clave es inválida. Si necesitas ayuda, únete al servidor de Discord haciendo clic en el botón de interrogación.",
        ["ru"] = "Ваш ключ недействителен. Если нужна помощь, присоединяйтесь к серверу Discord, нажав на кнопку с вопросительным знаком.",
        ["zh-CN"] = "您的密钥无效。如需帮助，请点击问号按钮加入 Discord 服务器。",
        ["id"] = "Kunci Anda tidak valid. Jika membutuhkan bantuan, bergabunglah dengan server Discord dengan mengklik tombol tanda tanya.",
        ["fil"] = "Ang iyong key ay hindi wasto. Kung kailangan mo ng tulong, sumali sa Discord server sa pamamagitan ng pag-click sa question mark na button.",
        ["vi"] = "Khóa của bạn không hợp lệ. Nếu cần trợ giúp, hãy tham gia server Discord bằng cách nhấn nút dấu hỏi.",
        ["fr"] = "Votre clé est invalide. Si vous avez besoin d'aide, rejoignez le serveur Discord en cliquant sur le bouton point d'interrogation.",
        ["de"] = "Dein Schlüssel ist ungültig. Wenn du Hilfe brauchst, tritt dem Discord-Server bei, indem du auf die Fragezeichen-Schaltfläche klickst.",
        ["ja"] = "あなたのキーは無効です。ヘルプが必要な場合は、クエスチョンマークボタンをクリックして Discord サーバーに参加してください。",
        ["ko"] = "키가 유효하지 않습니다. 도움이 필요하면 물음표 버튼을 클릭하여 Discord 서버에 참여하세요.",
        ["tr"] = "Anahtarınız geçersiz. Yardıma ihtiyacınız varsa, soru işareti düğmesine tıklayarak Discord sunucusuna katılın.",
        ["ar"] = "المفتاح الخاص بك غير صالح. إذا كنت بحاجة إلى مساعدة، انضم إلى خادم Discord بالنقر على زر علامة الاستفهام."
    },
    
    ["keyexpired"] = {
        ["en"] = "This key is expired. The key was reset recently. Redo the tasks on the key website to get a new key.",
        ["pt-BR"] = "Esta chave expirou. A chave foi redefinida recentemente. Refaça as tarefas no site da chave para obter uma nova chave.",
        ["es"] = "Esta clave ha expirado. La clave se reinició recientemente. Vuelve a hacer las tareas en el sitio web de la clave para obtener una nueva.",
        ["ru"] = "Этот ключ истёк. Ключ был недавно сброшен. Выполните задания на сайте ключа, чтобы получить новый.",
        ["zh-CN"] = "此密钥已过期。密钥最近被重置。请重新在密钥网站完成任务以获取新密钥。",
        ["id"] = "Kunci ini sudah kedaluwarsa. Kunci baru-baru ini direset. Lakukan kembali tugas di situs kunci untuk mendapatkan kunci baru.",
        ["fil"] = "Paso na ang key na ito. Kakare-reset lang ng key kamakailan. Gawin muli ang mga task sa key website para makakuha ng bagong key.",
        ["vi"] = "Khóa này đã hết hạn. Khóa vừa được đặt lại gần đây. Hãy làm lại các nhiệm vụ trên trang web để nhận khóa mới.",
        ["fr"] = "Cette clé a expiré. La clé a été réinitialisée récemment. Refaite les tâches sur le site pour obtenir une nouvelle clé.",
        ["de"] = "Dieser Schlüssel ist abgelaufen. Der Schlüssel wurde vor Kurzem zurückgesetzt. Wiederhole die Aufgaben auf der Schlüssel-Website, um einen neuen Schlüssel zu erhalten.",
        ["ja"] = "このキーは期限切れです。キーは最近リセットされました。新しいキーを取得するには、キーサイトでタスクをやり直してください。",
        ["ko"] = "이 키는 만료되었습니다. 키가 최근에 초기화되었습니다. 새로운 키를 받으려면 키 웹사이트에서 작업을 다시 수행하세요.",
        ["tr"] = "Bu anahtarın süresi doldu. Anahtar yakın zamanda sıfırlandı. Yeni bir anahtar almak için anahtar sitesindeki görevleri yeniden yapın.",
        ["ar"] = "هذه المفتاح منتهي الصلاحية. تم إعادة تعيين المفتاح مؤخرًا. أعد القيام بالمهام في موقع المفتاح للحصول على مفتاح جديد."
    },

    ["categories"] = {
        ["en"] = "categories",
        ["pt-BR"] = "categorias",
        ["es"] = "categorías",
        ["ru"] = "категории",
        ["zh-CN"] = "分类",
        ["id"] = "kategori",
        ["fil"] = "mga kategorya",
        ["vi"] = "thể loại",
        ["fr"] = "catégories",
        ["de"] = "kategorien",
        ["ja"] = "カテゴリ",
        ["ko"] = "카테고리",
        ["tr"] = "kategoriler",
        ["ar"] = "الفئات"
    },
    
    ["utilities"] = {
        ["en"] = "utilities",
        ["pt-BR"] = "ferramentas",
        ["es"] = "utilidades",
        ["ru"] = "утилиты",
        ["zh-CN"] = "实用工具",
        ["id"] = "utilitas",
        ["fil"] = "mga kagamitan",
        ["vi"] = "tiện ích",
        ["fr"] = "outils",
        ["de"] = "dienstprogramme",
        ["ja"] = "ユーティリティ",
        ["ko"] = "유틸리티",
        ["tr"] = "araçlar",
        ["ar"] = "الأدوات"
    },

    ["copynewscript"] = {
        ["en"] = "copy new script!",
        ["pt-BR"] = "copiar novo script!",
        ["es"] = "copiar nuevo script!",
        ["ru"] = "скопировать новый скрипт!",
        ["zh-CN"] = "复制新脚本！",
        ["id"] = "salin skrip baru!",
        ["fil"] = "kopyahin ang bagong script!",
        ["vi"] = "sao chép script mới!",
        ["fr"] = "copier le nouveau script !",
        ["de"] = "neues skript kopieren!",
        ["ja"] = "新しいスクリプトをコピー！",
        ["ko"] = "새 스크립트 복사!",
        ["tr"] = "yeni scripti kopyala!",
        ["ar"] = "نسخ البرنامج الجديد!"
    },
    
    ["scriptcopied"] = {
        ["en"] = "copied!",
        ["pt-BR"] = "copiado!",
        ["es"] = "¡copiado!",
        ["ru"] = "скопировано!",
        ["zh-CN"] = "已复制！",
        ["id"] = "disalin!",
        ["fil"] = "nakopya!",
        ["vi"] = "đã sao chép!",
        ["fr"] = "copié !",
        ["de"] = "kopiert!",
        ["ja"] = "コピーしました！",
        ["ko"] = "복사됨!",
        ["tr"] = "kopyalandı!",
        ["ar"] = "تم النسخ!"
    },
    
    ["usenewloadstring"] = {
        ["en"] = "use TALENTLESS from the new loadstring:",
        ["pt-BR"] = "use TALENTLESS do novo loadstring:",
        ["es"] = "usa TALENTLESS desde el nuevo loadstring:",
        ["ru"] = "используйте TALENTLESS из новой loadstring:",
        ["zh-CN"] = "从新的 loadstring 使用 TALENTLESS：",
        ["id"] = "gunakan TALENTLESS dari loadstring baru:",
        ["fil"] = "gamitin ang TALENTLESS mula sa bagong loadstring:",
        ["vi"] = "sử dụng TALENTLESS từ loadstring mới:",
        ["fr"] = "utilisez TALENTLESS depuis le nouveau loadstring :",
        ["de"] = "verwende TALENTLESS aus dem neuen Loadstring:",
        ["ja"] = "新しい loadstring から TALENTLESS を使用：",
        ["ko"] = "새 loadstring에서 TALENTLESS 사용:",
        ["tr"] = "yeni loadstring'den TALENTLESS kullan:",
        ["ar"] = "استخدم TALENTLESS من loadstring الجديد:"
    },

    ["stopplayingplaylist"] = {
        ["en"] = "STOP PLAYING PLAYLIST",
        ["pt-BR"] = "PARAR DE TOCAR PLAYLIST",
        ["es"] = "DETENER REPRODUCCIÓN DE LA LISTA",
        ["ru"] = "ОСТАНОВИТЬ ВОСПРОИЗВЕДЕНИЕ ПЛЕЙЛИСТА",
        ["zh-CN"] = "停止播放播放列表",
        ["id"] = "HENTIKAN PEMUTARAN PLAYLIST",
        ["fil"] = "ITIGIL ANG PAG-PLAY NG PLAYLIST",
        ["vi"] = "DỪNG PHÁT DANH SÁCH PHÁT",
        ["fr"] = "ARRÊTER LA LECTURE DE LA PLAYLIST",
        ["de"] = "WIEDERGABELISTE STOPPEN",
        ["ja"] = "プレイリストの再生を停止",
        ["ko"] = "재생목록 재생 중지",
        ["tr"] = "ÇALMA LİSTESİNİ DURDUR",
        ["ar"] = "إيقاف تشغيل قائمة التشغيل"
    },
    
    ["playlist"] = {
        ["en"] = "playlist",
        ["pt-BR"] = "playlist",
        ["es"] = "lista",
        ["ru"] = "плейлист",
        ["zh-CN"] = "播放列表",
        ["id"] = "playlist",
        ["fil"] = "playlist",
        ["vi"] = "ds phát",
        ["fr"] = "playlist",
        ["de"] = "playlist",
        ["ja"] = "プレイリスト",
        ["ko"] = "재생목록",
        ["tr"] = "çalma listesi",
        ["ar"] = "قائمة التشغيل"
    },    

    ["shuffleplaylist"] = {
        ["en"] = "SHUFFLE PLAYLIST",
        ["pt-BR"] = "ALEATÓRIO",
        ["es"] = "ALEAT.",
        ["ru"] = "ПЕРЕМЕШАТЬ",
        ["zh-CN"] = "随机播放",
        ["id"] = "ACAK",
        ["fil"] = "SHUFFLE",
        ["vi"] = "XÁO TRỘN",
        ["fr"] = "ALÉATOIRE",
        ["de"] = "MISCHEN",
        ["ja"] = "シャッフル",
        ["ko"] = "셔플",
        ["tr"] = "KARIŞTIR",
        ["ar"] = "عشوائي"
    },
    
    ["playplaylist"] = {
        ["en"] = "PLAY PLAYLIST",
        ["pt-BR"] = "REPRODUZIR",
        ["es"] = "REPROD.",
        ["ru"] = "ИГРАТЬ",
        ["zh-CN"] = "播放",
        ["id"] = "PUTAR",
        ["fil"] = "PLAY",
        ["vi"] = "PHÁT",
        ["fr"] = "LIRE",
        ["de"] = "ABSPIELEN",
        ["ja"] = "再生",
        ["ko"] = "재생",
        ["tr"] = "ÇAL",
        ["ar"] = "تشغيل"
    },    

    ["playlisttooshort"] = {
        ["en"] = "You have less than 2 songs in your playlist.",
        ["pt-BR"] = "Você tem menos de 2 músicas na sua playlist.",
        ["es"] = "Tienes menos de 2 canciones en tu lista.",
        ["ru"] = "У вас меньше 2 песен в плейлисте.",
        ["zh-CN"] = "你的播放列表中少于2首歌曲。",
        ["id"] = "Daftar putar Anda kurang dari 2 lagu.",
        ["fil"] = "Mas mababa sa 2 ang kanta sa playlist mo.",
        ["vi"] = "Playlist của bạn có ít hơn 2 bài hát.",
        ["fr"] = "Vous avez moins de 2 chansons dans votre playlist.",
        ["de"] = "Du hast weniger als 2 Songs in deiner Playlist.",
        ["ja"] = "プレイリストに2曲未満しかありません。",
        ["ko"] = "재생목록에 2곡 미만이 있습니다.",
        ["tr"] = "Çalma listenizde 2'den az şarkı var.",
        ["ar"] = "لديك أقل من أغنيتين في قائمة التشغيل."
    },

    ["ALTALE"] = {
        ["ja"] = "アルタレ"
    },

    ["CENTIMETER"] = {
        ["ja"] = "センチメートル (CENTIMETER)"
    },

    ["FUKASHIGI NO CARTE"] = {
        ["ja"] = "不可思議のカルテ"
    },
    
    ["GIORNO'S THEME"] = {
        ["ja"] = "イル・ヴェント・ドーロ"
    },
    
    ["GURENGE"] = {
        ["ja"] = "紅蓮華"
    },
    
    ["MERRY-GO-ROUND OF LIFE"] = {
        ["ja"] = "秘密恋心"
    },
    
    ["HOWLS MOVING CASTLE"] = {
        ["ja"] = "人生のメリーゴーランド"
    },
    
    ["KAWAIKUTEGOMEN"] = {
        ["ja"] = "可愛くてごめん"
    },
    
    ["L'S THEME"] = {
        ["ja"] = "Lのテーマ"
    },
    
    ["LIGHT'S THEME"] = {
        ["ja"] = "ライトのテーマ"
    },
    
    ["LOST UMBRELLA"] = {
        ["ja"] = "ロストアンブレラ"
    },
    
    ["OVERTAKEN"] = {
        ["ja"] = "追いつめられた"
    },
    
    ["RACING INTO THE NIGHT"] = {
        ["ja"] = "夜に駆ける"
    },
    
    ["SHIKAIRO DAYS"] = {
        ["ja"] = "シカ色デイズ"
    },
    
    ["SILHOUETTE"] = {
        ["ja"] = "シルエット"
    },
    
    ["SPARKLE"] = {
        ["ja"] = "スパークル"
    },
    
    ["SUZUME"] = {
        ["ja"] = "すずめの戸締まり"
    },
    
    ["TIME FLOWS EVER ONWARD"] = {
        ["ja"] = "時は流れゆく"
    },
    
    ["YOUNG GIRL A"] = {
        ["ja"] = "少女A"
    },
    
    ["COMEDY"] = {
        ["ja"] = "喜劇"
    },
    
    ["GUREN NO YUMIYA"] = {
        ["ja"] = "紅蓮の弓矢"
    },
    
    ["A CRUEL ANGEL'S THESIS"] = {
        ["ja"] = "残酷な天使のテーゼ"
    },
    
    ["I'M INVINCIBLE"] = {
        ["ja"] = "私は最強"
    },
    
    ["YOUR GAZE, CREPUSCULAR"] = {
        ["ja"] = "まなざしは光"
    },
    
    ["SHINZOU WO SASEGEYO!"] = {
        ["ja"] = "心臓を捧げよ！"
    },
    
    ["HANA NI NATTE"] = {
        ["ja"] = "花になって"
    },
    
    ["SADNESS AND SORROW"] = {
        ["ja"] = "悲しみの向こう側"
    },
    
    ["WE WERE ANGELS"] = {
        ["ja"] = "僕達は天使だった"
    },
    
    ["ONE SUMMER'S DAY"] = {
        ["ja"] = "あの夏へ"
    },
    
    ["KAMADO TANJIRO NO UTA"] = {
        ["ja"] = "竈門炭治郎のうた"
    },
    
    ["RENAI CIRCULATION"] = {
        ["ja"] = "恋愛サーキュレーション"
    },
    
    ["CHIISANA KOI NO UTA"] = {
        ["ja"] = "小さな恋のうた"
    },
    
    ["WHERE OUR BLUE IS"] = {
        ["ja"] = "青のすみか"
    },
    
    ["REFLECTIONS"] = {
        ["ja"] = "リフレクション"
    },
    
    ["AI♡SCREAM!"] = {
        ["ja"] = "愛♡スクリ～ム！"
    },

    ["A TALE OF SIX TRILLION YEARS AND A NIGHT"] = {
        ["ja"] = "六兆年と一夜物語"
    },

    ["PROPOSE (9LANA)"] = {
        ["ja"] = "プロポーズ"
    },

    ["SINKING TOWN"] = {
        ["ja"] = "沈める街"
    },

    [""] = {
        ["ja"] = ""
    },

    [""] = {
        ["ja"] = ""
    },

    [""] = {
        ["ja"] = ""
    },

    [""] = {
        ["ja"] = ""
    },

    [""] = {
        ["ja"] = ""
    },
}

_G.languages = _G.languages or {
    ["en"] = false,       -- English
    ["pt-BR"] = false,    -- Brazilian Portuguese
    ["es"] = false,       -- Spanish
    ["ru"] = false,       -- Russian
    ["zh-CN"] = false,    -- Chinese (Simplified / Mandarin)
    ["id"] = false,       -- Indonesian
    ["fil"] = false,      -- Filipino (Tagalog)
    ["vi"] = false,       -- Vietnamese
    ["fr"] = false,       -- French
    ["de"] = false,       -- German
    ["ja"] = false,       -- Japanese
    ["ko"] = false,       -- Korean
    ["tr"] = false,       -- Turkish
    ["ar"] = false        -- Arabic
}

local function setLanguage(lang)
    if _G.languages[lang] ~= nil then
        for k, v in pairs(_G.languages) do
            _G.languages[k] = false
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


local languageCodes = {
    ["en"] = "English",
    ["pt-BR"] = "Português (Brasil)",
    ["es"] = "Español",
    ["ru"] = "Русский",
    ["zh-CN"] = "中文",
    ["id"] = "Bahasa Indonesia",
    ["fil"] = "Filipino",
    ["vi"] = "Tiếng Việt",
    ["fr"] = "Français",
    ["de"] = "Deutsch",
    ["ja"] = "日本語",
    ["ko"] = "한국어",
    ["tr"] = "Türkçe",
    ["ar"] = "العربية"
}

function translator:requestLang(frame, type)

    local finished = false
    local selectedLanguage = "en"

    print("Checking for saved language...")
    
    local savedLang

    if type == "first" then
        local success, result = pcall(readfile, "TALENTLESS_language.txt")
        if success then
            savedLang = result
            print("Saved language:", savedLang)
            print("Language codes has this?", languageCodes[savedLang])

            if languageCodes[savedLang] then
                setLanguage(savedLang)
                return
            end
        else
            warn("Failed to read file: TALENTLESS_language.txt")
        end
    end


    local languageFrame = Instance.new("Frame")
    local uic1 = Instance.new("UICorner")
    local title = Instance.new("TextLabel")
    local uic2 = Instance.new("UICorner")
    local closeButton = Instance.new("TextButton")
    local languageSelection = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local UIPadding = Instance.new("UIPadding")
    local whatLanguageTitle = Instance.new("TextLabel")
    local Proceed = Instance.new("TextButton")
    local DropdownFrame = Instance.new("Frame")
    local OpenSelector = Instance.new("TextButton")
    local DropdownArrow = Instance.new("TextButton")

    languageFrame.Name = "languageFrame"
    languageFrame.Parent = frame
    languageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    languageFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 41)
    languageFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    languageFrame.Size = UDim2.new(0, 475, 0, 272)
    languageFrame.ZIndex = 50

    uic1.CornerRadius = UDim.new(0, 4)
    uic1.Name = "uic1"
    uic1.Parent = languageFrame

    title.Name = "title"
    title.Parent = languageFrame
    title.BackgroundColor3 = Color3.fromRGB(50, 57, 73)
    title.Size = UDim2.new(1, 0, 0, 50)
    title.ZIndex = 2
    title.Font = Enum.Font.SourceSansBold
    title.Text = "TALENTLESS"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 46.000

    uic2.CornerRadius = UDim.new(0, 4)
    uic2.Name = "uic2"
    uic2.Parent = title

    closeButton.Name = "closeButton"
    closeButton.Parent = languageFrame
    closeButton.BackgroundTransparency = 1.000
    closeButton.Position = UDim2.new(1, -35, 0, 5)
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.ZIndex = 55
    closeButton.Font = Enum.Font.SourceSansBold
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.TextScaled = true

    closeButton.MouseButton1Click:Connect(function()
        finished = true
        languageFrame:Destroy()
        setLanguage(selectedLanguage)
    end)

    languageSelection.Name = "languageSelection"
    languageSelection.Parent = languageFrame
    languageSelection.Active = true
    languageSelection.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    languageSelection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    languageSelection.BorderSizePixel = 0
    languageSelection.Position = UDim2.new(0.315999955, 0, 0.522058845, 0)
    languageSelection.Size = UDim2.new(0, 167, 0, 84)
    languageSelection.Visible = false
    languageSelection.ScrollBarThickness = 1

    UIListLayout.Parent = languageSelection
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 5)

    for code, name in pairs(languageCodes) do
        local button = Instance.new("TextButton")

        button.Name = "languageButton"
        button.Parent = languageSelection
        button.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
        button.BorderColor3 = Color3.fromRGB(64, 68, 90)
        button.LayoutOrder = 1
        button.Position = UDim2.new(0.0514285713, 0, 0, 0)
        button.Size = UDim2.new(0, 157, 0, 24)
        button.Font = Enum.Font.SourceSans
        button.Text = name
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        button.TextScaled = true
        button.TextSize = 26.000
        button.TextWrapped = true

        button.MouseButton1Click:Connect(function()
            OpenSelector.Text = name
            selectedLanguage = code
            languageSelection.Visible = false
        end)
    end

    UIPadding.Parent = languageSelection
    UIPadding.PaddingTop = UDim.new(0, 5)

    whatLanguageTitle.Name = "whatLanguageTitle"
    whatLanguageTitle.Parent = languageFrame
    whatLanguageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    whatLanguageTitle.BackgroundTransparency = 1.000
    whatLanguageTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    whatLanguageTitle.BorderSizePixel = 0
    whatLanguageTitle.Position = UDim2.new(0.105263159, 0, 0.231617644, 0)
    whatLanguageTitle.Size = UDim2.new(0, 374, 0, 31)
    whatLanguageTitle.Font = Enum.Font.SourceSansBold
    whatLanguageTitle.Text = "what language do you speak?"
    whatLanguageTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    whatLanguageTitle.TextScaled = true
    whatLanguageTitle.TextSize = 14.000
    whatLanguageTitle.TextWrapped = true

    Proceed.Name = "Proceed"
    Proceed.Parent = languageFrame
    Proceed.BackgroundColor3 = Color3.fromRGB(85, 170, 85)
    Proceed.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Proceed.BorderSizePixel = 0
    Proceed.Position = UDim2.new(0.669473708, 0, 0.871323526, 0)
    Proceed.Size = UDim2.new(0, 157, 0, 35)
    Proceed.Font = Enum.Font.SourceSansBold
    Proceed.Text = "confirm"
    Proceed.TextColor3 = Color3.fromRGB(255, 255, 255)
    Proceed.TextSize = 28.000
    Proceed.TextWrapped = true

    Proceed.MouseButton1Click:Connect(function()
        pcall(function()
            writefile("TALENTLESS_language.txt", selectedLanguage)
        end)

        finished = true
        languageFrame:Destroy()
        setLanguage(selectedLanguage)
    end)

    DropdownFrame.Name = "DropdownFrame"
    DropdownFrame.Parent = languageFrame
    DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropdownFrame.BackgroundTransparency = 1.000
    DropdownFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DropdownFrame.BorderSizePixel = 0
    DropdownFrame.Position = UDim2.new(0.316000015, 0, 0.400000006, 0)
    DropdownFrame.Size = UDim2.new(0, 175, 0, 35)

    OpenSelector.Name = "OpenSelector"
    OpenSelector.Parent = DropdownFrame
    OpenSelector.AnchorPoint = Vector2.new(0.5, 0.5)
    OpenSelector.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    OpenSelector.BorderColor3 = Color3.fromRGB(64, 68, 90)
    OpenSelector.BorderSizePixel = 2
    OpenSelector.Position = UDim2.new(0.388571441, 0, 0.5, 0)
    OpenSelector.Size = UDim2.new(0, 136, 0, 32)
    OpenSelector.Font = Enum.Font.SourceSansBold
    OpenSelector.Text = "English"
    OpenSelector.TextColor3 = Color3.fromRGB(255, 255, 255)
    OpenSelector.TextScaled = true
    OpenSelector.TextSize = 14.000
    OpenSelector.TextWrapped = true

    DropdownArrow.Name = "OpenSelector"
    DropdownArrow.Parent = DropdownFrame
    DropdownArrow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropdownArrow.BackgroundColor3 = Color3.fromRGB(76, 82, 101)
    DropdownArrow.BorderColor3 = Color3.fromRGB(64, 68, 90)
    DropdownArrow.BorderSizePixel = 2
    DropdownArrow.Position = UDim2.new(0.868571401, 0, 0.5, 0)
    DropdownArrow.Size = UDim2.new(0, 32, 0, 32)
    DropdownArrow.Font = Enum.Font.SourceSansBold
    DropdownArrow.Text = "^"
    DropdownArrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    DropdownArrow.TextScaled = true
    DropdownArrow.TextSize = 14.000
    DropdownArrow.TextWrapped = true

    OpenSelector.MouseButton1Click:Connect(function()
        languageSelection.Visible = not languageSelection.Visible
        if languageSelection.Visible then
            DropdownArrow.Text = "v"
        else
            DropdownArrow.Text = "^"
        end
    end)

    DropdownArrow.MouseButton1Click:Connect(function()
        languageSelection.Visible = not languageSelection.Visible
        if languageSelection.Visible then
            DropdownArrow.Text = "v"
        else
            DropdownArrow.Text = "^"
        end
    end)

    repeat wait() until finished
end

return translator
