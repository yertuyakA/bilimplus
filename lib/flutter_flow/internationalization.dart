import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'uz'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? uzText = '',
  }) =>
      [ruText, uzText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // onboar2222
  {
    'gbm7ztud': {
      'ru': 'Пропустить',
      'uz': 'Oʻtkazib yuborish',
    },
    'opi0knco': {
      'ru': 'Ежедневные тесты',
      'uz': 'Kundalik testlar',
    },
    'ctahpwe4': {
      'ru': 'Каждый день ученику открывается новый тест по математике',
      'uz': 'Har kuni talabaga matematikadan yangi test topshiriladi.',
    },
    'qs8rk9ti': {
      'ru': 'Обучающие уроки',
      'uz': 'Tarbiyaviy darslar',
    },
    'r9b3crqe': {
      'ru':
          'По тем темам, где ученик ошибается, он получает обучающие видеоуроки',
      'uz': 'Talaba xato qiladigan mavzularda u o\'quv video darslarini oladi',
    },
    '126ndjck': {
      'ru': 'Мотивация',
      'uz': 'Motivatsiya',
    },
    'cm9ao0w9': {
      'ru': 'Ученик накапливает баллы, которые обменивает на призы',
      'uz': 'Talaba ballarni to\'playdi va ularni sovg\'alarga almashtiradi',
    },
    'x78j22ri': {
      'ru': 'Начать',
      'uz': 'Boshlanishi',
    },
    'ebls2gil': {
      'ru': 'Войти',
      'uz': 'Kirish uchun',
    },
    'kcremyh0': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // CreateAccount3
  {
    'h9o6tw9x': {
      'ru': 'Войти или Загеристрироваться',
      'uz': 'Kirish yoki Ro\'yxatdan o\'tish',
    },
    'c2hq9xxe': {
      'ru': 'Войдите в систему или создайте учетную запись ',
      'uz': 'Tizimga kiring yoki hisob yarating',
    },
    '0b0txcji': {
      'ru': 'Войти',
      'uz': 'Kirish uchun',
    },
    '57antnkq': {
      'ru': 'Создать аккаунт',
      'uz': 'Hisob ochish',
    },
    'y8d89wd9': {
      'ru': 'Позже',
      'uz': 'Keyinchalik',
    },
    'tt3rv5ii': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // Login1
  {
    'r5qi31mb': {
      'ru': 'С возвращением 👋',
      'uz': 'Xush kelibsiz 👋',
    },
    'bo15p76q': {
      'ru': 'Войдите в свой аккаунт',
      'uz': 'Hisobingizga kiring',
    },
    'schlyo3a': {
      'ru': 'Номер телефона',
      'uz': 'Telefon raqami',
    },
    'otvagdyi': {
      'ru': 'Пароль',
      'uz': 'Parol',
    },
    '98vlx3e4': {
      'ru': 'Забыли пароль?',
      'uz': 'Parolni unutdingizmi?',
    },
    'gd31385l': {
      'ru': 'Войти',
      'uz': 'Kirish uchun',
    },
    'wrgsjln6': {
      'ru': 'Нет аккаунта? ',
      'uz': 'Hisobingiz yo\'qmi?',
    },
    'mkr9tqj4': {
      'ru': 'Пройдите регистрацию',
      'uz': 'Roʻyxatdan oʻting',
    },
    '0y9dl0pf': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // test1
  {
    'wpsduowf': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // dashboard
  {
    'cmghldg9': {
      'ru': 'Главная',
      'uz': 'Uy',
    },
    'aezvo7qq': {
      'ru': 'Олимпиада\nпо математике',
      'uz': 'Olimpiada\nmatematika',
    },
    'e1qy7ycw': {
      'ru': '09.04.2024',
      'uz': '09.04.2024',
    },
    '2covq74e': {
      'ru': 'Персональное обучение',
      'uz': 'Shaxsiy trening',
    },
    'wqifky1x': {
      'ru': 'Доступно',
      'uz': 'Mavjud',
    },
    'q153g09y': {
      'ru': 'Подготовка к олимпиаде',
      'uz': 'Olimpiadaga tayyorgarlik',
    },
    'hl0zrdmz': {
      'ru': 'Будет доступно 09.03.2024',
      'uz': '03/09/2024 da mavjud',
    },
    't54vb31n': {
      'ru': 'Пробный тест \nв Президентскую школу',
      'uz': 'Soxta test\nPrezident maktabiga',
    },
    'tejecmc4': {
      'ru': 'Скоро',
      'uz': 'Tez orada',
    },
    'bwxker1e': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // shop
  {
    'bzpz9jdq': {
      'ru': 'Магазин',
      'uz': 'Do\'kon',
    },
    '3f6gmnjt': {
      'ru': 'Магазин будет скоро',
      'uz': 'Do\'kon tez orada keladi',
    },
    'nhz0jw4q': {
      'ru': 'Ученик накапливает баллы, которые обменивает на призы ',
      'uz': 'Talaba ballarni to\'playdi va ularni sovg\'alarga almashtiradi',
    },
    'v4g3xu8b': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // achievement
  {
    'j8wxpcog': {
      'ru': 'Достижения',
      'uz': 'Yutuqlar',
    },
    'yntdinnu': {
      'ru': 'Рейтинг',
      'uz': 'Reyting',
    },
    'xhh6bumh': {
      'ru': 'Сертфикаты',
      'uz': 'Sertifikatlar',
    },
    '3zlub5ui': {
      'ru': 'Достижения',
      'uz': 'Yutuqlar',
    },
    '1jyf0zq1': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // register
  {
    'jyi08p20': {
      'ru': 'Зарегистрироваться',
      'uz': 'Roʻyxatdan oʻtish',
    },
    'ogh67dxj': {
      'ru': 'Создайте аккаунт ',
      'uz': 'Hisob ochish',
    },
    'p582ol5d': {
      'ru': 'Имя ученика',
      'uz': 'Talaba ismi',
    },
    'jrxbslwp': {
      'ru': 'Имя',
      'uz': 'Ism',
    },
    'xopmcu0z': {
      'ru': 'Фамилия ученика',
      'uz': 'Talabaning familiyasi',
    },
    'ytur87gp': {
      'ru': 'Фамилия',
      'uz': 'Familiya',
    },
    'w3dcffj4': {
      'ru': 'Номер',
      'uz': 'Raqam',
    },
    '7zehktxu': {
      'ru': 'Номер телефона',
      'uz': 'Telefon raqami',
    },
    '41ou4wip': {
      'ru': 'Придумайте пароль',
      'uz': 'Parol o\'ylab toping',
    },
    'ft05hahl': {
      'ru': 'Пароль',
      'uz': 'Parol',
    },
    '5cf779qg': {
      'ru': 'Зарегистрироваться',
      'uz': 'Roʻyxatdan oʻtish',
    },
    'k9cfifle': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // otpcheck
  {
    'vissn7n1': {
      'ru': 'Подтверждение номера',
      'uz': 'Raqamni tasdiqlash',
    },
    '7n88bn1k': {
      'ru': 'Введите код, который был отправлен в Telegram',
      'uz': 'Telegramga yuborilgan kodni kiriting',
    },
    'cq8q9ktm': {
      'ru': 'Не получили код? ',
      'uz': 'Kodni olmadingizmi?',
    },
    'dw7ec0wh': {
      'ru': 'Отправить снова',
      'uz': 'Yana yuboring',
    },
    '2ee1xmzm': {
      'ru': 'Продолжить',
      'uz': 'Davom eting',
    },
    '2ehdqk8w': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // newUserFormPage
  {
    'bhz8ptly': {
      'ru': 'Анкета',
      'uz': 'Anketa',
    },
    'i4m3n9qg': {
      'ru': 'Дата рождения',
      'uz': 'Tug\'ilgan kun',
    },
    'y7cp6pat': {
      'ru': 'Год рождения-Месяц-День',
      'uz': 'Tug\'ilgan yili - Oy - Kun',
    },
    'lib2wy0e': {
      'ru': 'Город',
      'uz': 'Shahar',
    },
    'xwqm775t': {
      'ru': 'Ташкент',
      'uz': 'Toshkent',
    },
    '7sqm67zn': {
      'ru': 'Ташкент',
      'uz': 'Toshkent',
    },
    'elw92pyj': {
      'ru': 'Самарканд',
      'uz': 'Samarqand',
    },
    'zfe8n9fr': {
      'ru': 'Бухара',
      'uz': 'Buxoro',
    },
    'lkj2hc27': {
      'ru': 'Хива',
      'uz': 'Xiva',
    },
    'c6vv6969': {
      'ru': 'Нукус',
      'uz': 'Nukus',
    },
    '9duz9oib': {
      'ru': 'Андижан',
      'uz': 'Andijon',
    },
    '1eaywt9f': {
      'ru': 'Коканд',
      'uz': 'Qo\'qon',
    },
    'uzbjp82d': {
      'ru': 'Фергана',
      'uz': 'Farg\'ona',
    },
    'gej26al3': {
      'ru': 'Чирчик',
      'uz': 'Chirchiq',
    },
    'jl8ym85z': {
      'ru': 'Выберите язык обучения',
      'uz': 'O\'qitish tilini tanlang',
    },
    '9fkawd79': {
      'ru': 'Search for an item...',
      'uz': 'Element qidirish...',
    },
    'z3dtttw2': {
      'ru': 'Район',
      'uz': 'Hudud',
    },
    'yk7umxsv': {
      'ru': 'Район',
      'uz': 'Hudud',
    },
    'zed9iv5i': {
      'ru': 'Школа',
      'uz': 'Maktab',
    },
    'y59ar2ad': {
      'ru': 'Название школы',
      'uz': 'Maktab nomi',
    },
    'b02h8df4': {
      'ru': 'Язык обучения',
      'uz': 'Ta\'lim tili',
    },
    'jna9g9fu': {
      'ru': 'Русский',
      'uz': 'rus',
    },
    'xc9ijp26': {
      'ru': 'Узбекский',
      'uz': 'o\'zbek',
    },
    '7jez7m1v': {
      'ru': 'Выберите язык обучения',
      'uz': 'O\'qitish tilini tanlang',
    },
    '1h2lcu0d': {
      'ru': 'Search for an item...',
      'uz': 'Element qidirish...',
    },
    'e37fn6so': {
      'ru': 'Класс обучения',
      'uz': 'Trening sinfi',
    },
    'kovawo2l': {
      'ru': '2',
      'uz': '2',
    },
    'kvku5ebw': {
      'ru': '3',
      'uz': '3',
    },
    'iwsui3gp': {
      'ru': '4',
      'uz': '4',
    },
    'zmfiq07t': {
      'ru': '5',
      'uz': '5',
    },
    'c1tgnyw6': {
      'ru': '6',
      'uz': '6',
    },
    '66d1guh2': {
      'ru': '7',
      'uz': '7',
    },
    '1oz5b6zf': {
      'ru': '8',
      'uz': '8',
    },
    'c0tkaq8a': {
      'ru': '9',
      'uz': '9',
    },
    'ipg95la0': {
      'ru': '10',
      'uz': '10',
    },
    'm8mgxh9g': {
      'ru': '11',
      'uz': 'o\'n bir',
    },
    'k0qksdwt': {
      'ru': 'Выберите класс',
      'uz': 'Sinfni tanlang',
    },
    'fxe9nyxu': {
      'ru': 'Search for an item...',
      'uz': 'Element qidirish...',
    },
    'qvtv39kz': {
      'ru': 'Подтвердить',
      'uz': 'Tasdiqlang',
    },
    '6lzrkoqw': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // congratspage
  {
    'elsd5nvc': {
      'ru': 'Поздравляем!',
      'uz': 'Tabriklaymiz!',
    },
    'ssfo8xs7': {
      'ru': 'Ваш аккаунт создан, наслаждайтесь доступным обучением.',
      'uz':
          'Sizning hisobingiz yaratildi, arzon ta\'limdan bahramand bo\'ling.',
    },
    'bd6g5tib': {
      'ru': 'Начать',
      'uz': 'Boshlanishi',
    },
    '76d9b9lc': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // confirmationCodePage
  {
    'xuyb6tfb': {
      'ru': 'Подтверждение номера',
      'uz': 'Raqamni tasdiqlash',
    },
    'jal6m3qf': {
      'ru':
          'Для продолжения регистрации нужно потвердить свой номер в Telegram',
      'uz':
          'Ro‘yxatdan o‘tishni davom ettirish uchun Telegram’da raqamingizni tasdiqlashingiz kerak',
    },
    'j6as74sj': {
      'ru': 'Перейти в Telegram',
      'uz': 'Telegramga o\'ting',
    },
    '9864iun1': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ProfilePage
  {
    '9mpznniu': {
      'ru': 'Профиль',
      'uz': 'Profil',
    },
    'n38i9x5b': {
      'ru': 'Кристаллы',
      'uz': 'Kristallar',
    },
    'ntmox3ul': {
      'ru': 'Профиль',
      'uz': 'Profil',
    },
    '9ksxe5i5': {
      'ru': 'Уровень: ',
      'uz': 'Daraja:',
    },
    '7spi6fzy': {
      'ru': 'Не пропускай уроки, чтобы повысить уровень ',
      'uz': 'Yuqori darajaga ko\'tarilish uchun darslarni o\'tkazib yubormang',
    },
    'epsd1my9': {
      'ru': '/ ',
      'uz': '/',
    },
    'un5ix9zi': {
      'ru': 'Настройки',
      'uz': 'Sozlamalar',
    },
    '3whpyxwj': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // SettingsPage
  {
    'ouoypjnw': {
      'ru': 'Соц. сети',
      'uz': 'Ijtimoiy tarmoqlar',
    },
    'eadbbw3d': {
      'ru': 'Язык обучения',
      'uz': 'Ta\'lim tili',
    },
    'qo5c7ywv': {
      'ru': 'App Versions',
      'uz': 'Ilova versiyalari',
    },
    'e6v6fyrz': {
      'ru': 'v0.0.2',
      'uz': 'v0.0.2',
    },
    'xslkt4lv': {
      'ru': 'Made by ',
      'uz': 'Tamonidan qilingan',
    },
    'ie5kx80s': {
      'ru': 'Rocket Digital Studio 🚀',
      'uz': 'Rocket Digital Studio 🚀',
    },
    '9m05idb7': {
      'ru': 'Выйти из аккаунта',
      'uz': 'Hisobingizdan chiqing',
    },
    'r6u4cn0t': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // unpublishpage
  {
    'cjbe6mrd': {
      'ru': 'Квиз от Coca Cola Uzbekistan',
      'uz': 'Coca Cola Uzbekistan viktorina',
    },
    's1r0jwe6': {
      'ru': 'Скоро',
      'uz': 'Tez orada',
    },
    'ltk45l86': {
      'ru': 'Олимпиада от DODO PIZZA',
      'uz': 'DODO PIZZA dan Olimpiada',
    },
    'q4p5ex5v': {
      'ru': 'Скоро',
      'uz': 'Tez orada',
    },
    '5rgc4z7b': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // StudyPage
  {
    'p92clebd': {
      'ru': 'Обучение',
      'uz': 'Ta\'lim',
    },
    'mn44uxz2': {
      'ru': 'Мой класс',
      'uz': 'Mening sinfim',
    },
    '1baij57n': {
      'ru': '4-й класс',
      'uz': '4-sinf',
    },
    'nk3ydc5y': {
      'ru': '4-й класс',
      'uz': '4-sinf',
    },
    '745eg717': {
      'ru': 'Выбрать класс',
      'uz': 'Sinfni tanlang',
    },
    'uhf7mq2t': {
      'ru': 'Search for an item...',
      'uz': 'Element qidirish...',
    },
    'fu0sz9h1': {
      'ru': 'Математика',
      'uz': 'Matematika',
    },
    'jv27cvw1': {
      'ru': 'Математика',
      'uz': 'Matematika',
    },
    's0hsdd71': {
      'ru': 'Выбрать предмет',
      'uz': 'Elementni tanlang',
    },
    'j6bbc5qm': {
      'ru': 'Search for an item...',
      'uz': 'Element qidirish...',
    },
    'm3rbyay6': {
      'ru': 'Персональное\nобучение',
      'uz': 'Shaxsiy\nta\'lim',
    },
    'vgh3qtqz': {
      'ru': 'Перейти',
      'uz': 'Otish',
    },
    'vcf74y7d': {
      'ru': 'Статистика',
      'uz': 'Statistika',
    },
    '6zp2ufu9': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ListThemesPage
  {
    'ri36jpqq': {
      'ru': 'Перейти',
      'uz': 'Otish',
    },
    'yixmbbwp': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // TestPage
  {
    'ee8ey3zo': {
      'ru': 'Видео\nобъяснение',
      'uz': 'Video\ntushuntirish',
    },
    'fpukfo9k': {
      'ru': 'Решение\nзадания',
      'uz': 'Yechim\nvazifalar',
    },
    't8uz9fwa': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ExplanationPage
  {
    'nin31ny3': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ResultPage
  {
    '88ll6xeq': {
      'ru': 'Результаты',
      'uz': 'natijalar',
    },
    'w29ba3r1': {
      'ru': 'баллов',
      'uz': 'ball',
    },
    'ymohy989': {
      'ru': ' правильных ответов',
      'uz': 'to\'g\'ri javoblar',
    },
    'qbutm40m': {
      'ru': '9',
      'uz': '9',
    },
    'kvz89644': {
      'ru': ' ошибок',
      'uz': 'xatolar',
    },
    '65rkoouc': {
      'ru': '4 Members',
      'uz': '4 a\'zo',
    },
    '7nvfi35c': {
      'ru': 'Посмотреть ошибки',
      'uz': 'Xatolarni ko\'rish',
    },
    'yzqrrdfe': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // MistakeThemePage
  {
    'ybofpg5s': {
      'ru': 'Ошибки',
      'uz': 'Xatolar',
    },
    'arlvi8lk': {
      'ru': 'Видео\nобъяснение',
      'uz': 'Video\ntushuntirish',
    },
    '281s4acj': {
      'ru': 'Решение\nзадания',
      'uz': 'Yechim\nvazifalar',
    },
    'ohvi1t4d': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ExamplePag222
  {
    'rgwwehvt': {
      'ru': 'Hello World',
      'uz': '',
    },
    'fnus7dvz': {
      'ru': 'Button',
      'uz': '',
    },
    'ug0uw44a': {
      'ru': 'Home',
      'uz': '',
    },
  },
  // ExplanationPageCopy
  {
    'vm29lpdj': {
      'ru': 'Kvadratli tenglama echimlarini topish uchun',
      'uz': '',
    },
    's6w70ane': {
      'ru': ' formulani qo\'llaymiz, bu yerda',
      'uz': '',
    },
    'nn8iib5a': {
      'ru': 'Ma\'lumotlarni qo\'shamiz:',
      'uz': '',
    },
    'wju3qv0v': {
      'ru': 'Tenglamaning yechimlari: x=14.',
      'uz': '',
    },
    'epwvt1ez': {
      'ru': 'Otish',
      'uz': 'Telegramga o\'ting',
    },
    'ebo27n2r': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ExplanationPageCopyCopy
  {
    '9nr2hhhy': {
      'ru': 'Otish',
      'uz': 'Telegramga o\'ting',
    },
    'feexqfsm': {
      'ru': 'Home',
      'uz': 'Uy',
    },
  },
  // ChangeLangApp
  {
    'wso6dkft': {
      'ru': 'Выберите язык - ',
      'uz': 'Tilni tanlang -',
    },
    'zfp5fmu7': {
      'ru': 'Tilni tanlang',
      'uz': 'Выберите язык',
    },
    '58n4msdc': {
      'ru': 'Выбрать язык',
      'uz': 'Tilni tanlang',
    },
  },
  // Miscellaneous
  {
    'tzqk1h9y': {
      'ru': '',
      'uz': '',
    },
    'k6x5lbjp': {
      'ru': '',
      'uz': '',
    },
    '3bcz4946': {
      'ru': '',
      'uz': '',
    },
    '84j0zma0': {
      'ru': '',
      'uz': '',
    },
    'dqpzedsk': {
      'ru': '',
      'uz': '',
    },
    'uv4nd18e': {
      'ru': '',
      'uz': '',
    },
    'pxu2ctp2': {
      'ru': '',
      'uz': '',
    },
    '016o3ab9': {
      'ru': '',
      'uz': '',
    },
    'l2ge55mu': {
      'ru': '',
      'uz': '',
    },
    '4yyl40mn': {
      'ru': '',
      'uz': '',
    },
    'io5xctrj': {
      'ru': '',
      'uz': '',
    },
    'jk7wso2f': {
      'ru': '',
      'uz': '',
    },
    'qml2pizg': {
      'ru': '',
      'uz': '',
    },
    '8mot50qe': {
      'ru': '',
      'uz': '',
    },
    'gtm7wp2x': {
      'ru': '',
      'uz': '',
    },
    'nk4r2z0q': {
      'ru': '',
      'uz': '',
    },
    'mre843eg': {
      'ru': '',
      'uz': '',
    },
    'urqp5qz8': {
      'ru': '',
      'uz': '',
    },
    '124ze4w1': {
      'ru': '',
      'uz': '',
    },
    '80i6wau0': {
      'ru': '',
      'uz': '',
    },
    'hop2171a': {
      'ru': '',
      'uz': '',
    },
    '29pbdtrc': {
      'ru': '',
      'uz': '',
    },
    'dq8jiy7c': {
      'ru': '',
      'uz': '',
    },
    'cwm8r7kz': {
      'ru': '',
      'uz': '',
    },
    '6xeiirr3': {
      'ru': '',
      'uz': '',
    },
  },
].reduce((a, b) => a..addAll(b));
