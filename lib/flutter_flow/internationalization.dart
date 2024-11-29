import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['it', 'en'];

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
    String? itText = '',
    String? enText = '',
  }) =>
      [itText, enText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // auth_Login
  {
    '3p97u62u': {
      'it': 'Bentornato!',
      'en': 'Welcome Back!',
    },
    'xkz4xjo6': {
      'it': 'Utilizza il modulo sottostante per accedere al tuo account.',
      'en': 'Use the form below to access your account.',
    },
    'k9u5spqi': {
      'it': 'Indirizzo Email',
      'en': 'Email Address',
    },
    'f4xxyrqv': {
      'it': 'Inserisci qui la tua email...',
      'en': 'Enter your email here...',
    },
    'lfzvgi5q': {
      'it': 'Password',
      'en': 'Password',
    },
    'wt8sx5du': {
      'it': 'Inserisci qui la tua password...',
      'en': 'Enter your password here...',
    },
    's8bicxzh': {
      'it': 'Password dimenticata?',
      'en': 'Forgot Password?',
    },
    'm9klj9ah': {
      'it': 'Login',
      'en': 'Login',
    },
    'zy328lg7': {
      'it': 'Use a social platform to continue',
      'en': 'Use a social platform to continue',
    },
    'tcu0c8bu': {
      'it': 'Non hai un account?',
      'en': 'Don\'t have an account?',
    },
    'kk2rdqi2': {
      'it': 'Creare un account',
      'en': 'Create Account',
    },
    'kfm1khsu': {
      'it': 'Il campo è obbligatorio',
      'en': 'Field is required',
    },
    'p7rdh4r8': {
      'it': 'Scegli un\'opzione dal menu a discesa',
      'en': 'Please choose an option from the dropdown',
    },
    'ud7wd8di': {
      'it': 'Il campo è obbligatorio',
      'en': 'Field is required',
    },
    'bwbzfuju': {
      'it': 'Scegli un\'opzione dal menu a discesa',
      'en': 'Please choose an option from the dropdown',
    },
    'iha5socs': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // forgotPassword
  {
    '3hcuc8v6': {
      'it': 'Password dimenticata?',
      'en': 'Forgot Password',
    },
    'sjjd1jb9': {
      'it':
          'Non ricordi la password? Inserisci l\'e-mail associata al tuo account qui sotto e ti invieremo un nuovo collegamento.',
      'en':
          'Don\'t remember your password? Enter the email associated with your account below and we will send you a new link.',
    },
    'tzm5opaa': {
      'it': 'Indirizzo Email',
      'en': 'Email Address',
    },
    'uvsotzng': {
      'it': 'Per favore inserisci una email valida...',
      'en': 'Please enter a valid email...',
    },
    '3sdzjivm': {
      'it': 'Invia link di reset',
      'en': 'Send Reset Link',
    },
    '8p6xd6cl': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // auth_Create
  {
    'l2xxy1gf': {
      'it': 'Iniziamo',
      'en': 'Let\'s get started',
    },
    '59g0bt96': {
      'it': 'Utilizza il modulo sottostante per iniziare.',
      'en': 'Use the form below to get started.',
    },
    'seheok8a': {
      'it': 'Indirizzo Email',
      'en': 'E-mail address',
    },
    '0uknk55c': {
      'it': 'Inserisci qui la tua email...',
      'en': 'Enter your email here...',
    },
    'wwxuev1r': {
      'it': 'Password',
      'en': 'Password',
    },
    'eextb60x': {
      'it': 'Crea la tua password...',
      'en': 'Create your password...',
    },
    'kx2trk1o': {
      'it': 'Conferma password',
      'en': 'Confirm password',
    },
    'k8c3y3u7': {
      'it': 'Crea la tua password...',
      'en': 'Create your password...',
    },
    '29ut49wi': {
      'it': 'Account Azienda',
      'en': 'Company Account',
    },
    '8m9q66qo': {
      'it': 'Account Utente',
      'en': 'User Account',
    },
    '07gxzzhq': {
      'it': 'Use a social platform to continue',
      'en': 'Use a social platform to continue',
    },
    'ysqhbhpe': {
      'it': 'Hai già un account?',
      'en': 'Already have an account?',
    },
    'ud92zl8z': {
      'it': 'Log In',
      'en': 'Log In',
    },
    'zuuuklky': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // Main_Home
  {
    '3bi54x5g': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    'nnv46x35': {
      'it': 'Below is a summary of your teams activity.',
      'en': 'Below is a summary of your teams activity.',
    },
    'jqevo63s': {
      'it': 'New Customers',
      'en': 'New Customers',
    },
    'd0r4w3cc': {
      'it': '24',
      'en': '24',
    },
    '8vot9bzj': {
      'it': 'New Contracts',
      'en': 'New Contracts',
    },
    '463rfkem': {
      'it': '3,200',
      'en': '3,200',
    },
    'saxskj92': {
      'it': 'Expired Contracts',
      'en': 'Expired Contracts',
    },
    '2wlrr5lg': {
      'it': '4300',
      'en': '4300',
    },
    'kphqz3hi': {
      'it': 'Projects',
      'en': 'Projects',
    },
    'xlzf8qqx': {
      'it': 'UI Design Team',
      'en': 'UI Design Team',
    },
    'zt3s5l2s': {
      'it': '4 Members',
      'en': '4 Members',
    },
    'puy8obok': {
      'it': 'Contract Activity',
      'en': 'Contract Activity',
    },
    'zlovh0zt': {
      'it': 'Below is an a summary of activity.',
      'en': 'Below is a summary of activity.',
    },
    'g1uaaovn': {
      'it': 'Customer Activity',
      'en': 'Customer Activity',
    },
    'e5q3ows1': {
      'it': 'Below is an a summary of activity.',
      'en': 'Below is a summary of activity.',
    },
    'uj7jsxmo': {
      'it': 'Contract Activity',
      'en': 'Contract Activity',
    },
    'hkk2zmjw': {
      'it': 'Below is an a summary of activity.',
      'en': 'Below is a summary of activity.',
    },
    'jkgae0vc': {
      'it': 'Customer Activity',
      'en': 'Customer Activity',
    },
    'g4os7kcp': {
      'it': 'Below is an a summary of activity.',
      'en': 'Below is a summary of activity.',
    },
    'y24lcr13': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    'xdxbdj20': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_customerList
  {
    'n99lg1qh': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'zj0cnrn7': {
      'it': 'Invite Users',
      'en': 'Invite Users',
    },
    'lvnskphp': {
      'it': 'All',
      'en': 'All',
    },
    'haes0r2l': {
      'it': 'Name',
      'en': 'Name',
    },
    '5rmzx51f': {
      'it': 'Title',
      'en': 'Title',
    },
    'z0huz1sz': {
      'it': 'Company',
      'en': 'Company',
    },
    '04vrv62j': {
      'it': 'Company',
      'en': 'Company',
    },
    '4zc3d2m8': {
      'it': 'Status',
      'en': 'Status',
    },
    '2su72evi': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    '0zsa579c': {
      'it': 'Head of Procurement',
      'en': 'Head of Procurement',
    },
    'w3raz1jn': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'z4lsfg10': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '1a4k6aks': {
      'it': 'New',
      'en': 'New',
    },
    'o16mxq71': {
      'it': 'James Wiseman',
      'en': 'James Wiseman',
    },
    'fpsevdzf': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    'h14ifi7k': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'uqhvoiij': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'tm49glmo': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'kq55jaoh': {
      'it': 'Ignacious Rodriguez',
      'en': 'Ignacious Rodriguez',
    },
    '4h0nuu5i': {
      'it': 'Sales Manager',
      'en': 'Sales Manager',
    },
    'lzbcvfiy': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    '6fndz1gh': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    '3fvjfyjw': {
      'it': 'New',
      'en': 'New',
    },
    '2pc5v8a4': {
      'it': 'Elena Williams',
      'en': 'Elena Williams',
    },
    'ceml7ft3': {
      'it': 'Head of Product & Innovation',
      'en': 'Head of Product & Innovation',
    },
    '2e1z6z1m': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'em2rmo6j': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'mg1pcn8r': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'insuv9nt': {
      'it': 'Greg Brown',
      'en': 'Greg Brown',
    },
    '6dyu1l9r': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    '4sq50suq': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'xf3hji30': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'ucyrtltt': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'zafe89jw': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    'fp7rggxx': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'mn5dgpf3': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'r1qj36m1': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'orrd5fa4': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'eim454pd': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    'a0bkf424': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'u9ywidy9': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'v8935cf8': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'yoeqeivb': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'qh2ock0d': {
      'it': 'New Calls',
      'en': 'New Calls',
    },
    'g7av4tqg': {
      'it': 'Name',
      'en': 'Name',
    },
    'xffgkt7t': {
      'it': 'Title',
      'en': 'Title',
    },
    'vxppadlg': {
      'it': 'Company',
      'en': 'Company',
    },
    'p4xvpvgf': {
      'it': 'Company',
      'en': 'Company',
    },
    'm8o2psfk': {
      'it': 'Status',
      'en': 'Status',
    },
    '4sgc04rh': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    'np65t22e': {
      'it': 'Head of Procurement',
      'en': 'Head of Procurement',
    },
    'qpkca13g': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '3tctrgig': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'fyrppt8y': {
      'it': 'New',
      'en': 'New',
    },
    '2bby4175': {
      'it': 'Ignacious Rodriguez',
      'en': 'Ignacious Rodriguez',
    },
    '4wembrbp': {
      'it': 'Sales Manager',
      'en': 'Sales Manager',
    },
    'p2txrfk0': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    '9re9difn': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'ym5de2ey': {
      'it': 'New',
      'en': 'New',
    },
    's7xebw09': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'dhrxhg83': {
      'it': 'Name',
      'en': 'Name',
    },
    '4494sdp5': {
      'it': 'Title',
      'en': 'Title',
    },
    't6erxmdi': {
      'it': 'Company',
      'en': 'Company',
    },
    'a2sv9lv3': {
      'it': 'Company',
      'en': 'Company',
    },
    'vc59gy2z': {
      'it': 'Status',
      'en': 'Status',
    },
    'v5iv0hjb': {
      'it': 'James Wiseman',
      'en': 'James Wiseman',
    },
    '7o5zylri': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    'rvw10tmv': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    's4uvjsw7': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'w83ub0yw': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    '4yjpkz0n': {
      'it': 'Elena Williams',
      'en': 'Elena Williams',
    },
    'l4xjfp78': {
      'it': 'Head of Product & Innovation',
      'en': 'Head of Product & Innovation',
    },
    'anfz0t9o': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'cz0219wa': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'uf38k81m': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'evh01zxl': {
      'it': 'Greg Brown',
      'en': 'Greg Brown',
    },
    '6h3e5pnw': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    '1n18qv7i': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'yca9mthr': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'o17d2quf': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'd0z8df2i': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    '14oiknrw': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'y3upyxdi': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'ymf5axsy': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    '60qa1l5k': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'mootyc3i': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    'gun8gz5b': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'sbiuhbrx': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'q28hkdoo': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    '4qxa4kwr': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'fcyoodds': {
      'it': 'Customers',
      'en': 'Customers',
    },
    '3ourv2w9': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_Contracts
  {
    '4h88trkp': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'smh1o93d': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    't967eizl': {
      'it': 'Projects',
      'en': 'Projects',
    },
    'dpt94d56': {
      'it': 'No-Code Platform Design',
      'en': 'No-Code Platform Design',
    },
    '2a7y5e2w': {
      'it': 'Design Team Docs',
      'en': 'Design Team Docs',
    },
    'dlt46loo': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'sqmgdsam': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '8t72ssfn': {
      'it': 'Contracts for New Opportunities',
      'en': 'Contracts for New Opportunities',
    },
    'h9kiq8rj': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    '7mjz03wi': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    '8e820p1r': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    '7wcrhzda': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'sen48p1q': {
      'it': 'Client Acquisition for Q3',
      'en': 'Client Acquisition for Q3',
    },
    'u6ek8ogi': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    'zz9ma01i': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    'nanoxp6w': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    'j08eiorc': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_messages
  {
    '8jlklje5': {
      'it': 'Messages',
      'en': 'Messages',
    },
    '13b6p0ri': {
      'it': 'Search messages here...',
      'en': 'Search messages here...',
    },
    'm6h1ci8o': {
      'it': 'Randy Mcdonald',
      'en': 'Randy Mcdonald',
    },
    '375pqg6v': {
      'it':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'en':
          'This was really great, I\'m so glad that we could catch up this weekend.',
    },
    'cbtg39kg': {
      'it': 'Mon. July 3rd - 4:12pm',
      'en': 'Mon. Jul 3rd - 4:12pm',
    },
    'yjl2z0ye': {
      'it': 'Randy Mcdonald',
      'en': 'Randy Mcdonald',
    },
    'uyqeyj1w': {
      'it':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'en':
          'This was really great, I\'m so glad that we could catch up this weekend.',
    },
    'qdtk1psh': {
      'it': 'Mon. July 3rd - 4:12pm',
      'en': 'Mon. Jul 3rd - 4:12pm',
    },
    'udrcsj9r': {
      'it': 'Randy Mcdonald',
      'en': 'Randy Mcdonald',
    },
    'ugrrfw8l': {
      'it':
          'This was really great, i\'m so glad that we could  catchup this weekend.',
      'en':
          'This was really great, I\'m so glad that we could catch up this weekend.',
    },
    'ib4p9em6': {
      'it': 'Mon. July 3rd - 4:12pm',
      'en': 'Mon. Jul 3rd - 4:12pm',
    },
    'r0cqh4ec': {
      'it':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the project I need to write a proposal for?',
    },
    'cu0iov54': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'it69akbs': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'pu94epux': {
      'it': 'a few moments ago',
      'en': 'a few moments ago',
    },
    'yny0f2zl': {
      'it': 'This is my intro video',
      'en': 'This is my intro video',
    },
    'q2bmh3xq': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    '4lc34hro': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'rv9g1zmc': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'bbpyr9q4': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'jkyrunx9': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'p20c60zu': {
      'it': 'Start typing here...',
      'en': 'Start typing here...',
    },
    'ym579y79': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    'smtxdnbn': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_profilePage
  {
    'qrxn5crt': {
      'it': 'My Profile',
      'en': 'My Profile',
    },
    'fyxsf6vn': {
      'it': 'Account Settings',
      'en': 'Account Settings',
    },
    'h43llaan': {
      'it': 'Change Password',
      'en': 'Change Password',
    },
    'b1lw0hfu': {
      'it': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'clf3bzn3': {
      'it': 'Update Theme',
      'en': 'Update Theme',
    },
    'dujofvd2': {
      'it':
          'Update the theme of your application from seleccting one of the options below.',
      'en':
          'Update the theme of your application from selecting one of the options below.',
    },
    'zohqypc2': {
      'it': 'Dark Mode',
      'en': 'Dark Mode',
    },
    't3a5lo8r': {
      'it': 'Light Mode',
      'en': 'Light Mode',
    },
    'abqf147c': {
      'it': 'Log Out',
      'en': 'Log Out',
    },
    'o3dp9tss': {
      'it': '__',
      'en': '__',
    },
  },
  // userDetails
  {
    '9t913b44': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // editProfile
  {
    'mk8nnw94': {
      'it': 'Cambia Immagine Profilo',
      'en': 'Change Profile Picture',
    },
    '4no7ue4a': {
      'it': 'Nome',
      'en': 'Name',
    },
    '1ecoibk0': {
      'it': 'Cognome',
      'en': 'Surname',
    },
    '1e8re1qt': {
      'it': 'Data di nascita',
      'en': 'Date of birth',
    },
    'q8mrywjp': {
      'it': 'Località',
      'en': 'Location',
    },
    'rr8ksatz': {
      'it': 'Salva modifiche',
      'en': 'Save changes',
    },
    'clcaiorg': {
      'it': 'Completa Profilo',
      'en': 'Complete Profile',
    },
  },
  // projectDetailsHealthAi
  {
    'mxf4vrjw': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'wsgonkz2': {
      'it': 'Client Acquisition for Q3',
      'en': 'Client Acquisition for Q3',
    },
    'ynyuwhqo': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    'zk7z07v0': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    'xmahzs1v': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    'ry6jvd0g': {
      'it': 'Contract Details',
      'en': 'Contract Details',
    },
    'hu32scl5': {
      'it': '\$125,000',
      'en': '\$125,000',
    },
    'sfu6o269': {
      'it':
          'Additional Details around this contract and who is working on it in this card!',
      'en':
          'Additional Details around this contract and who is working on it in this card!',
    },
    '5sv9a4ka': {
      'it': 'Mark as Complete',
      'en': 'Mark as Complete',
    },
    'rrgcwkj1': {
      'it': 'Contract Details',
      'en': 'Contract Details',
    },
    '8bwk4oui': {
      'it': '\$67,000',
      'en': '\$67,000',
    },
    'p2hoxaq9': {
      'it':
          'Additional Details around this contract and who is working on it in this card!',
      'en':
          'Additional Details around this contract and who is working on it in this card!',
    },
    'ww95wm3k': {
      'it': 'Mark as Complete',
      'en': 'Mark as Complete',
    },
    '54l7ivhw': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // projectDetails
  {
    'c0s3jdsy': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // searchPage
  {
    'ao46xsuv': {
      'it': 'Add Members',
      'en': 'Add Members',
    },
    'g8rv8zhr': {
      'it': 'Search members...',
      'en': 'Search members...',
    },
    'op7ngmsb': {
      'it': 'Option 1',
      'en': 'Option 1',
    },
    '5x8u4g0u': {
      'it': 'All Members',
      'en': 'All Members',
    },
    '4cek35uo': {
      'it': 'View',
      'en': 'View',
    },
    'mvx2sb5k': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // messagesDetails
  {
    '67tv84ak': {
      'it':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the projecct I need to write a proposal for?',
      'en':
          'I am a freelancer and I need help writing content for a proposal for a project. Can I give you some context for the project I need to write a proposal for?',
    },
    'ldze800m': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    '3yldlfk9': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'ozghv9ta': {
      'it': 'a few moments ago',
      'en': 'a few moments ago',
    },
    '4b943uzi': {
      'it': 'This is my intro video',
      'en': 'This is my intro video',
    },
    'j5burt0n': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'nve1gr7c': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'ttxn3h0c': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'sj32bx47': {
      'it': 'Hey really love what you are doing!',
      'en': 'Hey really love what you are doing!',
    },
    'mwdx1wqh': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    'buzhmfr6': {
      'it': 'Start typing here...',
      'en': 'Start typing here...',
    },
    '34fjbl14': {
      'it': 'Chat Details',
      'en': 'Chat Details',
    },
    'pjym5jdv': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // Main_Pagamenti
  {
    '8ofrkwtm': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'd0uxbd7l': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'qvdzesck': {
      'it': 'Projects',
      'en': 'Projects',
    },
    '60t9cn9s': {
      'it': 'No-Code Platform Design',
      'en': 'No-Code Platform Design',
    },
    '1dkobnqm': {
      'it': 'Design Team Docs',
      'en': 'Design Team Docs',
    },
    'q8pixc3q': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'ypyxztn8': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '8vveifga': {
      'it': 'Contracts for New Opportunities',
      'en': 'Contracts for New Opportunities',
    },
    '2pdavu7l': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    'b1y29yq0': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    'nv38kri7': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    '3mdoksuv': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    '4bv5gwrs': {
      'it': 'Client Acquisition for Q3',
      'en': 'Client Acquisition for Q3',
    },
    'enr3ll87': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    '3booeo9m': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    'nz37201t': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    'hzzl8rgm': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_Contenuti_ADA_OLD
  {
    'hfxga8xn': {
      'it': 'Contenuti ADA_OLD',
      'en': 'Customers',
    },
    'bbwunnvo': {
      'it': 'Aggiungi Informazioni',
      'en': 'Invite Users',
    },
    'd1sgirfs': {
      'it': 'Carica CSV',
      'en': 'Invite Users',
    },
    'iyutblp1': {
      'it': 'Titolo Servizio',
      'en': 'Name',
    },
    'lcrvgqre': {
      'it': 'Tipo Servizio',
      'en': 'Title',
    },
    'oj7eeut3': {
      'it': 'Prezzo',
      'en': 'Company',
    },
    '1ydh6vrp': {
      'it': 'Scadenza',
      'en': 'Company',
    },
    '01yaeqeb': {
      'it': 'Status',
      'en': 'Status',
    },
    'avn4wdct': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    '6y3xtl5r': {
      'it': 'Head of Procurement',
      'en': 'Head of Procurement',
    },
    'oscldloq': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '4h19v61r': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'afke27mu': {
      'it': 'New',
      'en': 'New',
    },
    'x16zpnnk': {
      'it': 'James Wiseman',
      'en': 'James Wiseman',
    },
    'f2ripvk9': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    'pmx4b7p0': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    '1key7npv': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'amm3nhvb': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    '3nwk3t45': {
      'it': 'Ignacious Rodriguez',
      'en': 'Ignacious Rodriguez',
    },
    '47b9scpe': {
      'it': 'Sales Manager',
      'en': 'Sales Manager',
    },
    'wqs1bb8k': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'fd1cd4t9': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    '7d6y3xrf': {
      'it': 'New',
      'en': 'New',
    },
    'w139gyp7': {
      'it': 'Elena Williams',
      'en': 'Elena Williams',
    },
    'jmyiemed': {
      'it': 'Head of Product & Innovation',
      'en': 'Head of Product & Innovation',
    },
    'a7x722rl': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'dbm6nqs7': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'dt2agmvd': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'e76t8nw6': {
      'it': 'Greg Brown',
      'en': 'Greg Brown',
    },
    'ye4fcx5a': {
      'it': 'Account Manager',
      'en': 'Account Manager',
    },
    'va6zwhp0': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'igj20knh': {
      'it': 'Robin HQ',
      'en': 'Robin HQ',
    },
    'xsrpwa43': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    '8o8cld8a': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    'ua07j04u': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'yirlx6qy': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'egj3h0hd': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'g19yhbyl': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'd8e9hv1w': {
      'it': 'June Williamson',
      'en': 'June Williamson',
    },
    '8udhtqm9': {
      'it': 'Sr. Account Manager',
      'en': 'Mr. Account Manager',
    },
    'oisb3wm0': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'd3q33lp6': {
      'it': 'HealthAi',
      'en': 'HealthAi',
    },
    'aqxfcw5n': {
      'it': 'Contacted',
      'en': 'Contacted',
    },
    'r3nydw6k': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'z9fobthl': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_configurazione_Servizi
  {
    'gzajzgtg': {
      'it': 'Configurazione Servizi',
      'en': 'Customers',
    },
    '3ktw4y8l': {
      'it': 'Inserisci Tipo Servizio',
      'en': 'Invite Users',
    },
    'luf5nha2': {
      'it': 'Inserisci Tipi Servizio',
      'en': 'Invite Users',
    },
    'qqeh6ajy': {
      'it': 'Tipo Servizio',
      'en': 'All',
    },
    'i61qrf3y': {
      'it': 'Tipo Servizio',
      'en': 'Name',
    },
    'm7363hal': {
      'it': 'Descrizione',
      'en': 'Title',
    },
    'a6rhw8f8': {
      'it': 'Tipi Servizio',
      'en': 'New Calls',
    },
    '5s9bg0hh': {
      'it': 'Tipo Servizio',
      'en': 'Name',
    },
    'lqm09c6v': {
      'it': 'Calendario',
      'en': 'Company',
    },
    '5g437pu0': {
      'it': 'Preavviso Annullamento',
      'en': 'Company',
    },
    'qfv126ss': {
      'it': 'Scadenza',
      'en': 'Company',
    },
    'bo3wqpds': {
      'it': 'Indirizzo Specifico',
      'en': 'Company',
    },
    'f447fbna': {
      'it': 'File',
      'en': 'Company',
    },
    '5xhi69yt': {
      'it': 'Mail',
      'en': 'Company',
    },
    '2sroqm2l': {
      'it': 'Link',
      'en': 'Company',
    },
    'cqpk6k1j': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'y8839dbt': {
      'it': '__',
      'en': '__',
    },
  },
  // TipoServizioDetails
  {
    'wrv7vgvu': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // TipiServizioDetails
  {
    'xkahn2fm': {
      'it': 'Home',
      'en': 'Home',
    },
  },
  // Main_Prenotazioni
  {
    '0q490zvp': {
      'it': 'Prenotazioni',
      'en': 'Customers',
    },
    '8cb8yc4v': {
      'it': 'Nuova Prenotazione',
      'en': 'Invite Users',
    },
    '5rfs2mbx': {
      'it': 'Titolo Servizio',
      'en': 'Name',
    },
    '4uiw3n0l': {
      'it': 'Data',
      'en': 'Title',
    },
    'cprtfc53': {
      'it': 'Orario',
      'en': 'Title',
    },
    'y0nil3rg': {
      'it': 'Nominativo',
      'en': 'Title',
    },
    '4exdrqtg': {
      'it': 'Customers',
      'en': 'Customers',
    },
    '7vus4e73': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_chat_ADA
  {
    'nu3dssrc': {
      'it': 'Scrivi un messaggio a ADA',
      'en': '',
    },
    'z3vobc1m': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    'nv48drv6': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_calendar_list
  {
    'igmlo5ek': {
      'it': 'Calendario',
      'en': 'Customers',
    },
    'jgiyfkw6': {
      'it': 'Crea Calendario',
      'en': 'Invite Users',
    },
    'xipw24xj': {
      'it': 'Nome',
      'en': 'Name',
    },
    'wkype0gc': {
      'it': 'Mail',
      'en': 'Company',
    },
    'jypj6iev': {
      'it': 'Lun',
      'en': 'Company',
    },
    'p80d31h0': {
      'it': 'Mar',
      'en': 'Company',
    },
    'xrdp31fw': {
      'it': 'Mer',
      'en': 'Company',
    },
    'a4aw6oen': {
      'it': 'Gìo',
      'en': 'Company',
    },
    'd3mqd1vt': {
      'it': 'Ven',
      'en': 'Company',
    },
    'b9mcrebk': {
      'it': 'Sab',
      'en': 'Company',
    },
    'jyu14kxw': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'jxxnj9cq': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_contenuti_ADA
  {
    'ol2nbu3x': {
      'it': 'Contenuti ADA',
      'en': 'Customers',
    },
    'w8w6mm67': {
      'it': 'Aggiungi Informazioni',
      'en': 'Invite Users',
    },
    'ev6g2h5i': {
      'it': 'Carica CSV',
      'en': 'Invite Users',
    },
    'gy43rae2': {
      'it': 'Tipo Servizio',
      'en': 'Company',
    },
    'h92w2rh8': {
      'it': 'Titolo Servizio',
      'en': 'Name',
    },
    'qqm0s10b': {
      'it': 'Contenuto',
      'en': 'Company',
    },
    'mggfxm9p': {
      'it': 'CSV',
      'en': 'Company',
    },
    'ok2l2bfu': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'fg98t8rg': {
      'it': '__',
      'en': '__',
    },
  },
  // Main_Contatti
  {
    '20u4m2o7': {
      'it': 'Contatti',
      'en': 'Customers',
    },
    '2rym356t': {
      'it': 'Aggiungi Contatto',
      'en': 'Invite Users',
    },
    '0p8rmyf9': {
      'it': 'Nome',
      'en': 'Company',
    },
    '4t15smhl': {
      'it': 'Cognome',
      'en': 'Name',
    },
    'sppa4pzy': {
      'it': 'Mail',
      'en': 'Company',
    },
    'k8rghpl7': {
      'it': 'Telefono',
      'en': 'Company',
    },
    '973x1s48': {
      'it': 'Customers',
      'en': 'Customers',
    },
    'hjrgtcj2': {
      'it': '__',
      'en': '__',
    },
  },
  // modal_success
  {
    'kred63vb': {
      'it': 'Send Contract Confirmation',
      'en': 'Send Contract Confirmation',
    },
    'hywgg8eu': {
      'it': 'A new contract has been generated for:',
      'en': 'A new contract has been generated for:',
    },
    'kmp2gbpy': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    'a7nc1dt4': {
      'it': 'Head of Procurement',
      'en': 'Head of Procurement',
    },
    '2f2nxucv': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'vcm4fijj': {
      'it': 'Next Steps',
      'en': 'Next Steps',
    },
    '60n0fqw5': {
      'it':
          'Send the information below. And we will send an email with details to the customer and allow you to manage it in your dashboard.',
      'en':
          'Send the information below. And we will send an email with details to the customer and allow you to manage it in your dashboard.',
    },
    'e408bhw6': {
      'it': 'Send Information',
      'en': 'Send Information',
    },
    'wo1onxhi': {
      'it': 'Never Mind',
      'en': 'Nevermind',
    },
  },
  // modal_Message
  {
    'wa4vkne2': {
      'it': 'Congratulations!',
      'en': 'Congratulations!',
    },
    '3hf2ocig': {
      'it':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
      'en':
          'Now that a contract has been generated for this customer please contact them with the date you will send the signed agreement.',
    },
    'q0jvi1lp': {
      'it': 'Okay',
      'en': 'Okay',
    },
    'oo4y13nf': {
      'it': 'Continue',
      'en': 'Continue',
    },
  },
  // modal_Welcome
  {
    '00flvi93': {
      'it': 'Congratulations!',
      'en': 'Congratulations!',
    },
    'fmzceh74': {
      'it': 'A new contract has been generated for:',
      'en': 'A new contract has been generated for:',
    },
    'g8q2u55w': {
      'it': 'Continue',
      'en': 'Continue',
    },
  },
  // createComment
  {
    'l2jlnhye': {
      'it': 'Create Note',
      'en': 'Create Notes',
    },
    'd6yfe8tj': {
      'it': 'Find members by searching below',
      'en': 'Find members by searching below',
    },
    'p3rj5ra0': {
      'it': 'Ricky Rodriguez',
      'en': 'Ricky Rodriguez',
    },
    '9gf6o5ss': {
      'it': 'Enter your note here...',
      'en': 'Enter your note here...',
    },
    'farrki57': {
      'it': 'Create Note',
      'en': 'Create Notes',
    },
  },
  // mobileNav
  {
    'sy0pxvma': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    't5c3aiuy': {
      'it': 'My Team',
      'en': 'My Team',
    },
    'nkz3c58a': {
      'it': 'Customers',
      'en': 'Customers',
    },
    '1mkyyjwj': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'eg79coc6': {
      'it': 'Profile',
      'en': 'Profile',
    },
  },
  // webNav
  {
    'yg07zi4c': {
      'it': 'Dashboard',
      'en': 'Dashboard',
    },
    'vba1q7m8': {
      'it': 'Contenuti ADA',
      'en': 'Dashboard',
    },
    'lbojdpxg': {
      'it': 'Calendario',
      'en': 'Calendar',
    },
    'w4xseum2': {
      'it': 'Prenotazioni',
      'en': 'Reservations',
    },
    'k9mm5pw6': {
      'it': 'Contatti',
      'en': 'Clients',
    },
    'xpgs8ttt': {
      'it': 'Pagamenti',
      'en': 'Payments',
    },
    '5s0d776i': {
      'it': 'Messages',
      'en': 'Messages',
    },
    '4vg26sp8': {
      'it': 'Messages',
      'en': 'Messages',
    },
    'zeq4whxn': {
      'it': 'Impostazioni',
      'en': 'ADA Settings',
    },
    'lyp0qh1n': {
      'it': 'Configurazione Servizi',
      'en': 'Add information',
    },
    't8giu5c9': {
      'it': 'Anagrafica',
      'en': 'Add information',
    },
    '0mu9p5bt': {
      'it': 'Ruoli & Profili',
      'en': 'Upload CSV',
    },
    'is84eyno': {
      'it': 'Staff',
      'en': 'Upload CSV',
    },
    '1ghjnuxt': {
      'it': 'Customer',
      'en': 'Customer',
    },
    '9pjba90p': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'c3dy0sel': {
      'it': 'ADA',
      'en': 'Payments',
    },
  },
  // commandPalette
  {
    'jt9g5o8v': {
      'it': 'Search platform...',
      'en': 'Search platform...',
    },
    'b3bd9y8w': {
      'it': 'Search',
      'en': 'Search',
    },
    'pw6kvl1f': {
      'it': 'Quick Links',
      'en': 'Quick Links',
    },
    'gckukxjv': {
      'it': 'Add Quiz',
      'en': 'Add Quiz',
    },
    'zsq8vj02': {
      'it': 'Find Customer',
      'en': 'Find Customer',
    },
    'iqxwv326': {
      'it': 'New Project',
      'en': 'New Project',
    },
    's60yfg0g': {
      'it': 'New Customer',
      'en': 'New Customer',
    },
  },
  // editProfilePhoto
  {
    '6bnefz1c': {
      'it': 'Change Photo',
      'en': 'Change Photo',
    },
    'yaxe7q8v': {
      'it':
          'Upload a new photo below in order to change your avatar seen by others.',
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
    },
    're4x0sz7': {
      'it': 'Upload Image',
      'en': 'Upload Image',
    },
    'sr54fsk6': {
      'it': 'Save Changes',
      'en': 'Save Changes',
    },
  },
  // user_Details_main
  {
    '918p9oc4': {
      'it': 'Customer Name',
      'en': 'Customer Name',
    },
    'gs85nrf2': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    '534e9fmv': {
      'it': 'High Profile',
      'en': 'High Profile',
    },
    'jindju5a': {
      'it': 'Title',
      'en': 'Title',
    },
    'ouyjuyvf': {
      'it': 'Head of Procurement',
      'en': 'Head of Procurement',
    },
    '8viyn84n': {
      'it': 'Company',
      'en': 'Company',
    },
    '7enxw4hk': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'f6o8asym': {
      'it': 'Notes',
      'en': 'Notes',
    },
    'p41433bd': {
      'it': 'Alexandria Smith',
      'en': 'Alexandria Smith',
    },
    'a3j3ejvp': {
      'it': '1m ago',
      'en': '1m ago',
    },
    'yqm004xu': {
      'it':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      'en':
          'Lorem ipsum pain sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et pain magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    },
    'v33uqxl2': {
      'it': '8',
      'en': '8',
    },
    'cn1mi2rc': {
      'it': 'Notes',
      'en': 'Notes',
    },
    '01hso9ea': {
      'it': 'Randy Alcorn',
      'en': 'Randy Alcorn',
    },
    'st5cr4ca': {
      'it':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
      'en':
          'I\'m not really sure about this section here aI think you should do soemthing cool!',
    },
    '5h4d8i39': {
      'it': 'a min ago',
      'en': 'at least',
    },
    '8rmeqctf': {
      'it': 'Generate Quote',
      'en': 'Generate Quote',
    },
    'ougpd8b8': {
      'it': 'View Company',
      'en': 'View Company',
    },
  },
  // dropdown_UserEdit
  {
    'vqk7im3j': {
      'it': 'Options',
      'en': 'Options',
    },
    'ufasy4ju': {
      'it': 'Edit',
      'en': 'Edit',
    },
    '6kc0o458': {
      'it': 'Assign',
      'en': 'Assign',
    },
    'jqnyu0j6': {
      'it': 'Share',
      'en': 'Share',
    },
    '9qkfsg85': {
      'it': 'Delete',
      'en': 'Delete',
    },
  },
  // modal_CreateProject
  {
    '5tdm3cpv': {
      'it': 'Create Project',
      'en': 'Create Project',
    },
    'vlg015ed': {
      'it': 'Please enter the information below to add a project.',
      'en': 'Please enter the information below to add a project.',
    },
    'dqo5yhdb': {
      'it': 'Add Photo',
      'en': 'Add Photo',
    },
    '426hn69e': {
      'it': 'Project Name',
      'en': 'Project Name',
    },
    'uqziqhmg': {
      'it': 'Description here...',
      'en': 'Description here...',
    },
    'n4p0kium': {
      'it': 'Create Project',
      'en': 'Create Project',
    },
    '4spmowtt': {
      'it': 'Please enter a project name...',
      'en': 'Please enter a project name...',
    },
    '32kj9709': {
      'it': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
    'wfu6up0n': {
      'it': 'Please enter a short description...',
      'en': 'Please enter a short description...',
    },
    'qt5dp4ez': {
      'it': 'Please choose an option from the dropdown',
      'en': 'Please choose an option from the dropdown',
    },
  },
  // projectDetails_alt
  {
    'zgyw4s95': {
      'it': 'ACME Co.',
      'en': 'ACME Co.',
    },
    'izuvtgws': {
      'it': 'Contracts for New Opportunities',
      'en': 'Contracts for New Opportunities',
    },
    'gamp8n19': {
      'it': 'Assigned To',
      'en': 'Assigned To',
    },
    'obbewkqp': {
      'it': 'Randy Rudolph',
      'en': 'Randy Rudolph',
    },
    'ae8di6vv': {
      'it': 'name@domain.com',
      'en': 'name@domain.com',
    },
    'x6aorxwd': {
      'it': 'Next Action',
      'en': 'Next Action',
    },
    '8sktau69': {
      'it': 'Tuesday, 10:00am',
      'en': 'Tuesday, 10:00am',
    },
    'ck1j2u5s': {
      'it': 'In Progress',
      'en': 'In Progress',
    },
    '3z7p2nt3': {
      'it': 'Activity',
      'en': 'Activities',
    },
    '4fs4d1ar': {
      'it': 'FlutterFlow CRM App:',
      'en': 'FlutterFlow CRM App:',
    },
    'n5ub587t': {
      'it': ' Begin Work',
      'en': 'Start Work',
    },
    'y2yi7ro1': {
      'it': 'SOW Change Order',
      'en': 'SOW Change Order',
    },
    'tyo3th3g': {
      'it': 'FlutterFlow CRM App',
      'en': 'FlutterFlow CRM App',
    },
    't1shbmsx': {
      'it': 'Jul 8, at 4:31pm',
      'en': 'Jul 8, at 4:31pm',
    },
    'fjdirac9': {
      'it': 'Jeremiah Goldsten ',
      'en': 'Jeremiah Goldsten',
    },
    'g9h5nanl': {
      'it': 'accepted a request',
      'en': 'accepted a request',
    },
    'ndvrf4a3': {
      'it': 'SOW Change Order',
      'en': 'SOW Change Order',
    },
    'ruswj67g': {
      'it': 'FlutterFlow CRM App',
      'en': 'FlutterFlow CRM App',
    },
    'cgdoty6v': {
      'it':
          '\"Notifications and reminders informing users about upcoming classes and training schedules will be sent to them via email, SMS or notifications within the application.\"',
      'en':
          '\"Notifications and reminders informing users about upcoming classes and training schedules will be sent to them via email, SMS or notifications within the application.\"',
    },
    'z3xab243': {
      'it': 'Jul 8, at 4:30pm',
      'en': 'Jul 8, at 4:30pm',
    },
    'a19jraal': {
      'it': 'Randy Rudolph ',
      'en': 'Randy Rudolph',
    },
    'b3k94yjl': {
      'it': 'sent a SOW Change Order for ',
      'en': 'sent a SOW Change Order for',
    },
    '9vhvqp6g': {
      'it': 'FlutterFlow CRM APP',
      'en': 'FlutterFlow CRM APP',
    },
    '7djk72um': {
      'it': 'SOW Change Order',
      'en': 'SOW Change Order',
    },
    'qysyag2v': {
      'it': 'FlutterFlow CRM App',
      'en': 'FlutterFlow CRM App',
    },
    'ur5udrbc': {
      'it':
          '\"Please review the updates to this document and get back with me.\"',
      'en':
          '\"Please review the updates to this document and get back with me.\"',
    },
    'm8scfp1r': {
      'it': 'Jul 8, at 2:20pm',
      'en': 'Jul 8, at 2:20pm',
    },
    'n251rti5': {
      'it': 'Contracts',
      'en': 'Contracts',
    },
    'i8p8t5uw': {
      'it': 'Updates to Existing App',
      'en': 'Updates to Existing App',
    },
    'ks3nu6ra': {
      'it':
          'Additional Details around this contract and who is working on it in this card!',
      'en':
          'Additional Details around this contract and who is working on it in this card!',
    },
    'f3u7xqx4': {
      'it': 'Contract Details',
      'en': 'Contract Details',
    },
    'r2ns8igs': {
      'it': '\$210,000',
      'en': '\$210,000',
    },
    'y5zgyf1b': {
      'it': 'Mark as Complete',
      'en': 'Mark as Complete',
    },
    'va0zdk6p': {
      'it': 'New FlutterFlow App',
      'en': 'New FlutterFlow App',
    },
    't24sfvud': {
      'it':
          'The user can browse through our extensive catalog of fitness classes by filtering based on class type, location, time, and instructor. Each class will have detailed descriptions of the program, instructors, timings, availability, and rates.',
      'en':
          'The user can browse through our extensive catalog of fitness classes by filtering based on class type, location, time, and instructor. Each class will have detailed descriptions of the program, instructors, timings, availability, and rates.',
    },
    'nzh0mhza': {
      'it': 'Contract Details',
      'en': 'Contract Details',
    },
    'dmcqhebq': {
      'it': '\$67,000',
      'en': '\$67,000',
    },
    'it7y6ia8': {
      'it': 'Mark as Complete',
      'en': 'Mark as Complete',
    },
    'x8yfre0t': {
      'it': 'Project Details',
      'en': 'Project Details',
    },
  },
  // modal_create_Company
  {
    'v7w6sfgf': {
      'it': 'Create Company Profile',
      'en': 'Create Company Profile',
    },
    'bb7jk21d': {
      'it':
          'Upload images about your company and fill out the information below.',
      'en':
          'Upload images about your company and fill out the information below.',
    },
    '2zz9r0nk': {
      'it': 'Company Name',
      'en': 'Company Name',
    },
    'hsxlh4zc': {
      'it': 'Company City',
      'en': 'Company City',
    },
    'f1aegt92': {
      'it': 'Website',
      'en': 'Website',
    },
    'nrfx3n3y': {
      'it': 'Enter in your website without \"https://\"...',
      'en': 'Enter in your website without \"https://\"...',
    },
    'p9crjkw6': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'fgcl19a6': {
      'it': 'Create Company',
      'en': 'Create Company',
    },
  },
  // modal_inviteUser
  {
    '2c6w1mkp': {
      'it': 'Edit User Details',
      'en': 'Edit User Details',
    },
    'nez3q1xc': {
      'it': 'Edit the details of the user below.',
      'en': 'Edit the details of the user below.',
    },
    'ea9pniln': {
      'it': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    'b99om96j': {
      'it': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    'ctfs7f6t': {
      'it': 'User Name',
      'en': 'Username',
    },
    'lz0vcvft': {
      'it': 'Bio',
      'en': 'Bio',
    },
    'e7x6h4pf': {
      'it': 'Admin',
      'en': 'Admin',
    },
    'h34g5h5p': {
      'it': 'Manager',
      'en': 'Manager',
    },
    'lnc3d24p': {
      'it': 'Editor',
      'en': 'Editor',
    },
    '1nch99er': {
      'it': 'Viewer',
      'en': 'Viewer',
    },
    '80e9f7s1': {
      'it': 'Please select...',
      'en': 'Please select...',
    },
    'w5009bn4': {
      'it': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'wl5lect6': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'j7urjwc8': {
      'it': 'Send Invites',
      'en': 'Send Invites',
    },
  },
  // modal_enterPin
  {
    'w63lhi44': {
      'it': 'Enter your PIN below',
      'en': 'Enter your PIN below',
    },
    'cesy0qbp': {
      'it': 'Your project has been created, now invite your team to continue.',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'yan3zik2': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'ia89k4mg': {
      'it': 'Verify Code',
      'en': 'Verify Code',
    },
  },
  // modal_shareProject
  {
    '4tx2ru39': {
      'it': 'Share your project',
      'en': 'Share your project',
    },
    'u6t74zsp': {
      'it': 'Your project has been created, now invite your team to continue.',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'a5x5r8z2': {
      'it': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    '0hlgten0': {
      'it': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    'wfv5m0m2': {
      'it': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    'z4rocyop': {
      'it': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    'f9bgnoni': {
      'it': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    'bthcky9u': {
      'it': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    'pgq1r8ah': {
      'it': 'Add User',
      'en': 'Add User',
    },
    'x8i2mu80': {
      'it': 'Project Link',
      'en': 'Project Link',
    },
    'jzdr6k9x': {
      'it': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
      'en': 'https://project.flutterflow.io/?quizRef=T7c8mXvkYFFCWjqyhxKe',
    },
    'jz45d8an': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'ubopypxm': {
      'it': 'Send Invites',
      'en': 'Send Invites',
    },
  },
  // Modal_Add_usersList
  {
    'u8eoldhj': {
      'it': 'Invite your Team',
      'en': 'Invite your Team',
    },
    'z2uzep65': {
      'it': 'Your project has been created, now invite your team to continue.',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'dlpajrga': {
      'it': 'Email address...',
      'en': 'Email address...',
    },
    'timt0a9e': {
      'it': 'email@domainname.com',
      'en': 'email@domainname.com',
    },
    'haz2ntfz': {
      'it': 'email@domainname.com',
      'en': 'email@domainname.com',
    },
    'd9dnbwow': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'xl2opsga': {
      'it': 'Send Invites',
      'en': 'Send Invites',
    },
  },
  // modal_profile_Details
  {
    'xt43uwzp': {
      'it': 'Profile Details',
      'en': 'Profile Details',
    },
    '9ren6rbd': {
      'it': 'Below are your profile details',
      'en': 'Below are your profile details',
    },
    'izapnzh1': {
      'it': 'Randy Peterson',
      'en': 'Randy Peterson',
    },
    '17qiejhp': {
      'it': 'name@domainname.com',
      'en': 'name@domainname.com',
    },
    '5bzj3jf4': {
      'it': 'Manage your account',
      'en': 'Manage your account',
    },
    'x1e6b7y8': {
      'it': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'nj27bwmg': {
      'it': 'Reset Password',
      'en': 'Reset Password',
    },
    'wbiu740t': {
      'it': 'Light Mode',
      'en': 'Light Mode',
    },
    's5971e7s': {
      'it': 'Dark Mode',
      'en': 'Dark Mode',
    },
    'n3qmt0u6': {
      'it': 'Get in Touch',
      'en': 'Get in Touch',
    },
    'xp11z0da': {
      'it': 'Help & Support',
      'en': 'Help & Support',
    },
    'ufr3yhgk': {
      'it': 'Share [App Name]',
      'en': 'Share [App Name]',
    },
    'riwckyhb': {
      'it': 'Close',
      'en': 'Close',
    },
  },
  // modal_profile_Edit
  {
    'qs8serr4': {
      'it': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'bvy3fs93': {
      'it': 'Below are your profile details',
      'en': 'Below are your profile details',
    },
    'nx89dnuw': {
      'it': 'Change Photo',
      'en': 'Change Photo',
    },
    '99oumm34': {
      'it': 'Your Name',
      'en': 'Your Name',
    },
    '8gkrs3rw': {
      'it': 'Short Description',
      'en': 'Short Description',
    },
    '5bl6mh8m': {
      'it': 'Admin',
      'en': 'Admin',
    },
    'au9c3fpx': {
      'it': 'Admin',
      'en': 'Admin',
    },
    '6qzm16cz': {
      'it': 'Manager',
      'en': 'Manager',
    },
    '6xjfeugp': {
      'it': 'Editor',
      'en': 'Editor',
    },
    '4ga29wxb': {
      'it': 'Viewer',
      'en': 'Viewer',
    },
    'r971lmjm': {
      'it': 'Please select...',
      'en': 'Please select...',
    },
    '1c8v9uhp': {
      'it': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'p1lquhce': {
      'it': 'The email associated with this account is:',
      'en': 'The email associated with this account is:',
    },
    'i6iuebkd': {
      'it': 'casper@ghostbusters.com',
      'en': 'casper@ghostbusters.com',
    },
    'fyuvtufe': {
      'it': 'Created On:',
      'en': 'Created On:',
    },
    'jk8us6c6': {
      'it': 'July 12th, 2023',
      'en': 'July 12th, 2023',
    },
    'h4jwedag': {
      'it': 'Last Active:',
      'en': 'Last Active:',
    },
    'iakkv8eq': {
      'it': 'Just Now',
      'en': 'Just Now',
    },
    '27w5o6gn': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'gz2xhplu': {
      'it': 'Save Changes',
      'en': 'Save Changes',
    },
  },
  // modal_onboarding_azienda
  {
    'dlnprk4r': {
      'it': 'Informazioni Aziendali',
      'en': 'Company Information',
    },
    'okaorfjk': {
      'it': 'Ragione sociale',
      'en': 'Company name',
    },
    'i63bc5zl': {
      'it': 'Via',
      'en': 'Go',
    },
    'pqlrhpbc': {
      'it': 'Città',
      'en': 'City',
    },
    'u8dvbp1o': {
      'it': 'Provincia',
      'en': 'Province',
    },
    'ab02vv18': {
      'it': 'Numero  Whatsapp',
      'en': 'Whatsapp number',
    },
    'f7z6x9xk': {
      'it': 'Inserire numero mai attivato su Whatspp',
      'en': 'Enter never activated number on Whatspp',
    },
    'vpvql7rp': {
      'it': 'C. Fiscale/Partita Iva',
      'en': 'C. Fiscal/VAT Number',
    },
    'ijuu7d6e': {
      'it': 'Continua',
      'en': 'Continues',
    },
  },
  // modal_onboarding_dati_personali
  {
    'gvf5zf0u': {
      'it': 'Informazioni Personali',
      'en': 'Personal Information',
    },
    't269cdns': {
      'it': 'Completa il tuo profilo',
      'en': 'Complete your profile',
    },
    'vg8r72ac': {
      'it': 'Cambia immagine profilo',
      'en': 'Change profile picture',
    },
    '48w76puv': {
      'it': 'Nome',
      'en': 'Name',
    },
    'jw5gya04': {
      'it': 'Cognome',
      'en': 'Surname',
    },
    'wp99tp6s': {
      'it': 'Data di nascita',
      'en': 'Date of birth',
    },
    'xc5eg9s5': {
      'it': 'Sesso',
      'en': 'Sex',
    },
    'j51unvec': {
      'it': 'Maschio',
      'en': 'Male',
    },
    '5idi80o1': {
      'it': 'Femmina',
      'en': 'Female',
    },
    'l2c4i05o': {
      'it': 'Seleziona valore...',
      'en': 'Select value...',
    },
    'faxsfn8c': {
      'it': 'Ricerca',
      'en': 'Research',
    },
    'bzim82x4': {
      'it': 'Luogo di nascita',
      'en': 'Place of birth',
    },
    '22tr65pu': {
      'it': 'Telefono',
      'en': 'Telephone',
    },
  },
  // modal_onboarding_configurazione_ADA
  {
    'psrsnh1q': {
      'it': 'Configurazione ADA',
      'en': 'ADA Configuration',
    },
    '09bheamx': {
      'it': 'WhatsApp',
      'en': 'WhatsApp',
    },
    'yavbir2d': {
      'it':
          'Attivando la funzionalità Whatsapp potrai permettere alla AI di rispondere direttamente sul numero di whatsapp fornito in Anagrafica, ricorda che il numero che fornirai non deve mai aver fatto un accesso su whatsapp, la registrazione verrà effettuata qui.\n',
      'en':
          'By activating the Whatsapp feature you will be able to allow the AI to respond directly to the whatsapp number provided in the Anagrafica, remember that the number you provide must never have logged in to whatsapp, the registration will be done here.',
    },
    '9b8pwva1': {
      'it': 'Mobile',
      'en': 'Mobile',
    },
    'rja1kpur': {
      'it':
          'Attivando la funzionalità Mobile potrai permettere alla AI di rispondere direttamente sulla app mobile per Android e iOS',
      'en':
          'By activating the Mobile feature you can allow the AI to respond directly on the mobile app for Android and iOS',
    },
    'ioaxqapl': {
      'it': 'Continua',
      'en': 'Continues',
    },
  },
  // modal_create_Calendar
  {
    'qffwo94a': {
      'it': 'Crea Calendario',
      'en': 'Share your project',
    },
    'bq7097xw': {
      'it': 'Crea un nuovo calendario',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'ak59g8d9': {
      'it': 'Nome Calendario',
      'en': 'Whatsapp number',
    },
    'xm7wyd7b': {
      'it': 'Buffer',
      'en': 'Go',
    },
    '3y8y8zbw': {
      'it': 'Lunedì',
      'en': 'All',
    },
    'ktx0o8vh': {
      'it': 'Lunedì',
      'en': '',
    },
    '8o0bbs8o': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '02aqbrph': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    '3t10u5df': {
      'it': 'Pausa',
      'en': '',
    },
    'oh37kx91': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '5hgk07r3': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    '3e5irvwl': {
      'it': 'Martedì',
      'en': 'New Calls',
    },
    'tsb8xzbc': {
      'it': 'Martedì',
      'en': '',
    },
    'gt2msntv': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'wx3n4cpf': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'lraokw7r': {
      'it': 'Pausa',
      'en': '',
    },
    '68zr6pow': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '73cflft6': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'y3fyt8kh': {
      'it': 'Mercoledì',
      'en': 'Contacted',
    },
    'u3l37zyp': {
      'it': 'Mercoledì',
      'en': '',
    },
    'g74n3dtz': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    't178yfdw': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'ynypdiz7': {
      'it': 'Pausa',
      'en': '',
    },
    'zla18xx7': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'skgt665b': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'ent0z9oc': {
      'it': 'Giovedì',
      'en': '',
    },
    'tjdze6a4': {
      'it': 'Giovedì',
      'en': '',
    },
    'jncvmhp7': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '9avmip2p': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'ojkvxbmi': {
      'it': 'Pausa',
      'en': '',
    },
    'tu3s946i': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '08m9mict': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'vahrzqpe': {
      'it': 'Venerdì',
      'en': '',
    },
    'ujtu40a7': {
      'it': 'Venerdì',
      'en': '',
    },
    '1r7m1b3r': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'az2xf6lz': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'ohvyaguq': {
      'it': 'Pausa',
      'en': '',
    },
    'wgdjoc7d': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'e457umzo': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    '9sttxviu': {
      'it': 'Sabato',
      'en': '',
    },
    'yfb5zee5': {
      'it': 'Sabato',
      'en': '',
    },
    'gqo595uq': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'ej6d5t6d': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'qktp801a': {
      'it': 'Pausa',
      'en': '',
    },
    '4qa7fuiu': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'fgs1xtct': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    '3yidpdql': {
      'it': 'Domenica',
      'en': '',
    },
    'ohf8yrvn': {
      'it': 'Domenica',
      'en': '',
    },
    '81mkb4cd': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    '8cd2kznm': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'n64au0wt': {
      'it': 'Pausa',
      'en': '',
    },
    'umw5n5m9': {
      'it': 'Da',
      'en': 'Whatsapp number',
    },
    'dsc2ayzb': {
      'it': 'a',
      'en': 'Whatsapp number',
    },
    'l1k82gy1': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'rje05k4s': {
      'it': 'Continua',
      'en': 'Continues',
    },
  },
  // modal_create_Info_AI
  {
    'nxk47p6z': {
      'it': 'Aggiungi Informazioni',
      'en': 'Share your project',
    },
    'tq56gdpd': {
      'it': 'Aggiungi informazioni per ADA',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'ubm8eq0t': {
      'it': 'Titolo',
      'en': 'Whatsapp number',
    },
    'qnexrpqq': {
      'it': 'Tipo Servizio',
      'en': '',
    },
    'ap296eiz': {
      'it': 'Seleziona un valore..',
      'en': '',
    },
    '6o5qe75m': {
      'it': 'Search...',
      'en': '',
    },
    'xr40iakg': {
      'it': 'Titolo',
      'en': 'Whatsapp number',
    },
    '3ue5axer': {
      'it': 'Prezzo',
      'en': 'Whatsapp number',
    },
    '95i6tfau': {
      'it': 'Tempo Servizio',
      'en': 'Go',
    },
    'pezfhqpf': {
      'it': 'Calendario',
      'en': '',
    },
    'ngds7vkm': {
      'it': 'Option 1',
      'en': '',
    },
    'wl8ijyb4': {
      'it': 'Option 2',
      'en': '',
    },
    'iddgv4m0': {
      'it': 'Option 3',
      'en': '',
    },
    'ze7a1pzl': {
      'it': 'Seleziona un valore..',
      'en': '',
    },
    '27pr7fyr': {
      'it': 'Search...',
      'en': '',
    },
    '7630utlr': {
      'it': 'Preavviso annullamento',
      'en': 'Whatsapp number',
    },
    'ul6sz1s5': {
      'it': 'Scadenza',
      'en': 'Go',
    },
    '9bwijexm': {
      'it': 'Indirizzo',
      'en': 'Whatsapp number',
    },
    'nq41opu1': {
      'it': 'Mail aggiuntiva',
      'en': 'Go',
    },
    'v8fx1i5d': {
      'it': 'File',
      'en': 'C. Fiscal/VAT Number',
    },
    'jtqqgu8e': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'ggiwf0y4': {
      'it': 'Continua',
      'en': 'Continues',
    },
  },
  // modal_upload_file
  {
    'tgippmxd': {
      'it': 'Carica CSV',
      'en': 'Share your project',
    },
    'p51dgrhd': {
      'it': 'Carica un file CSV',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'a9dc85rc': {
      'it': 'Tipo Servizio',
      'en': '',
    },
    '3pj9kj47': {
      'it': 'Option 1',
      'en': '',
    },
    'c8i79tnv': {
      'it': 'Option 2',
      'en': '',
    },
    '012bw61f': {
      'it': 'Option 3',
      'en': '',
    },
    'w0e4qq57': {
      'it': 'Seleziona un valore..',
      'en': '',
    },
    'f5v2l8vj': {
      'it': 'Search...',
      'en': '',
    },
    'n9bshb0e': {
      'it': 'Upload CSV File',
      'en': '',
    },
    'a0thfgge': {
      'it': 'Click to upload CSV',
      'en': '',
    },
    'q0taan6e': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'qk5w0466': {
      'it': 'Continua',
      'en': 'Continues',
    },
  },
  // Modal_create_Tipo_Servizio
  {
    '1h94gryq': {
      'it': 'Tipo Servizio',
      'en': 'Invite your Team',
    },
    'yn35noot': {
      'it': 'Crea un nuovo Tipo Servizio',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    '7fsvjb4i': {
      'it': 'Titolo',
      'en': 'Go',
    },
    '8kycb6wb': {
      'it': 'Descrizione',
      'en': 'Go',
    },
    'rj8rxqgg': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    '0nhjmer8': {
      'it': 'Salva',
      'en': 'Send Invites',
    },
  },
  // Modal_create_Tipi_Servizio
  {
    'uzqgy0h8': {
      'it': 'Tipi Servizio',
      'en': 'Invite your Team',
    },
    '39ykriue': {
      'it': 'Crea un nuovo Tipi Servizio',
      'en': 'Your project has been created, now invite your team to continue.',
    },
    'mf0qxpg0': {
      'it': 'Please select...',
      'en': 'Please select...',
    },
    'wzzgscm8': {
      'it': 'Search for an item...',
      'en': 'Search for an item...',
    },
    '7gxk17jk': {
      'it': 'Titolo',
      'en': 'Go',
    },
    'r6p0v9wu': {
      'it': 'Cancel',
      'en': 'Cancel',
    },
    'owii4oct': {
      'it': 'Salva',
      'en': 'Send Invites',
    },
  },
  // dropdown_Edit_Delete
  {
    'jfqddt0i': {
      'it': 'Opzioni',
      'en': 'Options',
    },
    '14itoluk': {
      'it': 'Modifica',
      'en': 'Edit',
    },
    'n9g95f5p': {
      'it': 'Elimina',
      'en': 'Delete',
    },
  },
  // TipoServizio_Details_main
  {
    'd51ppt1z': {
      'it': 'Titolo',
      'en': 'Go',
    },
    'qsd45ef0': {
      'it': 'Descrizione',
      'en': 'Go',
    },
    'bbrsntgn': {
      'it': 'Elimina',
      'en': 'Generate Quote',
    },
    'utbonmaf': {
      'it': 'Salva',
      'en': 'View Company',
    },
  },
  // component_empty
  {
    '4ro0nxl3': {
      'it': 'Nessun Elemento',
      'en': '',
    },
    '5jgiv6nh': {
      'it': 'It seems that you don\'t have any recent activity.',
      'en': '',
    },
  },
  // TipiServizio_Details_main
  {
    'y2wasifg': {
      'it': 'Admin',
      'en': 'Admin',
    },
    'baxtgril': {
      'it': 'Manager',
      'en': 'Manager',
    },
    'qad7m11h': {
      'it': 'Editor',
      'en': 'Editor',
    },
    'k23fjikm': {
      'it': 'Viewer',
      'en': 'Viewer',
    },
    'oldxiom0': {
      'it': 'Please select...',
      'en': 'Please select...',
    },
    '0ec64x11': {
      'it': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'kaealhmv': {
      'it': 'Descrizione',
      'en': 'Go',
    },
    'fxcnfz1p': {
      'it': 'Titolo',
      'en': 'Go',
    },
    'popk1pyh': {
      'it': 'Elimina',
      'en': 'Generate Quote',
    },
    'z2msh32q': {
      'it': 'Salva',
      'en': 'View Company',
    },
  },
  // Miscellaneous
  {
    '0nwoj0kc': {
      'it': 'Email address',
      'en': 'Email address',
    },
    'upni203i': {
      'it': 'Password',
      'en': 'Password',
    },
    'x5hsigqw': {
      'it': 'Button',
      'en': 'Button',
    },
    '9wy77t9v': {
      'it': 'Button',
      'en': 'Button',
    },
    'woezzutp': {
      'it': 'Button',
      'en': 'Button',
    },
    '2bj20mi4': {
      'it': 'Button',
      'en': 'Button',
    },
    'oztjr3ws': {
      'it': 'Button',
      'en': 'Button',
    },
    'hc87g50d': {
      'it': 'Button',
      'en': 'Button',
    },
    '8ct6cr3a': {
      'it': 'Button',
      'en': 'Button',
    },
    'e368pegn': {
      'it': 'Button',
      'en': 'Button',
    },
    'yv65a6i5': {
      'it': 'Button',
      'en': 'Button',
    },
    '4r7kaahz': {
      'it': 'Calling',
      'en': 'Calling',
    },
    '9zk4wopm': {
      'it': 'Not Called',
      'en': 'Not Called',
    },
    'xn2fkope': {
      'it': 'Pending Review',
      'en': 'Pending Review',
    },
    'jv85czds': {
      'it': 'Closed',
      'en': 'Closed',
    },
    'swt4x372': {
      'it': 'Completed',
      'en': 'Completed',
    },
    '5w6ne1dl': {
      'it': 'Please select...',
      'en': 'Please select...',
    },
    'uhfmgei0': {
      'it': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'lted0txl': {
      'it': 'All',
      'en': 'All',
    },
    'm6iqz668': {
      'it': 'Pending',
      'en': 'Pending',
    },
    'x2pvxk5r': {
      'it': 'Completed',
      'en': 'Completed',
    },
    'txjoh349': {
      'it': 'Calling',
      'en': 'Calling',
    },
    'qube3xir': {
      'it': 'All',
      'en': 'All',
    },
    'mxalfkji': {
      'it': '50%',
      'en': '50%',
    },
    'z6o24u9q': {
      'it': 'Notifications',
      'en': 'Notifications',
    },
    'poegde7v': {
      'it': 'Notifications',
      'en': 'Notifications',
    },
    'v3vjad01': {
      'it': 'Turn on notifications',
      'en': 'Turn on notifications',
    },
    'bqjgqich': {
      'it': 'Male',
      'en': 'Bad',
    },
    'rzl2h9ar': {
      'it': 'Female',
      'en': 'Female',
    },
    'qtchqf19': {
      'it': 'Other',
      'en': 'Other',
    },
    '82a75t5n': {
      'it': 'Design',
      'en': 'Design',
    },
    'w82xuklg': {
      'it': 'Marketing',
      'en': 'Marketing',
    },
    '5uiyxwtk': {
      'it': 'Development',
      'en': 'Development',
    },
    '3wjkerx7': {
      'it': 'Management',
      'en': 'Management',
    },
    'p6rgfj1v': {
      'it': 'Operations',
      'en': 'Operations',
    },
    'c8uww550': {
      'it': 'Customer Service',
      'en': 'Customer Service',
    },
    '2rhm2suy': {
      'it': 'Design',
      'en': 'Design',
    },
    'mn0msxba': {
      'it': 'Button',
      'en': 'Button',
    },
    'i9utkwuv': {
      'it': 'Button',
      'en': 'Button',
    },
    'w50jnudh': {
      'it': 'Button',
      'en': 'Button',
    },
    'hxsxj681': {
      'it': '',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
    },
    'e7agr7ys': {
      'it': '',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
    },
    '65e2tfs2': {
      'it': '',
      'en': '',
    },
    'ddazihx4': {
      'it': '',
      'en': '',
    },
    'db03cpjj': {
      'it': '',
      'en': '',
    },
    'fdb9078p': {
      'it': '',
      'en': '',
    },
    '80ouzj9q': {
      'it': '',
      'en': '',
    },
    '6rzhptp9': {
      'it': '',
      'en': '',
    },
    'ce8c4ty0': {
      'it': '',
      'en': '',
    },
    'xjnxb1zs': {
      'it': '',
      'en': '',
    },
    'x05e54u3': {
      'it': '',
      'en': '',
    },
    'gexc3luw': {
      'it': '',
      'en': '',
    },
    '5b9y7n6u': {
      'it': '',
      'en': '',
    },
    'kcvqa08x': {
      'it': '',
      'en': '',
    },
    'dqrzd6sq': {
      'it': '',
      'en': '',
    },
    'dpqtohyf': {
      'it': '',
      'en': '',
    },
    'v01vf71s': {
      'it': '',
      'en': '',
    },
    'gcv6def1': {
      'it': '',
      'en': '',
    },
    'um9es99m': {
      'it': '',
      'en': '',
    },
    'o4enbz4j': {
      'it': '',
      'en': '',
    },
    '8z4tvfh7': {
      'it': '',
      'en': '',
    },
    '2ybzla8x': {
      'it': '',
      'en': '',
    },
    'd1wdf5i1': {
      'it': '',
      'en': '',
    },
    'f4rdu9en': {
      'it': '',
      'en': '',
    },
    '2py80kgi': {
      'it': '',
      'en': '',
    },
    'p6lsrh2a': {
      'it': '',
      'en': '',
    },
    'ne8cclp9': {
      'it': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
