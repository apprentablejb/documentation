import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

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
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

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
  // login
  {
    '4rnq16n6': {
      'en': 'brand.ai',
      'es': 'marca.ai',
    },
    'xpcc6f97': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    'rp7zkisc': {
      'en': 'Create Account',
      'es': 'Crear una cuenta',
    },
    'sv77bc54': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos llenando el siguiente formulario.',
    },
    'tap5j0am': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    '0cbq23b2': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    '0wkhy13n': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    '8gugbp3z': {
      'en': 'Get Started',
      'es': 'Empezar',
    },
    'ubuwf5c1': {
      'en': 'Or sign up with',
      'es': 'O regístrate con',
    },
    'kij58ora': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
    },
    'ty4dap6q': {
      'en': 'Continue with Apple',
      'es': 'Continuar con Apple',
    },
    'h8wc05rw': {
      'en': 'Log In',
      'es': 'Acceso',
    },
    '7ajfehu2': {
      'en': 'Welcome Back',
      'es': 'Bienvenido de nuevo',
    },
    '0fy84utv': {
      'en': 'Fill out the information below in order to access your account.',
      'es': 'Complete la siguiente información para acceder a su cuenta.',
    },
    'jy8fck0g': {
      'en': 'Email',
      'es': 'Correo electrónico',
    },
    '3u7wxpap': {
      'en': 'Password',
      'es': 'Contraseña',
    },
    'ibiesg8w': {
      'en': 'Sign In',
      'es': 'Iniciar sesión',
    },
    'yaepw8ql': {
      'en': 'Or sign in with',
      'es': 'O inicia sesión con',
    },
    'xx2mw6sa': {
      'en': 'Continue with Google',
      'es': 'Continuar con Google',
    },
    'ur16pgx2': {
      'en': 'Continue with Apple',
      'es': 'Continuar con Apple',
    },
    'uc5fdpfj': {
      'en': 'Forgot Password?',
      'es': '¿Has olvidado tu contraseña?',
    },
    '1n47qkab': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // browse
  {
    '7nhs8sqb': {
      'en': 'Categories',
      'es': 'Categorías',
    },
    '1p46r83r': {
      'en': 'Map',
      'es': 'Mapa',
    },
  },
  // restaurant_detail
  {
    'gbk2weqa': {
      'en': 'restaurants Details',
      'es': 'Restaurantes Detalles',
    },
    'dtv58uxx': {
      'en': 'restaurants descriptions',
      'es': 'descripciones de restaurantes',
    },
    '6frkhpcf': {
      'en': 'Menu items',
      'es': 'Elementos de menú',
    },
    'jwx2fgno': {
      'en': 'description',
      'es': 'descripción',
    },
  },
  // restaurants_info
  {
    '779d8nld': {
      'en': 'restaurants_info',
      'es': 'info_restaurantes',
    },
    'nfhkjdpx': {
      'en': 'GO BACK',
      'es': 'REGRESA',
    },
    'vj9lhs9f': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // Homepage
  {
    'nqwwr35j': {
      'en': 'Search...',
      'es': 'Buscar...',
    },
    '1fz2a88s': {
      'en': 'restaurants',
      'es': 'restaurantes',
    },
    'pnclskze': {
      'en': '\$126.20',
      'es': '\$126.20',
    },
    'xp9czok1': {
      'en': 'Homepage',
      'es': 'Página principal',
    },
    '8gz6wim0': {
      'en': 'Home',
      'es': 'Hogar',
    },
  },
  // menuItem_Detail
  {
    'u1vitas4': {
      'en': 'restaurants Details',
      'es': 'Restaurantes Detalles',
    },
    '7cpnfwo0': {
      'en': 'menuItem Description',
      'es': 'menuItem Descripción',
    },
    'mogjt4oq': {
      'en': 'Special  instroduction...',
      'es': 'Introducción especial...',
    },
  },
  // Miscellaneous
  {
    '4vczoi3k': {
      'en': '',
      'es': '',
    },
    'cjx8xjgc': {
      'en': '',
      'es': '',
    },
    'dcbiq0cl': {
      'en': '',
      'es': '',
    },
    'ztoaiv5b': {
      'en': '',
      'es': '',
    },
    'l8uf1x0t': {
      'en': '',
      'es': '',
    },
    'zd6aiw00': {
      'en': '',
      'es': '',
    },
    'fk06fk0f': {
      'en': '',
      'es': '',
    },
    'd5vkzgi0': {
      'en': '',
      'es': '',
    },
    'jsrwq4f9': {
      'en': '',
      'es': '',
    },
    'iysqo3un': {
      'en': '',
      'es': '',
    },
    'x4hacauq': {
      'en': '',
      'es': '',
    },
    'ksgc1n58': {
      'en': '',
      'es': '',
    },
    'kim4opqg': {
      'en': '',
      'es': '',
    },
    'k51g18at': {
      'en': '',
      'es': '',
    },
    'w3i2r4kp': {
      'en': '',
      'es': '',
    },
    '4a8iowyl': {
      'en': '',
      'es': '',
    },
    'wjxx5bgw': {
      'en': '',
      'es': '',
    },
    'cl33zha5': {
      'en': '',
      'es': '',
    },
    'h2qrzhax': {
      'en': '',
      'es': '',
    },
    '5ckqageq': {
      'en': '',
      'es': '',
    },
    'hrtnvn4l': {
      'en': '',
      'es': '',
    },
    'ae8e0dkb': {
      'en': '',
      'es': '',
    },
    'anrvu1fn': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
